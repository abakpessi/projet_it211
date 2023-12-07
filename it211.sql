-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 07 déc. 2023 à 12:48
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `it211`
--

-- --------------------------------------------------------

--
-- Structure de la table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_user'),
(22, 'Can change user', 6, 'change_user'),
(23, 'Can delete user', 6, 'delete_user'),
(24, 'Can view user', 6, 'view_user'),
(25, 'Can add Post', 7, 'add_posts'),
(26, 'Can change Post', 7, 'change_posts'),
(27, 'Can delete Post', 7, 'delete_posts'),
(28, 'Can view Post', 7, 'view_posts');

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-12-07 07:38:26.258952', '2', 'abakpessi', 2, '[{\"changed\": {\"fields\": [\"Date joined\", \"Nom\", \"Prenom\", \"Date naissance\", \"Is createur\"]}}]', 6, 7),
(2, '2023-12-07 07:44:49.782287', '8', 'abawi', 1, '[{\"added\": {}}]', 6, 7),
(3, '2023-12-07 07:46:28.899206', '9', 'atinak', 1, '[{\"added\": {}}]', 6, 7),
(4, '2023-12-07 07:47:05.349607', '1', 'fruit-mangue', 2, '[{\"changed\": {\"fields\": [\"Date post\", \"Image\"]}}]', 7, 7),
(5, '2023-12-07 07:47:05.395577', '1', 'fruit-mangue', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 7),
(6, '2023-12-07 07:48:51.186940', '1', 'fruit-mangue', 2, '[{\"changed\": {\"fields\": [\"Createur\"]}}]', 7, 7),
(7, '2023-12-07 07:49:59.984985', '2', 'fruit-papaye', 1, '[{\"added\": {}}]', 7, 7),
(8, '2023-12-07 07:51:29.002257', '3', 'orange', 1, '[{\"added\": {}}]', 7, 7),
(9, '2023-12-07 07:53:05.967832', '4', 'fruit-passion', 1, '[{\"added\": {}}]', 7, 7),
(10, '2023-12-07 07:56:16.626938', '7', 'ab', 2, '[{\"changed\": {\"fields\": [\"Nom\", \"Prenom\", \"Date naissance\", \"Is createur\"]}}]', 6, 7),
(11, '2023-12-07 07:56:16.718707', '7', 'ab', 2, '[]', 6, 7),
(12, '2023-12-07 08:19:00.499580', '5', 'Bsonou', 3, '', 6, 7),
(13, '2023-12-07 08:21:29.568023', '9', 'atinak', 3, '', 6, 7),
(14, '2023-12-07 08:24:34.497878', '5', 'orange', 1, '[{\"added\": {}}]', 7, 7),
(15, '2023-12-07 08:26:24.324321', '10', 'badam', 2, '[{\"changed\": {\"fields\": [\"Is createur\", \"Is abonnee\"]}}]', 6, 7),
(16, '2023-12-07 08:26:24.421172', '10', 'badam', 2, '[]', 6, 7),
(17, '2023-12-07 08:26:24.458044', '10', 'badam', 2, '[]', 6, 7),
(18, '2023-12-07 08:30:51.000129', '10', 'badam', 2, '[{\"changed\": {\"fields\": [\"Password\"]}}]', 6, 7),
(19, '2023-12-07 08:35:49.889364', '10', 'badam', 2, '[{\"changed\": {\"fields\": [\"Is abonnee\"]}}]', 6, 7),
(20, '2023-12-07 08:38:46.460760', '11', 'bsonou', 2, '[{\"changed\": {\"fields\": [\"Is createur\"]}}]', 6, 7),
(21, '2023-12-07 08:40:08.467904', '2', 'abakpessi', 3, '', 6, 7),
(22, '2023-12-07 08:40:27.595523', '10', 'badam', 3, '', 6, 7),
(23, '2023-12-07 08:41:25.943582', '8', 'abawi', 3, '', 6, 7),
(24, '2023-12-07 08:47:59.233669', '12', 'abawi', 2, '[{\"changed\": {\"fields\": [\"Is createur\"]}}]', 6, 7),
(25, '2023-12-07 08:53:56.986817', '14', 'abadam', 3, '', 6, 7),
(26, '2023-12-07 08:58:19.457757', '6', 'fruit-papaye', 1, '[{\"added\": {}}]', 7, 7),
(27, '2023-12-07 08:59:11.176984', '7', 'fruit-passion', 1, '[{\"added\": {}}]', 7, 7),
(28, '2023-12-07 09:00:44.624418', '8', 'fruit-mangue', 1, '[{\"added\": {}}]', 7, 7),
(29, '2023-12-07 09:01:56.310814', '9', 'fruit-orange', 1, '[{\"added\": {}}]', 7, 7),
(30, '2023-12-07 09:44:25.357491', '11', 'fruit-pamplemousse', 1, '[{\"added\": {}}]', 7, 7),
(31, '2023-12-07 09:45:37.031932', '12', 'fruit-ananas', 1, '[{\"added\": {}}]', 7, 7),
(32, '2023-12-07 09:46:27.218875', '13', 'Voyage', 1, '[{\"added\": {}}]', 7, 7),
(33, '2023-12-07 09:51:40.213958', '11', 'bsonou', 2, '[{\"changed\": {\"fields\": [\"Password\"]}}]', 6, 7);

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(5, 'sessions', 'session'),
(7, 'users', 'posts'),
(6, 'users', 'user');

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-12-06 17:45:42.596663'),
(2, 'contenttypes', '0002_remove_content_type_name', '2023-12-06 17:45:42.719763'),
(3, 'auth', '0001_initial', '2023-12-06 17:45:43.209193'),
(4, 'auth', '0002_alter_permission_name_max_length', '2023-12-06 17:45:43.514478'),
(5, 'auth', '0003_alter_user_email_max_length', '2023-12-06 17:45:43.536622'),
(6, 'auth', '0004_alter_user_username_opts', '2023-12-06 17:45:43.555237'),
(7, 'auth', '0005_alter_user_last_login_null', '2023-12-06 17:45:43.570150'),
(8, 'auth', '0006_require_contenttypes_0002', '2023-12-06 17:45:43.570150'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2023-12-06 17:45:43.586147'),
(10, 'auth', '0008_alter_user_username_max_length', '2023-12-06 17:45:43.596190'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2023-12-06 17:45:43.609047'),
(12, 'auth', '0010_alter_group_name_max_length', '2023-12-06 17:45:43.638504'),
(13, 'auth', '0011_update_proxy_permissions', '2023-12-06 17:45:43.654731'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2023-12-06 17:45:43.663711'),
(15, 'users', '0001_initial', '2023-12-06 17:45:44.454225'),
(16, 'admin', '0001_initial', '2023-12-06 17:45:44.776309'),
(17, 'admin', '0002_logentry_remove_auto_add', '2023-12-06 17:45:44.807540'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2023-12-06 17:45:44.832012'),
(19, 'sessions', '0001_initial', '2023-12-06 17:45:45.054573'),
(20, 'users', '0002_alter_posts_date_post_alter_user_date_naissance', '2023-12-07 07:30:22.457289'),
(21, 'users', '0003_alter_posts_image', '2023-12-07 09:40:19.914867');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2xqfbwham2hxk9ep4z66vvwhoekwksrr', '.eJxVjMEOwiAQRP-FsyG7AqX16N1vICy7SNXQpLQn47_bJj3obTLvzbxViOtSwtpkDiOri_Lq9NtRTE-pO-BHrPdJp6ku80h6V_RBm75NLK_r4f4dlNjKts4OPRjCwYGwyX3GRBj9FkyKHYJ12QL2htiKd_nMQ5ZOJDEIEKGozxftYji7:1rBBZB:yEby6UfHElyWfkhCt7ss4uUa_quWLpxTVlKr_uvCTdQ', '2023-12-21 10:25:13.411149'),
('3kse28o1jod9m4f5hxozs5vwqp52blr2', '.eJxVjMEOwiAQRP-FsyG7AqX16N1vICy7SNXQpLQn47_bJj3obTLvzbxViOtSwtpkDiOri_Lq9NtRTE-pO-BHrPdJp6ku80h6V_RBm75NLK_r4f4dlNjKts4OPRjCwYGwyX3GRBj9FkyKHYJ12QL2htiKd_nMQ5ZOJDEIEKGozxftYji7:1rB9tt:rDPYIHiYnPXlP-7Kxqr97231uAWlO8QK8B6Ur5NcfiM', '2023-12-21 08:38:29.313552'),
('75yo2lg3rqnxmja46v7rwmoam00pox90', '.eJxVjEEOwiAQRe_C2hBBGMCle89AZoZBqqZNSrsy3l2bdKHb_977L5VxXVpeu8x5KOqsjFWH35GQHzJupNxxvE2ap3GZB9Kbonfa9XUq8rzs7t9Bw96-dQypck0EhZz3wFQpoVgSdgYZqxNIBuBYjI82nQB9DMUGF6SCZyD1_gAxRTiy:1rBAyP:T4QCd6nv-4BczU4JNhFR1p3qoa9GNZdej8nhxzbiwGw', '2023-12-21 09:47:13.145212'),
('8we4b3zq483wa4ghiwbtpdnddwy6ow4t', '.eJxVjMEOwiAQRP-FsyG7AqX16N1vICy7SNXQpLQn47_bJj3obTLvzbxViOtSwtpkDiOri_Lq9NtRTE-pO-BHrPdJp6ku80h6V_RBm75NLK_r4f4dlNjKts4OPRjCwYGwyX3GRBj9FkyKHYJ12QL2htiKd_nMQ5ZOJDEIEKGozxftYji7:1rB9vM:gun0F53QV9w-8WsVtpAAnV4gx2FQAxOY3R5yQHXQv4Q', '2023-12-21 08:40:00.277416'),
('97msoc4hz8y05tn2mf365z21mnory6re', '.eJxVjMsOwiAQRf-FtSEwvF269xsIA4NUDU1KuzL-uzbpQrf3nHNfLKZtbXEbtMSpsDOTgp1-R0z5QX0n5Z76beZ57usyId8VftDBr3Oh5-Vw_w5aGu1bAxI4Cui1M0YlLaoXmUh5K9ErykAlC8Aq0RmwVacCSkmrA4ENOgN7fwAG4jfP:1rB9SX:0ANGx9YWzqq7lux6pSE2BndHETwBsjKO8NqiuPvIR4E', '2023-12-21 08:10:13.774895'),
('9x6q10186ftnkfyldjcxbw3rqfuy2a4o', '.eJxVjMEOwiAQRP-FsyG7AqX16N1vICy7SNXQpLQn47_bJj3obTLvzbxViOtSwtpkDiOri_Lq9NtRTE-pO-BHrPdJp6ku80h6V_RBm75NLK_r4f4dlNjKts4OPRjCwYGwyX3GRBj9FkyKHYJ12QL2htiKd_nMQ5ZOJDEIEKGozxftYji7:1rBA59:jSo7W5UDyNuuO_5ZqrNKhoZSd6J7QRv23FiWLw6YT7c', '2023-12-21 08:50:07.214127'),
('h2cb27qjrk1k0u4vjgw4omq0411gl374', '.eJxVjDsOwjAQBe_iGlnr-AeU9JzB2nh3cQDZUpxUiLtDpBTQvpl5L5VwXUpaO89pInVWxqrD7zhifnDdCN2x3prOrS7zNOpN0Tvt-tqIn5fd_Tso2Mu3hhOBYMhZOCJ7F3yM0TtBJkOeojgA5CDC5I0LYNEegbwYHGAQDur9ASsVOL8:1rBBNR:CyMFzuHjidsXDS81Nqucx-YKxt7T3ggRWTVDtrQlIjM', '2023-12-21 10:13:05.385102'),
('htsx25da2r7zf7rvlsq5wprijaevmh8j', '.eJxVjMEOwiAQRP-FsyG7AqX16N1vICy7SNXQpLQn47_bJj3obTLvzbxViOtSwtpkDiOri_Lq9NtRTE-pO-BHrPdJp6ku80h6V_RBm75NLK_r4f4dlNjKts4OPRjCwYGwyX3GRBj9FkyKHYJ12QL2htiKd_nMQ5ZOJDEIEKGozxftYji7:1rBAAf:BvaMZcipnzTujbsEtacH5EerBwEbHTNeeNCpP-dxoZE', '2023-12-21 08:55:49.760126'),
('odgro3k2y7zwfozuugac6utozcv2pgxi', '.eJxVjMEOwiAQRP-FsyG7AqX16N1vICy7SNXQpLQn47_bJj3obTLvzbxViOtSwtpkDiOri_Lq9NtRTE-pO-BHrPdJp6ku80h6V_RBm75NLK_r4f4dlNjKts4OPRjCwYGwyX3GRBj9FkyKHYJ12QL2htiKd_nMQ5ZOJDEIEKGozxftYji7:1rBBZB:yEby6UfHElyWfkhCt7ss4uUa_quWLpxTVlKr_uvCTdQ', '2023-12-21 10:25:13.279270'),
('ovut7fbrzup6p2vgk4va3reaglpaldcq', '.eJxVjMEOwiAQRP-FsyG7AqX16N1vICy7SNXQpLQn47_bJj3obTLvzbxViOtSwtpkDiOri_Lq9NtRTE-pO-BHrPdJp6ku80h6V_RBm75NLK_r4f4dlNjKts4OPRjCwYGwyX3GRBj9FkyKHYJ12QL2htiKd_nMQ5ZOJDEIEKGozxftYji7:1rBAAf:BvaMZcipnzTujbsEtacH5EerBwEbHTNeeNCpP-dxoZE', '2023-12-21 08:55:49.789620'),
('suos6iflprp89an0pr1k6gmulrm0w89u', '.eJxVjMEOwiAQRP-FsyG7AqX16N1vICy7SNXQpLQn47_bJj3obTLvzbxViOtSwtpkDiOri_Lq9NtRTE-pO-BHrPdJp6ku80h6V_RBm75NLK_r4f4dlNjKts4OPRjCwYGwyX3GRBj9FkyKHYJ12QL2htiKd_nMQ5ZOJDEIEKGozxftYji7:1rB9vM:gun0F53QV9w-8WsVtpAAnV4gx2FQAxOY3R5yQHXQv4Q', '2023-12-21 08:40:00.180184'),
('th5yy6n27aiooi8s2zxneivowbgasgj3', '.eJxVjEEOwiAQRe_C2pCZQsvg0r1nIDOAUjU0Ke3KeHfbpAvd_vfef6vA61LC2vIcxqTOClGdfkfh-Mx1J-nB9T7pONVlHkXvij5o09cp5dflcP8OCrey1YwEt0ScjGXXQXbiQIAd-Oydt2RsHrAjGnwPXjZLrBACRRMt9t6ozxfvzjbp:1rB9th:cJtHo85gLeDoqxQ3wrM0cEAulUnjiYb-KsZ9X7P1nKU', '2023-12-21 08:38:17.185132'),
('tt5m2i10hkwtjmxbwr34c8u2sv9ur1q9', '.eJxVjEEOwiAQRe_C2hBBGMCle89AZoZBqqZNSrsy3l2bdKHb_977L5VxXVpeu8x5KOqsjFWH35GQHzJupNxxvE2ap3GZB9Kbonfa9XUq8rzs7t9Bw96-dQypck0EhZz3wFQpoVgSdgYZqxNIBuBYjI82nQB9DMUGF6SCZyD1_gAxRTiy:1rBAyP:T4QCd6nv-4BczU4JNhFR1p3qoa9GNZdej8nhxzbiwGw', '2023-12-21 09:47:13.101604');

-- --------------------------------------------------------

--
-- Structure de la table `users_posts`
--

CREATE TABLE `users_posts` (
  `id` bigint(20) NOT NULL,
  `titre` varchar(30) NOT NULL,
  `description` longtext NOT NULL,
  `date_post` datetime(6) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  `createur_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users_posts`
--

INSERT INTO `users_posts` (`id`, `titre`, `description`, `date_post`, `image`, `createur_id`) VALUES
(6, 'fruit-papaye', 'La papaye est un fruit délicieux', '2023-12-07 08:58:09.000000', 'images/papaye.jpg_3y1KB0l.webp', 12),
(7, 'fruit-passion', 'La passion est un fruit pour les amoureux.', '2023-12-07 08:59:00.000000', 'images/passion_Sgd91fl.jpg', 12),
(8, 'fruit-mangue', 'La mangue est un fruit merveilleux.', '2023-12-07 09:00:26.000000', 'images/mangue.jpg_EjgZCt4.jpg', 11),
(9, 'fruit-orange', 'L\'orange est un fruit riche en vitamine C.', '2023-12-07 09:01:45.000000', 'images/orange.jpg_X5JbwXO.jpg', 11),
(10, 'fruit-mandarin', 'Un autre fruit aussi riche en vitamine C.', '2023-12-07 07:07:34.000000', '', 12),
(11, 'fruit-pamplemousse', 'Un fruit également riche en en vitamine C.', '2023-12-07 09:44:05.000000', 'images/pamplemous.jpg', 11),
(12, 'fruit-ananas', 'Un fruit très riche en vitamine E.', '2023-12-07 09:45:25.000000', 'images/ananas.jpg.jpg', 12),
(13, 'Voyage', 'J\'adore les voyages', '2023-12-07 09:46:15.000000', 'images/Accueil2-voyage.jpg', 11);

-- --------------------------------------------------------

--
-- Structure de la table `users_user`
--

CREATE TABLE `users_user` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `date_naissance` date DEFAULT NULL,
  `is_createur` tinyint(1) NOT NULL,
  `is_abonnee` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users_user`
--

INSERT INTO `users_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `nom`, `prenom`, `date_naissance`, `is_createur`, `is_abonnee`) VALUES
(1, '', NULL, 0, '', '', '', '', 0, 1, '2023-12-06 23:23:35.229004', 'Potobawi', 'Bruno', '1986-06-22', 0, 1),
(7, 'pbkdf2_sha256$720000$8I04EkC25jhZ6PPiU7j6z1$YZyah2qXdskHFN+ulURZvJiHFU6FUTR7bbViAC4QlMQ=', '2023-12-07 10:25:13.394834', 1, 'ab', '', '', '', 1, 1, '2023-12-07 07:35:27.000000', 'BAKPESSI', 'Aklesso', '2023-12-07', 1, 1),
(11, 'gerisse@123', '2023-12-07 08:45:18.000000', 0, 'bsonou', '', '', '', 0, 1, '2023-12-07 08:20:58.000000', 'Sonou', 'Gerisse', '2023-12-07', 1, 1),
(12, 'pbkdf2_sha256$720000$SJCMQD0Q0UKL10JT4PFHvS$e/DjbTYYIqm4rSc5wQgz/G4S/DKn5SnQk2+LZ8SkTqU=', '2023-12-07 10:13:22.116465', 0, 'abawi', '', '', '', 0, 1, '2023-12-07 08:47:18.000000', 'Potobawi', 'Bruno', '1989-07-25', 1, 1),
(13, 'pbkdf2_sha256$720000$NHYBwFUyWCS2uXUdHgQWlT$00xnzn5h1dPSQu9537Dlf8ebwH2NpN+uu3ifd/OZqRo=', '2023-12-07 10:13:05.649491', 0, 'atinak', '', '', '', 0, 1, '2023-12-07 08:49:26.499852', 'TINAKA', 'kevin', '2023-12-07', 0, 1),
(16, 'pbkdf2_sha256$720000$zvGX46ddUAcwLwWh4rSzXJ$WEjhO4tCcvGqmxaT5isSFOMYzN1qaNN/FazBlfm5vRo=', '2023-12-07 08:55:34.341405', 0, 'abadam', '', '', '', 0, 1, '2023-12-07 08:55:24.846283', 'Atiabou', 'Adamou', '2023-12-07', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `users_user_groups`
--

CREATE TABLE `users_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users_user_user_permissions`
--

CREATE TABLE `users_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Index pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_users_user_id` (`user_id`);

--
-- Index pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Index pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Index pour la table `users_posts`
--
ALTER TABLE `users_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_posts_createur_id_a49da8c7_fk_users_user_id` (`createur_id`);

--
-- Index pour la table `users_user`
--
ALTER TABLE `users_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `users_user_groups`
--
ALTER TABLE `users_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_user_groups_user_id_group_id_b88eab82_uniq` (`user_id`,`group_id`),
  ADD KEY `users_user_groups_group_id_9afc8d0e_fk_auth_group_id` (`group_id`);

--
-- Index pour la table `users_user_user_permissions`
--
ALTER TABLE `users_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_user_user_permissions_user_id_permission_id_43338c45_uniq` (`user_id`,`permission_id`),
  ADD KEY `users_user_user_perm_permission_id_0b93982e_fk_auth_perm` (`permission_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `users_posts`
--
ALTER TABLE `users_posts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `users_user`
--
ALTER TABLE `users_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `users_user_groups`
--
ALTER TABLE `users_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users_user_user_permissions`
--
ALTER TABLE `users_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Contraintes pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Contraintes pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`);

--
-- Contraintes pour la table `users_posts`
--
ALTER TABLE `users_posts`
  ADD CONSTRAINT `users_posts_createur_id_a49da8c7_fk_users_user_id` FOREIGN KEY (`createur_id`) REFERENCES `users_user` (`id`);

--
-- Contraintes pour la table `users_user_groups`
--
ALTER TABLE `users_user_groups`
  ADD CONSTRAINT `users_user_groups_group_id_9afc8d0e_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `users_user_groups_user_id_5f6f5a90_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`);

--
-- Contraintes pour la table `users_user_user_permissions`
--
ALTER TABLE `users_user_user_permissions`
  ADD CONSTRAINT `users_user_user_perm_permission_id_0b93982e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `users_user_user_permissions_user_id_20aca447_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
