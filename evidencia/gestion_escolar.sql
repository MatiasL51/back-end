-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 16-10-2026 a las 16:31:59
-- Versión del servidor: 9.1.0
-- Versión de PHP: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gestion_escolar`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add Alumno', 1, 'add_alumno'),
(2, 'Can change Alumno', 1, 'change_alumno'),
(3, 'Can delete Alumno', 1, 'delete_alumno'),
(4, 'Can view Alumno', 1, 'view_alumno'),
(5, 'Can add log entry', 2, 'add_logentry'),
(6, 'Can change log entry', 2, 'change_logentry'),
(7, 'Can delete log entry', 2, 'delete_logentry'),
(8, 'Can view log entry', 2, 'view_logentry'),
(9, 'Can add permission', 3, 'add_permission'),
(10, 'Can change permission', 3, 'change_permission'),
(11, 'Can delete permission', 3, 'delete_permission'),
(12, 'Can view permission', 3, 'view_permission'),
(13, 'Can add group', 4, 'add_group'),
(14, 'Can change group', 4, 'change_group'),
(15, 'Can delete group', 4, 'delete_group'),
(16, 'Can view group', 4, 'view_group'),
(17, 'Can add user', 5, 'add_user'),
(18, 'Can change user', 5, 'change_user'),
(19, 'Can delete user', 5, 'delete_user'),
(20, 'Can view user', 5, 'view_user'),
(21, 'Can add content type', 6, 'add_contenttype'),
(22, 'Can change content type', 6, 'change_contenttype'),
(23, 'Can delete content type', 6, 'delete_contenttype'),
(24, 'Can view content type', 6, 'view_contenttype'),
(25, 'Can add session', 7, 'add_session'),
(26, 'Can change session', 7, 'change_session'),
(27, 'Can delete session', 7, 'delete_session'),
(28, 'Can view session', 7, 'view_session'),
(29, 'Can add Curso', 8, 'add_curso'),
(30, 'Can change Curso', 8, 'change_curso'),
(31, 'Can delete Curso', 8, 'delete_curso'),
(32, 'Can view Curso', 8, 'view_curso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'gestion_escolar', 'alumno'),
(2, 'admin', 'logentry'),
(3, 'auth', 'permission'),
(4, 'auth', 'group'),
(5, 'auth', 'user'),
(6, 'contenttypes', 'contenttype'),
(7, 'sessions', 'session'),
(8, 'gestion_escolar', 'curso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2026-10-16 00:30:36.795496'),
(2, 'auth', '0001_initial', '2026-10-16 00:30:37.254631'),
(3, 'admin', '0001_initial', '2026-10-16 00:30:37.447440'),
(4, 'admin', '0002_logentry_remove_auto_add', '2026-10-16 00:30:37.453962'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2026-10-16 00:30:37.460202'),
(6, 'contenttypes', '0002_remove_content_type_name', '2026-10-16 00:30:37.521724'),
(7, 'auth', '0002_alter_permission_name_max_length', '2026-10-16 00:30:37.556981'),
(8, 'auth', '0003_alter_user_email_max_length', '2026-10-16 00:30:37.593864'),
(9, 'auth', '0004_alter_user_username_opts', '2026-10-16 00:30:37.600970'),
(10, 'auth', '0005_alter_user_last_login_null', '2026-10-16 00:30:37.632062'),
(11, 'auth', '0006_require_contenttypes_0002', '2026-10-16 00:30:37.633070'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2026-10-16 00:30:37.638149'),
(13, 'auth', '0008_alter_user_username_max_length', '2026-10-16 00:30:37.663634'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2026-10-16 00:30:37.695793'),
(15, 'auth', '0010_alter_group_name_max_length', '2026-10-16 00:30:37.722174'),
(16, 'auth', '0011_update_proxy_permissions', '2026-10-16 00:30:37.729231'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2026-10-16 00:30:37.757319'),
(18, 'gestion_escolar', '0001_initial', '2026-10-16 00:43:16.725629'),
(19, 'sessions', '0001_initial', '2026-10-16 00:43:16.760629'),
(20, 'gestion_escolar', '0002_curso', '2026-10-16 01:00:27.298088'),
(21, 'gestion_escolar', '0003_curso_ultima_actualizacion', '2026-10-16 04:19:32.844136'),
(22, 'gestion_escolar', '0004_alter_alumno_fecha_registro_and_more', '2026-10-16 04:31:33.079052'),
(23, 'gestion_escolar', '0005_alter_alumno_fecha_registro_and_more', '2026-10-16 04:34:35.629356');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gestion_escolar_alumno`
--

DROP TABLE IF EXISTS `gestion_escolar_alumno`;
CREATE TABLE IF NOT EXISTS `gestion_escolar_alumno` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `rut` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `telefono` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direccion` longtext COLLATE utf8mb4_unicode_ci,
  `grado` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activo` tinyint(1) NOT NULL,
  `fecha_registro` datetime(6) DEFAULT NULL,
  `ultima_actualizacion` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `gestion_escolar_alumno`
--

INSERT INTO `gestion_escolar_alumno` (`id`, `rut`, `nombre`, `apellido`, `email`, `fecha_nacimiento`, `telefono`, `direccion`, `grado`, `activo`, `fecha_registro`, `ultima_actualizacion`) VALUES
(1, '12.345.678-9', 'Juan', 'Pérez', 'juan.perez@example.com', '2005-04-12', '+56912345678', 'Av. Los Alerces 123, Temuco', '4to Medio', 1, '2026-03-01 10:00:00.000000', '2026-03-01 10:00:00.000000'),
(2, '98.765.432-1', 'María', 'Tapia', 'maria.gonzalez@example.com', '2006-08-22', '+56987654321', 'Calle Prat 456, Temuco', '3er Medio', 1, '2026-03-02 11:30:00.000000', '2026-10-16 05:06:12.032220');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gestion_escolar_curso`
--

DROP TABLE IF EXISTS `gestion_escolar_curso`;
CREATE TABLE IF NOT EXISTS `gestion_escolar_curso` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nivel` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion` longtext COLLATE utf8mb4_unicode_ci,
  `activo` tinyint(1) NOT NULL,
  `fecha_creacion` datetime(6) DEFAULT NULL,
  `ultima_actualizacion` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `gestion_escolar_curso`
--

INSERT INTO `gestion_escolar_curso` (`id`, `nombre`, `codigo`, `nivel`, `descripcion`, `activo`, `fecha_creacion`, `ultima_actualizacion`) VALUES
(1, 'Primero Medio A', 'CUR-102', 'Educación Media', 'Curso enfocado en el plan científico-humanista básico.', 1, NULL, NULL),
(2, 'Segundo Medio B', 'CUR-102', 'Educación Media', 'Curso enfocado en ciencias y tecnología.', 1, NULL, NULL),
(3, 'Tercero Medio Científico', 'CUR-103', 'Educación Media', 'Especialización en matemáticas avanzadas y física.', 1, NULL, NULL),
(4, 'Tercero Medio G', 'CUR-200', 'Educación media', 'si', 1, '2026-10-16 04:58:06.046358', '2026-10-16 04:58:06.046358');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
