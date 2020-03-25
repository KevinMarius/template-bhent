-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 25 mars 2020 à 23:29
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `bhent theme`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-03-19 08:19:57', '2020-03-19 07:19:57', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=MyISAM AUTO_INCREMENT=370 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/Bhent%20theme', 'yes'),
(2, 'home', 'http://localhost/Bhent%20theme', 'yes'),
(3, 'blogname', 'Bhent', 'yes'),
(4, 'blogdescription', 'Le numerique c&#039;est le futur', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'hello@bhent.net', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:57:\"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:45:\"index.php/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:54:\"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:49:\"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:30:\"index.php/tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:42:\"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:24:\"index.php/tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:55:\"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:50:\"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:31:\"index.php/type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:43:\"index.php/type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:25:\"index.php/type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:42:\"index.php/feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:37:\"index.php/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:18:\"index.php/embed/?$\";s:21:\"index.php?&embed=true\";s:30:\"index.php/page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:37:\"index.php/comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=31&cpage=$matches[1]\";s:51:\"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:46:\"index.php/comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:27:\"index.php/comments/embed/?$\";s:21:\"index.php?&embed=true\";s:54:\"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:49:\"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:30:\"index.php/search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:42:\"index.php/search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:24:\"index.php/search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:57:\"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:45:\"index.php/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:79:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:55:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:49:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:66:\"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:42:\"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:54:\"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:36:\"index.php/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:53:\"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:48:\"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:29:\"index.php/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:41:\"index.php/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:23:\"index.php/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:68:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:78:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:98:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:74:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:63:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:87:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:75:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:71:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:57:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:67:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:87:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:63:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:48:\"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:37:\"index.php/.?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"index.php/.?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/.?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"index.php/(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:30:\"index.php/(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:50:\"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:45:\"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:38:\"index.php/(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:45:\"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:34:\"index.php/(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:47:\"show-current-template/show-current-template.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:60:\"C:\\wamp64\\www\\Bhent theme/wp-content/themes/Bhent1/style.css\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'Bhent1', 'yes'),
(41, 'stylesheet', 'Bhent1', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '45805', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:17:\"Categorie du blog\";s:5:\"count\";i:1;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '35', 'yes'),
(84, 'page_on_front', '31', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '68', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1600154397', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'fr_FR', 'yes'),
(98, 'widget_search', 'a:3:{i:2;a:1:{s:5:\"title\";s:9:\"Recherche\";}i:3;a:1:{s:5:\"title\";s:9:\"Recherche\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:3;a:3:{s:5:\"title\";s:13:\"Posts recents\";s:6:\"number\";i:3;s:9:\"show_date\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:8:\"Archives\";s:5:\"count\";i:0;s:8:\"dropdown\";i:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:4:{i:0;s:12:\"categories-2\";i:1;s:8:\"search-3\";i:2;s:17:\"recent-comments-2\";i:3;s:14:\"recent-posts-3\";}s:17:\"widgetized-footer\";a:4:{i:0;s:10:\"calendar-2\";i:1;s:10:\"nav_menu-2\";i:2;s:10:\"archives-2\";i:3;s:8:\"search-2\";}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";a:1:{i:0;s:10:\"nav_menu-3\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:6:{i:1585178399;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1585207197;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1585207199;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1585207214;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1585207218;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:2:{i:2;a:1:{s:5:\"title\";s:10:\"Calendrier\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:3:{i:2;a:2:{s:5:\"title\";s:4:\"Menu\";s:8:\"nav_menu\";i:13;}i:3;a:2:{s:5:\"title\";s:7:\"sidebar\";s:8:\"nav_menu\";i:14;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(127, '_site_transient_timeout_browser_97fc230848bc304ccee289a55f3e5339', '1585207217', 'no'),
(115, 'recovery_keys', 'a:1:{s:22:\"NXHyDGZmba7IQquUFaKzmo\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BCcQgHXPTIwzwZmlJnOsKgJq2pWHS20\";s:10:\"created_at\";i:1585044234;}}', 'yes'),
(117, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1584606211;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(272, '_site_transient_browser_b4046c447614dcbe06d949fe3062a42a', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"80.0.3987.149\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(128, '_site_transient_browser_97fc230848bc304ccee289a55f3e5339', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"80.0.3987.132\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(368, '_site_transient_timeout_theme_roots', '1585179907', 'no'),
(369, '_site_transient_theme_roots', 'a:5:{s:6:\"Bhent1\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(254, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.3.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1585178067;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}', 'no'),
(129, '_site_transient_timeout_php_check_7ddb89c02f1abf791c6717dc46cef1eb', '1585207218', 'no'),
(130, '_site_transient_php_check_7ddb89c02f1abf791c6717dc46cef1eb', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(134, 'can_compress_scripts', '1', 'no'),
(357, '_transient_timeout_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '1585161861', 'no'),
(358, '_transient_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '<div class=\"rss-widget\"><p><strong>Erreur RSS :</strong> WP HTTP Error: L’URL fournie n’est pas valide.</p></div><div class=\"rss-widget\"><p><strong>Erreur RSS :</strong> WP HTTP Error: L’URL fournie n’est pas valide.</p></div>', 'no'),
(337, 'new_admin_email', 'hello@bhent.net', 'yes'),
(245, '_site_transient_timeout_browser_ee976246113185ebe962378ffdf6ed5c', '1585385183', 'no'),
(246, '_site_transient_browser_ee976246113185ebe962378ffdf6ed5c', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"80.0.3987.132\";s:8:\"platform\";s:7:\"Android\";s:10:\"update_url\";s:0:\"\";s:7:\"img_src\";s:0:\"\";s:11:\"img_src_ssl\";s:0:\"\";s:15:\"current_version\";s:0:\"\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:1;}', 'no'),
(155, 'category_children', 'a:0:{}', 'yes'),
(169, 'current_theme', 'bhent theme', 'yes'),
(170, 'theme_mods_Bhent1', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:12;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1584899776;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}s:11:\"custom_logo\";i:70;}', 'yes'),
(171, 'theme_switched', '', 'yes'),
(175, 'recently_activated', 'a:0:{}', 'yes'),
(225, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(301, 'bhkev_opts', 'a:2:{s:12:\"image_01_url\";s:0:\"\";s:9:\"legend_01\";s:0:\"\";}', 'yes'),
(302, 'recovery_mode_email_last_sent', '1585044234', 'yes'),
(299, 'theme_mods_twentynineteen', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:12;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1584899779;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:0:{}}}}', 'yes'),
(331, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1585178087;s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"4.1.3\";s:9:\"hello.php\";s:5:\"1.7.2\";s:47:\"show-current-template/show-current-template.php\";s:5:\"0.3.3\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.4\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.4\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"show-current-template/show-current-template.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/show-current-template\";s:4:\"slug\";s:21:\"show-current-template\";s:6:\"plugin\";s:47:\"show-current-template/show-current-template.php\";s:11:\"new_version\";s:5:\"0.3.3\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/show-current-template/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/show-current-template.0.3.3.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:73:\"https://ps.w.org/show-current-template/assets/icon-256x256.png?rev=976031\";s:2:\"1x\";s:65:\"https://ps.w.org/show-current-template/assets/icon.svg?rev=976031\";s:3:\"svg\";s:65:\"https://ps.w.org/show-current-template/assets/icon.svg?rev=976031\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(256, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1585178108;s:7:\"checked\";a:5:{s:6:\"Bhent1\";s:5:\"1.0.0\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(271, '_site_transient_timeout_browser_b4046c447614dcbe06d949fe3062a42a', '1585441301', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=239 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1584783275:1'),
(4, 6, '_wp_attached_file', '2020/03/1.jpg'),
(5, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:160;s:6:\"height\";i:160;s:4:\"file\";s:13:\"2020/03/1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(8, 8, '_edit_lock', '1584605658:1'),
(7, 5, '_thumbnail_id', '6'),
(9, 9, '_wp_attached_file', '2020/03/a.jpg'),
(10, 9, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:276;s:6:\"height\";i:357;s:4:\"file\";s:13:\"2020/03/a.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"a-232x300.jpg\";s:5:\"width\";i:232;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"a-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(13, 11, '_edit_lock', '1584838388:1'),
(12, 8, '_thumbnail_id', '9'),
(14, 12, '_wp_attached_file', '2020/03/f.jpg'),
(15, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:276;s:6:\"height\";i:357;s:4:\"file\";s:13:\"2020/03/f.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"f-232x300.jpg\";s:5:\"width\";i:232;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"f-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(19, 15, '_wp_attached_file', '2020/03/h.jpg'),
(17, 11, '_thumbnail_id', '12'),
(18, 14, '_edit_lock', '1584785766:1'),
(20, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:276;s:6:\"height\";i:357;s:4:\"file\";s:13:\"2020/03/h.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"h-232x300.jpg\";s:5:\"width\";i:232;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"h-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(23, 17, '_edit_lock', '1584793158:1'),
(22, 14, '_thumbnail_id', '15'),
(24, 18, '_wp_attached_file', '2020/03/s.png'),
(25, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:276;s:6:\"height\";i:357;s:4:\"file\";s:13:\"2020/03/s.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"s-232x300.png\";s:5:\"width\";i:232;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"s-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(33, 1, '_edit_lock', '1584605607:1'),
(27, 17, '_thumbnail_id', '18'),
(39, 30, '_edit_lock', '1584720811:1'),
(40, 31, '_edit_lock', '1584836401:1'),
(41, 33, '_edit_lock', '1584720855:1'),
(42, 35, '_edit_lock', '1584836580:1'),
(43, 37, '_edit_lock', '1584720895:1'),
(44, 3, '_wp_trash_meta_status', 'draft'),
(45, 3, '_wp_trash_meta_time', '1584721225'),
(46, 3, '_wp_desired_post_slug', 'politique-de-confidentialite'),
(47, 2, '_wp_trash_meta_status', 'publish'),
(48, 2, '_wp_trash_meta_time', '1584721228'),
(49, 2, '_wp_desired_post_slug', 'page-d-exemple'),
(50, 41, '_edit_lock', '1584735898:1'),
(56, 47, '_menu_item_type', 'custom'),
(52, 43, '_edit_lock', '1584793199:1'),
(54, 45, '_edit_lock', '1584879062:1'),
(57, 47, '_menu_item_menu_item_parent', '0'),
(58, 47, '_menu_item_object_id', '47'),
(59, 47, '_menu_item_object', 'custom'),
(60, 47, '_menu_item_target', ''),
(61, 47, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(62, 47, '_menu_item_xfn', ''),
(63, 47, '_menu_item_url', 'http://localhost/Bhent%20theme/'),
(103, 52, '_menu_item_object_id', '35'),
(65, 48, '_menu_item_type', 'post_type'),
(66, 48, '_menu_item_menu_item_parent', '0'),
(67, 48, '_menu_item_object_id', '35'),
(68, 48, '_menu_item_object', 'page'),
(69, 48, '_menu_item_target', ''),
(70, 48, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(71, 48, '_menu_item_xfn', ''),
(72, 48, '_menu_item_url', ''),
(73, 48, '_menu_item_orphaned', '1584738706'),
(74, 49, '_menu_item_type', 'post_type'),
(75, 49, '_menu_item_menu_item_parent', '0'),
(76, 49, '_menu_item_object_id', '37'),
(77, 49, '_menu_item_object', 'page'),
(78, 49, '_menu_item_target', ''),
(79, 49, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(80, 49, '_menu_item_xfn', ''),
(81, 49, '_menu_item_url', ''),
(101, 52, '_menu_item_type', 'post_type'),
(83, 50, '_menu_item_type', 'post_type'),
(84, 50, '_menu_item_menu_item_parent', '0'),
(85, 50, '_menu_item_object_id', '31'),
(86, 50, '_menu_item_object', 'page'),
(87, 50, '_menu_item_target', ''),
(88, 50, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(89, 50, '_menu_item_xfn', ''),
(90, 50, '_menu_item_url', ''),
(91, 50, '_menu_item_orphaned', '1584738706'),
(92, 51, '_menu_item_type', 'post_type'),
(93, 51, '_menu_item_menu_item_parent', '0'),
(94, 51, '_menu_item_object_id', '33'),
(95, 51, '_menu_item_object', 'page'),
(96, 51, '_menu_item_target', ''),
(97, 51, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(98, 51, '_menu_item_xfn', ''),
(99, 51, '_menu_item_url', ''),
(102, 52, '_menu_item_menu_item_parent', '0'),
(104, 52, '_menu_item_object', 'page'),
(105, 52, '_menu_item_target', ''),
(106, 52, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(107, 52, '_menu_item_xfn', ''),
(108, 52, '_menu_item_url', ''),
(110, 53, '_edit_lock', '1584782157:1'),
(111, 54, '_edit_lock', '1584785701:1'),
(113, 55, '_edit_lock', '1584791687:1'),
(124, 57, '_menu_item_type', 'taxonomy'),
(125, 57, '_menu_item_menu_item_parent', '0'),
(126, 57, '_menu_item_object_id', '8'),
(127, 57, '_menu_item_object', 'post_tag'),
(128, 57, '_menu_item_target', ''),
(129, 57, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(130, 57, '_menu_item_xfn', ''),
(131, 57, '_menu_item_url', ''),
(132, 57, '_menu_item_orphaned', '1584793216'),
(217, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:72;s:6:\"height\";i:72;s:4:\"file\";s:16:\"2020/03/logo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(236, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:160;s:6:\"height\";i:160;s:4:\"file\";s:14:\"2020/03/b1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"b1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(235, 75, '_wp_attached_file', '2020/03/b1.jpg'),
(234, 74, '_edit_lock', '1585044116:1'),
(233, 73, '_edit_lock', '1585025981:1'),
(232, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(231, 1, '_wp_desired_post_slug', 'bonjour-tout-le-monde'),
(230, 1, '_wp_trash_meta_time', '1585026026'),
(229, 1, '_wp_trash_meta_status', 'publish'),
(216, 67, '_wp_attached_file', '2020/03/logo.png'),
(189, 64, '_menu_item_type', 'post_type'),
(190, 64, '_menu_item_menu_item_parent', '0'),
(191, 64, '_menu_item_object_id', '31'),
(192, 64, '_menu_item_object', 'page'),
(193, 64, '_menu_item_target', ''),
(194, 64, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(195, 64, '_menu_item_xfn', ''),
(196, 64, '_menu_item_url', ''),
(198, 65, '_menu_item_type', 'post_type'),
(199, 65, '_menu_item_menu_item_parent', '0'),
(200, 65, '_menu_item_object_id', '35'),
(201, 65, '_menu_item_object', 'page'),
(202, 65, '_menu_item_target', ''),
(203, 65, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(204, 65, '_menu_item_xfn', ''),
(205, 65, '_menu_item_url', ''),
(207, 66, '_menu_item_type', 'post_type'),
(208, 66, '_menu_item_menu_item_parent', '0'),
(209, 66, '_menu_item_object_id', '33'),
(210, 66, '_menu_item_object', 'page'),
(211, 66, '_menu_item_target', ''),
(212, 66, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(213, 66, '_menu_item_xfn', ''),
(214, 66, '_menu_item_url', ''),
(218, 68, '_wp_attached_file', '2020/03/cropped-logo.png'),
(219, 68, '_wp_attachment_context', 'site-icon'),
(220, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:24:\"2020/03/cropped-logo.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"cropped-logo-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"cropped-logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:24:\"cropped-logo-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:24:\"cropped-logo-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:24:\"cropped-logo-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:22:\"cropped-logo-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(221, 69, '_edit_lock', '1584937179:1'),
(222, 69, '_wp_trash_meta_status', 'publish'),
(223, 69, '_wp_trash_meta_time', '1584937184'),
(224, 70, '_wp_attached_file', '2020/03/cropped-logo-1.png'),
(225, 70, '_wp_attachment_context', 'custom-logo'),
(226, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:72;s:6:\"height\";i:72;s:4:\"file\";s:26:\"2020/03/cropped-logo-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(227, 71, '_wp_trash_meta_status', 'publish'),
(228, 71, '_wp_trash_meta_time', '1584966414');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-03-19 08:19:57', '2020-03-19 07:19:57', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'trash', 'open', 'open', '', 'bonjour-tout-le-monde__trashed', '', '', '2020-03-24 06:00:26', '2020-03-24 05:00:26', '', 0, 'http://localhost/Bhent%20theme/?p=1', 0, 'post', '', 1),
(2, 1, '2020-03-19 08:19:57', '2020-03-19 07:19:57', '<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page « À propos » qui les présente aux visiteurs du site. Cela pourrait ressembler à quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Bonjour ! Je suis un mécanicien qui aspire à devenir acteur, et voici mon site. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka-ananas (ainsi qu’être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... ou quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href=\"http://localhost/Bhent%20theme/wp-admin/\">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien !</p>\n<!-- /wp:paragraph -->', 'Page d’exemple', '', 'trash', 'closed', 'open', '', 'page-d-exemple__trashed', '', '', '2020-03-20 17:20:28', '2020-03-20 16:20:28', '', 0, 'http://localhost/Bhent%20theme/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-03-19 08:19:57', '2020-03-19 07:19:57', '<!-- wp:heading --><h2>Qui sommes-nous ?</h2><!-- /wp:heading --><!-- wp:paragraph --><p>L’adresse de notre site Web est : http://localhost/Bhent%20theme.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Utilisation des données personnelles collectées</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Commentaires</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Quand vous laissez un commentaire sur notre site web, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Une chaîne anonymisée créée à partir de votre adresse de messagerie (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Médias</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous êtes un utilisateur ou une utilisatrice enregistré·e et que vous téléversez des images sur le site web, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les visiteurs de votre site web peuvent télécharger et extraire des données de localisation depuis ces images.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formulaires de contact</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse de messagerie et site web dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si vous vous rendez sur la page de connexion, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contenu embarqué depuis d’autres sites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Statistiques et mesures d’audience</h3><!-- /wp:heading --><!-- wp:heading --><h2>Utilisation et transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:heading --><h2>Durées de stockage de vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pour les utilisateurs et utilisatrices qui s’enregistrent sur notre site (si cela est possible), nous stockons également les données personnelles indiquées dans leur profil. Tous les utilisateurs et utilisatrices peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur nom d’utilisateur·ice). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Les droits que vous avez sur vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Informations de contact</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informations supplémentaires</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comment nous protégeons vos données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Procédures mises en œuvre en cas de fuite de données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Les services tiers qui nous transmettent des données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Opérations de marketing automatisé et/ou de profilage réalisées à l’aide des données personnelles</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Affichage des informations liées aux secteurs soumis à des régulations spécifiques</h3><!-- /wp:heading -->', 'Politique de confidentialité', '', 'trash', 'closed', 'open', '', 'politique-de-confidentialite__trashed', '', '', '2020-03-20 17:20:25', '2020-03-20 16:20:25', '', 0, 'http://localhost/Bhent%20theme/?page_id=3', 0, 'page', '', 0),
(4, 1, '2020-03-19 08:20:18', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-03-19 08:20:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/Bhent%20theme/?p=4', 0, 'post', '', 0),
(5, 1, '2020-03-19 08:22:37', '2020-03-19 07:22:37', '<!-- wp:paragraph -->\n<p>This program is free software: you can redistribute it and/or modify<br>\nit under the terms of the GNU General Public License as published by<br>\nthe Free Software Foundation, either version 2 of the License, or<br>\n(at your option) any later version.</p>\n<!-- /wp:paragraph -->', 'article1', 'This program is free software: you can redistribute it and/or modify\nit under the terms of the GNU General Public License as published by\nthe Free Software Foundation, either version 2 of the License, or\n(at your option) any later version.', 'publish', 'open', 'open', '', 'article1', '', '', '2020-03-19 09:16:52', '2020-03-19 08:16:52', '', 0, 'http://localhost/Bhent%20theme/?p=5', 0, 'post', '', 0),
(6, 1, '2020-03-19 08:22:10', '2020-03-19 07:22:10', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2020-03-19 08:22:10', '2020-03-19 07:22:10', '', 5, 'http://localhost/Bhent%20theme/wp-content/uploads/2020/03/1.jpg', 0, 'attachment', 'image/jpeg', 0),
(7, 1, '2020-03-19 08:22:37', '2020-03-19 07:22:37', '', 'article1', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-03-19 08:22:37', '2020-03-19 07:22:37', '', 5, 'http://localhost/Bhent%20theme/index.php/2020/03/19/5-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2020-03-19 08:23:36', '2020-03-19 07:23:36', '<!-- wp:paragraph -->\n<p>This program is free software: you can redistribute it and/or modify<br>\nit under the terms of the GNU General Public License as published by<br>\nthe Free Software Foundation, either version 2 of the License, or<br>\n(at your option) any later version.</p>\n<!-- /wp:paragraph -->', 'article2', 'This program is free software: you can redistribute it and/or modify\nit under the terms of the GNU General Public License as published by\nthe Free Software Foundation, either version 2 of the License, or\n(at your option) any later version.', 'publish', 'open', 'open', '', 'article2', '', '', '2020-03-19 09:16:38', '2020-03-19 08:16:38', '', 0, 'http://localhost/Bhent%20theme/?p=8', 0, 'post', '', 0),
(9, 1, '2020-03-19 08:23:14', '2020-03-19 07:23:14', '', 'montre', '', 'inherit', 'open', 'closed', '', 'a', '', '', '2020-03-19 08:23:29', '2020-03-19 07:23:29', '', 8, 'http://localhost/Bhent%20theme/wp-content/uploads/2020/03/a.jpg', 0, 'attachment', 'image/jpeg', 0),
(10, 1, '2020-03-19 08:23:36', '2020-03-19 07:23:36', '', 'article2', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-03-19 08:23:36', '2020-03-19 07:23:36', '', 8, 'http://localhost/Bhent%20theme/index.php/2020/03/19/8-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2020-03-19 08:24:24', '2020-03-19 07:24:24', '<!-- wp:paragraph -->\n<p>This program is free software: you can redistribute it and/or modify<br>\nit under the terms of the GNU General Public License as published by<br>\nthe Free Software Foundation, either version 2 of the License, or<br>\n(at your option) any later version.</p>\n<!-- /wp:paragraph -->', 'article3', 'This program is free software: you can redistribute it and/or modify\nit under the terms of the GNU General Public License as published by\nthe Free Software Foundation, either version 2 of the License, or\n(at your option) any later version.', 'publish', 'open', 'open', '', 'article3', '', '', '2020-03-21 13:22:36', '2020-03-21 12:22:36', '', 0, 'http://localhost/Bhent%20theme/?p=11', 0, 'post', '', 0),
(12, 1, '2020-03-19 08:24:05', '2020-03-19 07:24:05', '', 'colier', '', 'inherit', 'open', 'closed', '', 'f', '', '', '2020-03-19 08:24:19', '2020-03-19 07:24:19', '', 11, 'http://localhost/Bhent%20theme/wp-content/uploads/2020/03/f.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2020-03-19 08:24:24', '2020-03-19 07:24:24', '', 'article3', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2020-03-19 08:24:24', '2020-03-19 07:24:24', '', 11, 'http://localhost/Bhent%20theme/index.php/2020/03/19/11-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2020-03-19 08:24:55', '2020-03-19 07:24:55', '<!-- wp:paragraph -->\n<p>This program is free software: you can redistribute it and/or modify<br>\nit under the terms of the GNU General Public License as published by<br>\nthe Free Software Foundation, either version 2 of the License, or<br>\n(at your option) any later version.</p>\n<!-- /wp:paragraph -->', 'article4', 'This program is free software: you can redistribute it and/or modify\nit under the terms of the GNU General Public License as published by\nthe Free Software Foundation, either version 2 of the License, or\n(at your option) any later version.', 'publish', 'open', 'open', '', 'article4', '', '', '2020-03-19 09:16:11', '2020-03-19 08:16:11', '', 0, 'http://localhost/Bhent%20theme/?p=14', 0, 'post', '', 0),
(15, 1, '2020-03-19 08:24:44', '2020-03-19 07:24:44', '', 'bague', '', 'inherit', 'open', 'closed', '', 'h', '', '', '2020-03-19 08:24:51', '2020-03-19 07:24:51', '', 14, 'http://localhost/Bhent%20theme/wp-content/uploads/2020/03/h.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2020-03-19 08:24:55', '2020-03-19 07:24:55', '', 'article4', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-03-19 08:24:55', '2020-03-19 07:24:55', '', 14, 'http://localhost/Bhent%20theme/index.php/2020/03/19/14-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2020-03-19 08:25:34', '2020-03-19 07:25:34', '<!-- wp:paragraph -->\n<p>This program is free software: you can redistribute it and/or modify<br>\nit under the terms of the GNU General Public License as published by<br>\nthe Free Software Foundation, either version 2 of the License, or<br>\n(at your option) any later version.</p>\n<!-- /wp:paragraph -->', 'article5', 'This program is free software: you can redistribute it and/or modify\nit under the terms of the GNU General Public License as published by\nthe Free Software Foundation, either version 2 of the License, or\n(at your option) any later version.', 'publish', 'open', 'open', '', 'article5', '', '', '2020-03-21 12:57:22', '2020-03-21 11:57:22', '', 0, 'http://localhost/Bhent%20theme/?p=17', 0, 'post', '', 0),
(18, 1, '2020-03-19 08:25:26', '2020-03-19 07:25:26', '', 'bracelet', '', 'inherit', 'open', 'closed', '', 's', '', '', '2020-03-19 08:25:32', '2020-03-19 07:25:32', '', 17, 'http://localhost/Bhent%20theme/wp-content/uploads/2020/03/s.png', 0, 'attachment', 'image/png', 0),
(19, 1, '2020-03-19 08:25:34', '2020-03-19 07:25:34', '', 'article5', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2020-03-19 08:25:34', '2020-03-19 07:25:34', '', 17, 'http://localhost/Bhent%20theme/index.php/2020/03/19/17-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2020-03-19 09:13:09', '2020-03-19 08:13:09', '', 'article5', 'This program is free software: you can redistribute it and/or modify\nit under the terms of the GNU General Public License as published by\nthe Free Software Foundation, either version 2 of the License, or\n(at your option) any later version.', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2020-03-19 09:13:09', '2020-03-19 08:13:09', '', 17, 'http://localhost/Bhent%20theme/index.php/2020/03/19/17-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2020-03-19 09:13:29', '2020-03-19 08:13:29', '', 'article4', 'This program is free software: you can redistribute it and/or modify\nit under the terms of the GNU General Public License as published by\nthe Free Software Foundation, either version 2 of the License, or\n(at your option) any later version.', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-03-19 09:13:29', '2020-03-19 08:13:29', '', 14, 'http://localhost/Bhent%20theme/index.php/2020/03/19/14-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2020-03-19 09:13:43', '2020-03-19 08:13:43', '', 'article3', 'This program is free software: you can redistribute it and/or modify\nit under the terms of the GNU General Public License as published by\nthe Free Software Foundation, either version 2 of the License, or\n(at your option) any later version.', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2020-03-19 09:13:43', '2020-03-19 08:13:43', '', 11, 'http://localhost/Bhent%20theme/index.php/2020/03/19/11-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2020-03-19 09:14:21', '2020-03-19 08:14:21', '', 'article2', 'This program is free software: you can redistribute it and/or modify\nit under the terms of the GNU General Public License as published by\nthe Free Software Foundation, either version 2 of the License, or\n(at your option) any later version.', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-03-19 09:14:21', '2020-03-19 08:14:21', '', 8, 'http://localhost/Bhent%20theme/index.php/2020/03/19/8-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2020-03-19 09:14:34', '2020-03-19 08:14:34', '', 'article1', 'This program is free software: you can redistribute it and/or modify\nit under the terms of the GNU General Public License as published by\nthe Free Software Foundation, either version 2 of the License, or\n(at your option) any later version.', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-03-19 09:14:34', '2020-03-19 08:14:34', '', 5, 'http://localhost/Bhent%20theme/index.php/2020/03/19/5-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2020-03-19 09:16:02', '2020-03-19 08:16:02', '<!-- wp:paragraph -->\n<p>This program is free software: you can redistribute it and/or modify<br>\nit under the terms of the GNU General Public License as published by<br>\nthe Free Software Foundation, either version 2 of the License, or<br>\n(at your option) any later version.</p>\n<!-- /wp:paragraph -->', 'article5', 'This program is free software: you can redistribute it and/or modify\nit under the terms of the GNU General Public License as published by\nthe Free Software Foundation, either version 2 of the License, or\n(at your option) any later version.', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2020-03-19 09:16:02', '2020-03-19 08:16:02', '', 17, 'http://localhost/Bhent%20theme/index.php/2020/03/19/17-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2020-03-19 09:16:11', '2020-03-19 08:16:11', '<!-- wp:paragraph -->\n<p>This program is free software: you can redistribute it and/or modify<br>\nit under the terms of the GNU General Public License as published by<br>\nthe Free Software Foundation, either version 2 of the License, or<br>\n(at your option) any later version.</p>\n<!-- /wp:paragraph -->', 'article4', 'This program is free software: you can redistribute it and/or modify\nit under the terms of the GNU General Public License as published by\nthe Free Software Foundation, either version 2 of the License, or\n(at your option) any later version.', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-03-19 09:16:11', '2020-03-19 08:16:11', '', 14, 'http://localhost/Bhent%20theme/index.php/2020/03/19/14-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2020-03-19 09:16:21', '2020-03-19 08:16:21', '<!-- wp:paragraph -->\n<p>This program is free software: you can redistribute it and/or modify<br>\nit under the terms of the GNU General Public License as published by<br>\nthe Free Software Foundation, either version 2 of the License, or<br>\n(at your option) any later version.</p>\n<!-- /wp:paragraph -->', 'article3', 'This program is free software: you can redistribute it and/or modify\nit under the terms of the GNU General Public License as published by\nthe Free Software Foundation, either version 2 of the License, or\n(at your option) any later version.', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2020-03-19 09:16:21', '2020-03-19 08:16:21', '', 11, 'http://localhost/Bhent%20theme/index.php/2020/03/19/11-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2020-03-19 09:16:38', '2020-03-19 08:16:38', '<!-- wp:paragraph -->\n<p>This program is free software: you can redistribute it and/or modify<br>\nit under the terms of the GNU General Public License as published by<br>\nthe Free Software Foundation, either version 2 of the License, or<br>\n(at your option) any later version.</p>\n<!-- /wp:paragraph -->', 'article2', 'This program is free software: you can redistribute it and/or modify\nit under the terms of the GNU General Public License as published by\nthe Free Software Foundation, either version 2 of the License, or\n(at your option) any later version.', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-03-19 09:16:38', '2020-03-19 08:16:38', '', 8, 'http://localhost/Bhent%20theme/index.php/2020/03/19/8-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2020-03-19 09:16:52', '2020-03-19 08:16:52', '<!-- wp:paragraph -->\n<p>This program is free software: you can redistribute it and/or modify<br>\nit under the terms of the GNU General Public License as published by<br>\nthe Free Software Foundation, either version 2 of the License, or<br>\n(at your option) any later version.</p>\n<!-- /wp:paragraph -->', 'article1', 'This program is free software: you can redistribute it and/or modify\nit under the terms of the GNU General Public License as published by\nthe Free Software Foundation, either version 2 of the License, or\n(at your option) any later version.', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-03-19 09:16:52', '2020-03-19 08:16:52', '', 5, 'http://localhost/Bhent%20theme/index.php/2020/03/19/5-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2020-03-20 17:15:51', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-03-20 17:15:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/Bhent%20theme/?page_id=30', 0, 'page', '', 0),
(31, 1, '2020-03-20 17:16:19', '2020-03-20 16:16:19', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-03-20 17:16:19', '2020-03-20 16:16:19', '', 0, 'http://localhost/Bhent%20theme/?page_id=31', 0, 'page', '', 0),
(32, 1, '2020-03-20 17:16:19', '2020-03-20 16:16:19', '', 'Home', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2020-03-20 17:16:19', '2020-03-20 16:16:19', '', 31, 'http://localhost/Bhent%20theme/index.php/2020/03/20/31-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2020-03-20 17:16:36', '2020-03-20 16:16:36', '', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2020-03-20 17:16:36', '2020-03-20 16:16:36', '', 0, 'http://localhost/Bhent%20theme/?page_id=33', 0, 'page', '', 0),
(34, 1, '2020-03-20 17:16:36', '2020-03-20 16:16:36', '', 'Services', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2020-03-20 17:16:36', '2020-03-20 16:16:36', '', 33, 'http://localhost/Bhent%20theme/index.php/2020/03/20/33-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2020-03-20 17:16:52', '2020-03-20 16:16:52', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2020-03-20 17:16:52', '2020-03-20 16:16:52', '', 0, 'http://localhost/Bhent%20theme/?page_id=35', 0, 'page', '', 0),
(36, 1, '2020-03-20 17:16:52', '2020-03-20 16:16:52', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2020-03-20 17:16:52', '2020-03-20 16:16:52', '', 35, 'http://localhost/Bhent%20theme/index.php/2020/03/20/35-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2020-03-20 17:17:16', '2020-03-20 16:17:16', '', 'Contact us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2020-03-20 17:17:16', '2020-03-20 16:17:16', '', 0, 'http://localhost/Bhent%20theme/?page_id=37', 0, 'page', '', 0),
(38, 1, '2020-03-20 17:17:16', '2020-03-20 16:17:16', '', 'Contact us', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2020-03-20 17:17:16', '2020-03-20 16:17:16', '', 37, 'http://localhost/Bhent%20theme/index.php/2020/03/20/37-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2020-03-20 17:20:25', '2020-03-20 16:20:25', '<!-- wp:heading --><h2>Qui sommes-nous ?</h2><!-- /wp:heading --><!-- wp:paragraph --><p>L’adresse de notre site Web est : http://localhost/Bhent%20theme.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Utilisation des données personnelles collectées</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Commentaires</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Quand vous laissez un commentaire sur notre site web, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Une chaîne anonymisée créée à partir de votre adresse de messagerie (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Médias</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous êtes un utilisateur ou une utilisatrice enregistré·e et que vous téléversez des images sur le site web, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les visiteurs de votre site web peuvent télécharger et extraire des données de localisation depuis ces images.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formulaires de contact</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse de messagerie et site web dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si vous vous rendez sur la page de connexion, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contenu embarqué depuis d’autres sites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Statistiques et mesures d’audience</h3><!-- /wp:heading --><!-- wp:heading --><h2>Utilisation et transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:heading --><h2>Durées de stockage de vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pour les utilisateurs et utilisatrices qui s’enregistrent sur notre site (si cela est possible), nous stockons également les données personnelles indiquées dans leur profil. Tous les utilisateurs et utilisatrices peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur nom d’utilisateur·ice). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Les droits que vous avez sur vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Informations de contact</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informations supplémentaires</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comment nous protégeons vos données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Procédures mises en œuvre en cas de fuite de données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Les services tiers qui nous transmettent des données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Opérations de marketing automatisé et/ou de profilage réalisées à l’aide des données personnelles</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Affichage des informations liées aux secteurs soumis à des régulations spécifiques</h3><!-- /wp:heading -->', 'Politique de confidentialité', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2020-03-20 17:20:25', '2020-03-20 16:20:25', '', 3, 'http://localhost/Bhent%20theme/index.php/2020/03/20/3-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2020-03-20 17:20:28', '2020-03-20 16:20:28', '<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page « À propos » qui les présente aux visiteurs du site. Cela pourrait ressembler à quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Bonjour ! Je suis un mécanicien qui aspire à devenir acteur, et voici mon site. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka-ananas (ainsi qu’être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... ou quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href=\"http://localhost/Bhent%20theme/wp-admin/\">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien !</p>\n<!-- /wp:paragraph -->', 'Page d’exemple', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-03-20 17:20:28', '2020-03-20 16:20:28', '', 2, 'http://localhost/Bhent%20theme/index.php/2020/03/20/2-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2020-03-20 21:27:18', '2020-03-20 20:27:18', '<!-- wp:paragraph -->\n<p> This program is free software: you can redistribute it and/or modify<br> it under the terms of the GNU General Public License as published by<br> the Free Software Foundation, either version 2 of the License, or<br> (at your option) any later version. </p>\n<!-- /wp:paragraph -->', 'article6', '', 'publish', 'open', 'open', '', 'article6', '', '', '2020-03-20 21:27:18', '2020-03-20 20:27:18', '', 0, 'http://localhost/Bhent%20theme/?p=41', 0, 'post', '', 0),
(42, 1, '2020-03-20 21:27:18', '2020-03-20 20:27:18', '<!-- wp:paragraph -->\n<p> This program is free software: you can redistribute it and/or modify<br> it under the terms of the GNU General Public License as published by<br> the Free Software Foundation, either version 2 of the License, or<br> (at your option) any later version. </p>\n<!-- /wp:paragraph -->', 'article6', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2020-03-20 21:27:18', '2020-03-20 20:27:18', '', 41, 'http://localhost/Bhent%20theme/index.php/2020/03/20/41-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2020-03-20 21:27:39', '2020-03-20 20:27:39', '<!-- wp:paragraph -->\n<p> This program is free software: you can redistribute it and/or modify<br> it under the terms of the GNU General Public License as published by<br> the Free Software Foundation, either version 2 of the License, or<br> (at your option) any later version. </p>\n<!-- /wp:paragraph -->', 'article7', '', 'publish', 'open', 'open', '', 'article7', '', '', '2020-03-21 13:22:10', '2020-03-21 12:22:10', '', 0, 'http://localhost/Bhent%20theme/?p=43', 0, 'post', '', 0),
(44, 1, '2020-03-20 21:27:39', '2020-03-20 20:27:39', '<!-- wp:paragraph -->\n<p> This program is free software: you can redistribute it and/or modify<br> it under the terms of the GNU General Public License as published by<br> the Free Software Foundation, either version 2 of the License, or<br> (at your option) any later version. </p>\n<!-- /wp:paragraph -->', 'article7', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2020-03-20 21:27:39', '2020-03-20 20:27:39', '', 43, 'http://localhost/Bhent%20theme/index.php/2020/03/20/43-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2020-03-20 21:27:59', '2020-03-20 20:27:59', '<!-- wp:paragraph -->\n<p> This program is free software: you can redistribute it and/or modify<br> it under the terms of the GNU General Public License as published by<br> the Free Software Foundation, either version 2 of the License, or<br> (at your option) any later version. </p>\n<!-- /wp:paragraph -->', 'article8', '', 'publish', 'open', 'open', '', 'article8', '', '', '2020-03-20 21:27:59', '2020-03-20 20:27:59', '', 0, 'http://localhost/Bhent%20theme/?p=45', 0, 'post', '', 0),
(46, 1, '2020-03-20 21:27:59', '2020-03-20 20:27:59', '<!-- wp:paragraph -->\n<p> This program is free software: you can redistribute it and/or modify<br> it under the terms of the GNU General Public License as published by<br> the Free Software Foundation, either version 2 of the License, or<br> (at your option) any later version. </p>\n<!-- /wp:paragraph -->', 'article8', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2020-03-20 21:27:59', '2020-03-20 20:27:59', '', 45, 'http://localhost/Bhent%20theme/index.php/2020/03/20/45-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2020-03-20 22:14:18', '2020-03-20 21:14:18', '', 'Accueil', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2020-03-22 01:38:32', '2020-03-22 00:38:32', '', 0, 'http://localhost/Bhent%20theme/?p=47', 1, 'nav_menu_item', '', 0),
(48, 1, '2020-03-20 22:11:46', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-03-20 22:11:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/Bhent%20theme/?p=48', 1, 'nav_menu_item', '', 0),
(49, 1, '2020-03-20 22:14:18', '2020-03-20 21:14:18', ' ', '', '', 'publish', 'closed', 'closed', '', '49', '', '', '2020-03-22 01:38:32', '2020-03-22 00:38:32', '', 0, 'http://localhost/Bhent%20theme/?p=49', 4, 'nav_menu_item', '', 0),
(50, 1, '2020-03-20 22:11:46', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-03-20 22:11:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/Bhent%20theme/?p=50', 1, 'nav_menu_item', '', 0),
(51, 1, '2020-03-20 22:14:18', '2020-03-20 21:14:18', ' ', '', '', 'publish', 'closed', 'closed', '', '51', '', '', '2020-03-22 01:38:32', '2020-03-22 00:38:32', '', 0, 'http://localhost/Bhent%20theme/?p=51', 3, 'nav_menu_item', '', 0),
(52, 1, '2020-03-21 09:47:00', '2020-03-21 08:47:00', ' ', '', '', 'publish', 'closed', 'closed', '', '52', '', '', '2020-03-22 01:38:32', '2020-03-22 00:38:32', '', 0, 'http://localhost/Bhent%20theme/?p=52', 2, 'nav_menu_item', '', 0),
(53, 1, '2020-03-21 10:17:35', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-03-21 10:17:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/Bhent%20theme/?p=53', 0, 'post', '', 0),
(54, 1, '2020-03-21 11:17:17', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p> This program is free software: you can redistribute it and/or modify<br> it under the terms of the GNU General Public License as published by<br> the Free Software Foundation, either version 2 of the License, or<br> (at your option) any later version.  </p>\n<!-- /wp:paragraph -->', 'article9', '', 'draft', 'open', 'open', '', '', '', '', '2020-03-21 11:17:17', '2020-03-21 10:17:17', '', 0, 'http://localhost/Bhent%20theme/?p=54', 0, 'post', '', 0),
(55, 1, '2020-03-21 12:57:09', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-03-21 12:57:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/Bhent%20theme/?p=55', 0, 'post', '', 0),
(57, 1, '2020-03-21 13:20:16', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-03-21 13:20:16', '0000-00-00 00:00:00', '', 0, 'http://localhost/Bhent%20theme/?p=57', 1, 'nav_menu_item', '', 0),
(72, 1, '2020-03-24 06:00:26', '2020-03-24 05:00:26', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-03-24 06:00:26', '2020-03-24 05:00:26', '', 1, 'http://localhost/Bhent%20theme/index.php/2020/03/24/1-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2020-03-22 19:37:01', '2020-03-22 18:37:01', ' ', '', '', 'publish', 'closed', 'closed', '', '64', '', '', '2020-03-24 05:57:52', '2020-03-24 04:57:52', '', 0, 'http://localhost/Bhent%20theme/?p=64', 1, 'nav_menu_item', '', 0),
(65, 1, '2020-03-22 19:37:01', '2020-03-22 18:37:01', ' ', '', '', 'publish', 'closed', 'closed', '', '65', '', '', '2020-03-24 05:57:52', '2020-03-24 04:57:52', '', 0, 'http://localhost/Bhent%20theme/?p=65', 2, 'nav_menu_item', '', 0),
(66, 1, '2020-03-22 19:37:01', '2020-03-22 18:37:01', ' ', '', '', 'publish', 'closed', 'closed', '', '66', '', '', '2020-03-24 05:57:53', '2020-03-24 04:57:53', '', 0, 'http://localhost/Bhent%20theme/?p=66', 3, 'nav_menu_item', '', 0),
(75, 1, '2020-03-24 10:58:36', '2020-03-24 09:58:36', '', 'b1', '', 'inherit', 'open', 'closed', '', 'b1', '', '', '2020-03-24 10:58:36', '2020-03-24 09:58:36', '', 74, 'http://localhost/Bhent%20theme/wp-content/uploads/2020/03/b1.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2020-03-24 10:59:33', '2020-03-24 09:59:33', '<!-- wp:image {\"id\":75,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/Bhent%20theme/wp-content/uploads/2020/03/b1.jpg\" alt=\"\" class=\"wp-image-75\"/><figcaption>jzxczaj jacacachuac cskacihaihcalc</figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>kjscyasckm svcjancakckaj nafcuafdajdwaifcadk sjfdaufaf jsiufaufaufa faifaiwufiafwa</p>\n<!-- /wp:paragraph -->', 'mjgkj', '', 'publish', 'open', 'open', '', 'mjgkj', '', '', '2020-03-24 11:00:29', '2020-03-24 10:00:29', '', 0, 'http://localhost/Bhent%20theme/?p=74', 0, 'post', '', 0),
(73, 1, '2020-03-24 06:00:30', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-03-24 06:00:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/Bhent%20theme/?p=73', 0, 'post', '', 0),
(67, 1, '2020-03-23 05:19:31', '2020-03-23 04:19:31', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2020-03-23 05:19:31', '2020-03-23 04:19:31', '', 0, 'http://localhost/Bhent%20theme/wp-content/uploads/2020/03/logo.png', 0, 'attachment', 'image/png', 0),
(68, 1, '2020-03-23 05:19:38', '2020-03-23 04:19:38', 'http://localhost/Bhent%20theme/wp-content/uploads/2020/03/cropped-logo.png', 'cropped-logo.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-png', '', '', '2020-03-23 05:19:38', '2020-03-23 04:19:38', '', 0, 'http://localhost/Bhent%20theme/wp-content/uploads/2020/03/cropped-logo.png', 0, 'attachment', 'image/png', 0),
(69, 1, '2020-03-23 05:19:44', '2020-03-23 04:19:44', '{\n    \"blogdescription\": {\n        \"value\": \"Le numerique c\'est le futur\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-23 04:19:39\"\n    },\n    \"site_icon\": {\n        \"value\": 68,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-23 04:19:39\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '897a7223-d806-4e2b-962e-6b6869d5a383', '', '', '2020-03-23 05:19:44', '2020-03-23 04:19:44', '', 0, 'http://localhost/Bhent%20theme/?p=69', 0, 'customize_changeset', '', 0),
(70, 1, '2020-03-23 13:26:45', '2020-03-23 12:26:45', 'http://localhost/Bhent%20theme/wp-content/uploads/2020/03/cropped-logo-1.png', 'cropped-logo-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-1-png', '', '', '2020-03-23 13:26:45', '2020-03-23 12:26:45', '', 0, 'http://localhost/Bhent%20theme/wp-content/uploads/2020/03/cropped-logo-1.png', 0, 'attachment', 'image/png', 0),
(71, 1, '2020-03-23 13:26:54', '2020-03-23 12:26:54', '{\n    \"Bhent1::custom_logo\": {\n        \"value\": 70,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-23 12:26:54\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '20b265fc-e941-4572-a6b7-7debfd3920b6', '', '', '2020-03-23 13:26:54', '2020-03-23 12:26:54', '', 0, 'http://localhost/Bhent%20theme/index.php/2020/03/23/20b265fc-e941-4572-a6b7-7debfd3920b6/', 0, 'customize_changeset', '', 0),
(76, 1, '2020-03-24 10:59:33', '2020-03-24 09:59:33', '<!-- wp:image {\"id\":75,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/Bhent%20theme/wp-content/uploads/2020/03/b1.jpg\" alt=\"\" class=\"wp-image-75\"/><figcaption>jzxczaj jacacachuac cskacihaihcalc</figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>kjscyasckm svcjancakckaj nafcuafdajdwaifcadk sjfdaufaf jsiufaufaufa faifaiwufiafwa</p>\n<!-- /wp:paragraph -->', 'mjgkj', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2020-03-24 10:59:33', '2020-03-24 09:59:33', '', 74, 'http://localhost/Bhent%20theme/index.php/2020/03/24/74-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'categorie1', 'categorie1', 0),
(3, 'categorie2', 'categorie2', 0),
(4, 'categorie3', 'categorie3', 0),
(5, 'categorie4', 'categorie4', 0),
(6, 'categorie5', 'categorie5', 0),
(7, 'etiquette1', 'etiquette1', 0),
(8, 'etiquette2', 'etiquette2', 0),
(9, 'etiquette3', 'etiquette3', 0),
(10, 'etiquette4', 'etiquette4', 0),
(11, 'etiquette5', 'etiquette5', 0),
(12, 'Menu principal', 'menu-principal', 0),
(13, 'footer menu', 'footer-menu', 0),
(14, 'sidebar menu', 'sidebar-menu', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 1, 0),
(8, 1, 0),
(11, 1, 0),
(14, 1, 0),
(17, 1, 0),
(41, 1, 0),
(43, 1, 0),
(45, 1, 0),
(47, 12, 0),
(51, 12, 0),
(49, 12, 0),
(52, 12, 0),
(54, 1, 0),
(11, 2, 0),
(11, 3, 0),
(11, 4, 0),
(11, 5, 0),
(11, 6, 0),
(17, 2, 0),
(17, 3, 0),
(17, 4, 0),
(64, 13, 0),
(43, 7, 0),
(11, 8, 0),
(65, 13, 0),
(66, 13, 0),
(74, 11, 0),
(74, 9, 0),
(74, 4, 0),
(74, 5, 0),
(74, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 9),
(2, 2, 'category', '', 0, 2),
(3, 3, 'category', '', 0, 2),
(4, 4, 'category', '', 0, 3),
(5, 5, 'category', '', 0, 2),
(6, 6, 'category', '', 0, 1),
(7, 7, 'post_tag', '', 0, 1),
(8, 8, 'post_tag', '', 0, 1),
(9, 9, 'post_tag', '', 0, 1),
(10, 10, 'post_tag', '', 0, 0),
(11, 11, 'post_tag', '', 0, 1),
(12, 12, 'nav_menu', '', 0, 4),
(13, 13, 'nav_menu', '', 0, 3),
(14, 14, 'nav_menu', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_usermeta`
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"9748a2b71605ff9839157adf5c627646c9f4e086f16348431ce7f12f13928966\";a:4:{s:10:\"expiration\";i:1585197978;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36\";s:5:\"login\";i:1585025178;}s:64:\"8ecea3fc920323d8ee4a8a550d74106a42055405cde1d07321f93dfbb3e92b0e\";a:4:{s:10:\"expiration\";i:1585291460;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36\";s:5:\"login\";i:1585118660;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'wp_user-settings', 'libraryContent=browse&mfold=o'),
(19, 1, 'wp_user-settings-time', '1584922535'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:0:{}'),
(22, 1, 'nav_menu_recently_edited', '14'),
(23, 1, 'closedpostboxes_nav-menus', 'a:0:{}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BXGW2xSaGu1WjjvVL5OhOvp.FAXbEH/', 'admin', 'hello@bhent.net', '', '2020-03-19 07:19:57', '', 0, 'admin');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
