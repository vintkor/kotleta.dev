<?php
add_theme_support('post-thumbnails');
remove_action('wp_head', 'wp_generator');

add_image_size( 'afisha-thumb', 600, 400, true );

// --------------------Регистрация меню--------------------------------------
add_action('init', 'register_top_left_menu');

function register_top_left_menu() {
    register_nav_menus(array(
        'top-left-menu' => 'Меню сайта верхнее левое'
    ));
}

add_action('init', 'register_top_right_menu');

function register_top_right_menu() {
    register_nav_menus(array(
        'top-right-menu' => 'Меню сайта верхнее правое'
    ));
}

// --------------------Виджет контакты Карта---------------------------
function maps_text_widget_init() {
	register_sidebar( array(
		'name'          => 'Карта в контактах',
		'id'            => 'maps',
		'before_widget' => '',
		'after_widget'  => '',
		'before_title'  => '<span class="hidden">',
		'after_title'   => '</span>',
	) );
}
add_action( 'widgets_init', 'maps_text_widget_init' );

// --------------------Включаем поддержку WooCommerce---------------------------
add_theme_support( 'woocommerce' );

/*
** Убираем вкладки со страницы товара
*/
add_filter( 'woocommerce_product_tabs', 'woo_remove_product_tabs', 98 );
function woo_remove_product_tabs( $tabs ) {
unset( $tabs['description'] ); // Убираем вкладку Характеристики
//unset( $tabs['reviews'] ); Убираем вкладку Отзывы/обзоры
unset( $tabs['additional_information'] ); // Убираем вкладку с дополнительной информацией
return $tabs;
}


// --------------------Виджет фильтр товаров---------------------------
function products_filter_init() {
	register_sidebar( array(
		'name'          => 'Фильтр продуктов',
		'id'            => 'products_filter',
		'before_widget' => '',
		'after_widget'  => '',
		'before_title'  => '<span class="hidden">',
		'after_title'   => '</span>',
	) );
}
add_action( 'widgets_init', 'products_filter_init' );