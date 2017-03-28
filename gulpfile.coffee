browserSync = require('browser-sync').create();
gulp        = require('gulp');
shell       = require('gulp-shell');


gulp.task 'build', shell.task(['jekyll build --incremental'])

gulp.task 'reload-page', ['build'], -> browserSync.reload()

gulp.task 'default'    , ['build'],->
    browserSync.init
        port           : 9000                      # site will be available at http://localhost:9000/
        open           : false                     # use to not open a new browser window every time we start gulp
        logConnections : true
        logLevel       : 'debug'
        startPath      : '/new/about.html'         # first page that loads up
        server         : baseDir: '_site/'

    gulp.watch 'new/**/*.md'    , ['reload-page']
    gulp.watch 'website/**/*.*' , ['reload-page']