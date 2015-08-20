var gulp = require('gulp');
var gutil = require('gulp-util');
var debug = require('gulp-debug');
var download = require('gulp-download');
var decompress = require('gulp-decompress');
var ftp = require('vinyl-ftp');

var collection = require('./collection.js');

gulp.task('default', function() {
    var connection = ftp.create( {
        host: process.env.DEPLOYMENT_FTP_HOST,
        user: process.env.DEPLOYMENT_FTP_USER,
        password: process.env.DEPLOYMENT_FTP_PASS,
        parallel: 10,
        maxConnections: 15,
        log: gutil.log
    });

    download(collection.files)
    .pipe(decompress())
    .pipe(connection.dest(process.env.DEPLOYMENT_FTP_DIRECTORY));
});
