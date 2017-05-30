require 'fluentnode'

https             = require 'https'
fs                = require 'fs'                      # todo: due to ssl support (use fluentnode methods)
express           = require 'express'

class Server
  constructor: (options)->
    @.app         = null
    @.options     = options || {}
    @.server      = null
    @.port        = @.options.port || process.env.PORT || 3443

  setup_Server: =>    
    @.app = express()

    #@.app.get '/', (req, res) =>             # todo: move to another location
    #  res.end 'ok'
    #@
    # test route
    @.app.get '/ping', (req, res) =>          # todo: move to another location
      res.end 'pong'

    @.app.use '/update', (req, res) =>
      console.log '[request] /update'
      'git'.start_Process_Redirect_Console 'pull'
           .on 'exit', ()->
              childProcess = './node_modules/.bin/gulp'.start_Process 'styles','pug','build'
              childProcess.stdout.on 'data', (data)-> console.log(data.str().trim())
              childProcess.stderr.on 'data', (data)-> console.log(data.str().trim())
              console.log '----------------'
              console.log req.url
              childProcess.on 'exit', ()->
                res.json { thanks: 'server-updated'}

    @

  add_Controllers: ->
    api_Path  = '/api/v1'
    #Api_Data    = require '../controllers/Api-Data'             # Refactor how controllers are loaded #96

    #@.app.use api_Path , new Api_Data(   ).add_Routes().router
    @

  add_Jekyll_Site: ()=>
    @.app.use '/',  express.static __dirname.path_Combine('../../../_site')  # todo: add support for wallaby path
    @
  add_Redirects: ->
    #new Redirects(app:@.app).add_Redirects()
    @

  start_Server_SSL: =>
    #pfx_File       = process.env.MM_SSL_PFX
    #pfx_Passphrase = process.env.MM_SSL_PWD
    options =
      key: fs.readFileSync('./src/server/cert/key.pem'),
      cert: fs.readFileSync('./src/server/cert/cert.pem')
      #pfx: fs.readFileSync pfx_File
      #passphrase: pfx_Passphrase

    @.server      = https.createServer(options, @.app).listen @.port

    #console.log ' Started server with SSL support'

  start_Server: =>
    @.start_Server_SSL()

  server_Url: =>
    "https://localhost:#{@.port}"

  run: (random_Port)=>
    if random_Port
      @.port = 23000 + 3000.random()
    @.setup_Server()
    @.add_Jekyll_Site()
    @.add_Controllers()
    @.add_Redirects()
    @.start_Server()

  stop: (callback)=>
    if @.server
      @.server.close =>
        callback() if callback

module.exports = Server