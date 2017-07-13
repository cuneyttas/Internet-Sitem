<?php

// Yönetici sayfası kuyruğa ekleme fonksiyonları
function komutlariYukle(){ // script = komut, komut dizisi

	wp_register_style('yonetici', get_template_directory_uri().'/css/yonetici.css' , array(), '1.0', 'all');
	wp_enqueue_style('yonetici');

}

add_action('admin_enqueue_scripts', 'komutlariYukle');



function cssVeJsGetir() {

	// CSS dosyalarını çağırma fonksiyonları
	wp_enqueue_style( 'bicim', get_stylesheet_uri() );
	wp_enqueue_style( 'mobil', get_stylesheet_directory_uri()."/css/mobil.css" );
	wp_enqueue_style( 'font-awesome', get_stylesheet_directory_uri()."/css/font-awesome.min.css" );
	wp_enqueue_style( 'colorbox', get_stylesheet_directory_uri()."/js/colorbox/colorbox.css" );
	wp_enqueue_style( 'google-font', "https://fonts.googleapis.com/css?family=Ubuntu&subset=latin,latin-ext" );


	// Javascript dosyalarını çağırma fonksiyonları
	wp_enqueue_script( 'colorbox', get_stylesheet_directory_uri()."/js/colorbox/jquery.colorbox-min.js", ['jquery'] );
	wp_enqueue_script( 'senaryo', get_stylesheet_directory_uri()."/js/senaryo.js", ['jquery'] );

}

add_action('wp_enqueue_scripts', 'cssVeJsGetir');




?>