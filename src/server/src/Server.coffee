require 'fluentnode'

https             = require 'auto-sni'
fs                = require 'fs'                      # todo: due to ssl support (use fluentnode methods)
express           = require 'express'

class Server
  constructor: (options)->
    @.app         = null
    @.options     = options || {}
    @.server      = null
    @.port        = @.options.port || process.env.PORT || 3080
    @.sslport        = @.options.sslport || process.env.SSLPORT || 3443

  setup_Server: =>    
    @.app = express()

    #@.app.get '/', (req, res) =>             # todo: move to another location
    #  res.end 'ok'
    #@
    # test route
    @.app.get '/ping', (req, res) =>          # todo: move to another location
      res.end 'pong'

    @.app.use '/update', (req, res) =>

      run_Command = (cmd,args, callback)->
        childProcess = cmd.start_Process args
        childProcess.stdout.on 'data', (data)-> console.log(data.str().trim())
        childProcess.stderr.on 'data', (data)-> console.log(data.str().trim())
        childProcess.on 'exit', ()->
          callback()

      console.log '[request] /update'
      console.time(".... Updating site");
      run_Command 'git', ['reset','--hard','HEAD'], ->
        run_Command 'git', 'pull', ->
          run_Command 'npm',['run','build-data'], ->
            run_Command './node_modules/.bin/gulp',['styles','pug','build'],->
              console.timeEnd(".... Updating site");
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
    options =
      email: "dinis.cruz@owasp.org", // Emailed when certificates expire.
      agreeTos: true, // Required for letsencrypt.
      debug: true, // Add console messages and uses staging LetsEncrypt server. (Disable in production)
      domains: ["owaspsummit.org"],
      ports: {
        http: @.port, // Optionally override the default http port.
        https: @.sslport // // Optionally override the default https port.
      }
      #key: fs.readFileSync('./src/server/cert/key.pem'),
      #cert: fs.readFileSync('./src/server/cert/cert.pem')
      #key: fs.readFileSync('./cert/privkey.pem'),
      #cert: fs.readFileSync('./cert/fullchain.pem')

    @.server      = https.createServer(options, @.app)

    #console.log ' Started server with SSL support'

  start_Server: =>
    @.start_Server_SSL()

  server_Url: =>
    "https://localhost:#{@.sslport}"

  run: (random_Port)=>
    if random_Port
      @.port = 23000 + 3000.random()
      @.sslport = 27000 + 3000.random()
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
