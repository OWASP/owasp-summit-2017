require 'fluentnode'

yaml         = require('js-yaml');
Participants = require './Participants'
Tickets      = require './Tickets'

class Jekyll_Data
  constructor: ->
    @.folder_Root                 = wallaby?.localProjectDir || __dirname.path_Combine '../../../'
    @.folder_Data                 = @.folder_Root.path_Combine 'website/_data'
    @.folder_Data_Mapped          = @.folder_Root.path_Combine 'website/_data/mapped'
    @.folder_Participants         = @.folder_Root.path_Combine('Participants')
    @.folder_Working_Sessions     = @.folder_Root.path_Combine('Working-Sessions')
    @.file_Json_Participants      = @.folder_Data_Mapped.path_Combine 'participants.json'
    @.file_Yaml_Participants      = @.folder_Data_Mapped.path_Combine 'participants.yml'
    @.file_Json_Schedule          = @.folder_Data_Mapped.path_Combine 'schedule.json'
    @.file_Yaml_Schedule          = @.folder_Data_Mapped.path_Combine 'schedule.yml'
    @.file_Json_Topics            = @.folder_Data_Mapped.path_Combine 'topics.json'
    @.file_Yaml_Topics            = @.folder_Data_Mapped.path_Combine 'topics.yml'
    @.file_Json_Tracks            = @.folder_Data_Mapped.path_Combine 'tracks.json'
    @.file_Yaml_Tracks            = @.folder_Data_Mapped.path_Combine 'tracks.yml'
    @.file_Json_Working_Sessions  = @.folder_Data_Mapped.path_Combine 'working-sessions.json'
    @.file_Yaml_Working_Sessions  = @.folder_Data_Mapped.path_Combine 'working-sessions.yml'

    @.participants_Data           = @.file_Json_Participants    .load_Json()                        # cache these for faster access to their data
    @.working_Sessions_Data       = @.file_Json_Working_Sessions.load_Json()                        # todo: there are a couple race conditions related to the sequence of load and cross mappings
    @.topics_Data                 = @.file_Json_Topics          .load_Json()
    @.schedule_Data               = @.file_Json_Schedule        .load_Json()

    @.participants                = new Participants(this)
    @.tickets                     = new Tickets(this)


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
      name     = file.file_Name().remove('.md'        ).replace(/-/g,' ')
      url      = '/' + file      .remove(@.folder_Root).replace('.md','.html')
      metadata = @.map_Participant_Raw_Data file.file_Contents()
      data[name] =
        name     : name
        url      : url
        metadata : metadata

    sorted_Data = {}
    for key in data._keys().sort()
      sorted_Data[key] = data[key]

    sorted_Data.save_Json              @.file_Json_Participants         # save data as json file
    yaml.safeDump(sorted_Data).save_As @.file_Yaml_Participants         # save data as yml file

    @.participants_Data = sorted_Data
    return data

  map_Schedule: ->
    schedule =
      by_Room        : {}
      by_Track       : {}
      by_Time        : {}
      by_Participant : {}

    # Map by_Day
    for name, data of @.working_Sessions_Data when data.metadata.type is 'workshop'
      days         = data.metadata['when-day' ]    || 'no-day'
      times        = data.metadata['when-time']    || 'no-time'
      locations    = data.metadata['location' ]    || 'no-location'
      layout       = data.metadata['room-layout' ] || 'unknown'
      remote       = data.metadata['remote' ]      || ''
      tracks       = data.metadata.track           || 'no-track'
      locked       = data.metadata.locked          || false
      status       = data.metadata.status          || ''
      invited      = data.metadata.invited
      organizers   = data.metadata.organizers
      panelists    = data.metadata.panelists
      participants = data.metadata.participants

      is_Session_In_Multiple_Tracks = (array, name, track)->
        for item in array
          if item.name is name
            return true
        return false


      for day in days.split(',')
        for location in locations.split(',')
          for time in times.split(',')
            for track in tracks.split(',')
              schedule.by_Room[day]                  ?= {}
              schedule.by_Room[day][location]        ?= {}
              schedule.by_Room[day][location][time]  ?= []
              using schedule.by_Room[day][location][time], ->
                if is_Session_In_Multiple_Tracks @ , name, track
                  @.track += ", @{track}"
                else
                  @.add name: name, url: data.url , track : track       , layout: layout, remote: remote, locked: locked

              schedule.by_Track[day]                 ?= {}
              schedule.by_Track[day][track]          ?= {}
              schedule.by_Track[day][track][time]    ?= []
              schedule.by_Track[day][track][time].add name: name, url: data.url , location : location , layout: layout, remote: remote, locked: locked

              schedule.by_Time[time]                 ?= {}
              schedule.by_Time[time][track]          ?= {}
              schedule.by_Time[time][track][day]     ?= []
              schedule.by_Time[time][track][day].add name: name, url: data.url , location : location  , layout: layout, remote: remote, locked: locked, status: status

              map_User = (user,role)->
                schedule.by_Participant[user]             ?= {}
                schedule.by_Participant[user][time]       ?= {}
                schedule.by_Participant[user][time][day]  ?= []
                using schedule.by_Participant[user][time][day], ->
                  if is_Session_In_Multiple_Tracks @ , name, track
                    @.track += ", @{track}"
                  else
                    schedule.by_Participant[user][time][day].add name: name, url: data.url, location: location, role: role, status: status, track : track, locked: locked

              for invite in invited
                map_User invite  , 'invited'
              for organizer in organizers
                map_User organizer  , 'organizing'
              for participant in participants
                map_User participant, 'participating'
              for panelist in panelists
                map_User panelist  , 'panelist'

      schedule.by_Track[day] = @.sort_By_Key schedule.by_Track[day]

    schedule.save_Json              @.file_Json_Schedule
    yaml.safeDump(schedule).save_As @.file_Yaml_Schedule
    @.schedule_Data = schedule

    return schedule

  map_Tracks_Data: ()->
    data = {}
    for track_Name, track_Data of @.working_Sessions_Data when track_Data.metadata.type is 'track'
      data[track_Name] =
        name              : track_Name
        url               : track_Data.url
        description       : track_Data.metadata.description
        organizers        : @.resolve_Names track_Data.metadata.organizers
        participants      : @.resolve_Names track_Data.metadata.participants
        'related-to'      : @.resolve_Working_Sessions(@.resolve_Related_To(track_Name))
        'working-sessions': { ok: [], draft: []}
      for key,value of @.working_Sessions_Data when value.metadata.track is track_Name
        item =
          name      : value.metadata.title       || ''
          url       : value.url                  || ''
          'when-day': value.metadata['when-day'] || ''
          status    : value.metadata.status      || ''

        if value.metadata.status is 'draft'
          data[track_Name]['working-sessions'].draft.add item
        else
          data[track_Name]['working-sessions'].ok.add item

      sorted_Data = {}
      for key in data._keys().sort()
        sorted_Data[key] = data[key]

      sorted_Data.save_Json              @.file_Json_Tracks           # save data as json file
      yaml.safeDump(sorted_Data).save_As @.file_Yaml_Tracks           # save data as yml file
    data

  map_Topics_Data: ()->
    data = {}
    for track_Name, track_Data of @.working_Sessions_Data when track_Data.metadata.type is 'technology'
      data[track_Name] =
        name              : track_Name
        url               : track_Data.url
        description       : track_Data.metadata.description

    sorted_Data = {}
    for key in data._keys().sort()
      sorted_Data[key] = data[key]
    sorted_Data.save_Json              @.file_Json_Topics           # save data as json file
    yaml.safeDump(sorted_Data).save_As @.file_Yaml_Topics           # save data as yml file

    @.topics_Data = sorted_Data

    data

  map_Working_Session_Raw_Data: (raw_Data)->                                              # todo: refactor this method with map_Participant_Raw_Data and map_Tracks_Data
    data         = {}                                                                     # where we are going to store the mapped data
    raw_Metadata = raw_Data.after('---').before('---')                                    # get content in between ---

    for line in raw_Metadata.lines()                                                      # for each line
      if line
        key       = line.before(':').trim()                                               # extract key (with no white spaces)
        if key
          data[key] = line.after( ':').trim()                                             # map value to it

    # normalise some data  todo: refactor calls using helper methods
    data['participants'] =  data['participants']?.split(',')  || []                       # making the participants value an array
    data['organizers'  ] =  data['organizers'  ]?.split(',')  || []                       # making the participants value an array
    data['invited'     ] =  data['invited'     ]?.split(',')  || []
    data['panelists'   ] =  data['panelists'   ]?.split(',')  || []
    data['related-to'  ] =  data['related-to'  ]?.split(',')  || []
    data['topics'      ] =  data['technology'  ]?.split(',')  || []                       # todo: refactor technology to topics in data

    data['participants'] = (item.trim() for item in data['participants'] when item != '') # trim all fields to cover for leading or training spaces
    data['organizers'  ] = (item.trim() for item in data['organizers'  ] when item != '')
    data['invited'     ] = (item.trim() for item in data['invited'     ] when item != '')
    data['related-to'  ] = (item.trim() for item in data['related-to'  ] when item != '')
    data['panelists'   ] = (item.trim() for item in data['panelists'   ] when item != '')
    data['topics'      ] = (item.trim() for item in data['topics'      ] when item != '')

    return data                                                           # return mapped data

  map_Working_Sessions_Data: ->
    data = {}
    for file in @.folder_Working_Sessions.files_Recursive() when file.not_Contains('_template')

      metadata = @.map_Working_Session_Raw_Data file.file_Contents()

      #continue if metadata.type != 'workshop'    # can't apply this fix this since the tracks calculation need this

      name = metadata.title || ''
      url      = '/' + file      .remove(@.folder_Root).replace('.md','.html')
      data[name] =
        name        : name
        url         : url
        topics      : @.resolve_Topics  metadata.topics       || []    # change to topics after refactoring of content mappings
        organizers  : @.resolve_Names   metadata.organizers   || []
        panelists   : @.resolve_Names   metadata.panelists    || []
        participants: @.resolve_Names   @.resolve_Participants_XRef(metadata.participants || [], name)
        invited     : @.resolve_Names   metadata.invited      || []
        'related-to': @.resolve_Working_Sessions @.resolve_Related_To name
        metadata    : metadata

      sorted_Data = {}
      for key in data._keys().sort()
        sorted_Data[key] = data[key]

    sorted_Data.save_Json              @.file_Json_Working_Sessions       # save data as json file (we need this file for the tracks calculations)
    yaml.safeDump(sorted_Data).save_As @.file_Yaml_Working_Sessions       # save data as yml file

    @.working_Sessions_Data = sorted_Data

    data

  save_Data: (data, json_File, yaml_File)->

    if json_File
      data.save_Json             json_File                        # save data as json file
    if yaml_File
      yaml.safeDump(data).save_As yaml_File                         # save data as yml file

    return data

  sort_By_Key: (data)->
    sorted_Data = {}
    for key in data._keys().sort()
      sorted_Data[key] = data[key]
    return sorted_Data


  resolve_Names: (names)->
    result = []
    if names
      for name in names
        data = @.participants_Data[name]
        if data
          result.add
            name   : name
            url    : data.url
            remote : data.metadata.type is 'participant-remote'
        else
          result.add name : name
    result

  resolve_Participants_XRef: (base_List, working_Session_Name)->
    result = base_List
    for name, data of @.participants_Data
      if data.metadata['working-sessions'].contains working_Session_Name
        result.add name
    result.unique().sort()

  resolve_Related_To: (name)->
    result = []
    data = @.working_Sessions_Data?[name]
    if data
      result = data.metadata['related-to'] || []
      for key,value of @.working_Sessions_Data
        if name in value.metadata['related-to']
          result.add key

    result.unique().sort()


  resolve_Topics: (names)->
    result = []
    if names
      for name in names
        data = @.topics_Data?[name]
        if data
          result.add
            name   : name
            url    : data.url
        else
          result.add name : name
    result


  resolve_Working_Sessions: (names)->
    result = []
    if names
      for name in names
        data = @.working_Sessions_Data?[name]
        if data
          result.add
            name   : name
            url    : data.url
        else
          result.add name : name
    result

  working_Session: (name)->
    @.working_Sessions_Data?[name] || null



module.exports = Jekyll_Data
