const elixir = require('laravel-elixir');

require('laravel-elixir-vue');

/*
 |--------------------------------------------------------------------------
 | Elixir Asset Management
 |--------------------------------------------------------------------------
 |
 | Elixir provides a clean, fluent API for defining some basic Gulp tasks
 | for your Laravel application. By default, we are compiling the Sass
 | file for our application, as well as publishing vendor resources.
 |
 */

elixir(function(mix) {
    mix.styles([
        'bootstrap.min.css',
        'datatable.min.css',
        'datepicker3.css',
        'colorpicker.min.css',
        'pace.min.css',
        'pnotify.custom.min.css',
        'jquery-ui.min.css',
        'select2.min.css',
        'font-awesome.min.css',
        'skin.css'
    ], 'public/css/jl-service.css');
});

elixir(function(mix) {
    mix.styles([
        'style.css'
    ], 'public/css/jl-service-style.css');
});

elixir(function(mix) {
    mix.scripts([
        'jquery.min.js',
        'bootstrap.min.js',
        'jquery.slimscroll.min.js',
        'datatable.min.js',
        'datepicker3.js',
        'chart.min.js',
        'colorpicker.min.js',
        'jquery-ui.min.js',
        'pace.min.js',
        'pnotify.custom.min.js',
        'select2.min.js',
        'app-skin.js'
    ], 'public/js/jl-service.js');
});


elixir(function(mix) {
    mix.version([
    	'css/jl-service.css',
        'css/jl-service-style.css',
    	'js/jl-service.js'
    ]);
});