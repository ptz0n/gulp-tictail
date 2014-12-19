gulp = require 'gulp'
coffee = require 'gulp-coffee'
util = require 'gulp-util'

paths =
  src: './src/**/*.coffee'
  dest: './lib/'


gulp.task 'coffee', ->
  gulp.src paths.src
    .pipe coffee bare: true
      .on 'error', util.log
    .pipe gulp.dest paths.dest

gulp.task 'watch', ->
  gulp.watch paths.src, ['coffee']


gulp.task 'default', ['coffee', 'watch']