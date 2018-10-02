<?php
/**
 * The template for displaying the header
 *
 * Displays all of the head element and everything up until the "site-content" div.
 *
 * @package WordPress
 * @subpackage Twenty_Sixteen
 * @since Twenty Sixteen 1.0
 */

?><!DOCTYPE html>
<html <?php language_attributes(); ?> class="no-js">
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="SKYPE_TOOLBAR" content="SKYPE_TOOLBAR_PARSER_COMPATIBLE"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="format-detection" content="telephone=no">
	<link rel="profile" href="http://gmpg.org/xfn/11">
	<?php if ( is_singular() && pings_open( get_queried_object() ) ) : ?>
	<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">
	<?php endif; ?>
	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<div class="wrapper">
    <header id="header" class="flex-container justify-between">
        <a href="index.html" class="logo">
            <img src="<?php echo get_template_directory_uri(); ?>/img/logo-1.png" alt="FITOLED-IMG" class="img">
            <strong class="text">FITOLED</strong>
<!--            <img src="--><?php //echo get_template_directory_uri(); ?><!--/img/logo-2.png" alt="FITOLED" class="text">-->
        </a>
        <div class="header__right">
            <nav class="header__menu">
                <div class="mobile">
                    <div class="flex-container justify-center">
                        <div class="title">Grow лампы</div>
                    </div>
                </div>
                <ul class="nav-list">
<!--                    <li class="active"><a href="#header">Главная</a></li>-->
                    <li><a href="#catalog">Каталог</a></li>
                    <li><a href="#contacts">Контакты</a></li>
                </ul>
            </nav>
        </div>
        <div class="nav-icon mobile">
            <span></span>
            <span></span>
            <span></span>
            <span></span>
        </div>
    </header>
    <main id="main">