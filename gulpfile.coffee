require 'fluentnode'

browserSync = require('browser-sync').create();
gulp        = require 'gulp'
concat      = require 'gulp-concat'
pug         = require 'gulp-jade'
less        = require 'gulp-less'
notify      = require 'gulp-notify'
shell       = require 'gulp-shell'

gulp.task 'build', [], shell.task(['jekyll build --incremental'])

gulp.task 'build-all', [], shell.task(['jekyll build'])


gulp.task 'build-data', [], shell.task(['npm run build-data'])

#gulp.task 'npm-tests', [], (done)->
#    console.log "starting npm"
#    'npm'.start_Process_Redirect_Console 'test'
#        .on 'exit', ()->
#            console.log "----- npm finished"
#            'jekyll'.start_Process_Redirect_Console 'clean'
#                    .on 'exit', ()->
#                        console.log "----- all done"
#                        done()


gulp.task 'pug', ()->
    localsObject = {}

    pug_Compile = (source_Folder, target_Folder)=>

        gulp.src(source_Folder)
              .pipe(pug( locals: localsObject, pretty: true))
              .on('error', notify.onError(message: 'Pug compile error: <%= error.message %>'))
              .pipe(gulp.dest(target_Folder))

    pug_Compile('src/includes/**/*.pug', 'website/_includes')
    pug_Compile('src/layouts/**/*.pug' , 'website/_layouts')

gulp.task 'reload-page'    , ['build'], -> browserSync.reload()
gulp.task 'reload-page-all', ['build-all'], -> browserSync.reload()

gulp.task 'styles', ->
    gulp.src('src/less/**/*.less')
        .pipe(less())
        .on('error', notify.onError(message: 'LESS compile error: <%= error.message %>'))
        .pipe(concat('blocks.css'))
        .pipe(gulp.dest('website/assets/css'))
        #.pipe browserSync.reload(stream: true)          # this is not working


gulp.task 'travis'     , ['styles', 'pug', 'build-data', 'build'];

gulp.task 'default'    , ['styles', 'pug', 'build-data', 'build'],->
    browserSync.init
        online         : false                     # doesn't bind to public IP address
        port           : 9000                      # site will be available at http://localhost:9000/
        open           : false                     # use to not open a new browser window every time we start gulp
        logConnections : true
        #logLevel       : 'debug'
        startPath      : '/website/'         # first page that loads up
        server         : baseDir: '_site/'

    # gulp.watch 'new/**/*.md'                  , ['reload-page']
    gulp.watch '_posts/**/*.md'               , ['reload-page']
    gulp.watch 'schedule/**/*.md'             , ['reload-page']
    gulp.watch 'pages/**/*.md'                , ['reload-page']
    gulp.watch 'website/**/*.md'              , ['reload-page']
    gulp.watch 'website/_data/**/*'           , ['reload-page']
    gulp.watch 'website/**/*.html'            , ['reload-page']
    gulp.watch 'website/assets/css/**/*.css'  , ['reload-page']

    gulp.watch 'src/less/**/*.less'           , ['styles'     ]
    gulp.watch 'src/**/*.pug'                 , ['pug'        ]
    gulp.watch 'src/**/*.jade'                , ['pug'        ]

    gulp.watch 'Logistics/**/*.md'            , ['build-data', 'reload-page-all']
    gulp.watch 'Participants/**/*.md'         , ['build-data', 'reload-page-all']
    gulp.watch 'Working-Sessions/**/*.md'     , ['build-data', 'reload-page-all']
    gulp.watch 'Outcomes/**/*.md'             , ['reload-page']
