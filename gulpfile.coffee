browserSync = require('browser-sync').create();
gulp        = require 'gulp'
concat      = require 'gulp-concat'
pug         = require 'gulp-jade'
less        = require 'gulp-less'
notify      = require 'gulp-notify'
shell       = require 'gulp-shell'


gulp.task 'build', [], shell.task(['jekyll build --incremental'])


gulp.task 'pug', ()->
    localsObject = {}

    gulp.src('website/src/pug/**/*.pug')
          .pipe(pug( locals: localsObject, pretty: true))
          .on('error', notify.onError(message: 'Pug compile error: <%= error.message %>'))
          .pipe(gulp.dest('website'))


gulp.task 'reload-page', ['build'], -> browserSync.reload()

gulp.task 'styles', ->
    gulp.src('website/src/less/**/*.less')
        .pipe(less())
        .on('error', notify.onError(message: 'LESS compile error: <%= error.message %>'))
        .pipe(concat('blocks.css'))
        .pipe(gulp.dest('website/assets/css'))
        #.pipe browserSync.reload(stream: true)          # this is not working


gulp.task 'default'    , ['styles', 'pug', 'build'],->
    browserSync.init
        online         : false                     # doesn't bind to public IP address
        port           : 9000                      # site will be available at http://localhost:9000/
        open           : false                     # use to not open a new browser window every time we start gulp
        logConnections : true
        #logLevel       : 'debug'
        startPath      : '/new/about.html'         # first page that loads up
        server         : baseDir: '_site/'

    gulp.watch 'new/**/*.md'                  , ['reload-page']
    gulp.watch 'website/**/*.md'              , ['reload-page']
    gulp.watch 'website/_data/**/*'           , ['reload-page']
    #gulp.watch 'website/content/**/*.md'  , ['pug', 'reload-page']
    gulp.watch 'website/components/**/*.md'   , ['reload-page']
    gulp.watch 'website/**/*.html'            , ['reload-page']
    gulp.watch 'website/assets/css/**/*.css'  , ['reload-page']

    gulp.watch('website/src/less/**/*.less'   , ['styles']);
    gulp.watch('website/src/pug/**/*.pug'     , ['pug']);