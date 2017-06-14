Jekyll_Data = require '../src/Jekyll-Data'

describe 'Jekyll_Data', ->

  jekyll_Data = null

  beforeEach ->
    jekyll_Data = new Jekyll_Data()
    using jekyll_Data,->
      #@.participants_Data     ._keys().size().assert_Is_Bigger_Than 140
      #@.working_Sessions_Data ._keys().size().assert_Is_Bigger_Than 140
      #@.topics_Data._keys()   .size().assert_Is_Bigger_Than 7

  it 'constructor', ->
    using jekyll_Data, ->
      @.folder_Root        .assert_Folder_Exists()
      @.folder_Data        .assert_Folder_Exists()
      @.folder_Data_Mapped .assert_Folder_Exists()
      @.folder_Participants.assert_Folder_Exists()

  it 'map_Participant_Raw_Data', ->
    using jekyll_Data, ->
      test_Data = @.folder_Participants.files_Recursive().first().file_Contents()
      using @.map_Participant_Raw_Data(test_Data), ->
        @._keys().assert_Is [ 'working-sessions' ]
        #@._keys().assert_Contains ['title','type','image']

  it 'map_Participants_Data', ->
    using jekyll_Data, ->
      @.file_Json_Participants.file_Delete()
      data = @.map_Participants_Data()
      data._keys().size().add(6).assert_Is @.folder_Participants.files_Recursive().size()      # if these don't match it means that there are duplicate file names (the extra 4 are the template, extra two was .DS_Store)
                                .assert_Bigger_Than(100)                                       # ensure that we have at least 100 mappings
      using data['Daniel Miessler'], ->
        @.metadata.layout.assert_Is 'blocks/page-participant'

      @.file_Json_Participants.assert_File_Exists()

  it 'map_Schedule', ->
    using jekyll_Data, ->
      schedule = @.map_Schedule()
      schedule._keys().assert_Is [ 'by_Room', 'by_Track','by_Time', 'by_Participant' ]
      schedule.by_Time['PM-1']['CISO']['Mon'][0]._keys().assert_Is ['name', 'url', 'location', 'layout','remote', 'locked', 'status']

  it 'map_Tracks_Data', ->
    using jekyll_Data, ->
      data = @.map_Tracks_Data()
      data._keys().size().assert_Is_12

  it 'map_Topics_Data', ->
    using jekyll_Data, ->
      data = @.map_Topics_Data()
      data._keys().size().assert_Is 8


  it 'map_Working_Sessions_Data', ->
    using jekyll_Data, ->
      data = @.map_Working_Sessions_Data()
      data._keys().size().assert_Is_Bigger_Than 100

  it 'resolve_Names', ->
    using jekyll_Data, ->
      test_Names = ['Bernhard Mueller' , 'Sven Schleier','Abc']
      @.resolve_Names test_Names
           .assert_Is [ { name: 'Bernhard Mueller', url: '/Participants/ticket-24h-owasp/Bernhard-Mueller.html' , remote:false},
                        { name: 'Sven Schleier'   ,url: '/Participants/ticket-24h-owasp/Sven-Schleier.html'     , remote:false},
                        { name: 'Abc' } ]

  it 'resolve_Participants_XRef', ->
    using jekyll_Data, ->
      name = 'The Future of Privacy'
      base_List = @.working_Sessions_Data[name].metadata.participants
      @.resolve_Participants_XRef base_List, name

  it 'resolve_Related_To',->
    using jekyll_Data, ->
      name = 'Education'
      @.resolve_Related_To name
        .assert_Contains ['NodeGoat', 'Juice Shop']

  it 'resolve_Topics', ->
    using jekyll_Data, ->
      test_Names        = ['SOC' , 'GDPR','Abc']
      @.resolve_Topics test_Names
          .assert_Is [ { name: 'SOC' , url: '/Working-Sessions/Technologies/SOC.html'  },
                       { name: 'GDPR', url: '/Working-Sessions/Technologies/GDPR.html' },
                       { name: 'Abc'                                                   }]


  it 'resolve_Working_Sessions', ->
    using jekyll_Data, ->
      test_Names        = ['Juice Shop','NodeGoat','Abc']
      console.log  @.resolve_Working_Sessions(test_Names)
      @.resolve_Working_Sessions(test_Names)
          .assert_Is [ { name: 'Juice Shop', url: '/Working-Sessions/Juice-Shop/index.html' },
                       { name: 'NodeGoat'  , url: '/Working-Sessions/Owasp-Projects/NodeGoat.html' },
                       { name: 'Abc' } ]



  it 'working_Session', ->
    name = 'A10 - Underprotected APIs'
    using jekyll_Data.working_Session(name), ->
      @.name.assert_Is name


  ########################################################
  # bugs

  it 'bug - related-to not showing in Education Track', ->
    using jekyll_Data, ->
      name      = 'Education'
      tracks    = @.map_Tracks_Data()
      education = tracks[name]
      education['related-to'].assert_Is_Not []                          # this was wrong

      first_Mapping = @.resolve_Related_To(name).assert_Contains 'Juice Shop'
      final_Mapping = @.resolve_Working_Sessions(first_Mapping).assert_Is_Not []        # bug was inside this function

  it 'bug -  related-to not showing in Securing Legacy Applications', ->
    using jekyll_Data, ->
      using @.working_Session('Securing Legacy Applications'), ->
        @['related-to'].size().assert_Is 3                          # this is working

  it 'bug - Participants list not correct in WorkingSession data', ->
    name = 'The Future of Privacy'
    using jekyll_Data.working_Session(name), ->
      @.participants.size().assert_Is_Bigger_Than 3       # this value was wrong (it was 3)

  it 'bug - Schedule by Track Name is not sorted', ->
    using jekyll_Data.schedule_Data.by_Track['Mon'], ->
      #@._keys().assert_Is_Not  @._keys().sort()             # these should be equal
      @._keys().sort().assert_Is  @._keys().sort()          # expected result

  it 'bug - Working Sessions data contains tracks and other files', ->
    using jekyll_Data.working_Sessions_Data, ->
      @['CISO'].assert_Is_Not_Null()                # all these show the problem
      @['CISO'].metadata.type.assert_Is 'track'     # but can't fix this since the tracks calculation need this
      @._keys().size().assert_Is_Bigger_Than 180
      #assert_Is_Null @['CISO']
      #@._keys().size().assert_Is_Smaller_Than 180

  it 'bug - duplicated track shown in participant page when session is in two tracks',->
    using jekyll_Data.schedule_Data.by_Room.Tue['Room-6']['AM-1'], ->
      #@.assert_Size_Is 2                                                        # should be 1
      #@[0].name.assert_Is 'Hands on Threat Modeling Juice Shop (Architecture)'
      #@[0].name.assert_Is @[1].name                                             # shows duplication of Sessions name
      @.assert_Size_Is 1                                                         # Fixed value

    using jekyll_Data.schedule_Data.by_Participant['Bjoern Kimminich']['AM-1'].Tue,->
      #@.assert_Size_Is 2                                                         # should be 1
      #@[0].name.assert_Is 'Hands on Threat Modeling Juice Shop (Architecture)'
      #@[0].name.assert_Is @[1].name                                              # shows duplication of Sessions name
      @.assert_Size_Is 1                                                         # Fixed value



  # MISC

  it 'test (list of tracks)', ->
    using jekyll_Data, ->
      #console.log @.file_Json_Tracks.load_Json()._keys().join(',')