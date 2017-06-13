Jekyll_Data = require '../src/Jekyll-Data'

describe 'Jekyll Data | Participants', ->

  participants = null

  beforeEach ->
    participants = new Jekyll_Data().participants
    using participants,->
      @.jekyll_Data.folder_Root.assert_Folder_Exists()
      @.file_Yaml_Lists.file_Name().assert_Is 'lists.yml'

  it 'map_Lists', ->
    using participants, ->
      using @.map_Lists(), ->
        @.all_Participants.size().assert_Is_Bigger_Than 150
        #@.all_Participants.size().assert_Is @.by_Type['participant'].size() + @.by_Type['participant-remote'].size()
        @.by_Type._keys().assert_Is ['participant-remote','participant']
        @.by_Funded['yes'].size().assert_Is_Bigger_Than 24

      @.file_Json_Lists.assert_File_Exists()
      @.file_Yaml_Lists.assert_File_Exists()
