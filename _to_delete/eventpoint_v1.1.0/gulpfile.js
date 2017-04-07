//note for LogicHunt dev: each time you change this file copy the new file in project folder

/*
 to start with gulp
 sudo npm install -g gulp //one time
 npm install --save-dev gulp
 npm install jshint gulp-jshint gulp-sass gulp-concat gulp-uglify gulp-rename --save-dev
 npm install gulp-less
 npm install gulp-rename
 npm install gulp-minify-css
 npm install gulp-watch
 npm install browser-sync
 npm install gulp-less gulp-rename gulp-minify-css gulp-watch browser-sync --save-dev

 * */


var appConfig = {
    "proxy": 'http://localhost/htmlthemes/eventpoint/dist'
    //"proxy": 'http://192.168.2.6/themearth'
};


//load node modules

//var node_mod_dir = 'D:/node_modules/'; //for internal development, or set path as you need
var node_mod_dir = 'D:/node_modules/'; //for internal development, or set path as you need
//var node_mod_dir = '../node_modules/'; //for internal development, or set path as you need
//var node_mod_dir = '';
var gulp = require('gulp'),// we just install gulp in project dir and try to use other modules from a centralized node modules dir, but if you need you can install in root of your project
    less = require(node_mod_dir+'gulp-less'),
    rename = require(node_mod_dir+'gulp-rename'),
    minifyCss = require(node_mod_dir+'gulp-minify-css'),
    browserSync = require(node_mod_dir+'browser-sync').create(),
    watch = require(node_mod_dir+'gulp-watch');

//define your project path , use linux style forward slash as dir seperator


/*
 var gulp = require('gulp'),
 less = require('gulp-less'),
 rename = require('gulp-rename'),
 minifyCss = require('gulp-minify-css'),
 browserSync = require('browser-sync').create(),
 watch = require('gulp-watch');
 */

//define your project path , use linux style forward slash as dir seperator
var templatedir = "D:/xampp/htdocs/htmlthemes/eventpoint/dist/assets/";
//var templatedir = "./"; //if the gulp file is in same dir of the theme project




/* Task to compile less */
gulp.task('compile-less', function() {

    //color variation
    var variation = ["blue", "olive","orange", "pink", "red", "teal", "violet"];
    var less_tasks = [];


   // var default_less2 = '';
    var default_less = gulp.src(templatedir+'less/style-default.less')
        .pipe(less())
        //.pipe(rename({suffix: '.min'}))
        .pipe(gulp.dest(templatedir+'css/')).on('end', function() {

            var default_less2 = gulp.src(templatedir+'css/style-default.css')
                .pipe(minifyCss().on('error', function(err) {
                    console.log(err);
                }))
                .pipe(rename({suffix: '.min'}))
                .pipe(gulp.dest(templatedir+'css/'));
            less_tasks.push(default_less2);
        });

    //now compile the rest variation

    variation.forEach(function(entry) {
        var temp = gulp.src(templatedir+'less/color-variation/style-'+entry+'.less')
            .pipe(less())
            .pipe(gulp.dest(templatedir+'css/'))
            .pipe(gulp.dest(templatedir+'css/')).on('end', function() {
                var temp2 = gulp.src(templatedir+'css/style-'+entry+'.css')
                    .pipe(minifyCss().on('error', function(err) {
                        console.log(err);
                    }))
                    .pipe(rename({suffix: '.min'}))
                    .pipe(gulp.dest(templatedir+'css/'));
                less_tasks.push(temp2);
            });
    });

    //browserSync.reload

    return less_tasks;
});

/* Task to watch less changes */
gulp.task('watch-less',['compile-less'], function() {

    browserSync.init({
        //server: templatedir,
        proxy: appConfig['proxy']
    });

    gulp.watch(templatedir+'less/*.less', ['compile-less']);
    //gulp.watch(templatedir+'less/themearth/*.less', ['compile-less']);
    gulp.watch(templatedir+'css/*.css').on('change', browserSync.reload);
});

/* Task when running `gulp` from terminal */
gulp.task('default', ['watch-less']);