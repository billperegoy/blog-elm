var gulp = require('gulp');
var elm  = require('gulp-elm');
var sass = require('gulp-sass');

function handleError(err) {
  console.log(err.toString());
  this.emit('end');
}

gulp.task('elm-init', elm.init);

gulp.task('elm', ['elm-init'], function(){
  return gulp.src('src/*.elm')
    .pipe(elm().on('error', handleError))
    .pipe(gulp.dest('dist/'));
});

gulp.task('sass', function () {
  return gulp.src('sass/**/*.scss')
    .pipe(sass().on('error', sass.logError))
    .pipe(gulp.dest('css'));
});


// Rerun the task when a file changes
gulp.task('watch', function() {
  gulp.watch(['src/**/*.elm'], ['elm']);
  gulp.watch(['sass/**/*.scss'], ['sass']);
});

gulp.task('default', ['watch']);
