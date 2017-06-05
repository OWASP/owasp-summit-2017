jekyll_Data = require('./src/Jekyll-Data');

first_Build =  (data)=>
  if data.file_Json_Participants.file_Exists() is false
    console.log "... First build so creating core files in sequence"
    data.folder_Data_Mapped.folder_Create()
    data.map_Participants_Data()                   # do these once
    data.map_Working_Sessions_Data()               # to create the base mappings

using new jekyll_Data(), ->
  console.log ".... Creating Summit yml and json Data"
  first_Build(@)
  console.time(".... Build Data in");
  @.map_Participants_Data()
  @.map_Working_Sessions_Data()
  @.map_Topics_Data()
  @.map_Tracks_Data()
  @.map_Schedule()
  console.timeEnd(".... Build Data in");