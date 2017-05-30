require 'fluentnode'

yaml = require('js-yaml');

class Jekyll_Data
  constructor: ->
    @.folder_Root                 = wallaby?.localProjectDir || __dirname.path_Combine '../../../'
    @.folder_Data                 = @.folder_Root.path_Combine 'website/_data'
    @.folder_Data_Mapped          = @.folder_Root.path_Combine 'website/_data/mapped'
    @.folder_Participants         = @.folder_Root.path_Combine('Participants')
    @.folder_Working_Sessions     = @.folder_Root.path_Combine('Working-Sessions')
    @.file_Json_Participants      = @.folder_Data_Mapped.path_Combine 'participants.json'
    @.file_Yaml_Participants      = @.folder_Data_Mapped.path_Combine 'participants.yml'
    @.file_Json_Topics            = @.folder_Data_Mapped.path_Combine 'topics.json'
    @.file_Yaml_Topics            = @.folder_Data_Mapped.path_Combine 'topics.yml'
    @.file_Json_Tracks            = @.folder_Data_Mapped.path_Combine 'tracks.json'
    @.file_Yaml_Tracks            = @.folder_Data_Mapped.path_Combine 'tracks.yml'
    @.file_Json_Working_Sessions  = @.folder_Data_Mapped.path_Combine 'working-sessions.json'
    @.file_Yaml_Working_Sessions  = @.folder_Data_Mapped.path_Combine 'working-sessions.yml'


  map_Participant_Raw_Data: (raw_Data)->
    data         = {}                                                                               # where we are going to store the mapped data
    raw_Metadata = raw_Data.after('---').before('---')                                              # get content in between ---

    for line in raw_Metadata.lines()                                                                # for each line
      if line
        key       = line.before(':').trim()                                                         # extract key (with no white spaces)
        if key
          data[key] = line.after( ':').trim()                                                       # map value to it

    # normalise some data
    data['working-sessions'] =  data['working-sessions']?.split(',') || []                          # making the working-sessions value an array
    data['working-sessions'] = (item.trim() for item in data['working-sessions'] when item != '')   # trimming values

    return data                                                                                     # return mapped data

  map_Participants_Data: ->
    data = {}
    for file in @.folder_Participants.files_Recursive() when file.not_Contains('_template')
      name     = file.file_Name().remove('.md'        ).replace('-',' ')
      url      = '/' + file      .remove(@.folder_Root).replace('.md','.html')
      metadata = @.map_Participant_Raw_Data file.file_Contents()
      data[name] =
        name    : name
        url     : url
        metadata: metadata

    sorted_Data = {}
    for key in data._keys().sort()
      sorted_Data[key] = data[key]

    sorted_Data.save_Json              @.file_Json_Participants         # save data as json file
    yaml.safeDump(sorted_Data).save_As @.file_Yaml_Participants         # save data as yml file
    return data


  map_Tracks_Data: ()->
    working_Sessions_Data = @.file_Json_Working_Sessions.load_Json()
    data = {}
    for track_Name, track_Data of working_Sessions_Data when track_Data.metadata.type is 'track'
      data[track_Name] =
        name              : track_Name
        url               : track_Data.url
        description       : track_Data.metadata.description
        organizers        : track_Data.metadata.organizers
        participants      : track_Data.metadata.participants
        'working-sessions': []
      for key,value of working_Sessions_Data when value.metadata.track is track_Name
        data[track_Name]['working-sessions'].add
          name      : value.metadata.title       || ''
          'when-day': value.metadata['when-day'] || ''
          status    : value.metadata.status      || ''

      sorted_Data = {}
      for key in data._keys().sort()
        sorted_Data[key] = data[key]

      sorted_Data.save_Json              @.file_Json_Tracks           # save data as json file
      yaml.safeDump(sorted_Data).save_As @.file_Yaml_Tracks           # save data as yml file
    data

  map_Topics_Data: ()->
    working_Sessions_Data = @.file_Json_Working_Sessions.load_Json()
    data = {}
    for track_Name, track_Data of working_Sessions_Data when track_Data.metadata.type is 'technology'
      data[track_Name] =
        name              : track_Name
        url               : track_Data.url
        description       : track_Data.metadata.description

    sorted_Data = {}
    for key in data._keys().sort()
      sorted_Data[key] = data[key]
    sorted_Data.save_Json              @.file_Json_Topics           # save data as json file
    yaml.safeDump(sorted_Data).save_As @.file_Yaml_Topics           # save data as yml file

    data

  map_Working_Session_Raw_Data: (raw_Data)->                                              # todo: refactor this method with map_Participant_Raw_Data and map_Tracks_Data
    data         = {}                                                                     # where we are going to store the mapped data
    raw_Metadata = raw_Data.after('---').before('---')                                    # get content in between ---

    for line in raw_Metadata.lines()                                                      # for each line
      if line
        key       = line.before(':').trim()                                               # extract key (with no white spaces)
        if key
          data[key] = line.after( ':').trim()                                             # map value to it

    # normalise some data

    data['participants'] =  data['participants']?.split(',')  || []                       # making the participants value an array
    data['organizers'  ] =  data['organizers'  ]?.split(',')  || []                       # making the participants value an array

    data['participants'] = (item.trim() for item in data['participants'] when item != '') # trim all fields to cover for leading or training spaces
    data['organizers'  ] = (item.trim() for item in data['organizers'  ] when item != '')

    return data                                                           # return mapped data

  map_Working_Sessions_Data: ->
    data = {}
    for file in @.folder_Working_Sessions.files_Recursive() when file.not_Contains('_template')
      metadata = @.map_Working_Session_Raw_Data file.file_Contents()

      #name     = file.file_Name().remove('.md'        ).replace('-',' ')

      name = metadata.title || ''
      url      = '/' + file      .remove(@.folder_Root).replace('.md','.html')

      data[name] =
        name    : name
        url     : url
        metadata: metadata

      sorted_Data = {}
      for key in data._keys().sort()
        sorted_Data[key] = data[key]

    sorted_Data.save_Json              @.file_Json_Working_Sessions       # save data as json file (we need this file for the tracks calculations)
    yaml.safeDump(sorted_Data).save_As @.file_Yaml_Working_Sessions       # save data as yml file

    data





module.exports = Jekyll_Data