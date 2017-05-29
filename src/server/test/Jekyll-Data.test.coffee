Jekyll_Data = require '../src/Jekyll-Data'

describe 'Jekyll_Data', ->

  jekyll_Data = null

  beforeEach ->
    jekyll_Data = new Jekyll_Data()

  it 'constructor', ->
    using jekyll_Data, ->
      @.folder_Root        .assert_Folder_Exists()
      @.folder_Data        .assert_Folder_Exists()
      @.folder_Data_Json   .assert_Folder_Exists()
      @.folder_Participants.assert_Folder_Exists()

  it 'create_Participants_Json', ->
    using jekyll_Data, ->
      @.create_Participants_Json()

  it 'map_Participant_Raw_Data', ->
    using jekyll_Data, ->
      test_Data = @.folder_Participants.files_Recursive().first().file_Contents()
      using @.map_Participant_Raw_Data(test_Data), ->
        @._keys().assert_Contains ['title','type','image']
        @['working-sessions'].size().assert_Bigger_Than 4

  it 'participants_Data', ->
    using jekyll_Data, ->
      @.file_Json_Participants.file_Delete()
      data = @.participants_Data()
      data._keys().size().assert_Is @.folder_Participants.files_Recursive().size()      # if these don't match it means that there are duplicate file names
                         .assert_Bigger_Than(100)                                       # ensure that we have at least 100 mappings
      using data['Daniel Miessler'], ->
        @.path.assert_File_Exists()
        @.metadata.layout.assert_Is 'blocks/page-participant'

      @.file_Json_Participants.assert_File_Exists()