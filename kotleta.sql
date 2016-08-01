-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 01 2016 г., 17:02
-- Версия сервера: 5.7.11
-- Версия PHP: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `kotleta`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_commentmeta`
--

INSERT INTO `wp_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 2, 'rating', '5'),
(2, 2, 'verified', '0'),
(3, 2, 'wpdiscuz_votes', '0'),
(4, 2, 'wpdiscuz_child_ids', '3,'),
(5, 3, 'wpdiscuz_votes', '0'),
(6, 3, 'verified', '0'),
(7, 4, 'wpdiscuz_votes', '0'),
(8, 4, 'wpdiscuz_child_ids', '');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(2, 21, 'kotleta', 'alkv84@yandex.ru', '', '127.0.0.1', '2016-06-13 12:20:36', '2016-06-13 09:20:36', 'Супер деруны!', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '', 0, 1),
(3, 21, 'kotleta', 'alkv84@yandex.ru', '', '127.0.0.1', '2016-06-13 12:21:53', '2016-06-13 09:21:53', 'Да, супер', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '', 2, 1),
(4, 48, 'WooCommerce', 'woocommerce@kotleta.dev', '', '', '2016-06-20 15:02:19', '2016-06-20 12:02:19', 'Оплата по факту доставки. Статус заказа изменен с В ожидании оплаты на Обработка.', 0, '1', 'WooCommerce', 'order_note', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_g_circles`
--

CREATE TABLE IF NOT EXISTS `wp_g_circles` (
  `id` int(11) unsigned NOT NULL,
  `map` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `center_lat` varchar(255) NOT NULL,
  `center_lng` varchar(255) NOT NULL,
  `radius` varchar(255) NOT NULL,
  `line_width` varchar(5) NOT NULL,
  `line_opacity` varchar(5) NOT NULL,
  `line_color` varchar(7) NOT NULL,
  `fill_color` varchar(7) NOT NULL,
  `fill_opacity` varchar(7) NOT NULL,
  `hover_line_opacity` varchar(5) NOT NULL,
  `hover_line_color` varchar(7) NOT NULL,
  `hover_fill_color` varchar(7) NOT NULL,
  `hover_fill_opacity` varchar(7) NOT NULL,
  `show_marker` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_g_maps`
--

CREATE TABLE IF NOT EXISTS `wp_g_maps` (
  `id` int(11) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `zoom` int(5) NOT NULL,
  `min_zoom` varchar(55) NOT NULL DEFAULT '0',
  `max_zoom` varchar(55) NOT NULL DEFAULT '22',
  `border_radius` int(5) NOT NULL,
  `center_lat` varchar(255) NOT NULL DEFAULT '0',
  `pan_controller` varchar(5) NOT NULL DEFAULT 'true',
  `zoom_controller` varchar(5) NOT NULL DEFAULT 'true',
  `type_controller` varchar(5) NOT NULL DEFAULT 'true',
  `scale_controller` varchar(5) NOT NULL DEFAULT 'true',
  `street_view_controller` varchar(5) NOT NULL DEFAULT 'true',
  `overview_map_controller` varchar(5) NOT NULL DEFAULT 'true',
  `center_lng` varchar(255) NOT NULL DEFAULT '0',
  `width` varchar(5) NOT NULL DEFAULT '100',
  `height` varchar(5) NOT NULL DEFAULT '450',
  `align` varchar(11) NOT NULL DEFAULT 'left',
  `info_type` varchar(9) NOT NULL DEFAULT 'click',
  `traffic_layer` varchar(55) NOT NULL DEFAULT 'false',
  `bike_layer` varchar(55) NOT NULL DEFAULT 'false',
  `transit_layer` varchar(55) NOT NULL DEFAULT 'false',
  `styling_hue` text NOT NULL,
  `styling_lightness` varchar(55) NOT NULL DEFAULT '0',
  `styling_gamma` varchar(55) NOT NULL DEFAULT '1',
  `styling_saturation` varchar(55) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_g_maps`
--

INSERT INTO `wp_g_maps` (`id`, `name`, `type`, `zoom`, `min_zoom`, `max_zoom`, `border_radius`, `center_lat`, `pan_controller`, `zoom_controller`, `type_controller`, `scale_controller`, `street_view_controller`, `overview_map_controller`, `center_lng`, `width`, `height`, `align`, `info_type`, `traffic_layer`, `bike_layer`, `transit_layer`, `styling_hue`, `styling_lightness`, `styling_gamma`, `styling_saturation`) VALUES
(1, 'My First Map', 'ROADMAP', 17, '0', '22', 0, '50.25266999999999', 'false', 'true', 'true', 'false', 'false', 'false', '28.657298500000024', '100', '300', 'center', 'click', 'false', 'false', 'false', '', '0', '1', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_g_markers`
--

CREATE TABLE IF NOT EXISTS `wp_g_markers` (
  `id` int(11) unsigned NOT NULL,
  `map` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `lat` varchar(255) NOT NULL DEFAULT '0',
  `lng` varchar(255) NOT NULL DEFAULT '0',
  `animation` varchar(255) NOT NULL DEFAULT 'NONE',
  `description` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `size` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_g_polygones`
--

CREATE TABLE IF NOT EXISTS `wp_g_polygones` (
  `id` int(11) unsigned NOT NULL,
  `map` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `data` text NOT NULL,
  `line_opacity` varchar(5) NOT NULL,
  `line_color` varchar(9) NOT NULL,
  `fill_opacity` varchar(5) NOT NULL,
  `fill_color` varchar(9) NOT NULL,
  `url` text NOT NULL,
  `hover_line_opacity` varchar(5) NOT NULL,
  `hover_line_color` varchar(9) NOT NULL,
  `hover_fill_opacity` varchar(5) NOT NULL,
  `hover_fill_color` varchar(9) NOT NULL,
  `line_width` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_g_polylines`
--

CREATE TABLE IF NOT EXISTS `wp_g_polylines` (
  `id` int(11) unsigned NOT NULL,
  `map` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `data` text NOT NULL,
  `line_opacity` varchar(5) NOT NULL,
  `line_color` varchar(7) NOT NULL,
  `line_width` varchar(5) NOT NULL,
  `hover_line_color` varchar(9) NOT NULL,
  `hover_line_opacity` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=541 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://kotleta.dev', 'yes'),
(2, 'home', 'http://kotleta.dev', 'yes'),
(3, 'blogname', 'Kotleta', 'yes'),
(4, 'blogdescription', 'Art-cafe Житомир', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'alkv84@yandex.ru', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:206:{s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:7:"shop/?$";s:27:"index.php?post_type=product";s:37:"shop/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:32:"shop/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:24:"shop/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:32:"category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:29:"tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:35:"product/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"product/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"product/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"product/([^/]+)/embed/?$";s:40:"index.php?product=$matches[1]&embed=true";s:28:"product/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:48:"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:43:"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:36:"product/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:43:"product/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:33:"product/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:39:"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:50:"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:32:"product/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:24:"product/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"product/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"product/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:45:"product_variation/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"product_variation/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"product_variation/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"product_variation/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"product_variation/([^/]+)/embed/?$";s:50:"index.php?product_variation=$matches[1]&embed=true";s:38:"product_variation/([^/]+)/trackback/?$";s:44:"index.php?product_variation=$matches[1]&tb=1";s:46:"product_variation/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&paged=$matches[2]";s:53:"product_variation/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&cpage=$matches[2]";s:43:"product_variation/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?product_variation=$matches[1]&wc-api=$matches[3]";s:49:"product_variation/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"product_variation/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"product_variation/([^/]+)(?:/([0-9]+))?/?$";s:56:"index.php?product_variation=$matches[1]&page=$matches[2]";s:34:"product_variation/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"product_variation/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"product_variation/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"product_variation/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:45:"shop_order_refund/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"shop_order_refund/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"shop_order_refund/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"shop_order_refund/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"shop_order_refund/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"shop_order_refund/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"shop_order_refund/([^/]+)/embed/?$";s:50:"index.php?shop_order_refund=$matches[1]&embed=true";s:38:"shop_order_refund/([^/]+)/trackback/?$";s:44:"index.php?shop_order_refund=$matches[1]&tb=1";s:46:"shop_order_refund/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&paged=$matches[2]";s:53:"shop_order_refund/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&cpage=$matches[2]";s:43:"shop_order_refund/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?shop_order_refund=$matches[1]&wc-api=$matches[3]";s:49:"shop_order_refund/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"shop_order_refund/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"shop_order_refund/([^/]+)(?:/([0-9]+))?/?$";s:56:"index.php?shop_order_refund=$matches[1]&page=$matches[2]";s:34:"shop_order_refund/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"shop_order_refund/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"shop_order_refund/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"shop_order_refund/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"shop_order_refund/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"shop_order_refund/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:55:"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:50:"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:31:"product-category/(.+?)/embed/?$";s:44:"index.php?product_cat=$matches[1]&embed=true";s:43:"product-category/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:25:"product-category/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:52:"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:47:"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:28:"product-tag/([^/]+)/embed/?$";s:44:"index.php?product_tag=$matches[1]&embed=true";s:40:"product-tag/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:22:"product-tag/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=6&cpage=$matches[1]";s:17:"wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:20:"order-pay(/(.*))?/?$";s:32:"index.php?&order-pay=$matches[2]";s:25:"order-received(/(.*))?/?$";s:37:"index.php?&order-received=$matches[2]";s:17:"orders(/(.*))?/?$";s:29:"index.php?&orders=$matches[2]";s:21:"view-order(/(.*))?/?$";s:33:"index.php?&view-order=$matches[2]";s:20:"downloads(/(.*))?/?$";s:32:"index.php?&downloads=$matches[2]";s:23:"edit-account(/(.*))?/?$";s:35:"index.php?&edit-account=$matches[2]";s:23:"edit-address(/(.*))?/?$";s:35:"index.php?&edit-address=$matches[2]";s:26:"payment-methods(/(.*))?/?$";s:38:"index.php?&payment-methods=$matches[2]";s:24:"lost-password(/(.*))?/?$";s:36:"index.php?&lost-password=$matches[2]";s:26:"customer-logout(/(.*))?/?$";s:38:"index.php?&customer-logout=$matches[2]";s:29:"add-payment-method(/(.*))?/?$";s:41:"index.php?&add-payment-method=$matches[2]";s:32:"delete-payment-method(/(.*))?/?$";s:44:"index.php?&delete-payment-method=$matches[2]";s:37:"set-default-payment-method(/(.*))?/?$";s:49:"index.php?&set-default-payment-method=$matches[2]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:26:"comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:29:"search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:32:"author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:54:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:41:"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:28:"([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:25:"(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:28:"(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:33:"(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:25:"(.?.+?)/orders(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&orders=$matches[3]";s:29:"(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:28:"(.?.+?)/downloads(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&downloads=$matches[3]";s:31:"(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:31:"(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:34:"(.?.+?)/payment-methods(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&payment-methods=$matches[3]";s:32:"(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:34:"(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:37:"(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:40:"(.?.+?)/delete-payment-method(/(.*))?/?$";s:64:"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]";s:45:"(.?.+?)/set-default-payment-method(/(.*))?/?$";s:69:"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]";s:31:".?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:25:"([^/]+)/wc-api(/(.*))?/?$";s:45:"index.php?name=$matches[1]&wc-api=$matches[3]";s:31:"[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:7:{i:0;s:25:"google-maps/googlemap.php";i:1;s:25:"menu-icons/menu-icons.php";i:2;s:47:"regenerate-thumbnails/regenerate-thumbnails.php";i:3;s:48:"woocommerce-ajax-filters/woocommerce-filters.php";i:4;s:27:"woocommerce/woocommerce.php";i:5;s:27:"wp-super-cache/wp-cache.php";i:6;s:31:"wpdiscuz/class.WpdiscuzCore.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'new-kotleta', 'yes'),
(41, 'stylesheet', 'new-kotleta', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '36686', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:2:{s:48:"woocommerce-ajax-filters/woocommerce-filters.php";a:2:{i:0;s:13:"BeRocket_AAPF";i:1;s:24:"br_delete_plugin_options";}s:27:"wp-super-cache/wp-cache.php";s:22:"wpsupercache_uninstall";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '6', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '36686', 'yes'),
(92, 'wp_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:131:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop Manager";s:12:"capabilities";a:110:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:15:"unfiltered_html";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}}', 'yes'),
(93, 'WPLANG', 'ru_RU', 'yes'),
(94, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:0:{}s:4:"maps";a:1:{i:0;s:29:"huge_it_google_mapss_widget-2";}s:15:"products_filter";a:2:{i:0;s:22:"berocket_aapf_widget-3";i:1;s:22:"berocket_aapf_widget-2";}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:8:{i:1470080948;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1470082884;a:1:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1470106800;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1470124169;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1470124536;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1470126084;a:1:{s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1470312000;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:7:"monthly";s:4:"args";a:0:{}s:8:"interval";i:2635200;}}}s:7:"version";i:2;}', 'yes'),
(115, '_site_transient_timeout_browser_1db8fe35d7922c54b6a559b01acd4121', '1466408970', 'yes'),
(116, '_site_transient_browser_1db8fe35d7922c54b6a559b01acd4121', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"51.0.2704.84";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(122, 'can_compress_scripts', '1', 'yes'),
(137, 'recently_activated', 'a:0:{}', 'yes'),
(152, 'woocommerce_default_country', 'UA', 'yes'),
(153, 'woocommerce_allowed_countries', 'all', 'yes'),
(154, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(155, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(156, 'woocommerce_demo_store', 'no', 'yes'),
(157, 'woocommerce_demo_store_notice', 'This is a demo store for testing purposes &mdash; no orders shall be fulfilled.', 'no'),
(158, 'woocommerce_currency', 'UAH', 'yes'),
(159, 'woocommerce_currency_pos', 'right_space', 'yes'),
(160, 'woocommerce_price_thousand_sep', ',', 'yes'),
(161, 'woocommerce_price_decimal_sep', '.', 'yes'),
(162, 'woocommerce_price_num_decimals', '2', 'yes'),
(163, 'woocommerce_weight_unit', 'g', 'yes'),
(164, 'woocommerce_dimension_unit', 'cm', 'yes'),
(165, 'woocommerce_enable_review_rating', 'yes', 'no'),
(166, 'woocommerce_review_rating_required', 'yes', 'no'),
(167, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(168, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(169, 'woocommerce_shop_page_id', '8', 'yes'),
(170, 'woocommerce_shop_page_display', 'subcategories', 'yes'),
(171, 'woocommerce_category_archive_display', '', 'yes'),
(172, 'woocommerce_default_catalog_orderby', 'menu_order', 'yes'),
(173, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(174, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(175, 'shop_catalog_image_size', 'a:3:{s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:4:"crop";i:1;}', 'yes'),
(176, 'shop_single_image_size', 'a:3:{s:5:"width";s:3:"600";s:6:"height";s:3:"600";s:4:"crop";i:1;}', 'yes'),
(177, 'shop_thumbnail_image_size', 'a:3:{s:5:"width";s:3:"180";s:6:"height";s:3:"180";s:4:"crop";i:1;}', 'yes'),
(178, 'woocommerce_enable_lightbox', 'yes', 'yes'),
(179, 'woocommerce_manage_stock', 'no', 'yes'),
(180, 'woocommerce_hold_stock_minutes', '60', 'no'),
(181, 'woocommerce_notify_low_stock', 'yes', 'no'),
(182, 'woocommerce_notify_no_stock', 'yes', 'no'),
(183, 'woocommerce_stock_email_recipient', 'alkv84@yandex.ru', 'no'),
(184, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(185, 'woocommerce_notify_no_stock_amount', '0', 'no'),
(186, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(187, 'woocommerce_stock_format', '', 'yes'),
(188, 'woocommerce_file_download_method', 'force', 'no'),
(189, 'woocommerce_downloads_require_login', 'no', 'no'),
(190, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(191, 'woocommerce_calc_taxes', 'no', 'yes'),
(192, 'woocommerce_prices_include_tax', 'no', 'yes'),
(193, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(194, 'woocommerce_shipping_tax_class', 'title', 'yes'),
(195, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(196, 'woocommerce_tax_classes', 'Reduced Rate\r\nZero Rate', 'yes'),
(197, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(198, 'woocommerce_tax_display_cart', 'excl', 'no'),
(199, 'woocommerce_price_display_suffix', '', 'yes'),
(200, 'woocommerce_tax_total_display', 'itemized', 'no'),
(201, 'woocommerce_enable_coupons', 'yes', 'no'),
(202, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(203, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(204, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(205, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(206, 'woocommerce_cart_page_id', '9', 'yes'),
(207, 'woocommerce_checkout_page_id', '10', 'yes'),
(208, 'woocommerce_terms_page_id', '', 'no'),
(209, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(210, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(211, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(212, 'woocommerce_calc_shipping', 'no', 'yes'),
(213, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(214, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(215, 'woocommerce_ship_to_destination', 'billing', 'no'),
(216, 'woocommerce_ship_to_countries', 'specific', 'yes'),
(217, 'woocommerce_specific_ship_to_countries', 'a:1:{i:0;s:2:"UA";}', 'yes'),
(218, 'woocommerce_myaccount_page_id', '11', 'yes'),
(219, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(220, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(221, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(222, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(223, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(224, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(225, 'woocommerce_enable_myaccount_registration', 'yes', 'no'),
(226, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(227, 'woocommerce_registration_generate_username', 'yes', 'no'),
(228, 'woocommerce_registration_generate_password', 'no', 'no'),
(229, 'woocommerce_email_from_name', 'Kotleta', 'no'),
(230, 'woocommerce_email_from_address', 'alkv84@yandex.ru', 'no'),
(231, 'woocommerce_email_header_image', '', 'no'),
(232, 'woocommerce_email_footer_text', 'Kotleta - Powered by WooCommerce', 'no'),
(233, 'woocommerce_email_base_color', '#557da1', 'no'),
(234, 'woocommerce_email_background_color', '#f5f5f5', 'no'),
(235, 'woocommerce_email_body_background_color', '#fdfdfd', 'no'),
(236, 'woocommerce_email_text_color', '#505050', 'no'),
(237, 'woocommerce_api_enabled', 'yes', 'yes'),
(239, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(245, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(246, 'widget_woocommerce_widget_cart', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(247, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(248, 'widget_woocommerce_layered_nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(249, 'widget_woocommerce_price_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(250, 'widget_woocommerce_product_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(251, 'widget_woocommerce_product_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(252, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(253, 'widget_woocommerce_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(254, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(255, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(256, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(259, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(267, 'woocommerce_paypal_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(268, 'woocommerce_cheque_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(269, 'woocommerce_cod_settings', 'a:1:{s:7:"enabled";s:3:"yes";}', 'yes'),
(270, 'woocommerce_bacs_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(271, 'woocommerce_allow_tracking', 'no', 'yes'),
(281, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1465804856;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(282, 'current_theme', 'Kotleta', 'yes'),
(283, 'theme_mods_new-kotleta', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:13:"top-left-menu";i:6;s:14:"top-right-menu";i:7;}}', 'yes'),
(284, 'theme_switched', '', 'yes'),
(285, '_transient_product_query-transient-version', '1466085292', 'yes'),
(288, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(293, 'widget_huge_it_google_mapss_widget', 'a:2:{i:2;a:2:{s:8:"g_map_id";s:1:"1";s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(296, 'product_cat_children', 'a:0:{}', 'yes'),
(297, '_transient_product-transient-version', '1466085293', 'yes'),
(300, 'product_shipping_class_children', 'a:0:{}', 'yes'),
(319, 'wc_options', 's:2548:"a:56:{s:13:"wc_post_types";a:5:{i:0;s:4:"post";i:1;s:4:"page";i:2;s:10:"attachment";i:3;s:7:"product";i:4;s:10:"shop_order";}s:13:"wc_quick_tags";i:0;s:27:"wc_comment_list_update_type";s:1:"0";s:28:"wc_comment_list_update_timer";s:2:"30";s:21:"wc_live_update_guests";s:1:"1";s:24:"wc_comment_editable_time";s:3:"900";s:22:"wpdiscuz_redirect_page";s:1:"0";s:20:"wc_is_guest_can_vote";s:1:"1";s:19:"commentListLoadType";s:1:"0";s:27:"wc_voting_buttons_show_hide";i:0;s:18:"votingButtonsStyle";s:1:"0";s:22:"wpdiscuz_share_buttons";a:3:{i:0;s:2:"fb";i:1;s:7:"twitter";i:2;s:6:"google";}s:20:"wc_captcha_show_hide";i:0;s:32:"wc_captcha_show_hide_for_members";i:0;s:19:"wc_weburl_show_hide";s:1:"1";s:24:"wc_header_text_show_hide";i:0;s:25:"wc_is_name_field_required";s:1:"1";s:26:"wc_is_email_field_required";s:1:"1";s:18:"storeCommenterData";s:2:"-1";s:30:"wc_show_hide_loggedin_username";s:1:"1";s:32:"wc_reply_button_guests_show_hide";i:0;s:33:"wc_reply_button_members_show_hide";i:0;s:26:"wc_author_titles_show_hide";i:0;s:22:"wc_simple_comment_date";i:0;s:21:"show_subscription_bar";s:1:"1";s:16:"subscriptionType";s:1:"1";s:27:"wc_show_hide_reply_checkbox";s:1:"1";s:21:"isReplyDefaultChecked";i:0;s:20:"show_sorting_buttons";s:1:"1";s:18:"mostVotedByDefault";i:0;s:41:"wc_use_postmatic_for_comment_notification";i:0;s:20:"wc_comment_text_size";s:4:"14px";s:16:"wc_form_bg_color";s:7:"#F9F9F9";s:19:"wc_comment_bg_color";s:7:"#FEFEFE";s:17:"wc_reply_bg_color";s:7:"#F8F8F8";s:21:"wc_comment_text_color";s:4:"#555";s:25:"wc_comment_username_color";s:7:"#00B38F";s:13:"wc_blog_roles";a:9:{s:13:"administrator";s:7:"#00B38F";s:6:"editor";s:7:"#00B38F";s:6:"author";s:7:"#00B38F";s:11:"contributor";s:7:"#00B38F";s:10:"subscriber";s:7:"#00B38F";s:8:"customer";s:7:"#00B38F";s:12:"shop_manager";s:7:"#00B38F";s:11:"post_author";s:7:"#00B38F";s:5:"guest";s:7:"#00B38F";}s:19:"wc_vote_reply_color";s:7:"#666666";s:21:"wc_input_border_color";s:7:"#D9D9D9";s:30:"wc_new_loaded_comment_bg_color";s:7:"#FFFAD6";s:18:"disableFontAwesome";s:1:"1";s:13:"wc_custom_css";s:27:".comments-area{width:auto;}";s:25:"wc_show_plugin_powerid_by";i:0;s:15:"wc_is_use_po_mo";i:0;s:25:"wc_disable_member_confirm";s:1:"1";s:20:"disableGuestsConfirm";s:1:"1";s:26:"wc_comment_text_min_length";i:1;s:26:"wc_comment_text_max_length";s:0:"";s:17:"commentWordsLimit";i:100;s:19:"showHideCommentLink";i:0;s:21:"enableImageConversion";s:1:"1";s:18:"isCaptchaInSession";s:1:"1";s:13:"isUserByEmail";i:0;s:22:"commenterNameMinLength";s:1:"3";s:22:"commenterNameMaxLength";s:2:"50";}";', 'yes'),
(320, 'wc_plugin_version', '3.2.8', 'yes'),
(321, 'wpdiscuz-addon-note-dismissed', 'Emoticons,Comment Report and Flagging,Comment Translate,Comment Search,wpDiscuz Widgets,Front-end Moderation,Media Uploader,Google ReCaptcha,myCRED Integration,Comment Censure,', 'yes'),
(322, '_transient_orders-transient-version', '1466424141', 'yes'),
(323, '_transient_timeout_wc_cbp_a5a66d18c0f68c3ea0b468895ee17b3f', '1468401636', 'no'),
(324, '_transient_wc_cbp_a5a66d18c0f68c3ea0b468895ee17b3f', 'a:0:{}', 'no'),
(329, 'br_filters_options', 'a:6:{s:19:"no_products_message";s:25:"Нет продуктов";s:17:"no_products_class";s:0:"";s:18:"products_holder_id";s:11:"ul.products";s:17:"seo_friendly_urls";s:1:"1";s:9:"user_func";a:3:{s:13:"before_update";s:0:"";s:9:"on_update";s:0:"";s:12:"after_update";s:0:"";}s:13:"br_opened_tab";s:0:"";}', 'yes'),
(330, 'widget_berocket_aapf_widget', 'a:3:{i:2;a:12:{s:11:"widget_type";s:6:"filter";s:5:"title";s:22:"Ингридиенты";s:9:"attribute";s:25:"pa_ингридиенты";s:4:"type";s:8:"checkbox";s:11:"product_cat";s:0:"";s:12:"scroll_theme";s:4:"dark";s:15:"cat_propagation";i:0;s:9:"css_class";s:0:"";s:17:"text_before_price";s:0:"";s:16:"text_after_price";s:0:"";s:6:"height";s:4:"auto";s:8:"operator";s:3:"AND";}i:3;a:12:{s:11:"widget_type";s:6:"filter";s:5:"title";s:8:"Цена";s:9:"attribute";s:5:"price";s:4:"type";s:6:"slider";s:11:"product_cat";s:0:"";s:12:"scroll_theme";s:4:"dark";s:15:"cat_propagation";i:0;s:9:"css_class";s:0:"";s:17:"text_before_price";s:4:"От";s:16:"text_after_price";s:4:"до";s:6:"height";s:4:"auto";s:8:"operator";s:3:"AND";}s:12:"_multiwidget";i:1;}', 'yes'),
(349, 'widget_woocommerce_rating_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(350, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(351, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(352, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(353, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(354, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(355, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(361, '_transient_timeout_plugin_slugs', '1466583544', 'no'),
(362, '_transient_plugin_slugs', 'a:8:{i:0;s:48:"woocommerce-ajax-filters/woocommerce-filters.php";i:1;s:19:"akismet/akismet.php";i:2;s:31:"wpdiscuz/class.WpdiscuzCore.php";i:3;s:25:"google-maps/googlemap.php";i:4;s:25:"menu-icons/menu-icons.php";i:5;s:47:"regenerate-thumbnails/regenerate-thumbnails.php";i:6;s:27:"woocommerce/woocommerce.php";i:7;s:27:"wp-super-cache/wp-cache.php";}', 'no'),
(369, '_transient_shipping-transient-version', '1466061533', 'yes'),
(370, '_transient_timeout_wc_shipping_method_count_1_1466061533', '1468653533', 'no'),
(371, '_transient_wc_shipping_method_count_1_1466061533', '0', 'no'),
(372, '_transient_timeout_wc_shipping_method_count_0_1466061533', '1468653631', 'no'),
(373, '_transient_wc_shipping_method_count_0_1466061533', '0', 'no'),
(378, '_transient_woocommerce_cache_excluded_uris', 'a:6:{i:0;s:3:"p=9";i:1;s:6:"/cart/";i:2;s:4:"p=10";i:3;s:10:"/checkout/";i:4;s:4:"p=11";i:5;s:12:"/my-account/";}', 'yes'),
(379, '_transient_timeout_wc_addons_sections', '1466667449', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(380, '_transient_wc_addons_sections', 'O:8:"stdClass":10:{s:8:"featured";O:8:"stdClass":2:{s:5:"title";s:8:"Featured";s:8:"endpoint";s:59:"https://d3t0oesq8995hv.cloudfront.net/section/featured.json";}s:7:"popular";O:8:"stdClass":2:{s:5:"title";s:7:"Popular";s:8:"endpoint";s:58:"https://d3t0oesq8995hv.cloudfront.net/section/popular.json";}s:16:"payment_gateways";O:8:"stdClass":2:{s:5:"title";s:16:"Payment Gateways";s:8:"endpoint";s:67:"https://d3t0oesq8995hv.cloudfront.net/section/payment_gateways.json";}s:16:"shipping_methods";O:8:"stdClass":2:{s:5:"title";s:16:"Shipping Methods";s:8:"endpoint";s:67:"https://d3t0oesq8995hv.cloudfront.net/section/shipping_methods.json";}s:13:"import_export";O:8:"stdClass":2:{s:5:"title";s:13:"Import/Export";s:8:"endpoint";s:64:"https://d3t0oesq8995hv.cloudfront.net/section/import_export.json";}s:10:"accounting";O:8:"stdClass":2:{s:5:"title";s:10:"Accounting";s:8:"endpoint";s:61:"https://d3t0oesq8995hv.cloudfront.net/section/accounting.json";}s:9:"marketing";O:8:"stdClass":2:{s:5:"title";s:9:"Marketing";s:8:"endpoint";s:60:"https://d3t0oesq8995hv.cloudfront.net/section/marketing.json";}s:7:"product";O:8:"stdClass":2:{s:5:"title";s:8:"Products";s:8:"endpoint";s:58:"https://d3t0oesq8995hv.cloudfront.net/section/product.json";}s:4:"free";O:8:"stdClass":2:{s:5:"title";s:4:"Free";s:8:"endpoint";s:55:"https://d3t0oesq8995hv.cloudfront.net/section/free.json";}s:11:"third_party";O:8:"stdClass":2:{s:5:"title";s:11:"Third-party";s:8:"endpoint";s:62:"https://d3t0oesq8995hv.cloudfront.net/section/third_party.json";}}', 'no'),
(381, '_transient_timeout_wc_addons_section_featured', '1466667450', 'no'),
(382, '_transient_wc_addons_section_featured', 'O:8:"stdClass":1:{s:8:"products";a:4:{i:0;O:8:"stdClass":5:{s:5:"title";s:27:"PayPal Powered by Braintree";s:5:"image";s:74:"https://www.woothemes.com/wp-content/uploads/2016/02/pp_bt_v_rgb_150px.png";s:7:"excerpt";s:196:"<span style="font-weight: 400;">With this FREE extension, accept PayPal, credit cards and debit cards with a single payment gateway solution — PayPal Powered by Braintree for WooCommerce</span>";s:4:"link";s:142:"https://www.woothemes.com/products/woocommerce-gateway-paypal-powered-by-braintree/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"price";s:9:"&#36;0.00";}i:1;O:8:"stdClass":5:{s:5:"title";s:20:"WooCommerce Bookings";s:5:"image";s:0:"";s:7:"excerpt";s:108:"Sell your time or date based bookings! Perfect for those wanting to offer appointments, services or rentals.";s:4:"link";s:115:"https://www.woothemes.com/products/woocommerce-bookings/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"price";s:11:"&#36;249.00";}i:2;O:8:"stdClass":5:{s:5:"title";s:15:"Product Add-Ons";s:5:"image";s:0:"";s:7:"excerpt";s:104:"Allow your customers to customize products by adding input boxes, dropdowns, file uploads or checkboxes.";s:4:"link";s:110:"https://www.woothemes.com/products/product-add-ons/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"price";s:10:"&#36;49.00";}i:3;O:8:"stdClass":5:{s:5:"title";s:25:"WooCommerce Subscriptions";s:5:"image";s:64:"https://www.woothemes.com/wp-content/uploads/2012/09/woosubs.png";s:7:"excerpt";s:85:"WC Subscriptions makes it easy to create and manage products with recurring payments.";s:4:"link";s:120:"https://www.woothemes.com/products/woocommerce-subscriptions/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"price";s:11:"&#36;199.00";}}}', 'no'),
(383, '_transient_timeout_wc_addons_section_free', '1466667466', 'no'),
(384, '_transient_wc_addons_section_free', 'O:8:"stdClass":1:{s:8:"products";a:24:{i:0;O:8:"stdClass":5:{s:5:"title";s:15:"Pay with Amazon";s:5:"image";s:116:"https://www.woothemes.com/wp-content/uploads/woocommerce_uploads/2013/08/AP_HLogo_215x35-3012530377._V360408447_.png";s:7:"excerpt";s:136:"Pay with Amazon is embedded in your WooCommerce store. Transactions take place via Amazon widgets, so the buyer never leaves your site.";s:4:"link";s:110:"https://www.woothemes.com/products/pay-with-amazon/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"price";s:9:"&#36;0.00";}i:1;O:8:"stdClass":5:{s:5:"title";s:6:"Stripe";s:5:"image";s:63:"https://www.woothemes.com/wp-content/uploads/2012/09/stripe.png";s:7:"excerpt";s:151:"Accept Visa, MasterCard, American Express, Discover, JCB, and Diners Club cards directly on your store with the Stripe payment gateway for WooCommerce.";s:4:"link";s:101:"https://www.woothemes.com/products/stripe/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"price";s:9:"&#36;0.00";}i:2;O:8:"stdClass":5:{s:5:"title";s:23:"PayFast Payment Gateway";s:5:"image";s:72:"https://www.woothemes.com/wp-content/uploads/2013/09/PayFast_Logo_75.png";s:7:"excerpt";s:70:"Take payments on your WooCommerce store via PayFast (redirect method).";s:4:"link";s:118:"https://www.woothemes.com/products/payfast-payment-gateway/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"price";s:9:"&#36;0.00";}i:3;O:8:"stdClass":5:{s:5:"title";s:23:"ShipStation Integration";s:5:"image";s:69:"https://www.woothemes.com/wp-content/uploads/2012/08/shipstation1.png";s:7:"excerpt";s:161:"Fulfill all your Woo orders (and wherever else you sell) quickly and easily using ShipStation, the #1 choice for online retailers. Try it free for 30 days today!";s:4:"link";s:118:"https://www.woothemes.com/products/shipstation-integration/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"price";s:9:"&#36;0.00";}i:4;O:8:"stdClass":5:{s:5:"title";s:6:"Klarna";s:5:"image";s:93:"https://www.woothemes.com/wp-content/uploads/woocommerce_uploads/2011/12/klarna_main-logo.png";s:7:"excerpt";s:103:"Give your customers the simplest buying experience with Klarna and achieve amazing checkout conversions";s:4:"link";s:101:"https://www.woothemes.com/products/klarna/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"price";s:9:"&#36;0.00";}i:5;O:8:"stdClass":5:{s:5:"title";s:31:"Simplify Commerce by MasterCard";s:5:"image";s:65:"https://www.woothemes.com/wp-content/uploads/2014/09/simplify.jpg";s:7:"excerpt";s:149:"Simplify Commerce by MasterCard gives you a merchant account and payment gateway in a single, secure package that takes just a few minutes to set up.";s:4:"link";s:126:"https://www.woothemes.com/products/simplify-commerce-by-mastercard/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"price";s:9:"&#36;0.00";}i:6;O:8:"stdClass":5:{s:5:"title";s:18:"WooCommerce Taxamo";s:5:"image";s:73:"https://www.woothemes.com/wp-content/uploads/2014/12/Taxamo_logo-copy.jpg";s:7:"excerpt";s:195:"Our Taxamo Integration for WooCommerce keeps track of and handles all of your EU VAT rules to keep your shop in line with the new laws starting in 2015. Makes it easy for you and your customers.";s:4:"link";s:113:"https://www.woothemes.com/products/woocommerce-taxamo/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"price";s:9:"&#36;0.00";}i:7;O:8:"stdClass":5:{s:5:"title";s:18:"WooCommerce AvaTax";s:5:"image";s:92:"https://www.woothemes.com/wp-content/uploads/woocommerce_uploads/2016/01/AvatTax_400x400.png";s:7:"excerpt";s:55:"Process WooCommerce store taxes with AvaTax by Avalara.";s:4:"link";s:113:"https://www.woothemes.com/products/woocommerce-avatax/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"price";s:9:"&#36;0.00";}i:8;O:8:"stdClass":5:{s:5:"title";s:27:"PayPal Powered by Braintree";s:5:"image";s:74:"https://www.woothemes.com/wp-content/uploads/2016/02/pp_bt_v_rgb_150px.png";s:7:"excerpt";s:196:"<span style="font-weight: 400;">With this FREE extension, accept PayPal, credit cards and debit cards with a single payment gateway solution — PayPal Powered by Braintree for WooCommerce</span>";s:4:"link";s:142:"https://www.woothemes.com/products/woocommerce-gateway-paypal-powered-by-braintree/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"price";s:9:"&#36;0.00";}i:9;O:8:"stdClass":5:{s:5:"title";s:12:"ReadyShipper";s:5:"image";s:113:"https://www.woothemes.com/wp-content/uploads/woocommerce_uploads/2014/02/Screen-Shot-2014-02-06-at-2.35.04-PM.png";s:7:"excerpt";s:159:"Looking for a better shipping solution? ReadyShipper makes shipping all your WC orders a breeze. See why thousands of merchants use it for FedEx, UPS and USPS.";s:4:"link";s:107:"https://www.woothemes.com/products/readyshipper/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"price";s:9:"&#36;0.00";}i:10;O:8:"stdClass":5:{s:5:"title";s:18:"Order Notes Window";s:5:"image";s:74:"https://www.woothemes.com/wp-content/uploads/2013/07/order-notes.png?w=772";s:7:"excerpt";s:129:"Overrides the default behaviour when clicking on Order notes button so that modal window with order notes is displayed instantly.";s:4:"link";s:113:"https://www.woothemes.com/products/order-notes-window/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"price";s:9:"&#36;0.00";}i:11;O:8:"stdClass":5:{s:5:"title";s:28:"WooCommerce Google Analytics";s:5:"image";s:0:"";s:7:"excerpt";s:167:"<span style="font-weight: 400;">Understand your customers and increase revenue with world’s leading analytics platform - integrated with WooCommerce for free.</span>";s:4:"link";s:123:"https://www.woothemes.com/products/woocommerce-google-analytics/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"price";s:9:"&#36;0.00";}i:12;O:8:"stdClass":5:{s:5:"title";s:30:"InstantSearch+ for WooCommerce";s:5:"image";s:91:"https://www.woothemes.com/wp-content/uploads/2014/08/instantsearchplus_360x60_woothemes.png";s:7:"excerpt";s:114:"Add the fastest, most advanced, cloud-based search to your WooCommerce store, and see your conversion rates go up.";s:4:"link";s:108:"https://www.woothemes.com/products/instantsearch/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"price";s:9:"&#36;0.00";}i:13;O:8:"stdClass":5:{s:5:"title";s:18:"Grid / List Toggle";s:5:"image";s:0:"";s:7:"excerpt";s:136:"Adds a Grid / List toggle to your product archives allowing users to, you guessed it, toggle between grid / list views of your products.";s:4:"link";s:111:"https://www.woothemes.com/products/grid-list-toggle/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"price";s:9:"&#36;0.00";}i:14;O:8:"stdClass":5:{s:5:"title";s:8:"Printful";s:5:"image";s:90:"https://www.woothemes.com/wp-content/uploads/woocommerce_uploads/2015/03/printful-logo.png";s:7:"excerpt";s:109:"Connect your WooCommerce store with Printful to automatically print and ship all of your print product orders";s:4:"link";s:103:"https://www.woothemes.com/products/printful/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"price";s:9:"&#36;0.00";}i:15;O:8:"stdClass":5:{s:5:"title";s:20:"Yotpo Social Reviews";s:5:"image";s:82:"https://www.woothemes.com/wp-content/uploads/woocommerce_uploads/2013/07/Yotpo.png";s:7:"excerpt";s:117:"Build your shoppers confidence with trustworthy reviews. Yotpo is free and getting started takes less than 5 minutes.";s:4:"link";s:115:"https://www.woothemes.com/products/yotpo-social-reviews/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"price";s:9:"&#36;0.00";}i:16;O:8:"stdClass":5:{s:5:"title";s:9:"ShipRobot";s:5:"image";s:71:"https://www.woothemes.com/wp-content/uploads/2016/02/shiprobot-logo.png";s:7:"excerpt";s:161:"ShipRobot is an intuitive, online shipping solution. ShipRobot is tightly integrated with Woocommerce and supports multiple sales channels and shipping carriers.";s:4:"link";s:104:"https://www.woothemes.com/products/shiprobot/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"price";s:9:"&#36;0.00";}i:17;O:8:"stdClass":5:{s:5:"title";s:9:"netParcel";s:5:"image";s:94:"https://www.woothemes.com/wp-content/uploads/woocommerce_uploads/2014/08/netparcel_cropped.png";s:7:"excerpt";s:170:"<p style="color: #666666;">Save up to 70% on Small Parcel and LTL Freight. Import orders and schedule pick-ups for UPS, FedEx, Purolator, DHL, Con-Way, YRC, and more!</p>";s:4:"link";s:104:"https://www.woothemes.com/products/netparcel/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"price";s:9:"&#36;0.00";}i:18;O:8:"stdClass":5:{s:5:"title";s:20:"WPML for WooCommerce";s:5:"image";s:70:"https://www.woothemes.com/wp-content/uploads/2011/10/wcml650.png?w=650";s:7:"excerpt";s:107:"This ''glue'' plugin makes it possible to run fully multilingual e-commerce sites using WooCommerce and WPML.";s:4:"link";s:115:"https://www.woothemes.com/products/wpml-for-woocommerce/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"price";s:10:"&#36;79.00";}i:19;O:8:"stdClass":5:{s:5:"title";s:11:"PriceWaiter";s:5:"image";s:76:"http://www.woothemes.com/wp-content/uploads/2015/05/pw-woothemes-logo-sm.png";s:7:"excerpt";s:138:"In as little as 15 minutes, PriceWaiter for WooCommerce can help you engage more visitors, convert comparison shoppers, and make MAP moot!";s:4:"link";s:106:"https://www.woothemes.com/products/pricewaiter/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"price";s:9:"&#36;0.00";}i:20;O:8:"stdClass":5:{s:5:"title";s:29:"WooCommerce Custom Currencies";s:5:"image";s:0:"";s:7:"excerpt";s:112:"Add your currency to list of supported currencies in WooCommerce or edit an existing one&#039;s symbol or label.";s:4:"link";s:124:"https://www.woothemes.com/products/woocommerce-custom-currencies/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"price";s:9:"&#36;0.00";}i:21;O:8:"stdClass":5:{s:5:"title";s:22:"OSI Affiliate Software";s:5:"image";s:94:"https://www.woothemes.com/wp-content/uploads/2014/08/affiliate-software-press-kit-logo-big.png";s:7:"excerpt";s:261:"<p class="p1">OSI Affiliate Software helps you to set up an affiliate program for your eCommerce store. An affiliate program or referral program gets you more traffic, leads, and sales by working with other marketers to promote your store. Try for Free Now!</p>";s:4:"link";s:117:"https://www.woothemes.com/products/osi-affiliate-software/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"price";s:9:"&#36;0.00";}i:22;O:8:"stdClass":5:{s:5:"title";s:16:"CCAvenue Gateway";s:5:"image";s:70:"https://www.woothemes.com/wp-content/uploads/2011/10/cc-ave.jpeg?w=479";s:7:"excerpt";s:125:"This is the CCAvenue payment gateway for WooCommerce. Allows you to use CCAvenue payment gateway with the WooCommerce plugin.";s:4:"link";s:111:"https://www.woothemes.com/products/ccavenue-gateway/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"price";s:9:"&#36;0.00";}i:23;O:8:"stdClass":5:{s:5:"title";s:7:"PayPlug";s:5:"image";s:69:"https://www.woothemes.com/wp-content/uploads/2015/09/logo-payplug.png";s:7:"excerpt";s:188:"Our modern, intuitive solution helps improve your conversion rate with functions and ergonomics specifically designed for e-commerce. PayPlug simplifies online payments and retains sales.";s:4:"link";s:102:"https://www.woothemes.com/products/payplug/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"price";s:9:"&#36;0.00";}}}', 'no'),
(396, 'category_children', 'a:0:{}', 'yes'),
(411, '_site_transient_timeout_available_translations', '1466093803', 'yes'),
(412, '_site_transient_available_translations', 'a:81:{s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-10 15:55:55";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-13 14:44:00";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.5.2/ary.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-12 22:48:01";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:3:"azb";a:8:{s:8:"language";s:3:"azb";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-11 22:42:10";s:12:"english_name";s:17:"South Azerbaijani";s:11:"native_name";s:29:"گؤنئی آذربایجان";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/azb.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:3;s:3:"azb";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-03 14:05:41";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:12:"Напред";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-01 06:39:12";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-19 23:16:37";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-15 12:36:14";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:3:"ceb";a:8:{s:8:"language";s:3:"ceb";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-02-16 15:34:57";s:12:"english_name";s:7:"Cebuano";s:11:"native_name";s:7:"Cebuano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.3/ceb.zip";s:3:"iso";a:2:{i:2;s:3:"ceb";i:3;s:3:"ceb";}s:7:"strings";a:1:{s:8:"continue";s:7:"Padayun";}}s:5:"cs_CZ";a:8:{s:8:"language";s:5:"cs_CZ";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-11 18:32:36";s:12:"english_name";s:5:"Czech";s:11:"native_name";s:12:"Čeština‎";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/cs_CZ.zip";s:3:"iso";a:2:{i:1;s:2:"cs";i:2;s:3:"ces";}s:7:"strings";a:1:{s:8:"continue";s:11:"Pokračovat";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-11 14:21:06";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-12 17:20:10";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:14:"de_CH_informal";a:8:{s:8:"language";s:14:"de_CH_informal";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-12 20:03:25";s:12:"english_name";s:23:"(Switzerland, Informal)";s:11:"native_name";s:21:"Deutsch (Schweiz, Du)";s:7:"package";s:73:"https://downloads.wordpress.org/translation/core/4.5.2/de_CH_informal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-12 19:26:41";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-16 05:39:37";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-02 08:22:25";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.5.2/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-14 00:07:52";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-13 06:26:11";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-10 05:23:57";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-26 02:00:05";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-13 12:51:07";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_ZA";a:8:{s:8:"language";s:5:"en_ZA";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-28 11:29:02";s:12:"english_name";s:22:"English (South Africa)";s:11:"native_name";s:22:"English (South Africa)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/en_ZA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-11 10:58:49";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-16 17:35:43";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-28 13:08:25";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/es_VE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_GT";a:8:{s:8:"language";s:5:"es_GT";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-13 12:43:00";s:12:"english_name";s:19:"Spanish (Guatemala)";s:11:"native_name";s:21:"Español de Guatemala";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/es_GT.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-19 16:39:25";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-13 06:41:57";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:6:"4.3-RC";s:7:"updated";s:19:"2015-08-04 06:10:33";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.3-RC/es_CO.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_AR";a:8:{s:8:"language";s:5:"es_AR";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-19 21:32:12";s:12:"english_name";s:19:"Spanish (Argentina)";s:11:"native_name";s:21:"Español de Argentina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/es_AR.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-12 21:06:55";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-12 11:11:25";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-23 22:05:23";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-27 18:29:46";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-09 10:11:54";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-11 07:33:47";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-15 09:40:08";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-15 18:57:20";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"Français du Canada";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2015-09-24 15:25:30";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.4/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-22 23:06:30";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-05 00:59:09";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-16 13:14:11";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:8:"המשך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-13 11:24:52";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-07 12:13:44";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-11 06:46:15";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:10:"Folytatás";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-04 07:13:54";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-06 22:14:55";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-02 15:13:48";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-16 12:36:18";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-27 00:36:15";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ka_GE";a:8:{s:8:"language";s:5:"ka_GE";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-11 09:29:35";s:12:"english_name";s:8:"Georgian";s:11:"native_name";s:21:"ქართული";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/ka_GE.zip";s:3:"iso";a:2:{i:1;s:2:"ka";i:2;s:3:"kat";}s:7:"strings";a:1:{s:8:"continue";s:30:"გაგრძელება";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-08 02:07:38";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-10 06:34:16";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:5:"mk_MK";a:8:{s:8:"language";s:5:"mk_MK";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-12 13:55:28";s:12:"english_name";s:10:"Macedonian";s:11:"native_name";s:31:"Македонски јазик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/mk_MK.zip";s:3:"iso";a:2:{i:1;s:2:"mk";i:2;s:3:"mkd";}s:7:"strings";a:1:{s:8:"continue";s:16:"Продолжи";}}s:2:"mr";a:8:{s:8:"language";s:2:"mr";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-16 06:42:31";s:12:"english_name";s:7:"Marathi";s:11:"native_name";s:15:"मराठी";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/mr.zip";s:3:"iso";a:2:{i:1;s:2:"mr";i:2;s:3:"mar";}s:7:"strings";a:1:{s:8:"continue";s:25:"सुरु ठेवा";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-06 05:52:25";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:6:"4.1.11";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.1.11/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ဆောင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-13 12:35:50";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-13 08:12:50";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:12:"nl_NL_formal";a:8:{s:8:"language";s:12:"nl_NL_formal";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-01-20 13:35:50";s:12:"english_name";s:14:"Dutch (Formal)";s:11:"native_name";s:20:"Nederlands (Formeel)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.4.3/nl_NL_formal.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-11 07:36:04";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-25 06:38:00";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.5.2/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-13 17:52:25";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:6:"4.1.11";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.11/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:19:"دوام ورکړه";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-27 18:35:51";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-16 07:47:51";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-06 05:30:44";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-13 18:04:14";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-29 09:53:12";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-11-26 00:00:18";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:8:"Nadaljuj";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-09 09:01:28";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-10 08:00:57";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-14 14:47:49";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-22 14:05:41";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-11-27 15:51:36";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-21 01:31:12";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-31 09:50:18";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-23 09:33:59";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-09 01:01:25";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-12 09:08:07";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-17 03:29:01";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}}', 'yes'),
(420, 'ossdl_off_cdn_url', 'http://kotleta.dev', 'yes'),
(421, 'ossdl_off_include_dirs', 'wp-content,wp-includes', 'yes'),
(422, 'ossdl_off_exclude', '.php', 'yes'),
(423, 'ossdl_cname', '', 'yes'),
(426, 'wp_super_cache_index_detected', '1', 'yes'),
(427, 'wpsupercache_start', '1466084053', 'yes'),
(428, 'wpsupercache_count', '0', 'yes'),
(429, 'wpsupercache_gc_time', '1470060038', 'yes'),
(432, 'pa_ингридиенты_children', 'a:0:{}', 'yes'),
(444, '_transient_timeout_wc_related_43', '1466525269', 'no'),
(445, '_transient_wc_related_43', 'a:0:{}', 'no'),
(478, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1466507841', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(479, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"5926";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3671";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3617";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"3136";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2807";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"2399";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2226";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"2104";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"2052";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"2039";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1995";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1938";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1875";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:4:"1756";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1694";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1591";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1547";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1402";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1320";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1291";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1232";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:4:"1117";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:4:"1093";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:4:"1009";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"997";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:3:"987";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"927";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"918";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"917";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"915";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"914";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"842";}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";s:3:"836";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"799";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"782";}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";s:3:"776";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"763";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"762";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"758";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"754";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"751";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"745";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"712";}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";s:3:"704";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"696";}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";s:3:"695";}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";s:3:"693";}s:3:"css";a:3:{s:4:"name";s:3:"CSS";s:4:"slug";s:3:"css";s:5:"count";s:3:"692";}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";s:3:"668";}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";s:3:"667";}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";s:3:"653";}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";s:3:"647";}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";s:3:"617";}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";s:3:"614";}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";s:3:"606";}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";s:3:"602";}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";s:3:"599";}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";s:3:"598";}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";s:3:"591";}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";s:3:"583";}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";s:3:"579";}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";s:3:"571";}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";s:3:"565";}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";s:3:"557";}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";s:3:"556";}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";s:3:"543";}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";s:3:"538";}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";s:3:"525";}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";s:3:"523";}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";s:3:"517";}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";s:3:"516";}s:7:"picture";a:3:{s:4:"name";s:7:"picture";s:4:"slug";s:7:"picture";s:5:"count";s:3:"515";}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";s:3:"511";}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";s:3:"508";}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";s:3:"486";}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";s:3:"470";}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";s:3:"465";}s:4:"shop";a:3:{s:4:"name";s:4:"shop";s:4:"slug";s:4:"shop";s:5:"count";s:3:"464";}s:8:"pictures";a:3:{s:4:"name";s:8:"pictures";s:4:"slug";s:8:"pictures";s:5:"count";s:3:"463";}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";s:3:"455";}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";s:3:"447";}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";s:3:"445";}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";s:3:"435";}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";s:3:"428";}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";s:3:"424";}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";s:3:"423";}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";s:3:"423";}s:5:"flash";a:3:{s:4:"name";s:5:"flash";s:4:"slug";s:5:"flash";s:5:"count";s:3:"421";}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";s:3:"414";}s:4:"news";a:3:{s:4:"name";s:4:"News";s:4:"slug";s:4:"news";s:5:"count";s:3:"413";}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";s:3:"410";}s:6:"upload";a:3:{s:4:"name";s:6:"upload";s:4:"slug";s:6:"upload";s:5:"count";s:3:"407";}s:9:"thumbnail";a:3:{s:4:"name";s:9:"thumbnail";s:4:"slug";s:9:"thumbnail";s:5:"count";s:3:"405";}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";s:3:"405";}s:7:"sharing";a:3:{s:4:"name";s:7:"sharing";s:4:"slug";s:7:"sharing";s:5:"count";s:3:"403";}s:6:"paypal";a:3:{s:4:"name";s:6:"paypal";s:4:"slug";s:6:"paypal";s:5:"count";s:3:"403";}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";s:3:"400";}s:7:"profile";a:3:{s:4:"name";s:7:"profile";s:4:"slug";s:7:"profile";s:5:"count";s:3:"395";}s:4:"text";a:3:{s:4:"name";s:4:"text";s:4:"slug";s:4:"text";s:5:"count";s:3:"395";}s:8:"linkedin";a:3:{s:4:"name";s:8:"linkedin";s:4:"slug";s:8:"linkedin";s:5:"count";s:3:"394";}}', 'yes'),
(484, '_transient_timeout_wc_upgrade_notice_2.6.0', '1466583546', 'no'),
(485, '_transient_wc_upgrade_notice_2.6.0', '', 'no'),
(486, 'woocommerce_db_version', '2.6.1', 'yes'),
(487, 'woocommerce_version', '2.6.1', 'yes'),
(489, '_transient_wc_attribute_taxonomies', 'a:1:{i:0;O:8:"stdClass":6:{s:12:"attribute_id";s:1:"1";s:14:"attribute_name";s:22:"ингридиенты";s:15:"attribute_label";s:22:"Ингридиенты";s:14:"attribute_type";s:6:"select";s:17:"attribute_orderby";s:4:"name";s:16:"attribute_public";s:1:"0";}}', 'yes'),
(491, 'menu-icons', 'a:2:{s:6:"global";a:1:{s:10:"icon_types";a:1:{i:0;s:2:"fa";}}s:6:"menu_6";a:6:{s:10:"hide_label";s:0:"";s:8:"position";s:6:"before";s:14:"vertical_align";s:6:"middle";s:9:"font_size";s:3:"1.2";s:9:"svg_width";s:1:"1";s:10:"image_size";s:9:"thumbnail";}}', 'yes'),
(508, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:65:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.5.2.zip";s:6:"locale";s:5:"ru_RU";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.5.2.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.5.2";s:7:"version";s:5:"4.5.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1470058775;s:15:"version_checked";s:5:"4.5.2";s:12:"translations";a:0:{}}', 'yes'),
(509, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1470058776;s:7:"checked";a:2:{s:11:"new-kotleta";s:3:"2.0";s:13:"twentyfifteen";s:3:"1.5";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(510, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1470058776;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:8:{s:48:"woocommerce-ajax-filters/woocommerce-filters.php";O:8:"stdClass":6:{s:2:"id";s:5:"55887";s:4:"slug";s:24:"woocommerce-ajax-filters";s:6:"plugin";s:48:"woocommerce-ajax-filters/woocommerce-filters.php";s:11:"new_version";s:5:"1.1.4";s:3:"url";s:55:"https://wordpress.org/plugins/woocommerce-ajax-filters/";s:7:"package";s:73:"https://downloads.wordpress.org/plugin/woocommerce-ajax-filters.1.1.4.zip";}s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:6:"3.1.11";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/akismet.3.1.11.zip";}s:31:"wpdiscuz/class.WpdiscuzCore.php";O:8:"stdClass":6:{s:2:"id";s:5:"55672";s:4:"slug";s:8:"wpdiscuz";s:6:"plugin";s:31:"wpdiscuz/class.WpdiscuzCore.php";s:11:"new_version";s:5:"3.2.8";s:3:"url";s:39:"https://wordpress.org/plugins/wpdiscuz/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/wpdiscuz.3.2.8.zip";}s:25:"google-maps/googlemap.php";O:8:"stdClass":6:{s:2:"id";s:5:"11433";s:4:"slug";s:11:"google-maps";s:6:"plugin";s:25:"google-maps/googlemap.php";s:11:"new_version";s:5:"2.0.7";s:3:"url";s:42:"https://wordpress.org/plugins/google-maps/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/google-maps.2.0.7.zip";}s:25:"menu-icons/menu-icons.php";O:8:"stdClass":6:{s:2:"id";s:5:"48081";s:4:"slug";s:10:"menu-icons";s:6:"plugin";s:25:"menu-icons/menu-icons.php";s:11:"new_version";s:6:"0.10.1";s:3:"url";s:41:"https://wordpress.org/plugins/menu-icons/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/menu-icons.0.10.1.zip";}s:47:"regenerate-thumbnails/regenerate-thumbnails.php";O:8:"stdClass":6:{s:2:"id";s:4:"4437";s:4:"slug";s:21:"regenerate-thumbnails";s:6:"plugin";s:47:"regenerate-thumbnails/regenerate-thumbnails.php";s:11:"new_version";s:5:"2.2.6";s:3:"url";s:52:"https://wordpress.org/plugins/regenerate-thumbnails/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/regenerate-thumbnails.zip";}s:27:"woocommerce/woocommerce.php";O:8:"stdClass":6:{s:2:"id";s:5:"25331";s:4:"slug";s:11:"woocommerce";s:6:"plugin";s:27:"woocommerce/woocommerce.php";s:11:"new_version";s:5:"2.6.1";s:3:"url";s:42:"https://wordpress.org/plugins/woocommerce/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/woocommerce.2.6.1.zip";}s:27:"wp-super-cache/wp-cache.php";O:8:"stdClass":7:{s:2:"id";s:4:"1221";s:4:"slug";s:14:"wp-super-cache";s:6:"plugin";s:27:"wp-super-cache/wp-cache.php";s:11:"new_version";s:5:"1.4.8";s:3:"url";s:45:"https://wordpress.org/plugins/wp-super-cache/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/wp-super-cache.1.4.8.zip";s:14:"upgrade_notice";s:38:"Removed malware URL in a code comment.";}}}', 'yes'),
(523, '_transient_timeout_external_ip_address_127.0.0.1', '1470663573', 'no'),
(524, '_transient_external_ip_address_127.0.0.1', '0.0.0.0', 'no'),
(526, '_site_transient_timeout_theme_roots', '1470060576', 'yes'),
(527, '_site_transient_theme_roots', 'a:2:{s:11:"new-kotleta";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";}', 'yes'),
(528, '_transient_timeout_wc_term_counts', '1472650814', 'no'),
(529, '_transient_wc_term_counts', 'a:2:{i:9;s:1:"1";i:8;s:1:"1";}', 'no'),
(530, '_transient_timeout_wc_related_21', '1470145252', 'no'),
(531, '_transient_wc_related_21', 'a:0:{}', 'no'),
(533, '_transient_timeout_wc_report_sales_by_date', '1470146478', 'no'),
(534, '_transient_wc_report_sales_by_date', 'a:7:{s:32:"8171c8b57f320e9978b79cb718b7deca";a:0:{}s:32:"25744bbc00db977eba70fd72d479cc5e";a:0:{}s:32:"dbd91bc193bc0159ef20fe5df2042ae5";a:0:{}s:32:"0e945295b81a5f4c81104e98c9edf964";N;s:32:"09f5666a7ebb5192556c78df6ffbf1f5";a:0:{}s:32:"4df490298e67503e08ba9886f167c10c";a:0:{}s:32:"94d4efe2c5511c5fae1da9938de1cb37";a:0:{}}', 'no'),
(535, '_transient_timeout_wc_low_stock_count', '1472652078', 'no'),
(536, '_transient_wc_low_stock_count', '0', 'no'),
(537, '_transient_timeout_wc_outofstock_count', '1472652078', 'no'),
(538, '_transient_wc_outofstock_count', '0', 'no'),
(539, '_transient_timeout_wc_admin_report', '1470146478', 'no'),
(540, '_transient_wc_admin_report', 'a:1:{s:32:"3297e5bcd85cd121b02cb45cc224091d";a:0:{}}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=262 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(9, 6, '_edit_last', '1'),
(10, 6, '_edit_lock', '1465805962:1'),
(11, 6, '_wp_page_template', 'home-page.php'),
(12, 12, '_edit_last', '1'),
(13, 12, '_edit_lock', '1465806273:1'),
(14, 13, '_wp_attached_file', '2016/06/empty631.jpg'),
(15, 13, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:853;s:4:"file";s:20:"2016/06/empty631.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"empty631-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"empty631-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"empty631-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"empty631-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:12:"afisha-thumb";a:4:{s:4:"file";s:20:"empty631-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"empty631-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"empty631-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:20:"empty631-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(16, 12, '_thumbnail_id', '13'),
(17, 12, '_wp_page_template', 'contact-page.php'),
(18, 15, '_menu_item_type', 'post_type'),
(19, 15, '_menu_item_menu_item_parent', '0'),
(20, 15, '_menu_item_object_id', '8'),
(21, 15, '_menu_item_object', 'page'),
(22, 15, '_menu_item_target', ''),
(23, 15, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(24, 15, '_menu_item_xfn', ''),
(25, 15, '_menu_item_url', ''),
(27, 16, '_menu_item_type', 'post_type'),
(28, 16, '_menu_item_menu_item_parent', '0'),
(29, 16, '_menu_item_object_id', '6'),
(30, 16, '_menu_item_object', 'page'),
(31, 16, '_menu_item_target', ''),
(32, 16, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(33, 16, '_menu_item_xfn', ''),
(34, 16, '_menu_item_url', ''),
(36, 17, '_menu_item_type', 'post_type'),
(37, 17, '_menu_item_menu_item_parent', '0'),
(38, 17, '_menu_item_object_id', '12'),
(39, 17, '_menu_item_object', 'page'),
(40, 17, '_menu_item_target', ''),
(41, 17, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(42, 17, '_menu_item_xfn', ''),
(43, 17, '_menu_item_url', ''),
(45, 18, '_menu_item_type', 'post_type'),
(46, 18, '_menu_item_menu_item_parent', '0'),
(47, 18, '_menu_item_object_id', '9'),
(48, 18, '_menu_item_object', 'page'),
(49, 18, '_menu_item_target', ''),
(50, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(51, 18, '_menu_item_xfn', ''),
(52, 18, '_menu_item_url', ''),
(54, 19, '_menu_item_type', 'post_type'),
(55, 19, '_menu_item_menu_item_parent', '18'),
(56, 19, '_menu_item_object_id', '11'),
(57, 19, '_menu_item_object', 'page'),
(58, 19, '_menu_item_target', ''),
(59, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(60, 19, '_menu_item_xfn', ''),
(61, 19, '_menu_item_url', ''),
(63, 20, '_menu_item_type', 'post_type'),
(64, 20, '_menu_item_menu_item_parent', '18'),
(65, 20, '_menu_item_object_id', '10'),
(66, 20, '_menu_item_object', 'page'),
(67, 20, '_menu_item_target', ''),
(68, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(69, 20, '_menu_item_xfn', ''),
(70, 20, '_menu_item_url', ''),
(72, 21, '_edit_last', '1'),
(73, 21, '_edit_lock', '1465809355:1'),
(74, 22, '_wp_attached_file', '2016/06/11.jpg'),
(75, 22, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:851;s:6:"height";i:566;s:4:"file";s:14:"2016/06/11.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"11-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:14:"11-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:14:"11-768x511.jpg";s:5:"width";i:768;s:6:"height";i:511;s:9:"mime-type";s:10:"image/jpeg";}s:12:"afisha-thumb";a:4:{s:4:"file";s:14:"11-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:14:"11-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:14:"11-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:14:"11-600x566.jpg";s:5:"width";i:600;s:6:"height";i:566;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"8";s:6:"credit";s:28:"Kostiantyn Pyvniuk "GLOOMER"";s:6:"camera";s:10:"NIKON D700";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1313167931";s:9:"copyright";s:28:"Kostiantyn Pyvniuk "GLOOMER"";s:12:"focal_length";s:3:"105";s:3:"iso";s:3:"400";s:13:"shutter_speed";s:17:"0.016666666666667";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(76, 21, '_thumbnail_id', '22'),
(77, 23, '_wp_attached_file', '2016/06/10.jpg'),
(78, 23, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:330;s:4:"file";s:14:"2016/06/10.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"10-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:14:"10-300x198.jpg";s:5:"width";i:300;s:6:"height";i:198;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:14:"10-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:14:"10-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(79, 24, '_wp_attached_file', '2016/06/12.jpg'),
(80, 24, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:463;s:6:"height";i:347;s:4:"file";s:14:"2016/06/12.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"12-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:14:"12-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:14:"12-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:14:"12-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(81, 25, '_wp_attached_file', '2016/06/13.jpg'),
(82, 25, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:480;s:4:"file";s:14:"2016/06/13.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"13-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:14:"13-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"afisha-thumb";a:4:{s:4:"file";s:14:"13-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:14:"13-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:14:"13-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:14:"13-600x480.jpg";s:5:"width";i:600;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(83, 26, '_wp_attached_file', '2016/06/14.jpg'),
(84, 26, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:681;s:4:"file";s:14:"2016/06/14.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"14-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:14:"14-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:14:"14-768x511.jpg";s:5:"width";i:768;s:6:"height";i:511;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:15:"14-1024x681.jpg";s:5:"width";i:1024;s:6:"height";i:681;s:9:"mime-type";s:10:"image/jpeg";}s:12:"afisha-thumb";a:4:{s:4:"file";s:14:"14-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:14:"14-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:14:"14-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:14:"14-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"4.5";s:6:"credit";s:0:"";s:6:"camera";s:5:"NEX-5";s:7:"caption";s:8:"SONY DSC";s:17:"created_timestamp";s:10:"1318698063";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"33";s:3:"iso";s:3:"200";s:13:"shutter_speed";s:17:"0.016666666666667";s:5:"title";s:8:"SONY DSC";s:11:"orientation";s:1:"0";s:8:"keywords";a:1:{i:0;s:4:"food";}}}'),
(85, 21, '_visibility', 'visible'),
(86, 21, '_stock_status', 'instock'),
(87, 21, 'total_sales', '2'),
(88, 21, '_downloadable', 'no'),
(89, 21, '_virtual', 'no'),
(90, 21, '_purchase_note', ''),
(91, 21, '_featured', 'no'),
(92, 21, '_weight', '250'),
(93, 21, '_length', ''),
(94, 21, '_width', ''),
(95, 21, '_height', ''),
(96, 21, '_sku', ''),
(97, 21, '_product_attributes', 'a:1:{s:69:"pa_%d0%b8%d0%bd%d0%b3%d1%80%d0%b8%d0%b4%d0%b8%d0%b5%d0%bd%d1%82%d1%8b";a:6:{s:4:"name";s:25:"pa_ингридиенты";s:5:"value";s:0:"";s:8:"position";s:1:"0";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}}'),
(98, 21, '_regular_price', '49.99'),
(99, 21, '_sale_price', ''),
(100, 21, '_sale_price_dates_from', ''),
(101, 21, '_sale_price_dates_to', ''),
(102, 21, '_price', '49.99'),
(103, 21, '_sold_individually', ''),
(104, 21, '_manage_stock', 'no'),
(105, 21, '_backorders', 'no'),
(106, 21, '_stock', ''),
(107, 21, '_upsell_ids', 'a:0:{}'),
(108, 21, '_crosssell_ids', 'a:0:{}'),
(109, 21, '_product_version', '2.5.5'),
(110, 21, '_product_image_gallery', '22,23,24,25,26'),
(114, 8, '_edit_lock', '1465808545:1'),
(115, 27, '_wp_attached_file', '2016/06/5.jpg'),
(116, 27, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:3504;s:6:"height";i:2332;s:4:"file";s:13:"2016/06/5.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"5-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"5-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:13:"5-768x511.jpg";s:5:"width";i:768;s:6:"height";i:511;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:14:"5-1024x681.jpg";s:5:"width";i:1024;s:6:"height";i:681;s:9:"mime-type";s:10:"image/jpeg";}s:12:"afisha-thumb";a:4:{s:4:"file";s:13:"5-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:13:"5-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:13:"5-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:13:"5-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(117, 8, '_thumbnail_id', '27'),
(118, 8, '_edit_last', '1'),
(119, 8, '_wp_page_template', 'default'),
(120, 9, '_edit_lock', '1465808649:1'),
(121, 29, '_wp_attached_file', '2016/06/learn-Spanish-at-the-restaurant.jpg'),
(122, 29, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1536;s:6:"height";i:1021;s:4:"file";s:43:"2016/06/learn-Spanish-at-the-restaurant.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:43:"learn-Spanish-at-the-restaurant-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:43:"learn-Spanish-at-the-restaurant-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:43:"learn-Spanish-at-the-restaurant-768x511.jpg";s:5:"width";i:768;s:6:"height";i:511;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:44:"learn-Spanish-at-the-restaurant-1024x681.jpg";s:5:"width";i:1024;s:6:"height";i:681;s:9:"mime-type";s:10:"image/jpeg";}s:12:"afisha-thumb";a:4:{s:4:"file";s:43:"learn-Spanish-at-the-restaurant-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:43:"learn-Spanish-at-the-restaurant-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:43:"learn-Spanish-at-the-restaurant-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:43:"learn-Spanish-at-the-restaurant-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:25:"Getty Images/Image Source";s:6:"camera";s:0:"";s:7:"caption";s:23:"A table at a restaurant";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:16:"(c) Image Source";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:8:"88624432";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(123, 9, '_thumbnail_id', '29'),
(124, 9, '_edit_last', '1'),
(125, 9, '_wp_page_template', 'default'),
(126, 31, '_edit_last', '1'),
(127, 31, '_edit_lock', '1465808857:1'),
(128, 32, '_wp_attached_file', '2016/06/im-main.jpg'),
(129, 32, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:19:"2016/06/im-main.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"im-main-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"im-main-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"im-main-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:20:"im-main-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:12:"afisha-thumb";a:4:{s:4:"file";s:19:"im-main-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"im-main-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:19:"im-main-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:19:"im-main-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(130, 31, '_thumbnail_id', '32'),
(131, 31, '_wp_page_template', 'default'),
(142, 21, '_wc_rating_count', 'a:1:{i:5;s:1:"1";}'),
(143, 21, '_wc_average_rating', '5.00'),
(144, 21, '_wc_review_count', '1'),
(145, 35, '_edit_last', '1'),
(146, 35, '_edit_lock', '1466079597:1'),
(147, 36, '_wp_attached_file', '2016/06/78.jpg'),
(148, 36, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:14:"2016/06/78.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"78-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:14:"78-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:14:"78-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:15:"78-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:12:"afisha-thumb";a:4:{s:4:"file";s:14:"78-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:14:"78-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:14:"78-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:14:"78-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(149, 35, '_thumbnail_id', '36'),
(152, 38, '_menu_item_type', 'taxonomy'),
(153, 38, '_menu_item_menu_item_parent', '0'),
(154, 38, '_menu_item_object_id', '18'),
(155, 38, '_menu_item_object', 'category'),
(156, 38, '_menu_item_target', ''),
(157, 38, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(158, 38, '_menu_item_xfn', ''),
(159, 38, '_menu_item_url', ''),
(161, 39, '_edit_last', '1'),
(162, 39, '_edit_lock', '1466078528:1'),
(163, 40, '_wp_attached_file', '2016/06/123.jpg'),
(164, 40, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1067;s:4:"file";s:15:"2016/06/123.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"123-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"123-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:15:"123-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:16:"123-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:12:"afisha-thumb";a:4:{s:4:"file";s:15:"123-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:15:"123-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:15:"123-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:15:"123-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"4";s:6:"credit";s:0:"";s:6:"camera";s:20:"Canon EOS 5D Mark II";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1387577300";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"32";s:3:"iso";s:3:"400";s:13:"shutter_speed";s:7:"0.00625";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(165, 39, '_thumbnail_id', '40'),
(168, 35, 'date', '16.07.16'),
(169, 35, 'time', '19:00'),
(172, 39, 'date', '01.08.16'),
(173, 39, 'time', '18:30'),
(178, 43, '_edit_last', '1'),
(179, 43, '_edit_lock', '1466085843:1'),
(180, 44, '_wp_attached_file', '2016/06/maxresdefault.jpg'),
(181, 44, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:25:"2016/06/maxresdefault.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"maxresdefault-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"maxresdefault-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"maxresdefault-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"maxresdefault-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:12:"afisha-thumb";a:4:{s:4:"file";s:25:"maxresdefault-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:25:"maxresdefault-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:25:"maxresdefault-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:25:"maxresdefault-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(182, 43, '_thumbnail_id', '44'),
(183, 45, '_wp_attached_file', '2016/06/ukr-01.jpg'),
(184, 45, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2400;s:6:"height";i:1600;s:4:"file";s:18:"2016/06/ukr-01.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"ukr-01-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"ukr-01-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"ukr-01-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"ukr-01-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:12:"afisha-thumb";a:4:{s:4:"file";s:18:"ukr-01-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"ukr-01-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"ukr-01-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:18:"ukr-01-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(185, 46, '_wp_attached_file', '2016/06/IMG_0681.jpg'),
(186, 46, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:400;s:4:"file";s:20:"2016/06/IMG_0681.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"IMG_0681-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"IMG_0681-300x240.jpg";s:5:"width";i:300;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:12:"afisha-thumb";a:4:{s:4:"file";s:20:"IMG_0681-500x400.jpg";s:5:"width";i:500;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"IMG_0681-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"IMG_0681-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(189, 43, '_product_attributes', 'a:1:{s:69:"pa_%d0%b8%d0%bd%d0%b3%d1%80%d0%b8%d0%b4%d0%b8%d0%b5%d0%bd%d1%82%d1%8b";a:6:{s:4:"name";s:25:"pa_ингридиенты";s:5:"value";s:0:"";s:8:"position";s:1:"0";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}}'),
(190, 43, '_visibility', 'visible'),
(191, 43, '_stock_status', 'instock'),
(192, 43, 'total_sales', '3'),
(193, 43, '_downloadable', 'no'),
(194, 43, '_virtual', 'no'),
(195, 43, '_purchase_note', ''),
(196, 43, '_featured', 'no'),
(197, 43, '_weight', '400'),
(198, 43, '_length', ''),
(199, 43, '_width', ''),
(200, 43, '_height', ''),
(201, 43, '_sku', ''),
(202, 43, '_regular_price', '39.00'),
(203, 43, '_sale_price', ''),
(204, 43, '_sale_price_dates_from', ''),
(205, 43, '_sale_price_dates_to', ''),
(206, 43, '_price', '39.00'),
(207, 43, '_sold_individually', ''),
(208, 43, '_upsell_ids', 'a:0:{}'),
(209, 43, '_crosssell_ids', 'a:1:{i:0;i:21;}'),
(210, 43, '_product_version', '2.6.0'),
(211, 43, '_product_image_gallery', '45,46'),
(212, 43, '_wc_rating_count', 'a:0:{}'),
(213, 43, '_wc_average_rating', '0'),
(214, 43, '_wc_review_count', '0'),
(215, 48, '_order_key', 'wc_order_5767db4b5a545'),
(216, 48, '_order_currency', 'UAH'),
(217, 48, '_prices_include_tax', 'no'),
(218, 48, '_customer_ip_address', '127.0.0.1'),
(219, 48, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36'),
(220, 48, '_customer_user', '1'),
(221, 48, '_created_via', 'checkout'),
(222, 48, '_cart_hash', 'b94ae4d476c041a4dba077c2fec2d988'),
(223, 48, '_order_version', '2.6.0'),
(224, 48, '_billing_first_name', 'выаыва'),
(225, 48, '_billing_last_name', 'ываываывав'),
(226, 48, '_billing_company', 'ваыва'),
(227, 48, '_billing_email', 'alkv84@yandex.ru'),
(228, 48, '_billing_phone', '456456456'),
(229, 48, '_billing_country', 'UA'),
(230, 48, '_billing_address_1', 'вапвап'),
(231, 48, '_billing_address_2', ''),
(232, 48, '_billing_city', 'ккнукуе'),
(233, 48, '_billing_state', 'ываываыв'),
(234, 48, '_billing_postcode', '22312'),
(235, 48, '_shipping_first_name', 'выаыва'),
(236, 48, '_shipping_last_name', 'ываываывав'),
(237, 48, '_shipping_company', 'ваыва'),
(238, 48, '_shipping_country', 'UA'),
(239, 48, '_shipping_address_1', 'вапвап'),
(240, 48, '_shipping_address_2', ''),
(241, 48, '_shipping_city', 'ккнукуе'),
(242, 48, '_shipping_state', 'ываываыв'),
(243, 48, '_shipping_postcode', '22312'),
(244, 48, '_payment_method', 'cod'),
(245, 48, '_payment_method_title', 'Наложенный платеж'),
(246, 48, '_order_shipping', ''),
(247, 48, '_cart_discount', '0'),
(248, 48, '_cart_discount_tax', '0'),
(249, 48, '_order_tax', '0'),
(250, 48, '_order_shipping_tax', '0'),
(251, 48, '_order_total', '216.98'),
(252, 48, '_download_permissions_granted', '1'),
(253, 48, '_wc_rating_count', 'a:0:{}'),
(254, 48, '_wc_average_rating', '0'),
(255, 48, '_recorded_sales', 'yes'),
(256, 48, '_edit_lock', '1466424677:1'),
(257, 16, 'menu-icons', 'a:8:{s:4:"type";s:2:"fa";s:4:"icon";s:7:"fa-home";s:10:"hide_label";s:0:"";s:8:"position";s:6:"before";s:14:"vertical_align";s:6:"middle";s:9:"font_size";s:3:"1.2";s:9:"svg_width";s:1:"1";s:10:"image_size";s:9:"thumbnail";}'),
(258, 15, 'menu-icons', 'a:8:{s:4:"type";s:2:"fa";s:4:"icon";s:7:"fa-bars";s:10:"hide_label";s:0:"";s:8:"position";s:6:"before";s:14:"vertical_align";s:6:"middle";s:9:"font_size";s:3:"1.2";s:9:"svg_width";s:1:"1";s:10:"image_size";s:9:"thumbnail";}'),
(259, 38, 'menu-icons', 'a:8:{s:4:"type";s:2:"fa";s:4:"icon";s:11:"fa-bullhorn";s:10:"hide_label";s:0:"";s:8:"position";s:6:"before";s:14:"vertical_align";s:6:"middle";s:9:"font_size";s:3:"1.2";s:9:"svg_width";s:1:"1";s:10:"image_size";s:9:"thumbnail";}'),
(260, 18, 'menu-icons', 'a:8:{s:4:"type";s:2:"fa";s:4:"icon";s:18:"fa-cart-arrow-down";s:10:"hide_label";s:0:"";s:8:"position";s:5:"after";s:14:"vertical_align";s:6:"middle";s:9:"font_size";s:3:"1.2";s:9:"svg_width";s:1:"1";s:10:"image_size";s:9:"thumbnail";}'),
(261, 17, 'menu-icons', 'a:8:{s:4:"type";s:2:"fa";s:4:"icon";s:13:"fa-map-marker";s:10:"hide_label";s:0:"";s:8:"position";s:5:"after";s:14:"vertical_align";s:6:"middle";s:9:"font_size";s:3:"1.2";s:9:"svg_width";s:1:"1";s:10:"image_size";s:9:"thumbnail";}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(6, 1, '2016-06-13 10:56:16', '2016-06-13 07:56:16', '', 'Главная', '', 'publish', 'closed', 'closed', '', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f', '', '', '2016-06-13 11:19:22', '2016-06-13 08:19:22', '', 0, 'http://kotleta.dev/?page_id=6', 0, 'page', '', 0),
(7, 1, '2016-06-13 10:56:16', '2016-06-13 07:56:16', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2016-06-13 10:56:16', '2016-06-13 07:56:16', '', 6, 'http://kotleta.dev/2016/06/13/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2016-06-13 10:58:03', '2016-06-13 07:58:03', '', 'Витрина', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2016-06-13 12:03:55', '2016-06-13 09:03:55', '', 0, 'http://kotleta.dev/shop/', 0, 'page', '', 0),
(9, 1, '2016-06-13 10:58:03', '2016-06-13 07:58:03', '[woocommerce_cart]', 'Корзина', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2016-06-13 12:05:32', '2016-06-13 09:05:32', '', 0, 'http://kotleta.dev/cart/', 0, 'page', '', 0),
(10, 1, '2016-06-13 10:58:03', '2016-06-13 07:58:03', '[woocommerce_checkout]', 'Оформление заказа', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2016-06-13 10:58:03', '2016-06-13 07:58:03', '', 0, 'http://kotleta.dev/checkout/', 0, 'page', '', 0),
(11, 1, '2016-06-13 10:58:03', '2016-06-13 07:58:03', '[woocommerce_my_account]', 'Мой аккаунт', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2016-06-13 10:58:03', '2016-06-13 07:58:03', '', 0, 'http://kotleta.dev/my-account/', 0, 'page', '', 0),
(12, 1, '2016-06-13 11:26:43', '2016-06-13 08:26:43', 'Мы тут и тут', 'Контакты', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d1%8b', '', '', '2016-06-13 11:26:43', '2016-06-13 08:26:43', '', 0, 'http://kotleta.dev/?page_id=12', 0, 'page', '', 0),
(13, 1, '2016-06-13 11:26:26', '2016-06-13 08:26:26', '', 'empty631', '', 'inherit', 'open', 'closed', '', 'empty631', '', '', '2016-06-13 11:26:26', '2016-06-13 08:26:26', '', 12, 'http://kotleta.dev/wp-content/uploads/2016/06/empty631.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2016-06-13 11:26:43', '2016-06-13 08:26:43', 'Мы тут и тут', 'Контакты', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2016-06-13 11:26:43', '2016-06-13 08:26:43', '', 12, 'http://kotleta.dev/12-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2016-06-13 11:28:41', '2016-06-13 08:28:41', '', 'Меню', '', 'publish', 'closed', 'closed', '', '%d0%bc%d0%b5%d0%bd%d1%8e', '', '', '2016-06-21 11:27:35', '2016-06-21 08:27:35', '', 0, 'http://kotleta.dev/?p=15', 2, 'nav_menu_item', '', 0),
(16, 1, '2016-06-13 11:28:41', '2016-06-13 08:28:41', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2016-06-21 11:27:35', '2016-06-21 08:27:35', '', 0, 'http://kotleta.dev/?p=16', 1, 'nav_menu_item', '', 0),
(17, 1, '2016-06-13 11:29:24', '2016-06-13 08:29:24', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2016-06-21 11:29:35', '2016-06-21 08:29:35', '', 0, 'http://kotleta.dev/?p=17', 4, 'nav_menu_item', '', 0),
(18, 1, '2016-06-13 11:29:24', '2016-06-13 08:29:24', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2016-06-21 11:29:35', '2016-06-21 08:29:35', '', 0, 'http://kotleta.dev/?p=18', 1, 'nav_menu_item', '', 0),
(19, 1, '2016-06-13 11:29:24', '2016-06-13 08:29:24', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2016-06-21 11:29:35', '2016-06-21 08:29:35', '', 0, 'http://kotleta.dev/?p=19', 3, 'nav_menu_item', '', 0),
(20, 1, '2016-06-13 11:29:24', '2016-06-13 08:29:24', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2016-06-21 11:29:35', '2016-06-21 08:29:35', '', 0, 'http://kotleta.dev/?p=20', 2, 'nav_menu_item', '', 0),
(21, 1, '2016-06-13 12:01:35', '2016-06-13 09:01:35', 'Деруны Деруны Деруны', 'Деруны', 'Деруны', 'publish', 'open', 'closed', '', '%d0%b4%d0%b5%d1%80%d1%83%d0%bd%d1%8b', '', '', '2016-06-13 12:17:19', '2016-06-13 09:17:19', '', 0, 'http://kotleta.dev/?post_type=product&#038;p=21', 0, 'product', '', 2),
(22, 1, '2016-06-13 12:00:31', '2016-06-13 09:00:31', '', '11', '', 'inherit', 'open', 'closed', '', '11', '', '', '2016-06-13 12:00:31', '2016-06-13 09:00:31', '', 21, 'http://kotleta.dev/wp-content/uploads/2016/06/11.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2016-06-13 12:01:18', '2016-06-13 09:01:18', '', '10', '', 'inherit', 'open', 'closed', '', '10', '', '', '2016-06-13 12:01:18', '2016-06-13 09:01:18', '', 21, 'http://kotleta.dev/wp-content/uploads/2016/06/10.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2016-06-13 12:01:19', '2016-06-13 09:01:19', '', '12', '', 'inherit', 'open', 'closed', '', '12', '', '', '2016-06-13 12:01:19', '2016-06-13 09:01:19', '', 21, 'http://kotleta.dev/wp-content/uploads/2016/06/12.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2016-06-13 12:01:21', '2016-06-13 09:01:21', '', '13', '', 'inherit', 'open', 'closed', '', '13', '', '', '2016-06-13 12:01:21', '2016-06-13 09:01:21', '', 21, 'http://kotleta.dev/wp-content/uploads/2016/06/13.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2016-06-13 12:01:22', '2016-06-13 09:01:22', '', 'SONY DSC', 'SONY DSC', 'inherit', 'open', 'closed', '', 'sony-dsc', '', '', '2016-06-13 12:01:22', '2016-06-13 09:01:22', '', 21, 'http://kotleta.dev/wp-content/uploads/2016/06/14.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2016-06-13 12:03:42', '2016-06-13 09:03:42', '', '5', '', 'inherit', 'open', 'closed', '', '5', '', '', '2016-06-13 12:03:42', '2016-06-13 09:03:42', '', 8, 'http://kotleta.dev/wp-content/uploads/2016/06/5.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2016-06-13 12:03:55', '2016-06-13 09:03:55', '', 'Витрина', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2016-06-13 12:03:55', '2016-06-13 09:03:55', '', 8, 'http://kotleta.dev/8-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2016-06-13 12:05:19', '2016-06-13 09:05:19', '', 'learn-Spanish-at-the-restaurant', '', 'inherit', 'open', 'closed', '', 'learn-spanish-at-the-restaurant', '', '', '2016-06-13 12:05:28', '2016-06-13 09:05:28', '', 9, 'http://kotleta.dev/wp-content/uploads/2016/06/learn-Spanish-at-the-restaurant.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2016-06-13 12:05:32', '2016-06-13 09:05:32', '[woocommerce_cart]', 'Корзина', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2016-06-13 12:05:32', '2016-06-13 09:05:32', '', 9, 'http://kotleta.dev/9-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2016-06-13 12:09:48', '2016-06-13 09:09:48', '', 'Афиша мероприятий', '', 'publish', 'closed', 'closed', '', '%d0%b0%d1%84%d0%b8%d1%88%d0%b0-%d0%bc%d0%b5%d1%80%d0%be%d0%bf%d1%80%d0%b8%d1%8f%d1%82%d0%b8%d0%b9', '', '', '2016-06-13 12:09:48', '2016-06-13 09:09:48', '', 0, 'http://kotleta.dev/?page_id=31', 0, 'page', '', 0),
(32, 1, '2016-06-13 12:09:39', '2016-06-13 09:09:39', '', 'im-main', '', 'inherit', 'open', 'closed', '', 'im-main', '', '', '2016-06-13 12:09:39', '2016-06-13 09:09:39', '', 31, 'http://kotleta.dev/wp-content/uploads/2016/06/im-main.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2016-06-13 12:09:48', '2016-06-13 09:09:48', '', 'Афиша мероприятий', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2016-06-13 12:09:48', '2016-06-13 09:09:48', '', 31, 'http://kotleta.dev/31-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2016-06-16 11:23:49', '2016-06-16 08:23:49', 'Рок-н-ролл, с самого своего появления, в 50-хх годах, сразу стал популярным и, самое главное, любимым всеми направлением в музыке. Лёгкая, позитивная, музыка с быстрым ритмом, услышав которую, уже невозможно сидеть на месте покорила сердца миллионов людей на всей планете. Прошло больше полувека и… И ничего не изменилось рок-н-ролл всё так же популярен, и всё так же вызывает желание веселиться и танцевать «до упаду»!\r\n\r\n<!--more-->\r\n\r\nКаждый четверг августа, ровно в 20:00 шоу-ресторан AltBier приглашает гостей на полную «драйва», ярких впечатлений и позитивных эмоций, вечеринку Rock-n-Roll.', 'Вечер Рок-н-Ролла', '', 'publish', 'open', 'open', '', '%d0%b2%d0%b5%d1%87%d0%b5%d1%80-%d1%80%d0%be%d0%ba-%d0%bd-%d1%80%d0%be%d0%bb%d0%bb%d0%b0', '', '', '2016-06-16 15:04:52', '2016-06-16 12:04:52', '', 0, 'http://kotleta.dev/?p=35', 0, 'post', '', 0),
(36, 1, '2016-06-16 11:21:49', '2016-06-16 08:21:49', '', '78', '', 'inherit', 'open', 'closed', '', '78', '', '', '2016-06-16 11:21:49', '2016-06-16 08:21:49', '', 35, 'http://kotleta.dev/wp-content/uploads/2016/06/78.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2016-06-16 11:23:49', '2016-06-16 08:23:49', 'Рок-н-ролл, с самого своего появления, в 50-хх годах, сразу стал популярным и, самое главное, любимым всеми направлением в музыке. Лёгкая, позитивная, музыка с быстрым ритмом, услышав которую, уже невозможно сидеть на месте покорила сердца миллионов людей на всей планете. Прошло больше полувека и… И ничего не изменилось рок-н-ролл всё так же популярен, и всё так же вызывает желание веселиться и танцевать «до упаду»!\r\n\r\nКаждый четверг августа, ровно в 20:00 шоу-ресторан AltBier приглашает гостей на полную «драйва», ярких впечатлений и позитивных эмоций, вечеринку Rock-n-Roll.', 'Вечер Рок-н-Ролла', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2016-06-16 11:23:49', '2016-06-16 08:23:49', '', 35, 'http://kotleta.dev/35-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2016-06-16 11:27:55', '2016-06-16 08:27:55', ' ', '', '', 'publish', 'closed', 'closed', '', '38', '', '', '2016-06-21 11:27:35', '2016-06-21 08:27:35', '', 0, 'http://kotleta.dev/?p=38', 3, 'nav_menu_item', '', 0),
(39, 1, '2016-06-16 11:31:45', '2016-06-16 08:31:45', 'В вашей компании решили провести  корпоратив в стиле Чикаго? А вы не знаете что надеть? Эти фотографии помогут вам определиться с тем, что надеть на корпоратив в стиле Чикаго! Эта компания готовилась к вечеринке очень тщательно! Пригласили аниматоров — качков с автоматами Томсона, всех гостей перед входом в клуб фотографировали на специальном баннере — аля — фото для тюремного архива. Из самовара наливали настоящий виски в кружки. Вообщем смотрим и наматываем на ус! )', 'Чикаго 30-х', '', 'publish', 'open', 'open', '', '%d1%87%d0%b8%d0%ba%d0%b0%d0%b3%d0%be-30-%d1%85', '', '', '2016-06-16 14:47:18', '2016-06-16 11:47:18', '', 0, 'http://kotleta.dev/?p=39', 0, 'post', '', 0),
(40, 1, '2016-06-16 11:31:33', '2016-06-16 08:31:33', '', '123', '', 'inherit', 'open', 'closed', '', '123', '', '', '2016-06-16 11:31:33', '2016-06-16 08:31:33', '', 39, 'http://kotleta.dev/wp-content/uploads/2016/06/123.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2016-06-16 11:31:45', '2016-06-16 08:31:45', 'В вашей компании решили провести  корпоратив в стиле Чикаго? А вы не знаете что надеть? Эти фотографии помогут вам определиться с тем, что надеть на корпоратив в стиле Чикаго! Эта компания готовилась к вечеринке очень тщательно! Пригласили аниматоров — качков с автоматами Томсона, всех гостей перед входом в клуб фотографировали на специальном баннере — аля — фото для тюремного архива. Из самовара наливали настоящий виски в кружки. Вообщем смотрим и наматываем на ус! )', 'Чикаго 30-х', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2016-06-16 11:31:45', '2016-06-16 08:31:45', '', 39, 'http://kotleta.dev/39-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2016-06-16 15:04:52', '2016-06-16 12:04:52', 'Рок-н-ролл, с самого своего появления, в 50-хх годах, сразу стал популярным и, самое главное, любимым всеми направлением в музыке. Лёгкая, позитивная, музыка с быстрым ритмом, услышав которую, уже невозможно сидеть на месте покорила сердца миллионов людей на всей планете. Прошло больше полувека и… И ничего не изменилось рок-н-ролл всё так же популярен, и всё так же вызывает желание веселиться и танцевать «до упаду»!\r\n\r\n<!--more-->\r\n\r\nКаждый четверг августа, ровно в 20:00 шоу-ресторан AltBier приглашает гостей на полную «драйва», ярких впечатлений и позитивных эмоций, вечеринку Rock-n-Roll.', 'Вечер Рок-н-Ролла', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2016-06-16 15:04:52', '2016-06-16 12:04:52', '', 35, 'http://kotleta.dev/35-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2016-06-16 16:54:52', '2016-06-16 13:54:52', '', 'Борщ "Украинский"', '', 'publish', 'open', 'closed', '', '%d0%b1%d0%be%d1%80%d1%89-%d1%83%d0%ba%d1%80%d0%b0%d0%b8%d0%bd%d1%81%d0%ba%d0%b8%d0%b9', '', '', '2016-06-16 16:54:52', '2016-06-16 13:54:52', '', 0, 'http://kotleta.dev/?post_type=product&#038;p=43', 0, 'product', '', 0),
(44, 1, '2016-06-16 16:51:26', '2016-06-16 13:51:26', '', 'maxresdefault', '', 'inherit', 'open', 'closed', '', 'maxresdefault', '', '', '2016-06-16 16:51:26', '2016-06-16 13:51:26', '', 43, 'http://kotleta.dev/wp-content/uploads/2016/06/maxresdefault.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2016-06-16 16:51:41', '2016-06-16 13:51:41', '', 'ukr-01', '', 'inherit', 'open', 'closed', '', 'ukr-01', '', '', '2016-06-16 16:51:41', '2016-06-16 13:51:41', '', 43, 'http://kotleta.dev/wp-content/uploads/2016/06/ukr-01.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2016-06-16 16:51:51', '2016-06-16 13:51:51', '', 'IMG_0681', '', 'inherit', 'open', 'closed', '', 'img_0681', '', '', '2016-06-16 16:51:51', '2016-06-16 13:51:51', '', 43, 'http://kotleta.dev/wp-content/uploads/2016/06/IMG_0681.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2016-06-20 15:02:19', '2016-06-20 12:02:19', '', 'Order &ndash; Июнь 20, 2016 @ 03:02 ПП', '', 'wc-processing', 'open', 'closed', 'order_5767db4b56c09', '%d0%b7%d0%b0%d0%ba%d0%b0%d0%b7-20-jun-2016-%d0%b2-1202', '', '', '2016-06-20 15:02:19', '2016-06-20 12:02:19', '', 0, 'http://kotleta.dev/?post_type=shop_order&#038;p=48', 0, 'shop_order', '', 1),
(49, 1, '2016-08-01 17:01:18', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-08-01 17:01:18', '0000-00-00 00:00:00', '', 0, 'http://kotleta.dev/?p=49', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 8, 'order', '0'),
(2, 8, 'display_type', ''),
(3, 8, 'thumbnail_id', '0'),
(4, 9, 'order', '0'),
(5, 9, 'display_type', ''),
(6, 9, 'thumbnail_id', '0'),
(7, 9, 'product_count_product_cat', '1'),
(8, 10, 'order_pa_ингридиенты', '0'),
(9, 11, 'order_pa_ингридиенты', '0'),
(10, 12, 'order_pa_ингридиенты', '0'),
(11, 13, 'order_pa_ингридиенты', '0'),
(12, 14, 'order_pa_ингридиенты', '0'),
(13, 15, 'order_pa_ингридиенты', '0'),
(14, 16, 'order_pa_ингридиенты', '0'),
(15, 17, 'order_pa_ингридиенты', '0'),
(16, 19, 'order_pa_ингридиенты', '0'),
(17, 20, 'order_pa_ингридиенты', '0'),
(18, 8, 'product_count_product_cat', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'Левое верхнее', '%d0%bb%d0%b5%d0%b2%d0%be%d0%b5-%d0%b2%d0%b5%d1%80%d1%85%d0%bd%d0%b5%d0%b5', 0),
(7, 'Правое верхнее', '%d0%bf%d1%80%d0%b0%d0%b2%d0%be%d0%b5-%d0%b2%d0%b5%d1%80%d1%85%d0%bd%d0%b5%d0%b5', 0),
(8, 'Первые блюда', '%d0%bf%d0%b5%d1%80%d0%b2%d1%8b%d0%b5-%d0%b1%d0%bb%d1%8e%d0%b4%d0%b0', 0),
(9, 'Вторые блюда', '%d0%b2%d1%82%d0%be%d1%80%d1%8b%d0%b5-%d0%b1%d0%bb%d1%8e%d0%b4%d0%b0', 0),
(10, 'Картофель', '%d0%ba%d0%b0%d1%80%d1%82%d0%be%d1%84%d0%b5%d0%bb%d1%8c', 0),
(11, 'Лук', '%d0%bb%d1%83%d0%ba', 0),
(12, 'Сметана', '%d1%81%d0%bc%d0%b5%d1%82%d0%b0%d0%bd%d0%b0', 0),
(13, 'Грибы', '%d0%b3%d1%80%d0%b8%d0%b1%d1%8b', 0),
(14, 'Морковь', '%d0%bc%d0%be%d1%80%d0%ba%d0%be%d0%b2%d1%8c', 0),
(15, 'Говядина', '%d0%b3%d0%be%d0%b2%d1%8f%d0%b4%d0%b8%d0%bd%d0%b0', 0),
(16, 'Свинина', '%d1%81%d0%b2%d0%b8%d0%bd%d0%b8%d0%bd%d0%b0', 0),
(17, 'Яйца', '%d1%8f%d0%b9%d1%86%d0%b0', 0),
(18, 'Афиша', 'afisha', 0),
(19, 'Капуста', '%d0%ba%d0%b0%d0%bf%d1%83%d1%81%d1%82%d0%b0', 0),
(20, 'Зелень', '%d0%b7%d0%b5%d0%bb%d0%b5%d0%bd%d1%8c', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(15, 6, 0),
(16, 6, 0),
(17, 7, 0),
(18, 7, 0),
(19, 7, 0),
(20, 7, 0),
(21, 2, 0),
(21, 9, 0),
(21, 10, 0),
(21, 11, 0),
(21, 12, 0),
(21, 13, 0),
(21, 17, 0),
(35, 18, 0),
(38, 6, 0),
(39, 18, 0),
(43, 2, 0),
(43, 8, 0),
(43, 10, 0),
(43, 12, 0),
(43, 15, 0),
(43, 19, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'product_type', '', 0, 2),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'nav_menu', '', 0, 3),
(7, 7, 'nav_menu', '', 0, 4),
(8, 8, 'product_cat', '', 0, 1),
(9, 9, 'product_cat', '', 0, 1),
(10, 10, 'pa_ингридиенты', '', 0, 2),
(11, 11, 'pa_ингридиенты', '', 0, 1),
(12, 12, 'pa_ингридиенты', '', 0, 2),
(13, 13, 'pa_ингридиенты', '', 0, 1),
(14, 14, 'pa_ингридиенты', '', 0, 0),
(15, 15, 'pa_ингридиенты', '', 0, 1),
(16, 16, 'pa_ингридиенты', '', 0, 0),
(17, 17, 'pa_ингридиенты', '', 0, 1),
(18, 18, 'category', '', 0, 2),
(19, 19, 'pa_ингридиенты', '', 0, 1),
(20, 20, 'pa_ингридиенты', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'kotleta'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'light'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'false'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '0'),
(14, 1, 'session_tokens', 'a:1:{s:64:"bbd3523da7b96f6f2e4a0feb7c9a766a5b34b1b8ec65113996e30acc71e51a7e";a:4:{s:10:"expiration";i:1470232877;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36";s:5:"login";i:1470060077;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '49'),
(16, 1, 'closedpostboxes_dashboard', 'a:2:{i:0;s:18:"dashboard_activity";i:1;s:17:"dashboard_primary";}'),
(17, 1, 'metaboxhidden_dashboard', 'a:4:{i:0;s:19:"dashboard_right_now";i:1;s:18:"dashboard_activity";i:2;s:17:"dashboard_primary";i:3;s:21:"dashboard_quick_press";}'),
(18, 1, 'manageedit-shop_ordercolumnshidden', 'a:1:{i:0;s:15:"billing_address";}'),
(19, 1, 'meta-box-order_dashboard', 'a:4:{s:6:"normal";s:48:"woocommerce_dashboard_status,dashboard_right_now";s:4:"side";s:95:"dashboard_activity,dashboard_primary,dashboard_quick_press,woocommerce_dashboard_recent_reviews";s:7:"column3";s:0:"";s:7:"column4";s:0:"";}'),
(20, 1, 'billing_first_name', 'выаыва'),
(21, 1, 'billing_last_name', 'ываываывав'),
(22, 1, 'billing_company', 'ваыва'),
(23, 1, 'billing_address_1', 'вапвап'),
(24, 1, 'billing_address_2', ''),
(25, 1, 'billing_city', 'ккнукуе'),
(26, 1, 'billing_postcode', '22312'),
(27, 1, 'billing_country', 'UA'),
(28, 1, 'billing_state', 'ываываыв'),
(29, 1, 'billing_phone', '456456456'),
(30, 1, 'billing_email', 'alkv84@yandex.ru'),
(31, 1, 'shipping_first_name', ''),
(32, 1, 'shipping_last_name', ''),
(33, 1, 'shipping_company', ''),
(34, 1, 'shipping_address_1', ''),
(35, 1, 'shipping_address_2', ''),
(36, 1, 'shipping_city', ''),
(37, 1, 'shipping_postcode', ''),
(38, 1, 'shipping_country', ''),
(39, 1, 'shipping_state', ''),
(41, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(42, 1, 'wp_user-settings-time', '1466065427'),
(43, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(44, 1, 'metaboxhidden_nav-menus', 'a:5:{i:0;s:30:"woocommerce_endpoints_nav_link";i:1;s:21:"add-post-type-product";i:2;s:12:"add-post_tag";i:3;s:15:"add-product_cat";i:4;s:15:"add-product_tag";}'),
(45, 1, 'nav_menu_recently_edited', '7'),
(46, 1, 'closedpostboxes_product', 'a:1:{i:0;s:19:"tagsdiv-product_tag";}'),
(47, 1, 'metaboxhidden_product', 'a:2:{i:0;s:10:"postcustom";i:1;s:7:"slugdiv";}'),
(48, 1, 'closedpostboxes_post', 'a:1:{i:0;s:16:"tagsdiv-post_tag";}'),
(49, 1, 'metaboxhidden_post', 'a:5:{i:0;s:11:"postexcerpt";i:1;s:13:"trackbacksdiv";i:2;s:16:"commentstatusdiv";i:3;s:7:"slugdiv";i:4;s:9:"authordiv";}'),
(50, 1, 'last_update', '1466424139'),
(51, 1, '_woocommerce_persistent_cart', 'a:1:{s:4:"cart";a:1:{s:32:"3c59dc048e8850243be8079a5c74d079";a:9:{s:10:"product_id";i:21;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:3;s:10:"line_total";d:149.97;s:8:"line_tax";i:0;s:13:"line_subtotal";d:149.97;s:17:"line_subtotal_tax";i:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}}}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'kotleta', '$P$B6a1hieWXah7zSW5YRdkLv7g2X9p1P.', 'kotleta', 'alkv84@yandex.ru', '', '2016-06-13 07:49:06', '', 0, 'kotleta');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_comments_subscription`
--

CREATE TABLE IF NOT EXISTS `wp_wc_comments_subscription` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subscribtion_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `subscribtion_type` varchar(255) NOT NULL,
  `activation_key` varchar(255) NOT NULL,
  `confirm` tinyint(4) DEFAULT '0',
  `subscription_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_phrases`
--

CREATE TABLE IF NOT EXISTS `wp_wc_phrases` (
  `id` int(11) NOT NULL,
  `phrase_key` varchar(255) NOT NULL,
  `phrase_value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_users_voted`
--

CREATE TABLE IF NOT EXISTS `wp_wc_users_voted` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `vote_type` int(11) DEFAULT NULL,
  `is_guest` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_api_keys`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_api_keys` (
  `key_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` longtext COLLATE utf8mb4_unicode_ci,
  `attribute_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_woocommerce_attribute_taxonomies`
--

INSERT INTO `wp_woocommerce_attribute_taxonomies` (`attribute_id`, `attribute_name`, `attribute_label`, `attribute_type`, `attribute_orderby`, `attribute_public`) VALUES
(1, 'ингридиенты', 'Ингридиенты', 'select', 'name', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) NOT NULL,
  `download_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_order_itemmeta`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) NOT NULL,
  `order_item_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_woocommerce_order_itemmeta`
--

INSERT INTO `wp_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_qty', '2'),
(2, 1, '_tax_class', ''),
(3, 1, '_product_id', '21'),
(4, 1, '_variation_id', '0'),
(5, 1, '_line_subtotal', '99.98'),
(6, 1, '_line_total', '99.98'),
(7, 1, '_line_subtotal_tax', '0'),
(8, 1, '_line_tax', '0'),
(9, 1, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(10, 2, '_qty', '3'),
(11, 2, '_tax_class', ''),
(12, 2, '_product_id', '43'),
(13, 2, '_variation_id', '0'),
(14, 2, '_line_subtotal', '117'),
(15, 2, '_line_total', '117'),
(16, 2, '_line_subtotal_tax', '0'),
(17, 2, '_line_tax', '0'),
(18, 2, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_order_items`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) NOT NULL,
  `order_item_name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_woocommerce_order_items`
--

INSERT INTO `wp_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(1, 'Деруны', 'line_item', 48),
(2, 'Борщ "Украинский"', 'line_item', 48);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) NOT NULL,
  `payment_token_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_payment_tokens`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) NOT NULL,
  `gateway_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_sessions`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_sessions` (
  `session_id` bigint(20) NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(1, '1', 'a:18:{s:4:"cart";s:311:"a:1:{s:32:"3c59dc048e8850243be8079a5c74d079";a:9:{s:10:"product_id";i:21;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:3;s:10:"line_total";d:149.97;s:8:"line_tax";i:0;s:13:"line_subtotal";d:149.97;s:17:"line_subtotal_tax";i:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}}";s:15:"applied_coupons";s:6:"a:0:{}";s:23:"coupon_discount_amounts";s:6:"a:0:{}";s:27:"coupon_discount_tax_amounts";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:19:"cart_contents_total";d:149.97;s:5:"total";i:0;s:8:"subtotal";d:149.97;s:15:"subtotal_ex_tax";d:149.97;s:9:"tax_total";i:0;s:5:"taxes";s:6:"a:0:{}";s:14:"shipping_taxes";s:6:"a:0:{}";s:13:"discount_cart";i:0;s:17:"discount_cart_tax";i:0;s:14:"shipping_total";i:0;s:18:"shipping_tax_total";i:0;s:9:"fee_total";i:0;s:4:"fees";s:6:"a:0:{}";}', 1470232893);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_shipping_zones`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) NOT NULL,
  `zone_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) NOT NULL,
  `zone_id` bigint(20) NOT NULL,
  `location_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) NOT NULL,
  `instance_id` bigint(20) NOT NULL,
  `method_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_tax_rates`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) NOT NULL,
  `tax_rate_country` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) NOT NULL,
  `location_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_g_circles`
--
ALTER TABLE `wp_g_circles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wp_g_maps`
--
ALTER TABLE `wp_g_maps`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wp_g_markers`
--
ALTER TABLE `wp_g_markers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wp_g_polygones`
--
ALTER TABLE `wp_g_polygones`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wp_g_polylines`
--
ALTER TABLE `wp_g_polylines`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Индексы таблицы `wp_wc_comments_subscription`
--
ALTER TABLE `wp_wc_comments_subscription`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscribe_unique_index` (`subscribtion_id`,`email`),
  ADD KEY `subscribtion_id` (`subscribtion_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `confirm` (`confirm`);

--
-- Индексы таблицы `wp_wc_phrases`
--
ALTER TABLE `wp_wc_phrases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phrase_key` (`phrase_key`);

--
-- Индексы таблицы `wp_wc_users_voted`
--
ALTER TABLE `wp_wc_users_voted`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `vote_type` (`vote_type`),
  ADD KEY `is_guest` (`is_guest`);

--
-- Индексы таблицы `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Индексы таблицы `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(191));

--
-- Индексы таблицы `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(191),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`);

--
-- Индексы таблицы `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Индексы таблицы `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Индексы таблицы `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type` (`location_type`),
  ADD KEY `location_type_code` (`location_type`,`location_code`(90));

--
-- Индексы таблицы `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Индексы таблицы `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`(191)),
  ADD KEY `tax_rate_state` (`tax_rate_state`(191)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(191)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Индексы таблицы `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type` (`location_type`),
  ADD KEY `location_type_code` (`location_type`,`location_code`(90));

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `wp_g_circles`
--
ALTER TABLE `wp_g_circles`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_g_maps`
--
ALTER TABLE `wp_g_maps`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `wp_g_markers`
--
ALTER TABLE `wp_g_markers`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_g_polygones`
--
ALTER TABLE `wp_g_polygones`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_g_polylines`
--
ALTER TABLE `wp_g_polylines`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=541;
--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=262;
--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `wp_wc_comments_subscription`
--
ALTER TABLE `wp_wc_comments_subscription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_wc_phrases`
--
ALTER TABLE `wp_wc_phrases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_wc_users_voted`
--
ALTER TABLE `wp_wc_users_voted`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
