var gulp = require('gulp'),
    sass = require('gulp-sass');

gulp.task('sass', function(){
    return gulp.src(['./dev/**/*.scss'])
        .pipe(sass({
            outputStyle: 'expanded',
            errLogToConsole: true
        }))
        .pipe(gulp.dest('./dist'))
})

gulp.task('watch', function(){
    gulp.watch(['./dev/**/*.scss'], gulp.series('sass'));
})
