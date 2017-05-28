Server = require('./src/Server');

start_Server = (options)->
  using new Server(options), ->
    @.run();
    console.log "OwaspSummit site started on #{@.server_Url()}"
    return @

module.exports = start_Server

start_Server()