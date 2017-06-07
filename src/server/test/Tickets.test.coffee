Jekyll_Data = require '../src/Jekyll-Data'

describe 'Jekyll Data | Tickets', ->

  tickets = null

  beforeEach ->
    tickets = new Jekyll_Data().tickets
    using tickets,->
      @.jekyll_Data.folder_Root.assert_Folder_Exists()
      @.file_Yaml_Tickets.file_Name().assert_Is 'tickets.yml'

  it 'map_Tickets', ->
    using tickets, ->
      using @.map_Tickets(), ->
#        @.all_Participants.size().assert_Is_Bigger_Than 150
#        @.all_Participants.size().assert_Is @.by_Type['participant'].size() + @.by_Type['participant-remote'].size()
#        @.by_Type._keys().assert_Is ['participant-remote','participant']
#        @.by_Funded['yes'].size().assert_Is_Bigger_Than 24

      @.file_Json_Tickets.assert_File_Exists()
      @.file_Yaml_Tickets.assert_File_Exists()

  it 'map_Lodges', ->
    using tickets, ->
      using @.map_Lodges(), ->

      @.file_Json_Lodges.assert_File_Exists()
      @.file_Yaml_Lodges.assert_File_Exists()