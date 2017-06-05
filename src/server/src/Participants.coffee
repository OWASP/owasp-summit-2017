
class Participants
  constructor: (jekyll_Data)->
    @.jekyll_Data          = jekyll_Data
    @.file_Json_Lists      = @.jekyll_Data.folder_Data_Mapped.path_Combine 'lists.json'
    @.file_Yaml_Lists      = @.jekyll_Data.folder_Data_Mapped.path_Combine 'lists.yml'

  map_Lists: ->

    data =
      all_Participants   : []
      by_Type            : {}
      by_Role            : {}
      by_Funded          : {}

    add_Mapping = (data_Key, metadata_Key, key, value)->
      if value.metadata[metadata_Key]
        data[data_Key][value.metadata[metadata_Key]] ?= []
        data[data_Key][value.metadata[metadata_Key]].add key


    for key,value of @.jekyll_Data.participants_Data
      data.all_Participants.add key
      add_Mapping 'by_Type'  , 'type'  , key, value
      add_Mapping 'by_Role'  , 'role'  , key, value
      add_Mapping 'by_Funded', 'funded', key, value

    @.jekyll_Data.save_Data data, @.file_Json_Lists, @.file_Yaml_Lists
    return data


module.exports = Participants