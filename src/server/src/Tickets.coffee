
class Tickets
  constructor: (jekyll_Data)->
    @.jekyll_Data          = jekyll_Data
    @.file_Json_Lodges    = @.jekyll_Data.folder_Data_Mapped.path_Combine 'lodges.json'
    @.file_Yaml_Lodges    = @.jekyll_Data.folder_Data_Mapped.path_Combine 'lodges.yml'
    @.file_Json_Tickets    = @.jekyll_Data.folder_Data_Mapped.path_Combine 'tickets.json'
    @.file_Yaml_Tickets    = @.jekyll_Data.folder_Data_Mapped.path_Combine 'tickets.yml'



  map_Lodges: ->
    ids = ['OK413','OK414','OK415','OK416','OK426','OK427','OK428','OK309','OK310','OK312','OK313','OK314','OK315','OK316','OK319','OK320','OK321']
    data =
      ids          : ids
      lodges       : {}
      pre_Summit   : {}
      day_delegates: []

    # Summit tickets
    tickets_Data = @.file_Json_Tickets.load_Json()
    need_Room    = []
    for key,value of tickets_Data.by_Ticket
      if key.contains 'x24h'
        need_Room = need_Room.concat value.names
      else
        for name in value.names
          first_Name = name.before(' ')
          last_Name  = name.after(' ')
          data.day_delegates.add first_Name : first_Name, last_Name : last_Name



    while need_Room.size() >0
      id = ids.pop()
      data.lodges[id] =
        id   : id
        names: need_Room.splice(0,6)

    for id in ids
      data.lodges[id] =
        id   : id
        names: []

    # PreSummit
    names = []
    for key,value of @.jekyll_Data.participants_Data
      if value.metadata['pre-summit']
        names.add name: key, when: value.metadata['pre-summit']
    data.pre_Summit['OK314'] = names.splice(0,6)
    data.pre_Summit['OK315'] = names.splice(0,6)
    data.pre_Summit['TBD']   = names.splice(0,6)


    @.jekyll_Data.save_Data data, @.file_Json_Lodges, @.file_Yaml_Lodges
    return data

  map_Tickets: ->
    data = {}
    data =
      stats: { count: 0 , no_regonline: 0}
      by_Type: '24h': [] , '8h': []
      by_Ticket      : {}
      by_Participant : {}


    for key,value of @.jekyll_Data.participants_Data
      if value.metadata.type is 'participant' and value.metadata.ticket
        data.stats.count++
        data.stats.no_regonline++ if value.metadata.regonline is 'No'

        # add data to the csv.
        if value.metadata.ticket.contains('24h')
          data.by_Type['24h'].add "#{key}, #{value.metadata?['job-title'].before(',') || ''}, #{value.metadata['company'] || ''}\n"
        else
          data.by_Type['8h'].add "#{key}, #{value.metadata?['job-title'].before(',') || ''}, #{value.metadata['company'] || ''}\n"

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

    data.by_Participant = @.jekyll_Data.sort_By_Key data.by_Participant

    @.jekyll_Data.save_Data data, @.file_Json_Tickets, @.file_Yaml_Tickets
    return data


module.exports = Tickets
