<?php

function enqueue_styles() {

    wp_enqueue_style('reset', get_template_directory_uri() . "/css/reset.css");
    wp_enqueue_style('slick', get_template_directory_uri() . "/css/slick.css");
    wp_enqueue_style('style', get_template_directory_uri() . "/style.css");

    wp_register_style('font-style', 'https://fonts.googleapis.com/css?family=Montserrat:300,400,600,700');

    wp_enqueue_style( 'font-style');
}

add_action('wp_enqueue_scripts', 'enqueue_styles');
add_theme_support( 'post-thumbnails' );


function enqueue_scripts () {
    wp_deregister_script('jquery');

    wp_register_script( 'jquery', 'https://code.jquery.com/jquery-2.0.2.min.js');

    wp_enqueue_script('ajax', "https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js");



    wp_enqueue_script('jqueryui',"https://code.jquery.com/ui/1.12.1/jquery-ui.js");



    wp_enqueue_script('main', get_template_directory_uri() . "/js/main.js");

    wp_enqueue_script('masked', get_template_directory_uri() . "/js/masked.js");

    wp_enqueue_script('slick', get_template_directory_uri() . "/js/slick.min.js");

}

add_action('wp_enqueue_scripts', 'enqueue_scripts');

