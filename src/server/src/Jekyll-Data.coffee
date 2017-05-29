require 'fluentnode'

yaml = require('js-yaml');

class Jekyll_Data
  constructor: ->
    @.folder_Root            = wallaby?.localProjectDir || __dirname.path_Combine '../../../'
    @.folder_Data            = @.folder_Root.path_Combine 'website/_data'
    @.folder_Data_Mapped     = @.folder_Root.path_Combine 'website/_data/mapped'
    @.folder_Participants    = @.folder_Root.path_Combine('Participants')
    @.file_Json_Participants = @.folder_Data_Mapped.path_Combine 'participants.json'
    @.file_Yaml_Participants = @.folder_Data_Mapped.path_Combine 'participants.yml'

  create_Participants_Json: ->
    console.log 'here...'


  map_Participant_Raw_Data: (raw_Data)->
    data         = {}                                                   # where we are going to store the mapped data
    raw_Metadata = raw_Data.after('---').before('---')                  # get content in between ---

    for line in raw_Metadata.lines()                                    # for each line
      if line
        key       = line.before(':').trim()                             # extract key (with no white spaces)
        if key
          data[key] = line.after( ':').trim()                           # map value to it

    # normalise some data
    if data['working-sessions']
      data['working-sessions'] =  data['working-sessions']?.split(',')  # making the working-sessions value an array

    return data                                                         # return mapped data

  participants_Data: ->
    data = {}
    for file in @.folder_Participants.files_Recursive() when file.not_Contains('_template')
      name     = file.file_Name().remove('.md'        ).replace('-',' ')
      url      = '/' + file      .remove(@.folder_Root).replace('.md','.html')
      metadata = @.map_Participant_Raw_Data file.file_Contents()
      data[name] =
        name    : name
        url     : url
        #path    : file
        metadata: metadata

    sorted_Data = {}
    for key in data._keys().sort()
      sorted_Data[key] = data[key]

    sorted_Data.save_Json              @.file_Json_Participants                          # save data as json file
    yaml.safeDump(sorted_Data).save_As @.file_Yaml_Participants             # save data as yml file
    return data





module.exports = Jekyll_Data