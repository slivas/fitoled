-- phpMyAdmin SQL Dump
-- version 4.0.10.10
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 03 2018 г., 01:44
-- Версия сервера: 5.5.45
-- Версия PHP: 5.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `led`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=373 ;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://led.loc', 'yes'),
(2, 'home', 'http://led.loc', 'yes'),
(3, 'blogname', 'LED', 'yes'),
(4, 'blogdescription', 'Ещё один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'polesskyvlad@gmail.com', 'yes'),
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
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:91:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=15&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:34:"advanced-custom-fields-pro/acf.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'led', 'yes'),
(41, 'stylesheet', 'led', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '15', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'initial_db_version', '38590', 'yes'),
(93, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(94, 'fresh_site', '0', 'yes'),
(95, 'WPLANG', 'ru_RU', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:2:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'cron', 'a:5:{i:1538347518;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1538354718;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1538397944;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1538429819;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(112, 'theme_mods_twentyseventeen', 'a:3:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1532195454;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}s:18:"nav_menu_locations";a:0:{}}', 'yes'),
(137, 'can_compress_scripts', '1', 'no'),
(146, 'current_theme', 'led', 'yes'),
(147, 'theme_mods_twentysixteen', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1532191177;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(148, 'theme_switched', '', 'yes'),
(150, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(152, '_transient_twentysixteen_categories', '1', 'yes'),
(166, 'theme_mods_led', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;}', 'yes'),
(181, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:22:"polesskyvlad@gmail.com";s:7:"version";s:5:"4.9.8";s:9:"timestamp";i:1533504428;}', 'no'),
(195, 'recently_activated', 'a:0:{}', 'yes'),
(196, 'acf_version', '5.5.9', 'yes'),
(230, 'category_children', 'a:0:{}', 'yes'),
(296, 'wpcf7', 'a:2:{s:7:"version";s:5:"5.0.3";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1534803047;s:7:"version";s:5:"5.0.3";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(341, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1537175944', 'no'),
(354, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:65:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.8.zip";s:6:"locale";s:5:"ru_RU";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.8.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.8";s:7:"version";s:5:"4.9.8";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1538342788;s:15:"version_checked";s:5:"4.9.8";s:12:"translations";a:0:{}}', 'no'),
(367, '_transient_timeout_acf_get_remote_plugin_info', '1538429191', 'no'),
(368, '_transient_acf_get_remote_plugin_info', 'a:13:{s:4:"name";s:26:"Advanced Custom Fields PRO";s:4:"slug";s:26:"advanced-custom-fields-pro";s:8:"homepage";s:37:"https://www.advancedcustomfields.com/";s:7:"version";s:5:"5.7.6";s:6:"author";s:13:"Elliot Condon";s:10:"author_url";s:28:"http://www.elliotcondon.com/";s:12:"contributors";s:12:"elliotcondon";s:8:"requires";s:5:"4.4.0";s:6:"tested";s:5:"4.9.9";s:6:"tagged";s:61:"acf, advanced, custom, field, fields, form, repeater, content";s:9:"changelog";s:462:"<h4>5.7.6</h4><p><em>Release Date - 12 September 2018</em></p>\n<ul>\n<li> Fix - Fixed unload prompt not working.</li>\n<li> Dev - Reduced number of queries needed to populate the relationship field taxonomy filter.</li>\n<li> Dev - Added ''nav_menu_item_id'' and ''nav_menu_item_depth'' to get_field_groups() query.</li>\n<li> Dev - Reordered various actions and filters for more usefulness.</li>\n<li> i18n - Updated Polish language thanks to Dariusz Zielonka</li>\n</ul>";s:14:"upgrade_notice";s:0:"";s:5:"icons";a:1:{s:7:"default";s:63:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png";}}', 'no'),
(369, '_site_transient_timeout_theme_roots', '1538344592', 'no'),
(370, '_site_transient_theme_roots', 'a:4:{s:3:"led";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(371, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1538342794;s:7:"checked";a:4:{s:3:"led";s:0:"";s:13:"twentyfifteen";s:3:"2.0";s:15:"twentyseventeen";s:3:"1.6";s:13:"twentysixteen";s:3:"1.5";}s:8:"response";a:1:{s:15:"twentyseventeen";a:4:{s:5:"theme";s:15:"twentyseventeen";s:11:"new_version";s:3:"1.7";s:3:"url";s:45:"https://wordpress.org/themes/twentyseventeen/";s:7:"package";s:61:"https://downloads.wordpress.org/theme/twentyseventeen.1.7.zip";}}s:12:"translations";a:0:{}}', 'no'),
(372, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1538342795;s:7:"checked";a:4:{s:34:"advanced-custom-fields-pro/acf.php";s:5:"5.5.9";s:19:"akismet/akismet.php";s:5:"4.0.3";s:36:"contact-form-7/wp-contact-form-7.php";s:5:"5.0.3";s:9:"hello.php";s:3:"1.7";}s:8:"response";a:3:{s:19:"akismet/akismet.php";O:8:"stdClass":12:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.8";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.8";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":13:{s:2:"id";s:28:"w.org/plugins/contact-form-7";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:5:"5.0.4";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/contact-form-7.5.0.4.zip";s:5:"icons";a:2:{s:2:"2x";s:66:"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007";s:2:"1x";s:66:"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007";}s:7:"banners";a:2:{s:2:"2x";s:69:"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901";s:2:"1x";s:68:"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427";}s:11:"banners_rtl";a:0:{}s:14:"upgrade_notice";s:228:"<p>This is a security and maintenance release and we strongly encourage you to update to it immediately. For more information, refer to the <a href="https://contactform7.com/category/releases/">release announcement post</a>.</p>";s:6:"tested";s:5:"4.9.8";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}s:34:"advanced-custom-fields-pro/acf.php";O:8:"stdClass":5:{s:4:"slug";s:26:"advanced-custom-fields-pro";s:6:"plugin";s:34:"advanced-custom-fields-pro/acf.php";s:11:"new_version";s:5:"5.7.6";s:3:"url";s:37:"https://www.advancedcustomfields.com/";s:7:"package";s:0:"";}}s:12:"translations";a:0:{}s:9:"no_update";a:1:{s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:2:{s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";}s:7:"banners";a:1:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=223 ;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(38, 15, '_edit_last', '1'),
(39, 15, '_edit_lock', '1534793819:1'),
(40, 15, '_wp_page_template', 'main.php'),
(41, 18, '_edit_last', '1'),
(42, 18, '_edit_lock', '1534793216:1'),
(43, 23, '_wp_attached_file', '2018/08/LED_lamp.jpg'),
(44, 23, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:682;s:4:"file";s:20:"2018/08/LED_lamp.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"LED_lamp-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"LED_lamp-300x107.jpg";s:5:"width";i:300;s:6:"height";i:107;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"LED_lamp-768x273.jpg";s:5:"width";i:768;s:6:"height";i:273;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"LED_lamp-1024x364.jpg";s:5:"width";i:1024;s:6:"height";i:364;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(45, 15, 'gallery_0_mainImage', '23'),
(46, 15, '_gallery_0_mainImage', 'field_5b6a19be611e3'),
(47, 15, 'gallery_0_textTop', 'LED фитолампы'),
(48, 15, '_gallery_0_textTop', 'field_5b6a1a5e611e4'),
(49, 15, 'gallery_0_textBottom', 'Только качественные фитолампы для теплиц, гроубоксов.'),
(50, 15, '_gallery_0_textBottom', 'field_5b6a1a7a611e5'),
(51, 15, 'gallery', '1'),
(52, 15, '_gallery', 'field_5b6a1998611e2'),
(53, 24, 'gallery_0_mainImage', '23'),
(54, 24, '_gallery_0_mainImage', 'field_5b6a19be611e3'),
(55, 24, 'gallery_0_textTop', ''),
(56, 24, '_gallery_0_textTop', 'field_5b6a1a5e611e4'),
(57, 24, 'gallery_0_textBottom', ''),
(58, 24, '_gallery_0_textBottom', 'field_5b6a1a7a611e5'),
(59, 24, 'gallery', '1'),
(60, 24, '_gallery', 'field_5b6a1998611e2'),
(61, 25, 'gallery_0_mainImage', '23'),
(62, 25, '_gallery_0_mainImage', 'field_5b6a19be611e3'),
(63, 25, 'gallery_0_textTop', '<pre>LED фитолампы</pre>'),
(64, 25, '_gallery_0_textTop', 'field_5b6a1a5e611e4'),
(65, 25, 'gallery_0_textBottom', '<pre>Только качественные фитолампы для теплиц, гроубоксов.</pre>'),
(66, 25, '_gallery_0_textBottom', 'field_5b6a1a7a611e5'),
(67, 25, 'gallery', '1'),
(68, 25, '_gallery', 'field_5b6a1998611e2'),
(69, 26, 'gallery_0_mainImage', '23'),
(70, 26, '_gallery_0_mainImage', 'field_5b6a19be611e3'),
(71, 26, 'gallery_0_textTop', '<pre>LED фитолампы</pre>'),
(72, 26, '_gallery_0_textTop', 'field_5b6a1a5e611e4'),
(73, 26, 'gallery_0_textBottom', 'Только качественные фитолампы для теплиц, гроубоксов.'),
(74, 26, '_gallery_0_textBottom', 'field_5b6a1a7a611e5'),
(75, 26, 'gallery', '1'),
(76, 26, '_gallery', 'field_5b6a1998611e2'),
(77, 27, 'gallery_0_mainImage', '23'),
(78, 27, '_gallery_0_mainImage', 'field_5b6a19be611e3'),
(79, 27, 'gallery_0_textTop', 'LED фитолампы'),
(80, 27, '_gallery_0_textTop', 'field_5b6a1a5e611e4'),
(81, 27, 'gallery_0_textBottom', 'Только качественные фитолампы для теплиц, гроубоксов.'),
(82, 27, '_gallery_0_textBottom', 'field_5b6a1a7a611e5'),
(83, 27, 'gallery', '1'),
(84, 27, '_gallery', 'field_5b6a1998611e2'),
(85, 30, '_wp_attached_file', '2018/08/lamp-5.jpg'),
(86, 30, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:18:"2018/08/lamp-5.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"lamp-5-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"lamp-5-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"lamp-5-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(87, 15, 'about_lamps_txt', 'Растет свет или растения свет является искусственным источником света, обычно представляет собой электрический свет , предназначенный для стимулирования роста растений, испуская свет , подходящий для фотосинтеза . Растущие огни используются в приложениях, где отсутствует естественный свет или требуется дополнительный свет. Например, в зимние месяцы, когда доступные часы дневного света могут быть недостаточными для желаемого роста растений, используются огни, чтобы продлить время, в течение которого растения получают свет. Если растения не получают достаточного количества света, они будут расти длинными и прямыми.'),
(88, 15, '_about_lamps_txt', 'field_5b6a1fc2847bf'),
(89, 15, 'about_lamps_img', '30'),
(90, 15, '_about_lamps_img', 'field_5b6a203c847c1'),
(91, 31, 'gallery_0_mainImage', '23'),
(92, 31, '_gallery_0_mainImage', 'field_5b6a19be611e3'),
(93, 31, 'gallery_0_textTop', 'LED фитолампы'),
(94, 31, '_gallery_0_textTop', 'field_5b6a1a5e611e4'),
(95, 31, 'gallery_0_textBottom', 'Только качественные фитолампы для теплиц, гроубоксов.'),
(96, 31, '_gallery_0_textBottom', 'field_5b6a1a7a611e5'),
(97, 31, 'gallery', '1'),
(98, 31, '_gallery', 'field_5b6a1998611e2'),
(99, 31, 'about_lamps_txt', 'Растет свет или растения свет является искусственным источником света, обычно представляет собой электрический свет , предназначенный для стимулирования роста растений, испуская свет , подходящий для фотосинтеза . Растущие огни используются в приложениях, где отсутствует естественный свет или требуется дополнительный свет. Например, в зимние месяцы, когда доступные часы дневного света могут быть недостаточными для желаемого роста растений, используются огни, чтобы продлить время, в течение которого растения получают свет. Если растения не получают достаточного количества света, они будут расти длинными и прямыми.'),
(100, 31, '_about_lamps_txt', 'field_5b6a1fc2847bf'),
(101, 31, 'about_lamps_img', '30'),
(102, 31, '_about_lamps_img', 'field_5b6a203c847c1'),
(103, 32, '_edit_last', '1'),
(104, 32, '_edit_lock', '1534024335:1'),
(105, 33, '_wp_attached_file', '2018/08/lamp-4.jpg'),
(106, 33, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:928;s:6:"height";i:736;s:4:"file";s:18:"2018/08/lamp-4.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"lamp-4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"lamp-4-300x238.jpg";s:5:"width";i:300;s:6:"height";i:238;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"lamp-4-768x609.jpg";s:5:"width";i:768;s:6:"height";i:609;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(109, 32, '_thumbnail_id', '33'),
(116, 39, '_edit_last', '1'),
(117, 39, '_edit_lock', '1534367898:1'),
(135, 15, 'lamps_img', '33'),
(136, 15, '_lamps_img', 'field_5b6f5b640ee06'),
(137, 47, 'gallery_0_mainImage', '23'),
(138, 47, '_gallery_0_mainImage', 'field_5b6a19be611e3'),
(139, 47, 'gallery_0_textTop', 'LED фитолампы'),
(140, 47, '_gallery_0_textTop', 'field_5b6a1a5e611e4'),
(141, 47, 'gallery_0_textBottom', 'Только качественные фитолампы для теплиц, гроубоксов.'),
(142, 47, '_gallery_0_textBottom', 'field_5b6a1a7a611e5'),
(143, 47, 'gallery', '1'),
(144, 47, '_gallery', 'field_5b6a1998611e2'),
(145, 47, 'about_lamps_txt', 'Растет свет или растения свет является искусственным источником света, обычно представляет собой электрический свет , предназначенный для стимулирования роста растений, испуская свет , подходящий для фотосинтеза . Растущие огни используются в приложениях, где отсутствует естественный свет или требуется дополнительный свет. Например, в зимние месяцы, когда доступные часы дневного света могут быть недостаточными для желаемого роста растений, используются огни, чтобы продлить время, в течение которого растения получают свет. Если растения не получают достаточного количества света, они будут расти длинными и прямыми.'),
(146, 47, '_about_lamps_txt', 'field_5b6a1fc2847bf'),
(147, 47, 'about_lamps_img', '30'),
(148, 47, '_about_lamps_img', 'field_5b6a203c847c1'),
(149, 47, 'lamps_img', '33'),
(150, 47, '_lamps_img', 'field_5b6f5b640ee06'),
(151, 15, 'lamps_name', 'LED фитолампа'),
(152, 15, '_lamps_name', 'field_5b6f5d7a23a29'),
(153, 49, 'gallery_0_mainImage', '23'),
(154, 49, '_gallery_0_mainImage', 'field_5b6a19be611e3'),
(155, 49, 'gallery_0_textTop', 'LED фитолампы'),
(156, 49, '_gallery_0_textTop', 'field_5b6a1a5e611e4'),
(157, 49, 'gallery_0_textBottom', 'Только качественные фитолампы для теплиц, гроубоксов.'),
(158, 49, '_gallery_0_textBottom', 'field_5b6a1a7a611e5'),
(159, 49, 'gallery', '1'),
(160, 49, '_gallery', 'field_5b6a1998611e2'),
(161, 49, 'about_lamps_txt', 'Растет свет или растения свет является искусственным источником света, обычно представляет собой электрический свет , предназначенный для стимулирования роста растений, испуская свет , подходящий для фотосинтеза . Растущие огни используются в приложениях, где отсутствует естественный свет или требуется дополнительный свет. Например, в зимние месяцы, когда доступные часы дневного света могут быть недостаточными для желаемого роста растений, используются огни, чтобы продлить время, в течение которого растения получают свет. Если растения не получают достаточного количества света, они будут расти длинными и прямыми.'),
(162, 49, '_about_lamps_txt', 'field_5b6a1fc2847bf'),
(163, 49, 'about_lamps_img', '30'),
(164, 49, '_about_lamps_img', 'field_5b6a203c847c1'),
(165, 49, 'lamps_img', '33'),
(166, 49, '_lamps_img', 'field_5b6f5b640ee06'),
(167, 49, 'lamps_name', 'LED фитолампа'),
(168, 49, '_lamps_name', 'field_5b6f5d7a23a29'),
(169, 50, '_edit_last', '1'),
(170, 50, '_edit_lock', '1534368094:1'),
(173, 57, '_form', '<div class="form-row item">\n    [text* your-name placeholder "Имя"]\n</div>\n<div class="form-row item">\n    [tel your-phone placeholder "Телефон*"]\n</div>\n<div class="form-row item">\n    [email your-email placeholder "Email"]\n</div>\n<div class="form-row">\n    [textarea your-msg placeholder "Сообщение"]\n</div>\n\n                <div class="form-row btn third">\n                     [submit "Отправить"]\n                </div>'),
(174, 57, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:20:"LED "[your-subject]"";s:6:"sender";s:31:"[your-name] <wordpress@led.loc>";s:9:"recipient";s:22:"polesskyvlad@gmail.com";s:4:"body";s:180:"От: [your-name] <[your-email]>\nТема: [your-subject]\n\nСообщение:\n[your-message]\n\n-- \nЭто сообщение отправлено с сайта LED (http://led.loc)";s:18:"additional_headers";s:0:"";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(175, 57, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:20:"LED "[your-subject]"";s:6:"sender";s:23:"LED <wordpress@led.loc>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:121:"Сообщение:\n[your-message]\n\n-- \nЭто сообщение отправлено с сайта LED (http://led.loc)";s:18:"additional_headers";s:32:"Reply-To: polesskyvlad@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(176, 57, '_messages', 'a:23:{s:12:"mail_sent_ok";s:92:"Спасибо за Ваше сообщение. Оно успешно отправлено.";s:12:"mail_sent_ng";s:144:"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.";s:16:"validation_error";s:180:"Одно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.";s:4:"spam";s:144:"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.";s:12:"accept_terms";s:132:"Вы должны принять условия и положения перед отправкой вашего сообщения.";s:16:"invalid_required";s:60:"Поле обязательно для заполнения.";s:16:"invalid_too_long";s:39:"Поле слишком длинное.";s:17:"invalid_too_short";s:41:"Поле слишком короткое.";s:12:"invalid_date";s:45:"Формат даты некорректен.";s:14:"date_too_early";s:74:"Введённая дата слишком далеко в прошлом.";s:13:"date_too_late";s:74:"Введённая дата слишком далеко в будущем.";s:13:"upload_failed";s:90:"При загрузке файла произошла неизвестная ошибка.";s:24:"upload_file_type_invalid";s:81:"Вам не разрешено загружать файлы этого типа.";s:21:"upload_file_too_large";s:39:"Файл слишком большой.";s:23:"upload_failed_php_error";s:67:"При загрузке файла произошла ошибка.";s:14:"invalid_number";s:47:"Формат числа некорректен.";s:16:"number_too_small";s:68:"Число меньше минимально допустимого.";s:16:"number_too_large";s:70:"Число больше максимально допустимого.";s:23:"quiz_answer_not_correct";s:69:"Неверный ответ на проверочный вопрос.";s:17:"captcha_not_match";s:35:"Код введен неверно.";s:13:"invalid_email";s:62:"Неверно введён электронный адрес.";s:11:"invalid_url";s:53:"Введён некорректный URL адрес.";s:11:"invalid_tel";s:70:"Введён некорректный телефонный номер.";}'),
(177, 57, '_additional_settings', ''),
(178, 57, '_locale', 'ru_RU'),
(185, 15, 'contact_form', '[contact-form-7 id="57" title="Contact form"]'),
(186, 15, '_contact_form', 'field_5b7b1598587a9'),
(187, 61, 'gallery_0_mainImage', '23'),
(188, 61, '_gallery_0_mainImage', 'field_5b6a19be611e3'),
(189, 61, 'gallery_0_textTop', 'LED фитолампы'),
(190, 61, '_gallery_0_textTop', 'field_5b6a1a5e611e4'),
(191, 61, 'gallery_0_textBottom', 'Только качественные фитолампы для теплиц, гроубоксов.'),
(192, 61, '_gallery_0_textBottom', 'field_5b6a1a7a611e5'),
(193, 61, 'gallery', '1'),
(194, 61, '_gallery', 'field_5b6a1998611e2'),
(195, 61, 'about_lamps_txt', 'Растет свет или растения свет является искусственным источником света, обычно представляет собой электрический свет , предназначенный для стимулирования роста растений, испуская свет , подходящий для фотосинтеза . Растущие огни используются в приложениях, где отсутствует естественный свет или требуется дополнительный свет. Например, в зимние месяцы, когда доступные часы дневного света могут быть недостаточными для желаемого роста растений, используются огни, чтобы продлить время, в течение которого растения получают свет. Если растения не получают достаточного количества света, они будут расти длинными и прямыми.'),
(196, 61, '_about_lamps_txt', 'field_5b6a1fc2847bf'),
(197, 61, 'about_lamps_img', '30'),
(198, 61, '_about_lamps_img', 'field_5b6a203c847c1'),
(199, 61, 'lamps_img', '33'),
(200, 61, '_lamps_img', 'field_5b6f5b640ee06'),
(201, 61, 'lamps_name', 'LED фитолампа'),
(202, 61, '_lamps_name', 'field_5b6f5d7a23a29'),
(203, 61, 'contact_form', 'do_shortcode[''[contact-form-7 id="57" title="Contact form"]'']'),
(204, 61, '_contact_form', 'field_5b7b1598587a9'),
(205, 62, 'gallery_0_mainImage', '23'),
(206, 62, '_gallery_0_mainImage', 'field_5b6a19be611e3'),
(207, 62, 'gallery_0_textTop', 'LED фитолампы'),
(208, 62, '_gallery_0_textTop', 'field_5b6a1a5e611e4'),
(209, 62, 'gallery_0_textBottom', 'Только качественные фитолампы для теплиц, гроубоксов.'),
(210, 62, '_gallery_0_textBottom', 'field_5b6a1a7a611e5'),
(211, 62, 'gallery', '1'),
(212, 62, '_gallery', 'field_5b6a1998611e2'),
(213, 62, 'about_lamps_txt', 'Растет свет или растения свет является искусственным источником света, обычно представляет собой электрический свет , предназначенный для стимулирования роста растений, испуская свет , подходящий для фотосинтеза . Растущие огни используются в приложениях, где отсутствует естественный свет или требуется дополнительный свет. Например, в зимние месяцы, когда доступные часы дневного света могут быть недостаточными для желаемого роста растений, используются огни, чтобы продлить время, в течение которого растения получают свет. Если растения не получают достаточного количества света, они будут расти длинными и прямыми.'),
(214, 62, '_about_lamps_txt', 'field_5b6a1fc2847bf'),
(215, 62, 'about_lamps_img', '30'),
(216, 62, '_about_lamps_img', 'field_5b6a203c847c1'),
(217, 62, 'lamps_img', '33'),
(218, 62, '_lamps_img', 'field_5b6f5b640ee06'),
(219, 62, 'lamps_name', 'LED фитолампа'),
(220, 62, '_lamps_name', 'field_5b6f5d7a23a29'),
(221, 62, 'contact_form', '[contact-form-7 id="57" title="Contact form"]'),
(222, 62, '_contact_form', 'field_5b7b1598587a9');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=63 ;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(15, 1, '2018-08-06 00:37:16', '2018-08-05 21:37:16', '', 'Главная', '', 'publish', 'closed', 'closed', '', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f', '', '', '2018-08-20 22:29:41', '2018-08-20 19:29:41', '', 0, 'http://led.loc/?page_id=15', 0, 'page', '', 0),
(16, 1, '2018-08-06 00:37:16', '2018-08-05 21:37:16', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-08-06 00:37:16', '2018-08-05 21:37:16', '', 15, 'http://led.loc/2018/08/06/15-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2018-08-08 01:13:39', '2018-08-07 22:13:39', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:8:"main.php";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";a:1:{i:0;s:11:"the_content";}s:11:"description";s:0:"";}', 'Main page', 'main-page', 'publish', 'closed', 'closed', '', 'group_5b6a19873bf92', '', '', '2018-08-20 22:26:20', '2018-08-20 19:26:20', '', 0, 'http://led.loc/?post_type=acf-field-group&#038;p=18', 0, 'acf-field-group', '', 0),
(19, 1, '2018-08-08 01:17:53', '2018-08-07 22:17:53', 'a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:0:"";s:17:"conditional_logic";i:0;}', 'Gallery', 'gallery', 'publish', 'closed', 'closed', '', 'field_5b6a1998611e2', '', '', '2018-08-08 01:17:53', '2018-08-07 22:17:53', '', 18, 'http://led.loc/?post_type=acf-field&p=19', 0, 'acf-field', '', 0),
(20, 1, '2018-08-08 01:17:53', '2018-08-07 22:17:53', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";s:17:"conditional_logic";i:0;}', 'Slide', 'mainImage', 'publish', 'closed', 'closed', '', 'field_5b6a19be611e3', '', '', '2018-08-08 01:29:01', '2018-08-07 22:29:01', '', 19, 'http://led.loc/?post_type=acf-field&#038;p=20', 0, 'acf-field', '', 0),
(21, 1, '2018-08-08 01:17:53', '2018-08-07 22:17:53', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:17:"conditional_logic";i:0;}', 'Text top', 'textTop', 'publish', 'closed', 'closed', '', 'field_5b6a1a5e611e4', '', '', '2018-08-08 01:35:12', '2018-08-07 22:35:12', '', 19, 'http://led.loc/?post_type=acf-field&#038;p=21', 1, 'acf-field', '', 0),
(22, 1, '2018-08-08 01:17:53', '2018-08-07 22:17:53', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:17:"conditional_logic";i:0;}', 'Text bottom', 'textBottom', 'publish', 'closed', 'closed', '', 'field_5b6a1a7a611e5', '', '', '2018-08-08 01:36:33', '2018-08-07 22:36:33', '', 19, 'http://led.loc/?post_type=acf-field&#038;p=22', 2, 'acf-field', '', 0),
(23, 1, '2018-08-08 01:20:28', '2018-08-07 22:20:28', '', 'LED_lamp', '', 'inherit', 'open', 'closed', '', 'led_lamp', '', '', '2018-08-08 01:20:28', '2018-08-07 22:20:28', '', 15, 'http://led.loc/wp-content/uploads/2018/08/LED_lamp.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2018-08-08 01:21:00', '2018-08-07 22:21:00', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-08-08 01:21:00', '2018-08-07 22:21:00', '', 15, 'http://led.loc/2018/08/08/15-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2018-08-08 01:32:28', '2018-08-07 22:32:28', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-08-08 01:32:28', '2018-08-07 22:32:28', '', 15, 'http://led.loc/2018/08/08/15-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2018-08-08 01:35:00', '2018-08-07 22:35:00', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-08-08 01:35:00', '2018-08-07 22:35:00', '', 15, 'http://led.loc/2018/08/08/15-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2018-08-08 01:35:31', '2018-08-07 22:35:31', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-08-08 01:35:31', '2018-08-07 22:35:31', '', 15, 'http://led.loc/2018/08/08/15-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2018-08-08 01:42:40', '2018-08-07 22:42:40', 'a:10:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:9:"new_lines";s:7:"wpautop";s:17:"conditional_logic";i:0;}', 'About lamps text', 'about_lamps_txt', 'publish', 'closed', 'closed', '', 'field_5b6a1fc2847bf', '', '', '2018-08-08 01:42:40', '2018-08-07 22:42:40', '', 18, 'http://led.loc/?post_type=acf-field&p=28', 1, 'acf-field', '', 0),
(29, 1, '2018-08-08 01:42:40', '2018-08-07 22:42:40', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";s:17:"conditional_logic";i:0;}', 'About lamps img', 'about_lamps_img', 'publish', 'closed', 'closed', '', 'field_5b6a203c847c1', '', '', '2018-08-08 01:42:40', '2018-08-07 22:42:40', '', 18, 'http://led.loc/?post_type=acf-field&p=29', 2, 'acf-field', '', 0),
(30, 1, '2018-08-08 01:45:58', '2018-08-07 22:45:58', '', 'lamp-5', '', 'inherit', 'open', 'closed', '', 'lamp-5', '', '', '2018-08-08 01:45:58', '2018-08-07 22:45:58', '', 15, 'http://led.loc/wp-content/uploads/2018/08/lamp-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2018-08-08 01:46:19', '2018-08-07 22:46:19', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-08-08 01:46:19', '2018-08-07 22:46:19', '', 15, 'http://led.loc/2018/08/08/15-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2018-08-11 21:16:03', '2018-08-11 18:16:03', 'Полный спектр\r\n\r\nМощность: 180 Вт (60 диодов по 3 Вт)\r\n\r\nПотребление: 55 Вт/ч\r\n\r\nКоличество диодов:\r\n<ul>\r\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;45 красных&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">45 красных</span></li>\r\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;7 синих&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">7 синих</span></li>\r\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;3 белых&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">3 белых</span></li>\r\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;1 инфракрасный&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">1 инфракрасный</span></li>\r\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;1 ультрафиолет&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">1 ультрафиолет</span></li>\r\n</ul>\r\nВозможен заказ любого соотношения цветов диодов!\r\n\r\nВремя работы: 50000 часов\r\n\r\nЦена: 90$\r\n\r\n&nbsp;\r\n\r\n&nbsp;', '180 Вт', '', 'publish', 'open', 'open', '', 'led-%d1%84%d0%b8%d1%82%d0%be%d0%bb%d0%b0%d0%bc%d0%bf%d0%b0-180-%d0%b2%d1%82', '', '', '2018-08-12 00:54:23', '2018-08-11 21:54:23', '', 0, 'http://led.loc/?p=32', 0, 'post', '', 0),
(33, 1, '2018-08-11 21:14:15', '2018-08-11 18:14:15', '', 'lamp-4', '', 'inherit', 'open', 'closed', '', 'lamp-4', '', '', '2018-08-12 01:02:37', '2018-08-11 22:02:37', '', 32, 'http://led.loc/wp-content/uploads/2018/08/lamp-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2018-08-11 21:16:03', '2018-08-11 18:16:03', '', 'Led фитолампа (180 Вт)', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2018-08-11 21:16:03', '2018-08-11 18:16:03', '', 32, 'http://led.loc/2018/08/11/32-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2018-08-11 21:21:03', '2018-08-11 18:21:03', 'Полный спектр\n\nМощность: 180 Вт\n\nПотребление: 55 Вт/ч\n\nКоличество диодов:\n<ul>\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;45 красных&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">45 красных</span></li>\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;7 синих&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">7 синих</span></li>\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;3 белых&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">3 белых</span></li>\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;1 инфракрасный&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">1 инфракрасный</span></li>\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;1 ультрафиолет&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">1 ультрафиолет</span></li>\n</ul>\nЦена\n\n&nbsp;\n\n&nbsp;', 'Led фитолампа (180 Вт)', '', 'inherit', 'closed', 'closed', '', '32-autosave-v1', '', '', '2018-08-11 21:21:03', '2018-08-11 18:21:03', '', 32, 'http://led.loc/2018/08/11/32-autosave-v1/', 0, 'revision', '', 0),
(36, 1, '2018-08-11 21:22:14', '2018-08-11 18:22:14', 'Полный спектр\r\n\r\nМощность: 180 Вт (60 диодов по 3 Вт)\r\n\r\nПотребление: 55 Вт/ч\r\n\r\nКоличество диодов:\r\n<ul>\r\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;45 красных&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">45 красных</span></li>\r\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;7 синих&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">7 синих</span></li>\r\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;3 белых&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">3 белых</span></li>\r\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;1 инфракрасный&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">1 инфракрасный</span></li>\r\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;1 ультрафиолет&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">1 ультрафиолет</span></li>\r\n</ul>\r\nВремя работы: 50000 часов\r\n\r\nЦена: 90$\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Led фитолампа (180 Вт)', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2018-08-11 21:22:14', '2018-08-11 18:22:14', '', 32, 'http://led.loc/2018/08/11/32-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2018-08-11 23:41:47', '2018-08-11 20:41:47', 'Полный спектр\r\n\r\nМощность: 180 Вт (60 диодов по 3 Вт)\r\n\r\nПотребление: 55 Вт/ч\r\n\r\nКоличество диодов:\r\n<ul>\r\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;45 красных&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">45 красных</span></li>\r\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;7 синих&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">7 синих</span></li>\r\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;3 белых&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">3 белых</span></li>\r\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;1 инфракрасный&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">1 инфракрасный</span></li>\r\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;1 ультрафиолет&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">1 ультрафиолет</span></li>\r\n</ul>\r\nВремя работы: 50000 часов\r\n\r\nЦена: 90$\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Led фитолампа <br> (180 Вт)', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2018-08-11 23:41:47', '2018-08-11 20:41:47', '', 32, 'http://led.loc/2018/08/11/32-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2018-08-12 00:13:49', '2018-08-11 21:13:49', 'Полный спектр\r\n\r\nМощность: 300 Вт (60 диодов по 5 Вт)\r\n\r\nПотребление: 110 Вт/ч\r\n\r\nСтандартное количество диодов:\r\n<ul>\r\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;45 красных&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">45 красных</span></li>\r\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;7 синих&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">7 синих</span></li>\r\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;3 белых&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">3 белых</span></li>\r\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;1 инфракрасный&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">1 инфракрасный</span></li>\r\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;1 ультрафиолет&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">1 ультрафиолет</span></li>\r\n</ul>\r\nВозможен заказ любого соотношения цветов диодов!\r\n\r\nВремя работы: 50000 часов\r\n\r\nЦена: 100$\r\n\r\n&nbsp;\r\n\r\n&nbsp;', '300 Вт', '', 'publish', 'open', 'open', '', 'led-%d1%84%d0%b8%d1%82%d0%be%d0%bb%d0%b0%d0%bc%d0%bf%d0%b0-300-%d0%b2%d1%82', '', '', '2018-08-16 00:20:16', '2018-08-15 21:20:16', '', 0, 'http://led.loc/?p=39', 0, 'post', '', 0),
(40, 1, '2018-08-12 00:13:49', '2018-08-11 21:13:49', 'Полный спектр\r\n\r\nМощность: 300 Вт (60 диодов по 5 Вт)\r\n\r\nПотребление: 110 Вт/ч\r\n\r\nСтандартное количество диодов:\r\n<ul>\r\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;45 красных&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">45 красных</span></li>\r\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;7 синих&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">7 синих</span></li>\r\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;3 белых&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">3 белых</span></li>\r\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;1 инфракрасный&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">1 инфракрасный</span></li>\r\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;1 ультрафиолет&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">1 ультрафиолет</span></li>\r\n</ul>\r\nВозможен заказ любого соотношения цветов диодов!\r\n\r\nВремя работы: 50000 часов\r\n\r\nЦена: 90$\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Led фитолампа <br> (300 Вт)', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2018-08-12 00:13:49', '2018-08-11 21:13:49', '', 39, 'http://led.loc/2018/08/12/39-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2018-08-12 00:13:58', '2018-08-11 21:13:58', 'Полный спектр\r\n\r\nМощность: 180 Вт (60 диодов по 3 Вт)\r\n\r\nПотребление: 55 Вт/ч\r\n\r\nКоличество диодов:\r\n<ul>\r\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;45 красных&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">45 красных</span></li>\r\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;7 синих&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">7 синих</span></li>\r\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;3 белых&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">3 белых</span></li>\r\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;1 инфракрасный&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">1 инфракрасный</span></li>\r\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;1 ультрафиолет&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">1 ультрафиолет</span></li>\r\n</ul>\r\nВозможен заказ любого соотношения цветов диодов!\r\n\r\nВремя работы: 50000 часов\r\n\r\nЦена: 90$\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Led фитолампа <br> (180 Вт)', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2018-08-12 00:13:58', '2018-08-11 21:13:58', '', 32, 'http://led.loc/2018/08/12/32-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2018-08-12 00:54:23', '2018-08-11 21:54:23', 'Полный спектр\r\n\r\nМощность: 180 Вт (60 диодов по 3 Вт)\r\n\r\nПотребление: 55 Вт/ч\r\n\r\nКоличество диодов:\r\n<ul>\r\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;45 красных&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">45 красных</span></li>\r\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;7 синих&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">7 синих</span></li>\r\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;3 белых&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">3 белых</span></li>\r\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;1 инфракрасный&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">1 инфракрасный</span></li>\r\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;1 ультрафиолет&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">1 ультрафиолет</span></li>\r\n</ul>\r\nВозможен заказ любого соотношения цветов диодов!\r\n\r\nВремя работы: 50000 часов\r\n\r\nЦена: 90$\r\n\r\n&nbsp;\r\n\r\n&nbsp;', '180 Вт', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2018-08-12 00:54:23', '2018-08-11 21:54:23', '', 32, 'http://led.loc/2018/08/12/32-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2018-08-12 00:55:07', '2018-08-11 21:55:07', 'Полный спектр\r\n\r\nМощность: 300 Вт (60 диодов по 5 Вт)\r\n\r\nПотребление: 110 Вт/ч\r\n\r\nСтандартное количество диодов:\r\n<ul>\r\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;45 красных&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">45 красных</span></li>\r\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;7 синих&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">7 синих</span></li>\r\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;3 белых&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">3 белых</span></li>\r\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;1 инфракрасный&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">1 инфракрасный</span></li>\r\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;1 ультрафиолет&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">1 ультрафиолет</span></li>\r\n</ul>\r\nВозможен заказ любого соотношения цветов диодов!\r\n\r\nВремя работы: 50000 часов\r\n\r\nЦена: 90$\r\n\r\n&nbsp;\r\n\r\n&nbsp;', '300 Вт', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2018-08-12 00:55:07', '2018-08-11 21:55:07', '', 39, 'http://led.loc/2018/08/12/39-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2018-08-12 00:57:03', '2018-08-11 21:57:03', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:12:"preview_size";s:6:"medium";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";s:17:"conditional_logic";i:0;}', 'Lamp''s img', 'lamps_img', 'publish', 'closed', 'closed', '', 'field_5b6f5b640ee06', '', '', '2018-08-12 00:57:03', '2018-08-11 21:57:03', '', 18, 'http://led.loc/?post_type=acf-field&p=46', 3, 'acf-field', '', 0),
(47, 1, '2018-08-12 01:02:46', '2018-08-11 22:02:46', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-08-12 01:02:46', '2018-08-11 22:02:46', '', 15, 'http://led.loc/2018/08/12/15-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2018-08-12 01:04:52', '2018-08-11 22:04:52', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:17:"conditional_logic";i:0;}', 'Lamp''s name', 'lamps_name', 'publish', 'closed', 'closed', '', 'field_5b6f5d7a23a29', '', '', '2018-08-12 01:05:09', '2018-08-11 22:05:09', '', 18, 'http://led.loc/?post_type=acf-field&#038;p=48', 4, 'acf-field', '', 0),
(49, 1, '2018-08-12 01:06:43', '2018-08-11 22:06:43', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-08-12 01:06:43', '2018-08-11 22:06:43', '', 15, 'http://led.loc/2018/08/12/15-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2018-08-14 23:21:07', '2018-08-14 20:21:07', 'Полный спектр\r\n\r\nМощность: 600 Вт (60 диодов по 5 Вт)\r\n\r\nПотребление: 200 Вт/ч\r\n\r\nСтандартное количество диодов:\r\n<ul>\r\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;45 красных&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">45 красных</span></li>\r\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;7 синих&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">7 синих</span></li>\r\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;3 белых&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">3 белых</span></li>\r\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;1 инфракрасный&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">1 инфракрасный</span></li>\r\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;1 ультрафиолет&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">1 ультрафиолет</span></li>\r\n</ul>\r\nВозможен заказ любого соотношения цветов диодов!\r\n\r\nВремя работы: 50000 часов\r\n\r\nЦена: 90$\r\n\r\n&nbsp;\r\n\r\n&nbsp;', '600 Вт', '', 'publish', 'open', 'open', '', '600-%d0%b2%d1%82', '', '', '2018-08-14 23:48:57', '2018-08-14 20:48:57', '', 0, 'http://led.loc/?p=50', 0, 'post', '', 0),
(51, 1, '2018-08-14 23:21:07', '2018-08-14 20:21:07', '', '600 Вт', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2018-08-14 23:21:07', '2018-08-14 20:21:07', '', 50, 'http://led.loc/2018/08/14/50-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2018-08-14 23:31:15', '2018-08-14 20:31:15', 'Полный спектр\n\nМощность: 600 Вт (60 диодов по 5 Вт)\n\nПотребление: 110 Вт/ч\n\nСтандартное количество диодов:\n<ul>\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;45 красных&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">45 красных</span></li>\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;7 синих&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">7 синих</span></li>\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;3 белых&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">3 белых</span></li>\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;1 инфракрасный&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">1 инфракрасный</span></li>\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;1 ультрафиолет&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">1 ультрафиолет</span></li>\n</ul>\nВозможен заказ любого соотношения цветов диодов!\n\nВремя работы: 50000 часов\n\nЦена: 90$\n\n&nbsp;\n\n&nbsp;', '600 Вт', '', 'inherit', 'closed', 'closed', '', '50-autosave-v1', '', '', '2018-08-14 23:31:15', '2018-08-14 20:31:15', '', 50, 'http://led.loc/2018/08/14/50-autosave-v1/', 0, 'revision', '', 0),
(53, 1, '2018-08-14 23:48:57', '2018-08-14 20:48:57', 'Полный спектр\r\n\r\nМощность: 600 Вт (60 диодов по 5 Вт)\r\n\r\nПотребление: 200 Вт/ч\r\n\r\nСтандартное количество диодов:\r\n<ul>\r\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;45 красных&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">45 красных</span></li>\r\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;7 синих&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">7 синих</span></li>\r\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;3 белых&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">3 белых</span></li>\r\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;1 инфракрасный&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">1 инфракрасный</span></li>\r\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;1 ультрафиолет&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">1 ультрафиолет</span></li>\r\n</ul>\r\nВозможен заказ любого соотношения цветов диодов!\r\n\r\nВремя работы: 50000 часов\r\n\r\nЦена: 90$\r\n\r\n&nbsp;\r\n\r\n&nbsp;', '600 Вт', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2018-08-14 23:48:57', '2018-08-14 20:48:57', '', 50, 'http://led.loc/2018/08/14/50-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2018-08-16 00:20:16', '2018-08-15 21:20:16', 'Полный спектр\r\n\r\nМощность: 300 Вт (60 диодов по 5 Вт)\r\n\r\nПотребление: 110 Вт/ч\r\n\r\nСтандартное количество диодов:\r\n<ul>\r\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;45 красных&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">45 красных</span></li>\r\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;7 синих&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">7 синих</span></li>\r\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;3 белых&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">3 белых</span></li>\r\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;1 инфракрасный&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">1 инфракрасный</span></li>\r\n 	<li><style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}--></style><span data-sheets-value="{&quot;1&quot;:2,&quot;2&quot;:&quot;1 ультрафиолет&quot;}" data-sheets-userformat="{&quot;2&quot;:513,&quot;3&quot;:[null,0],&quot;12&quot;:0}">1 ультрафиолет</span></li>\r\n</ul>\r\nВозможен заказ любого соотношения цветов диодов!\r\n\r\nВремя работы: 50000 часов\r\n\r\nЦена: 100$\r\n\r\n&nbsp;\r\n\r\n&nbsp;', '300 Вт', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2018-08-16 00:20:16', '2018-08-15 21:20:16', '', 39, 'http://led.loc/2018/08/16/39-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2018-08-20 22:10:47', '2018-08-20 19:10:47', '<div class="form-row item">\r\n    [text* your-name placeholder "Имя"]\r\n</div>\r\n<div class="form-row item">\r\n    [tel your-phone placeholder "Телефон*"]\r\n</div>\r\n<div class="form-row item">\r\n    [email your-email placeholder "Email"]\r\n</div>\r\n<div class="form-row">\r\n    [textarea your-msg placeholder "Сообщение"]\r\n</div>\r\n\r\n                <div class="form-row btn third">\r\n                     [submit "Отправить"]\r\n                </div>\n1\nLED "[your-subject]"\n[your-name] <wordpress@led.loc>\npolesskyvlad@gmail.com\nОт: [your-name] <[your-email]>\r\nТема: [your-subject]\r\n\r\nСообщение:\r\n[your-message]\r\n\r\n-- \r\nЭто сообщение отправлено с сайта LED (http://led.loc)\n\n\n\n\n\nLED "[your-subject]"\nLED <wordpress@led.loc>\n[your-email]\nСообщение:\r\n[your-message]\r\n\r\n-- \r\nЭто сообщение отправлено с сайта LED (http://led.loc)\nReply-To: polesskyvlad@gmail.com\n\n\n\nСпасибо за Ваше сообщение. Оно успешно отправлено.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nОдно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nВы должны принять условия и положения перед отправкой вашего сообщения.\nПоле обязательно для заполнения.\nПоле слишком длинное.\nПоле слишком короткое.\nФормат даты некорректен.\nВведённая дата слишком далеко в прошлом.\nВведённая дата слишком далеко в будущем.\nПри загрузке файла произошла неизвестная ошибка.\nВам не разрешено загружать файлы этого типа.\nФайл слишком большой.\nПри загрузке файла произошла ошибка.\nФормат числа некорректен.\nЧисло меньше минимально допустимого.\nЧисло больше максимально допустимого.\nНеверный ответ на проверочный вопрос.\nКод введен неверно.\nНеверно введён электронный адрес.\nВведён некорректный URL адрес.\nВведён некорректный телефонный номер.', 'Contact form', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d0%bd%d0%b0%d1%8f-%d1%84%d0%be%d1%80%d0%bc%d0%b0-1', '', '', '2018-09-17 00:27:04', '2018-09-16 21:27:04', '', 0, 'http://led.loc/?post_type=wpcf7_contact_form&#038;p=57', 0, 'wpcf7_contact_form', '', 0),
(58, 1, '2018-08-20 22:26:19', '2018-08-20 19:26:19', 'a:10:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:5:"delay";i:0;s:17:"conditional_logic";i:0;}', 'Contact form', 'contact_form', 'publish', 'closed', 'closed', '', 'field_5b7b1598587a9', '', '', '2018-08-20 22:26:19', '2018-08-20 19:26:19', '', 18, 'http://led.loc/?post_type=acf-field&p=58', 5, 'acf-field', '', 0),
(61, 1, '2018-08-20 22:27:15', '2018-08-20 19:27:15', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-08-20 22:27:15', '2018-08-20 19:27:15', '', 15, 'http://led.loc/2018/08/20/15-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2018-08-20 22:29:41', '2018-08-20 19:29:41', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-08-20 22:29:41', '2018-08-20 19:29:41', '', 15, 'http://led.loc/2018/08/20/15-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'main', 'main', 0),
(3, 'Led fito lamps', 'led-fito-lamps', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(32, 3, 0),
(39, 3, 0),
(50, 3, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 0),
(3, 3, 'category', '', 0, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:"49392d5d88d3eb689f811ca67d45122570a6487d98d4d94c5c5001b38fa81741";a:4:{s:10:"expiration";i:1537305535;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36";s:5:"login";i:1537132735;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '63'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(21, 1, 'acf_user_settings', 'a:0:{}'),
(22, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(23, 1, 'wp_user-settings-time', '1534011565');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BSnw8SkHdpjG1AVMnFGnwyJXjYnF18/', 'admin', 'polesskyvlad@gmail.com', '', '2018-07-21 12:45:17', '', 0, 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
