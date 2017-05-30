Jekyll_Data = require '../src/Jekyll-Data'

describe 'Jekyll_Data', ->

  jekyll_Data = null

  beforeEach ->
    jekyll_Data = new Jekyll_Data()

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
        @._keys().assert_Contains ['title','type','image']
        @['working-sessions'].size().assert_Bigger_Than 4

  it 'map_Participants_Data', ->
    using jekyll_Data, ->
      @.file_Json_Participants.file_Delete()
      data = @.map_Participants_Data()
      data._keys().size().add(4).assert_Is @.folder_Participants.files_Recursive().size()      # if these don't match it means that there are duplicate file names (the extra 4 are the template)
                                .assert_Bigger_Than(100)                                       # ensure that we have at least 100 mappings
      using data['Daniel Miessler'], ->
        @.metadata.layout.assert_Is 'blocks/page-participant'

      @.file_Json_Participants.assert_File_Exists()

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