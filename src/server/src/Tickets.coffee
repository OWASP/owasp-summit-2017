
class Tickets
  constructor: (jekyll_Data)->
    @.jekyll_Data          = jekyll_Data
    @.file_Json_Tickets    = @.jekyll_Data.folder_Data_Mapped.path_Combine 'tickets.json'
    @.file_Yaml_Tickets    = @.jekyll_Data.folder_Data_Mapped.path_Combine 'tickets.yml'

  map_Tickets: ->
    data = {}
    data =
      stats: { count: 0 , no_regonline: 0}
      by_Ticket      : {}
      by_Participant : {}


    for key,value of @.jekyll_Data.participants_Data
      if value.metadata.type is 'participant' and value.metadata.ticket
        data.stats.count++
        data.stats.no_regonline++ if value.metadata.regonline is 'No'

        data.by_Ticket[value.metadata.ticket] ?= { stats: { count:0 }, names: []}
        using data.by_Ticket[value.metadata.ticket], ->
          @.stats.count++
          @.names.add key

        first_Name = key.before(' ')
        last_Names = key.after(' ')
        if first_Name and last_Names
          regonline_Name  = "#{last_Names}, #{first_Name}"
        else
          regonline_Name = key
        mapping =
          name           : key,
          url            : value.url
          ticket         : value.metadata.ticket
          first_Name     : first_Name
          last_Names     : last_Names
          regonline_Name : regonline_Name
          regonline      : value.metadata.regonline   || ''
          ticket         : value.metadata.ticket      || ''
          'when-day'     : value.metadata['when-day'] || ''
        data.by_Participant[regonline_Name] = mapping

    #console.log data.by_Participant._keys()
    data.by_Participant = @.jekyll_Data.sort_By_Key data.by_Participant
    #console.log data.by_Participant._keys()
    #console.log data.json_Pretty()
    #console.log data.stats.no_regonline
    @.jekyll_Data.save_Data data, @.file_Json_Tickets, @.file_Yaml_Tickets
    return data


module.exports = Tickets