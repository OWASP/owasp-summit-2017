jekyll_Data = require('./src/Jekyll-Data');

using new jekyll_Data(), ->
  console.log ".... Creating Summit yml and json Data"
  console.time(".... Build Data in");
  @.map_Participants_Data()
  @.map_Working_Sessions_Data()
  @.map_Topics_Data()
  @.map_Tracks_Data()
  @.map_Schedule()
  console.timeEnd(".... Build Data in");