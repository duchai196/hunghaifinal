let mix = require('laravel-mix');

/*
 |--------------------------------------------------------------------------
 | Mix Asset Management
 |--------------------------------------------------------------------------
 |
 | Mix provides a clean, fluent API for defining some Webpack build steps
 | for your Laravel application. By default, we are compiling the Sass
 | file for the application as well as bundling up all the JS files.
 |
 */

mix.styles([
'resources/assets/vendors/bower_components/material-design-iconic-font/dist/css/material-design-iconic-font.min.css'
'resources/assets/vendors/bower_components/animate.css/animate.min.css'
'resources/assets/vendors/bower_components/jquery.scrollbar/jquery.scrollbar.css'
'resources/assets/css/app.min.css'
	])