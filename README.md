# gulp-tictail

[![Build Status](https://travis-ci.org/tictail/gulp-tictail.svg?branch=master)](https://travis-ci.org/tictail/gulp-tictail)

Gulp target for simplifying Tictail theme creation.


### Installation

```bash
$ npm install --save-dev gulp-tictail
```

### Usage

In your `gulpfile.js`:

```javascript
var gulp = require('gulp'),
    tictail = require('gulp-tictail');

gulp.task('serve', function() {
    tictail.serve({
        store_id: 't'
    });
});

gulp.task('default', ['serve']);
```

```bash
$ gulp
```

Now hit [http://localhost:5555/](http://localhost:5555/) to enjoy your own delightful theme development experience.

For an opinionated development setup using `gulp-tictail`, see [theme-example](https://github.com/tictail/theme-example).


### Options

The `serve` method takes the following config options as an object:

* `store_id` - The store to fetch data (products etc.) from
* `port` - The desired port to listen on. Defaults to `5555`.
* `src` - Path to theme source (theme.mustache) and partials. Defaults to `"./src"`
* `dist` - Path to static assets (images, CSS etc.) used in theme. Defaults to `"./dist"`


### Development

```bash
$ npm install tictail/gulp-tictail
```

#### Testing

```bash
$ make test
```