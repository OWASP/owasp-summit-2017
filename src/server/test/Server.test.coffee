Server = require '../src/Server'

process.env.NODE_TLS_REJECT_UNAUTHORIZED = "0";  # so that we don't have ssl errors below (caused by the signed self cert)

describe 'server | Server', ->

  server = null

  beforeEach ->
    server = new Server()

  afterEach (done)->
    if server.server
      server.stop ->
        done()
    else
      done()

  it 'constructor', ->
    expected_Port = process.env.PORT || 3443
    Server.assert_Is_Function()
    using new Server(), ->
      assert_Is_Null @.server
      assert_Is_Null @.app
      @.options.assert_Is {}
      @.port.assert_Is expected_Port

  it 'constructor (with options)', ->
    port = 12345
    using new Server(port:port), ->
      @.port.assert_Is 12345


  it 'add_Jekyll_Site', ->
    using server, ->
      @.setup_Server()
      @.add_Jekyll_Site()
      static_Routes = (route for route in @.app._router.stack when route.name is 'serveStatic')
      static_Routes[0].regexp.assert_Is /^\/?(?=\/|$)/i

  it 'start_Server', ->
    using new Server(), ->
      @.setup_Server()
      @.app.assert_Is_Object
      (@.server is null).assert_Is_True()

  it 'start_Server', (done)->
    using server, ->
      @.port = 20000 + 5000.random()
      @.setup_Server()
      @.start_Server()
      @.app.assert_Is_Function()
      @.server.assert_Is_Object()
      @.server_Url().add('/ping').GET (data)=>
        data.assert_Is 'pong'
        done()

  it 'server_Url', ->
    using server, ->
      expected_Port = process.env.PORT || 3443
      @.server_Url().assert_Is "https://localhost:#{expected_Port}"
      @.port = 12345
      @.server_Url().assert_Is 'https://localhost:12345'


  it 'run', (done)->
    using server, ->
      @.run(true)
      @.port.assert_Is_Not 3000
      @.server_Url().append('/ping').GET (data)=>
        data
        data.assert_Is 'pong'
        done()

  it 'stop', (done)->
    using server, ->
      @.run(true)
      @.stop =>
        @.server_Url().GET (data)=>
          assert_Is_Null data
          done()