-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-11-2019 a las 23:49:27
-- Versión del servidor: 5.6.24
-- Versión de PHP: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `dinapi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `AcordeonPage`
--

CREATE TABLE IF NOT EXISTS `AcordeonPage` (
  `ID` int(11) NOT NULL,
  `ImagenID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=177 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `AcordeonPage`
--

INSERT INTO `AcordeonPage` (`ID`, `ImagenID`) VALUES
(176, 668);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `AcordeonPage_Live`
--

CREATE TABLE IF NOT EXISTS `AcordeonPage_Live` (
  `ID` int(11) NOT NULL,
  `ImagenID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=177 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `AcordeonPage_Live`
--

INSERT INTO `AcordeonPage_Live` (`ID`, `ImagenID`) VALUES
(176, 668);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `AcordeonPage_versions`
--

CREATE TABLE IF NOT EXISTS `AcordeonPage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ImagenID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `AcordeonPage_versions`
--

INSERT INTO `AcordeonPage_versions` (`ID`, `RecordID`, `Version`, `ImagenID`) VALUES
(1, 176, 8, 668),
(2, 176, 9, 668),
(3, 176, 10, 668),
(4, 176, 11, 668);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Anuncio`
--

CREATE TABLE IF NOT EXISTS `Anuncio` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Anuncio') DEFAULT 'Anuncio',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `LinkInterno` int(11) NOT NULL DEFAULT '0',
  `LinkExterno` varchar(255) DEFAULT NULL,
  `ImagenID` int(11) NOT NULL DEFAULT '0',
  `Titulo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Anuncio`
--

INSERT INTO `Anuncio` (`ID`, `ClassName`, `Created`, `LastEdited`, `LinkInterno`, `LinkExterno`, `ImagenID`, `Titulo`) VALUES
(1, 'Anuncio', '2019-11-07 20:48:47', '2019-11-07 21:14:41', 0, 'assets/DOCUMENTOS-PDF/ley-no-1015-97-lavado-de-dinero.pdf', 720, 'Informe de Gestión'),
(2, 'Anuncio', '2019-11-07 20:49:17', '2019-11-07 21:00:32', 0, 'https://www.infonet.com.py/', 721, 'Infonet'),
(3, 'Anuncio', '2019-11-07 20:49:45', '2019-11-07 21:00:47', 223, NULL, 722, 'Orden de Publicación');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Banner`
--

CREATE TABLE IF NOT EXISTS `Banner` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Banner') DEFAULT 'Banner',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  `Link` int(11) NOT NULL DEFAULT '0',
  `ImagenID` int(11) NOT NULL DEFAULT '0',
  `Descripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Banner`
--

INSERT INTO `Banner` (`ID`, `ClassName`, `Created`, `LastEdited`, `Nombre`, `Link`, `ImagenID`, `Descripcion`) VALUES
(19, 'Banner', '2019-05-07 20:23:30', '2019-05-20 21:06:07', 'CONFIANZA & RESPALDO', 0, 657, 'PARA TUS INVERSIONES');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Carousel`
--

CREATE TABLE IF NOT EXISTS `Carousel` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Carousel') DEFAULT 'Carousel',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Titulo` varchar(255) DEFAULT NULL,
  `Descripcion` varchar(255) DEFAULT NULL,
  `TituloLink` varchar(255) DEFAULT NULL,
  `Link` int(11) NOT NULL DEFAULT '0',
  `ImagenID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Carousel`
--

INSERT INTO `Carousel` (`ID`, `ClassName`, `Created`, `LastEdited`, `Titulo`, `Descripcion`, `TituloLink`, `Link`, `ImagenID`) VALUES
(1, 'Carousel', '2019-11-08 15:29:36', '2019-11-08 15:29:36', 'Dirección Nacional de Propiedad Intelectual', 'Nuestra misión es diseñar, implementar, fomentar y coordinar las políticas públicas de propiedad intelectual, concediendo la protección de los derechos derivados de esta materia a fin de garantizar la seguridad jurídica a sus titulares.', 'Más Noticias', 295, 729),
(2, 'Carousel', '2019-11-08 15:30:35', '2019-11-08 15:30:35', 'Dirección Nacional de Propiedad Intelectual', 'Nuestra misión es diseñar, implementar, fomentar y coordinar las políticas públicas de propiedad intelectual, concediendo la protección de los derechos derivados de esta materia a fin de garantizar la seguridad jurídica a sus titulares.', 'Ver más', 223, 730);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ContactPage`
--

CREATE TABLE IF NOT EXISTS `ContactPage` (
  `ID` int(11) NOT NULL,
  `ImagenID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=224 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ContactPage`
--

INSERT INTO `ContactPage` (`ID`, `ImagenID`) VALUES
(223, 669);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ContactPage_Live`
--

CREATE TABLE IF NOT EXISTS `ContactPage_Live` (
  `ID` int(11) NOT NULL,
  `ImagenID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=224 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ContactPage_Live`
--

INSERT INTO `ContactPage_Live` (`ID`, `ImagenID`) VALUES
(223, 669);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ContactPage_versions`
--

CREATE TABLE IF NOT EXISTS `ContactPage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ImagenID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ContactPage_versions`
--

INSERT INTO `ContactPage_versions` (`ID`, `RecordID`, `Version`, `ImagenID`) VALUES
(1, 223, 1, 0),
(2, 223, 2, 669),
(3, 223, 3, 669),
(4, 223, 4, 669),
(5, 223, 5, 669),
(6, 223, 6, 669),
(7, 223, 7, 669),
(8, 223, 8, 669),
(9, 223, 9, 669),
(10, 223, 10, 669);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `EditableCustomRule`
--

CREATE TABLE IF NOT EXISTS `EditableCustomRule` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('EditableCustomRule') DEFAULT 'EditableCustomRule',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Display` enum('Show','Hide') DEFAULT 'Show',
  `ConditionOption` enum('IsBlank','IsNotBlank','HasValue','ValueNot','ValueLessThan','ValueLessThanEqual','ValueGreaterThan','ValueGreaterThanEqual') DEFAULT 'IsBlank',
  `FieldValue` varchar(50) DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `ConditionFieldID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `EditableCustomRule_Live`
--

CREATE TABLE IF NOT EXISTS `EditableCustomRule_Live` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('EditableCustomRule') DEFAULT 'EditableCustomRule',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Display` enum('Show','Hide') DEFAULT 'Show',
  `ConditionOption` enum('IsBlank','IsNotBlank','HasValue','ValueNot','ValueLessThan','ValueLessThanEqual','ValueGreaterThan','ValueGreaterThanEqual') DEFAULT 'IsBlank',
  `FieldValue` varchar(50) DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `ConditionFieldID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `EditableCustomRule_versions`
--

CREATE TABLE IF NOT EXISTS `EditableCustomRule_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('EditableCustomRule') DEFAULT 'EditableCustomRule',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Display` enum('Show','Hide') DEFAULT 'Show',
  `ConditionOption` enum('IsBlank','IsNotBlank','HasValue','ValueNot','ValueLessThan','ValueLessThanEqual','ValueGreaterThan','ValueGreaterThanEqual') DEFAULT 'IsBlank',
  `FieldValue` varchar(50) DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `ConditionFieldID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `EditableFieldGroup`
--

CREATE TABLE IF NOT EXISTS `EditableFieldGroup` (
  `ID` int(11) NOT NULL,
  `EndID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `EditableFieldGroup_Live`
--

CREATE TABLE IF NOT EXISTS `EditableFieldGroup_Live` (
  `ID` int(11) NOT NULL,
  `EndID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `EditableFieldGroup_versions`
--

CREATE TABLE IF NOT EXISTS `EditableFieldGroup_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `EndID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `EditableFormField`
--

CREATE TABLE IF NOT EXISTS `EditableFormField` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('EditableFormField','EditableCheckbox','EditableCountryDropdownField','EditableDateField','EditableEmailField','EditableFileField','EditableFormHeading','EditableLiteralField','EditableMemberListField','EditableMultipleOptionField','EditableCheckboxGroupField','EditableDropdown','EditableRadioField','EditableNumericField','EditableTextField') DEFAULT 'EditableFormField',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Default` varchar(50) DEFAULT NULL,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `Required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `CustomErrorMessage` varchar(255) DEFAULT NULL,
  `CustomRules` mediumtext,
  `CustomSettings` mediumtext,
  `Migrated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ExtraClass` mediumtext,
  `RightTitle` varchar(255) DEFAULT NULL,
  `ShowOnLoad` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `CustomParameter` varchar(200) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `EditableFormField`
--

INSERT INTO `EditableFormField` (`ID`, `ClassName`, `Created`, `LastEdited`, `Name`, `Title`, `Default`, `Sort`, `Required`, `CustomErrorMessage`, `CustomRules`, `CustomSettings`, `Migrated`, `ExtraClass`, `RightTitle`, `ShowOnLoad`, `Version`, `ParentID`, `CustomParameter`) VALUES
(3, 'EditableNumericField', '2015-09-08 12:21:32', '2015-09-08 12:26:36', 'EditableNumericField3', 'Valor', NULL, 3, 0, NULL, 'a:0:{}', 'a:5:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:8:"MinValue";s:0:"";s:8:"MaxValue";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', 0, NULL, NULL, 1, 12, 17, NULL),
(4, 'EditableEmailField', '2015-09-08 12:21:48', '2015-09-08 12:26:36', 'EditableEmailField4', 'Email', NULL, 4, 1, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', 0, NULL, NULL, 1, 11, 17, NULL),
(5, 'EditableLiteralField', '2015-09-08 12:22:01', '2015-09-08 12:26:36', 'EditableLiteralField5', 'Bloque', NULL, 5, 0, NULL, 'a:0:{}', 'a:2:{s:7:"Content";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', 0, NULL, NULL, 1, 10, 17, NULL),
(6, 'EditableEmailField', '2019-08-27 16:46:15', '2019-08-27 16:46:37', 'EditableEmailField6', NULL, NULL, 1, 0, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', 0, NULL, NULL, 1, 2, 298, NULL),
(7, 'EditableCountryDropdownField', '2019-08-27 16:46:27', '2019-08-27 16:46:37', 'EditableCountryDropdownField7', NULL, NULL, 2, 0, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', 0, NULL, NULL, 1, 2, 298, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `EditableFormField_Live`
--

CREATE TABLE IF NOT EXISTS `EditableFormField_Live` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('EditableFormField','EditableCheckbox','EditableCountryDropdownField','EditableDateField','EditableEmailField','EditableFileField','EditableFormHeading','EditableLiteralField','EditableMemberListField','EditableMultipleOptionField','EditableCheckboxGroupField','EditableDropdown','EditableRadioField','EditableNumericField','EditableTextField') DEFAULT 'EditableFormField',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Default` varchar(50) DEFAULT NULL,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `Required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `CustomErrorMessage` varchar(255) DEFAULT NULL,
  `CustomRules` mediumtext,
  `CustomSettings` mediumtext,
  `Migrated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ExtraClass` mediumtext,
  `RightTitle` varchar(255) DEFAULT NULL,
  `ShowOnLoad` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `CustomParameter` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `EditableFormField_versions`
--

CREATE TABLE IF NOT EXISTS `EditableFormField_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('EditableFormField','EditableCheckbox','EditableCountryDropdownField','EditableDateField','EditableEmailField','EditableFileField','EditableFormHeading','EditableLiteralField','EditableMemberListField','EditableMultipleOptionField','EditableCheckboxGroupField','EditableDropdown','EditableRadioField','EditableNumericField','EditableTextField') DEFAULT 'EditableFormField',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Default` varchar(50) DEFAULT NULL,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `Required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `CustomErrorMessage` varchar(255) DEFAULT NULL,
  `CustomRules` mediumtext,
  `CustomSettings` mediumtext,
  `Migrated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ExtraClass` mediumtext,
  `RightTitle` varchar(255) DEFAULT NULL,
  `ShowOnLoad` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `CustomParameter` varchar(200) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `EditableFormField_versions`
--

INSERT INTO `EditableFormField_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ClassName`, `Created`, `LastEdited`, `Name`, `Title`, `Default`, `Sort`, `Required`, `CustomErrorMessage`, `CustomRules`, `CustomSettings`, `Migrated`, `ExtraClass`, `RightTitle`, `ShowOnLoad`, `ParentID`, `CustomParameter`) VALUES
(3, 2, 1, 0, 1, 0, 'EditableNumericField', '2015-09-08 12:13:34', '2015-09-08 12:13:34', 'EditableNumericField0', NULL, NULL, 2, 0, NULL, NULL, NULL, 0, NULL, NULL, 1, 17, NULL),
(4, 3, 1, 0, 1, 0, 'EditableNumericField', '2015-09-08 12:21:32', '2015-09-08 12:21:32', 'EditableNumericField0', NULL, NULL, 3, 0, NULL, NULL, NULL, 0, NULL, NULL, 1, 17, NULL),
(5, 3, 2, 0, 1, 0, 'EditableNumericField', '2015-09-08 12:21:32', '2015-09-08 12:21:38', 'EditableNumericField3', NULL, NULL, 3, 0, NULL, 'a:0:{}', 'a:5:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:8:"MinValue";s:0:"";s:8:"MaxValue";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', 0, NULL, NULL, 1, 17, NULL),
(6, 4, 1, 0, 1, 0, 'EditableEmailField', '2015-09-08 12:21:48', '2015-09-08 12:21:48', 'EditableEmailField0', NULL, NULL, 4, 0, NULL, NULL, NULL, 0, NULL, NULL, 1, 17, NULL),
(7, 3, 3, 0, 1, 0, 'EditableNumericField', '2015-09-08 12:21:32', '2015-09-08 12:21:50', 'EditableNumericField3', NULL, NULL, 3, 0, NULL, 'a:0:{}', 'a:5:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:8:"MinValue";s:0:"";s:8:"MaxValue";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', 0, NULL, NULL, 1, 17, NULL),
(8, 4, 2, 0, 1, 0, 'EditableEmailField', '2015-09-08 12:21:48', '2015-09-08 12:21:50', 'EditableEmailField4', NULL, NULL, 4, 0, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', 0, NULL, NULL, 1, 17, NULL),
(9, 5, 1, 0, 1, 0, 'EditableLiteralField', '2015-09-08 12:22:01', '2015-09-08 12:22:01', 'EditableLiteralField0', NULL, NULL, 5, 0, NULL, NULL, NULL, 0, NULL, NULL, 1, 17, NULL),
(10, 3, 4, 1, 1, 1, 'EditableNumericField', '2015-09-08 12:21:32', '2015-09-08 12:22:08', 'EditableNumericField3', NULL, NULL, 3, 0, NULL, 'a:0:{}', 'a:5:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:8:"MinValue";s:0:"";s:8:"MaxValue";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', 0, NULL, NULL, 1, 17, NULL),
(11, 4, 3, 1, 1, 1, 'EditableEmailField', '2015-09-08 12:21:48', '2015-09-08 12:22:08', 'EditableEmailField4', NULL, NULL, 4, 0, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', 0, NULL, NULL, 1, 17, NULL),
(12, 5, 2, 1, 1, 1, 'EditableLiteralField', '2015-09-08 12:22:01', '2015-09-08 12:22:08', 'EditableLiteralField5', NULL, NULL, 5, 0, NULL, 'a:0:{}', 'a:2:{s:7:"Content";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', 0, NULL, NULL, 1, 17, NULL),
(13, 3, 5, 0, 1, 0, 'EditableNumericField', '2015-09-08 12:21:32', '2015-09-08 12:22:37', 'EditableNumericField3', NULL, NULL, 3, 0, NULL, 'a:0:{}', 'a:5:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:8:"MinValue";s:0:"";s:8:"MaxValue";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', 0, NULL, NULL, 1, 17, NULL),
(14, 4, 4, 0, 1, 0, 'EditableEmailField', '2015-09-08 12:21:48', '2015-09-08 12:22:37', 'EditableEmailField4', NULL, NULL, 4, 0, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', 0, NULL, NULL, 1, 17, NULL),
(15, 5, 3, 0, 1, 0, 'EditableLiteralField', '2015-09-08 12:22:01', '2015-09-08 12:22:37', 'EditableLiteralField5', NULL, NULL, 5, 0, NULL, 'a:0:{}', 'a:2:{s:7:"Content";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', 0, NULL, NULL, 1, 17, NULL),
(16, 3, 6, 0, 1, 0, 'EditableNumericField', '2015-09-08 12:21:32', '2015-09-08 12:23:08', 'EditableNumericField3', NULL, NULL, 3, 0, NULL, 'a:0:{}', 'a:5:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:8:"MinValue";s:0:"";s:8:"MaxValue";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', 0, NULL, NULL, 1, 17, NULL),
(17, 4, 5, 0, 1, 0, 'EditableEmailField', '2015-09-08 12:21:48', '2015-09-08 12:23:08', 'EditableEmailField4', 'Email', NULL, 4, 1, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:12:"form-control";s:10:"RightTitle";s:5:"Email";s:10:"ShowOnLoad";s:4:"Show";}', 0, NULL, NULL, 1, 17, NULL),
(18, 5, 4, 0, 1, 0, 'EditableLiteralField', '2015-09-08 12:22:01', '2015-09-08 12:23:08', 'EditableLiteralField5', NULL, NULL, 5, 0, NULL, 'a:0:{}', 'a:2:{s:7:"Content";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', 0, NULL, NULL, 1, 17, NULL),
(19, 3, 7, 1, 1, 1, 'EditableNumericField', '2015-09-08 12:21:32', '2015-09-08 12:23:11', 'EditableNumericField3', NULL, NULL, 3, 0, NULL, 'a:0:{}', 'a:5:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:8:"MinValue";s:0:"";s:8:"MaxValue";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', 0, NULL, NULL, 1, 17, NULL),
(20, 4, 6, 1, 1, 1, 'EditableEmailField', '2015-09-08 12:21:48', '2015-09-08 12:23:11', 'EditableEmailField4', 'Email', NULL, 4, 1, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:12:"form-control";s:10:"RightTitle";s:5:"Email";s:10:"ShowOnLoad";s:4:"Show";}', 0, NULL, NULL, 1, 17, NULL),
(21, 5, 5, 1, 1, 1, 'EditableLiteralField', '2015-09-08 12:22:01', '2015-09-08 12:23:11', 'EditableLiteralField5', NULL, NULL, 5, 0, NULL, 'a:0:{}', 'a:2:{s:7:"Content";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', 0, NULL, NULL, 1, 17, NULL),
(22, 3, 8, 1, 1, 1, 'EditableNumericField', '2015-09-08 12:21:32', '2015-09-08 12:23:37', 'EditableNumericField3', NULL, NULL, 3, 0, NULL, 'a:0:{}', 'a:5:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:8:"MinValue";s:0:"";s:8:"MaxValue";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', 0, NULL, NULL, 1, 17, NULL),
(23, 4, 7, 1, 1, 1, 'EditableEmailField', '2015-09-08 12:21:48', '2015-09-08 12:23:37', 'EditableEmailField4', 'Email', NULL, 4, 1, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:12:"form-control";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', 0, NULL, NULL, 1, 17, NULL),
(24, 5, 6, 1, 1, 1, 'EditableLiteralField', '2015-09-08 12:22:01', '2015-09-08 12:23:37', 'EditableLiteralField5', NULL, NULL, 5, 0, NULL, 'a:0:{}', 'a:2:{s:7:"Content";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', 0, NULL, NULL, 1, 17, NULL),
(25, 3, 9, 1, 1, 1, 'EditableNumericField', '2015-09-08 12:21:32', '2015-09-08 12:24:27', 'EditableNumericField3', 'Valor', NULL, 3, 0, NULL, 'a:0:{}', 'a:5:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:8:"MinValue";s:0:"";s:8:"MaxValue";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', 0, NULL, NULL, 1, 17, NULL),
(26, 4, 8, 1, 1, 1, 'EditableEmailField', '2015-09-08 12:21:48', '2015-09-08 12:24:27', 'EditableEmailField4', 'Email', NULL, 4, 1, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:12:"form-control";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', 0, NULL, NULL, 1, 17, NULL),
(27, 5, 7, 1, 1, 1, 'EditableLiteralField', '2015-09-08 12:22:01', '2015-09-08 12:24:27', 'EditableLiteralField5', 'Bloque', NULL, 5, 0, NULL, 'a:0:{}', 'a:2:{s:7:"Content";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', 0, NULL, NULL, 1, 17, NULL),
(28, 3, 10, 1, 1, 1, 'EditableNumericField', '2015-09-08 12:21:32', '2015-09-08 12:25:27', 'EditableNumericField3', 'Valor', NULL, 3, 0, NULL, 'a:0:{}', 'a:5:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:8:"MinValue";s:0:"";s:8:"MaxValue";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', 0, NULL, NULL, 1, 17, NULL),
(29, 4, 9, 1, 1, 1, 'EditableEmailField', '2015-09-08 12:21:48', '2015-09-08 12:25:27', 'EditableEmailField4', 'Email', NULL, 4, 1, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:12:"form-control";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', 0, NULL, NULL, 1, 17, NULL),
(30, 5, 8, 1, 1, 1, 'EditableLiteralField', '2015-09-08 12:22:01', '2015-09-08 12:25:27', 'EditableLiteralField5', 'Bloque', NULL, 5, 0, NULL, 'a:0:{}', 'a:2:{s:7:"Content";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', 0, NULL, NULL, 1, 17, NULL),
(31, 3, 11, 1, 1, 1, 'EditableNumericField', '2015-09-08 12:21:32', '2015-09-08 12:26:02', 'EditableNumericField3', 'Valor', NULL, 3, 0, NULL, 'a:0:{}', 'a:5:{s:10:"ExtraClass";s:12:"form-control";s:10:"RightTitle";s:0:"";s:8:"MinValue";s:0:"";s:8:"MaxValue";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', 0, NULL, NULL, 1, 17, NULL),
(32, 4, 10, 1, 1, 1, 'EditableEmailField', '2015-09-08 12:21:48', '2015-09-08 12:26:02', 'EditableEmailField4', 'Email', NULL, 4, 1, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:12:"form-control";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', 0, NULL, NULL, 1, 17, NULL),
(33, 5, 9, 1, 1, 1, 'EditableLiteralField', '2015-09-08 12:22:01', '2015-09-08 12:26:03', 'EditableLiteralField5', 'Bloque', NULL, 5, 0, NULL, 'a:0:{}', 'a:2:{s:7:"Content";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', 0, NULL, NULL, 1, 17, NULL),
(34, 3, 12, 1, 1, 1, 'EditableNumericField', '2015-09-08 12:21:32', '2015-09-08 12:26:36', 'EditableNumericField3', 'Valor', NULL, 3, 0, NULL, 'a:0:{}', 'a:5:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:8:"MinValue";s:0:"";s:8:"MaxValue";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', 0, NULL, NULL, 1, 17, NULL),
(35, 4, 11, 1, 1, 1, 'EditableEmailField', '2015-09-08 12:21:48', '2015-09-08 12:26:36', 'EditableEmailField4', 'Email', NULL, 4, 1, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', 0, NULL, NULL, 1, 17, NULL),
(36, 5, 10, 1, 1, 1, 'EditableLiteralField', '2015-09-08 12:22:01', '2015-09-08 12:26:36', 'EditableLiteralField5', 'Bloque', NULL, 5, 0, NULL, 'a:0:{}', 'a:2:{s:7:"Content";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', 0, NULL, NULL, 1, 17, NULL),
(37, 6, 1, 0, 1, 0, 'EditableEmailField', '2019-08-27 16:46:15', '2019-08-27 16:46:15', 'EditableEmailField0', NULL, NULL, 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 1, 298, NULL),
(38, 7, 1, 0, 1, 0, 'EditableCountryDropdownField', '2019-08-27 16:46:27', '2019-08-27 16:46:27', 'EditableCountryDropdownField0', NULL, NULL, 2, 0, NULL, NULL, NULL, 0, NULL, NULL, 1, 298, NULL),
(39, 6, 2, 1, 1, 1, 'EditableEmailField', '2019-08-27 16:46:15', '2019-08-27 16:46:37', 'EditableEmailField6', NULL, NULL, 1, 0, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', 0, NULL, NULL, 1, 298, NULL),
(40, 7, 2, 1, 1, 1, 'EditableCountryDropdownField', '2019-08-27 16:46:27', '2019-08-27 16:46:37', 'EditableCountryDropdownField7', NULL, NULL, 2, 0, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', 0, NULL, NULL, 1, 298, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `EditableOption`
--

CREATE TABLE IF NOT EXISTS `EditableOption` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('EditableOption') DEFAULT 'EditableOption',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `EditableOption_Live`
--

CREATE TABLE IF NOT EXISTS `EditableOption_Live` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('EditableOption') DEFAULT 'EditableOption',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `EditableOption_versions`
--

CREATE TABLE IF NOT EXISTS `EditableOption_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('EditableOption') DEFAULT 'EditableOption',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `EnlaceInteres`
--

CREATE TABLE IF NOT EXISTS `EnlaceInteres` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('EnlaceInteres') DEFAULT 'EnlaceInteres',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Titulo` varchar(255) DEFAULT NULL,
  `Link` varchar(255) DEFAULT NULL,
  `ImagenID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `EnlaceInteres`
--

INSERT INTO `EnlaceInteres` (`ID`, `ClassName`, `Created`, `LastEdited`, `Titulo`, `Link`, `ImagenID`) VALUES
(1, 'EnlaceInteres', '2019-11-07 21:45:07', '2019-11-07 21:45:07', 'INTA', 'https://www.inta.org/Programs/Pages/2017LATAMConference_Overview.aspx', 724),
(2, 'EnlaceInteres', '2019-11-07 21:50:49', '2019-11-07 21:50:49', 'Ley 5282', 'http://informacionpublica.paraguay.gov.py/portal/#!/buscar_informacion#busqueda', 725),
(3, 'EnlaceInteres', '2019-11-07 21:51:35', '2019-11-07 21:51:35', 'Denuncias', 'http://www.denuncias.gov.py/ssps/faces/public/denuncia/inicioDenunciaResp.xhtml', 726),
(4, 'EnlaceInteres', '2019-11-07 21:52:02', '2019-11-07 21:52:02', 'Portal Paraguay', 'https://www.paraguay.gov.py/', 727);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `EnlaceUtil`
--

CREATE TABLE IF NOT EXISTS `EnlaceUtil` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('EnlaceUtil') DEFAULT 'EnlaceUtil',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  `Descripcion` varchar(255) DEFAULT NULL,
  `Link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `EnlaceUtil`
--

INSERT INTO `EnlaceUtil` (`ID`, `ClassName`, `Created`, `LastEdited`, `Nombre`, `Descripcion`, `Link`) VALUES
(1, 'EnlaceUtil', '2019-05-21 16:27:15', '2019-05-23 20:58:28', 'Bolsa de Valores & Productos de Asunción S.A.', NULL, 'http://www.bvpasa.com.py/'),
(2, 'EnlaceUtil', '2019-05-21 16:27:48', '2019-05-23 20:59:03', 'Ministerio de Hacienda', NULL, 'https://www.hacienda.gov.py'),
(3, 'EnlaceUtil', '2019-05-21 16:28:07', '2019-05-23 20:59:29', 'Banco Central del Paraguay', NULL, 'https://www.bcp.gov.py/'),
(4, 'EnlaceUtil', '2019-05-21 16:28:46', '2019-05-23 21:00:21', 'Comisión Nacional de Valores', NULL, 'http://www.cnv.gov.py/');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ErrorPage`
--

CREATE TABLE IF NOT EXISTS `ErrorPage` (
  `ID` int(11) NOT NULL,
  `ErrorCode` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ErrorPage`
--

INSERT INTO `ErrorPage` (`ID`, `ErrorCode`) VALUES
(4, 404),
(5, 500);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ErrorPage_Live`
--

CREATE TABLE IF NOT EXISTS `ErrorPage_Live` (
  `ID` int(11) NOT NULL,
  `ErrorCode` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ErrorPage_Live`
--

INSERT INTO `ErrorPage_Live` (`ID`, `ErrorCode`) VALUES
(4, 404),
(5, 500);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ErrorPage_versions`
--

CREATE TABLE IF NOT EXISTS `ErrorPage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ErrorCode` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ErrorPage_versions`
--

INSERT INTO `ErrorPage_versions` (`ID`, `RecordID`, `Version`, `ErrorCode`) VALUES
(4, 4, 1, 404),
(5, 5, 1, 500);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `File`
--

CREATE TABLE IF NOT EXISTS `File` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('File','Folder','Image','Image_Cached') DEFAULT 'File',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Filename` mediumtext,
  `Content` mediumtext,
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=744 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `File`
--

INSERT INTO `File` (`ID`, `ClassName`, `Created`, `LastEdited`, `Name`, `Title`, `Filename`, `Content`, `ShowInSearch`, `ParentID`, `OwnerID`) VALUES
(1, 'Folder', '2015-07-21 23:15:08', '2015-07-21 23:15:08', 'Uploads', 'Uploads', 'assets/Uploads/', NULL, 1, 0, 0),
(2, 'File', '2015-07-21 23:15:08', '2015-07-21 23:15:08', 'error-404.html', 'error-404.html', 'assets/error-404.html', NULL, 1, 0, 0),
(3, 'File', '2015-07-21 23:15:08', '2015-07-21 23:15:08', 'error-500.html', 'error-500.html', 'assets/error-500.html', NULL, 1, 0, 0),
(31, 'Folder', '2015-09-03 16:13:42', '2015-09-03 16:13:42', 'imagenes-banners', 'imagenes-banners', 'assets/imagenes-banners/', NULL, 1, 0, 1),
(506, 'Folder', '2016-11-08 15:01:47', '2016-11-08 15:01:47', 'imagenes-servicios', 'imagenes-servicios', 'assets/imagenes-servicios/', NULL, 1, 0, 1),
(689, 'Image', '2019-06-03 10:44:54', '2019-06-03 10:44:54', 'suit.jpg', 'suit.jpg', 'assets/parallax/suit.jpg', NULL, 1, 687, 1),
(37, 'Folder', '2015-09-11 16:26:21', '2015-09-11 16:26:21', 'fotos-surcursales', 'fotos-surcursales', 'assets/fotos-surcursales/', NULL, 1, 0, 1),
(119, 'Folder', '2015-12-01 13:55:43', '2015-12-01 13:55:43', 'assets', 'assets', 'assets/assets/', NULL, 1, 0, 1),
(120, 'Folder', '2015-12-01 13:55:43', '2015-12-01 13:55:43', 'Uploads', 'Uploads', 'assets/assets/Uploads/', NULL, 1, 119, 1),
(170, 'Folder', '2016-09-27 11:05:58', '2016-09-27 11:05:58', 'imagenes-noticias', 'imagenes-noticias', 'assets/imagenes-noticias/', NULL, 1, 0, 1),
(680, 'Image', '2019-06-03 10:44:54', '2019-06-03 10:44:54', 'Fotolia-72529251-Subscription-Monthly-M.jpg', 'Fotolia-72529251-Subscription-Monthly-M.jpg', 'assets/imagenes-banners/Fotolia-72529251-Subscription-Monthly-M.jpg', NULL, 1, 31, 1),
(679, 'Image', '2019-06-03 10:44:54', '2019-06-03 10:44:54', 'avalon_logo_old.png', 'avalon_logo_old.png', 'assets/assets/Uploads/avalon_logo_old.png', NULL, 1, 120, 1),
(688, 'Image', '2019-06-03 10:44:54', '2019-06-03 10:44:54', 'handshake.jpeg', 'handshake.jpeg', 'assets/parallax/handshake.jpeg', NULL, 1, 687, 1),
(687, 'Folder', '2019-06-03 10:44:54', '2019-06-03 10:44:54', 'parallax', 'parallax', 'assets/parallax/', NULL, 1, 0, 1),
(678, 'Image', '2019-06-03 10:44:54', '2019-06-03 10:44:54', 'avalon_logo.png', 'avalon_logo.png', 'assets/assets/Uploads/avalon_logo.png', NULL, 1, 120, 1),
(686, 'Image', '2019-06-03 10:44:54', '2019-06-03 10:44:54', 'requisitos.jpg', 'requisitos.jpg', 'assets/imagenes-servicios/requisitos.jpg', NULL, 1, 506, 1),
(684, 'Image', '2019-06-03 10:44:54', '2019-06-03 10:44:54', 'como_operar.jpg', 'como_operar.jpg', 'assets/imagenes-servicios/como_operar.jpg', NULL, 1, 506, 1),
(685, 'Image', '2019-06-03 10:44:54', '2019-06-03 10:44:54', 'hagase_cliente.jpg', 'hagase_cliente.jpg', 'assets/imagenes-servicios/hagase_cliente.jpg', NULL, 1, 506, 1),
(677, 'Image', '2019-06-03 10:44:54', '2019-06-03 10:44:54', 'avalon-logo.png', 'avalon-logo.png', 'assets/assets/Uploads/avalon-logo.png', NULL, 1, 120, 1),
(637, 'Image', '2017-07-05 14:17:29', '2017-07-05 14:17:29', 'pdf7.png', 'pdf7', 'assets/Uploads/pdf7.png', NULL, 1, 1, 1),
(643, 'Image', '2019-04-12 21:47:47', '2019-04-12 21:47:47', 'casa-de-bolsa2.jpg', 'casa de bolsa2', 'assets/Uploads/casa-de-bolsa2.jpg', NULL, 1, 1, 1),
(644, 'Image', '2019-04-12 22:14:18', '2019-04-12 22:14:18', 'como-operar2.jpg', 'como operar2', 'assets/Uploads/como-operar2.jpg', NULL, 1, 1, 1),
(645, 'Image', '2019-04-12 22:29:54', '2019-04-12 22:29:54', 'hagase-cliente2.jpg', 'hagase cliente2', 'assets/Uploads/hagase-cliente2.jpg', NULL, 1, 1, 1),
(646, 'Image', '2019-04-12 22:37:36', '2019-04-12 22:37:36', 'requisitos2.jpg', 'requisitos2', 'assets/Uploads/requisitos2.jpg', NULL, 1, 1, 1),
(647, 'Image', '2019-04-15 20:38:59', '2019-04-15 20:38:59', 'prestamos-caros.jpg', 'prestamos caros', 'assets/imagenes-noticias/prestamos-caros.jpg', NULL, 1, 170, 1),
(648, 'Image', '2019-04-15 20:43:39', '2019-04-15 20:43:39', 'reunificacion.jpg', 'reunificacion', 'assets/imagenes-noticias/reunificacion.jpg', NULL, 1, 170, 1),
(649, 'Image', '2019-04-15 20:46:27', '2019-04-15 20:46:27', 'reto.jpg', 'reto', 'assets/imagenes-noticias/reto.jpg', NULL, 1, 170, 1),
(654, 'Image', '2019-04-23 20:06:48', '2019-04-23 20:06:48', 'slide-nuevo2.jpg', 'slide nuevo2', 'assets/imagenes-banners/slide-nuevo2.jpg', NULL, 1, 31, 1),
(682, 'Image', '2019-06-03 10:44:54', '2019-06-03 10:44:54', 'biblioteca.jpg', 'biblioteca.jpg', 'assets/imagenes-biblioteca/biblioteca.jpg', NULL, 1, 681, 1),
(655, 'Image', '2019-04-23 20:07:17', '2019-04-23 20:07:17', 'slide-nuevo3.jpg', 'slide nuevo3', 'assets/imagenes-banners/slide-nuevo3.jpg', NULL, 1, 31, 1),
(681, 'Folder', '2019-06-03 10:44:54', '2019-06-03 10:44:54', 'imagenes-biblioteca', 'imagenes-biblioteca', 'assets/imagenes-biblioteca/', NULL, 1, 0, 1),
(657, 'Image', '2019-05-07 20:23:26', '2019-05-07 20:25:40', 'avalon.jpg', 'avalon', 'assets/imagenes-banners/avalon.jpg', NULL, 1, 31, 1),
(683, 'Image', '2019-06-03 10:44:54', '2019-06-03 10:44:54', 'casa_de_bolsa.jpg', 'casa_de_bolsa.jpg', 'assets/imagenes-servicios/casa_de_bolsa.jpg', NULL, 1, 506, 1),
(660, 'Folder', '2019-05-20 22:09:18', '2019-05-20 22:09:18', 'pdfs-biblioteca', 'pdfs-biblioteca', 'assets/pdfs-biblioteca/', NULL, 1, 0, 1),
(661, 'File', '2019-05-20 22:09:19', '2019-05-20 22:09:19', 'Ley-N-1284-98-de-Mercado-de-Valores.pdf', 'Ley N 1284 98 de Mercado de Valores', 'assets/pdfs-biblioteca/Ley-N-1284-98-de-Mercado-de-Valores.pdf', NULL, 1, 660, 1),
(662, 'File', '2019-05-20 22:34:37', '2019-05-20 22:34:37', 'Ley-N-1284-98-de-Mercado-de-Valores-copy.pdf', 'Ley N 1284 98 de Mercado de Valores copy', 'assets/pdfs-biblioteca/Ley-N-1284-98-de-Mercado-de-Valores-copy.pdf', NULL, 1, 660, 1),
(663, 'File', '2019-05-20 22:35:03', '2019-05-20 22:35:03', 'Ley-N-1284-98-de-Mercado-de-Valores-another-copy.pdf', 'Ley N 1284 98 de Mercado de Valores another copy', 'assets/pdfs-biblioteca/Ley-N-1284-98-de-Mercado-de-Valores-another-copy.pdf', NULL, 1, 660, 1),
(664, 'File', '2019-05-20 22:58:27', '2019-05-20 22:58:27', 'Ley-N-1284-98-de-Mercado-de-Valores-3rd-copy.pdf', 'Ley N 1284 98 de Mercado de Valores 3rd copy', 'assets/pdfs-biblioteca/Ley-N-1284-98-de-Mercado-de-Valores-3rd-copy.pdf', NULL, 1, 660, 1),
(665, 'Image', '2019-05-21 21:00:26', '2019-05-29 16:21:08', 'avalon.jpg', 'avalon', 'assets/Uploads/avalon.jpg', NULL, 1, 1, 1),
(666, 'Image', '2019-05-21 21:00:33', '2019-05-21 21:00:33', 'suit.jpg', 'suit', 'assets/Uploads/suit.jpg', NULL, 1, 1, 1),
(667, 'Image', '2019-05-22 17:09:44', '2019-05-22 17:09:44', 'avalon-copy.jpg', 'avalon copy', 'assets/Uploads/avalon-copy.jpg', NULL, 1, 1, 1),
(668, 'Image', '2019-05-22 20:32:59', '2019-05-24 20:42:10', 'Corporate-Handshake-e1536241251147.jpeg', 'Corporate Handshake e1536241251147', 'assets/Uploads/Corporate-Handshake-e1536241251147.jpeg', NULL, 1, 1, 1),
(669, 'Image', '2019-05-22 22:35:53', '2019-05-22 22:35:53', 'Create-a-Business-That-Inspires-Change-in-the-World-and-in-Your-Pocket.jpg', 'Create a Business That Inspires Change in the World and in Your Pocket', 'assets/Uploads/Create-a-Business-That-Inspires-Change-in-the-World-and-in-Your-Pocket.jpg', NULL, 1, 1, 1),
(670, 'Image', '2019-05-23 16:39:24', '2019-05-23 16:39:24', 'iStock-488536936-1024x683.jpg', 'iStock 488536936 1024x683', 'assets/Uploads/iStock-488536936-1024x683.jpg', NULL, 1, 1, 1),
(671, 'Image', '2019-05-23 16:54:58', '2019-05-23 16:54:58', 'LOGO-AVALON.pdf', 'LOGO AVALON', 'assets/Uploads/LOGO-AVALON.pdf', NULL, 1, 1, 1),
(672, 'Image', '2019-05-23 16:55:43', '2019-05-23 16:55:43', 'iStock-488536936-1024x683-copy.jpg', 'iStock 488536936 1024x683 copy', 'assets/Uploads/iStock-488536936-1024x683-copy.jpg', NULL, 1, 1, 1),
(673, 'File', '2019-05-27 23:33:02', '2019-05-27 23:33:29', 'Ley-N-1284-98-de-Mercado-de-Valores.pdf', 'Ley N 1284 98 de Mercado de Valores', 'assets/Uploads/Ley-N-1284-98-de-Mercado-de-Valores.pdf', NULL, 1, 1, 1),
(674, 'Image', '2019-05-31 17:11:03', '2019-05-31 17:11:03', 'avalon-logo.png', 'avalon logo', 'assets/fotos-surcursales/avalon-logo.png', NULL, 1, 37, 1),
(675, 'Image', '2019-06-03 10:44:54', '2019-06-03 10:44:54', 'avalon-logo.png', 'avalon-logo.png', 'assets/Uploads/avalon-logo.png', NULL, 1, 1, 1),
(676, 'Image', '2019-06-03 10:44:54', '2019-06-03 10:44:54', 'pdf8.png', 'pdf8.png', 'assets/Uploads/pdf8.png', NULL, 1, 1, 1),
(690, 'Folder', '2019-06-04 22:40:54', '2019-06-04 22:40:54', 'imagenes-productos', 'imagenes-productos', 'assets/imagenes-productos/', NULL, 1, 0, 1),
(700, 'Folder', '2019-06-05 16:16:25', '2019-06-05 16:16:25', 'imagen-pdf-articulos', 'imagen-pdf-articulos', 'assets/imagen-pdf-articulos/', NULL, 1, 0, 1),
(701, 'File', '2019-06-05 16:16:25', '2019-06-05 16:16:25', 'Ley-N-1284-98-de-Mercado-de-Valores.pdf', 'Ley-N-1284-98-de-Mercado-de-Valores.pdf', 'assets/imagen-pdf-articulos/Ley-N-1284-98-de-Mercado-de-Valores.pdf', NULL, 1, 700, 1),
(702, 'Image', '2019-06-05 18:39:38', '2019-06-05 18:39:38', 'BBVA.png', 'BBVA', 'assets/imagenes-productos/BBVA.png', NULL, 1, 690, 1),
(703, 'Image', '2019-06-07 11:49:38', '2019-06-07 11:49:38', 'thumb-images-clientes-ITAU.png', 'thumb images clientes ITAU', 'assets/imagenes-productos/thumb-images-clientes-ITAU.png', NULL, 1, 690, 1),
(704, 'Image', '2019-06-07 11:55:59', '2019-06-07 11:55:59', 'thumb-images-clientes-BBVA.png', 'thumb images clientes BBVA', 'assets/imagenes-productos/thumb-images-clientes-BBVA.png', NULL, 1, 690, 1),
(705, 'Image', '2019-06-07 11:58:35', '2019-06-07 11:58:35', 'thumb-images-clientes-BancoRegional201.jpg', 'thumb images clientes BancoRegional201', 'assets/imagenes-productos/thumb-images-clientes-BancoRegional201.jpg', NULL, 1, 690, 1),
(706, 'Image', '2019-06-24 11:27:48', '2019-06-24 11:27:48', 'avalon-logo-old.png', 'avalon-logo-old.png', 'assets/Uploads/avalon-logo-old.png', NULL, 1, 1, 1),
(707, 'Image', '2019-06-24 11:27:48', '2019-06-24 11:27:48', 'prestamos-caros.jpg', 'prestamos-caros.jpg', 'assets/Uploads/prestamos-caros.jpg', NULL, 1, 1, 1),
(708, 'Image', '2019-06-24 11:27:48', '2019-06-24 11:27:48', 'Dekalpar.png', 'Dekalpar.png', 'assets/imagenes-productos/Dekalpar.png', NULL, 1, 690, 1),
(709, 'Image', '2019-06-24 11:27:48', '2019-06-24 11:27:48', 'Regional.jpg', 'Regional.jpg', 'assets/imagenes-productos/Regional.jpg', NULL, 1, 690, 1),
(710, 'File', '2019-06-24 11:27:48', '2019-06-24 11:27:48', 'Res-CNV-N-806-04-Que-complementa-la-Res-N-763-04-en-lo-que-respecta-a-la-Emision-de-Titulos-de-Deudas.pdf', 'Res-CNV-N-806-04-Que-complementa-la-Res-N-763-04-en-lo-que-respecta-a-la-Emision-de-Titulos-de-Deudas.pdf', 'assets/pdfs-biblioteca/Res-CNV-N-806-04-Que-complementa-la-Res-N-763-04-en-lo-que-respecta-a-la-Emision-de-Titulos-de-Deudas.pdf', NULL, 1, 660, 1),
(711, 'Image', '2019-06-25 14:12:53', '2019-06-25 14:12:53', 'handshake-4011416-1920.jpg', 'handshake 4011416 1920', 'assets/imagenes-noticias/handshake-4011416-1920.jpg', NULL, 1, 170, 1),
(712, 'Image', '2019-06-25 14:13:25', '2019-11-07 21:17:22', 'meringue-888338-1920.jpg', 'meringue 888338 1920', 'assets/imagenes-noticias/meringue-888338-1920.jpg', NULL, 1, 170, 6),
(713, 'Folder', '2019-06-26 12:14:57', '2019-06-26 12:14:57', 'DOCUMENTOS-PDF', 'DOCUMENTOS-PDF', 'assets/DOCUMENTOS-PDF/', NULL, 1, 0, 1),
(714, 'File', '2019-06-26 12:15:23', '2019-06-26 12:15:23', 'ley-no-1015-97-lavado-de-dinero.pdf', 'ley no 1015 97 lavado de dinero', 'assets/DOCUMENTOS-PDF/ley-no-1015-97-lavado-de-dinero.pdf', NULL, 1, 713, 1),
(715, 'File', '2019-06-26 12:15:24', '2019-06-26 12:15:24', 'ley-no-5810-17.pdf', 'ley no 5810 17', 'assets/DOCUMENTOS-PDF/ley-no-5810-17.pdf', NULL, 1, 713, 1),
(716, 'File', '2019-06-26 12:15:25', '2019-06-26 12:15:25', 'ley-no-1163-97-que-regula-el-establecimiento-de-bolsas-de-productos.pdf', 'ley no 1163 97 que regula el establecimiento de bolsas de productos', 'assets/DOCUMENTOS-PDF/ley-no-1163-97-que-regula-el-establecimiento-de-bolsas-de-productos.pdf', NULL, 1, 713, 1),
(717, 'File', '2019-06-26 12:15:25', '2019-06-26 12:15:25', 'Requisitos-Generales-de-Identificacion-de-Clientes.pdf', 'Requisitos Generales de Identificacion de Clientes', 'assets/DOCUMENTOS-PDF/Requisitos-Generales-de-Identificacion-de-Clientes.pdf', NULL, 1, 713, 1),
(718, 'File', '2019-06-26 12:47:31', '2019-06-26 12:47:31', 'ley-no-5810-17.pdf', 'ley no 5810 17', 'assets/pdfs-biblioteca/ley-no-5810-17.pdf', NULL, 1, 660, 1),
(719, 'Folder', '2019-11-07 20:48:44', '2019-11-07 20:48:44', 'imagenes-anuncio', 'imagenes-anuncio', 'assets/imagenes-anuncio/', NULL, 1, 0, 1),
(720, 'Image', '2019-11-07 20:48:45', '2019-11-07 20:48:45', 'informe-gestion.png', 'informe gestion', 'assets/imagenes-anuncio/informe-gestion.png', NULL, 1, 719, 1),
(721, 'Image', '2019-11-07 20:49:15', '2019-11-07 20:49:15', 'pago-facil.png', 'pago facil', 'assets/imagenes-anuncio/pago-facil.png', NULL, 1, 719, 1),
(722, 'Image', '2019-11-07 20:49:41', '2019-11-07 20:49:41', 'orden-publicacion.png', 'orden publicacion', 'assets/imagenes-anuncio/orden-publicacion.png', NULL, 1, 719, 1),
(723, 'Folder', '2019-11-07 21:45:05', '2019-11-07 21:45:05', 'imagenes-enlace-interes', 'imagenes-enlace-interes', 'assets/imagenes-enlace-interes/', NULL, 1, 0, 1),
(724, 'Image', '2019-11-07 21:45:05', '2019-11-07 21:45:05', 'inta.png', 'inta', 'assets/imagenes-enlace-interes/inta.png', NULL, 1, 723, 1),
(725, 'Image', '2019-11-07 21:50:48', '2019-11-07 21:50:48', 'ley5280.png', 'ley5280', 'assets/imagenes-enlace-interes/ley5280.png', NULL, 1, 723, 1),
(726, 'Image', '2019-11-07 21:51:34', '2019-11-07 21:51:34', 'denunciacorrupcion.png', 'denunciacorrupcion', 'assets/imagenes-enlace-interes/denunciacorrupcion.png', NULL, 1, 723, 1),
(727, 'Image', '2019-11-07 21:52:01', '2019-11-07 21:52:01', 'portalparaguay.png', 'portalparaguay', 'assets/imagenes-enlace-interes/portalparaguay.png', NULL, 1, 723, 1),
(728, 'Folder', '2019-11-08 15:29:04', '2019-11-08 15:29:04', 'imagenes-carousel', 'imagenes-carousel', 'assets/imagenes-carousel/', NULL, 1, 0, 1),
(729, 'Image', '2019-11-08 15:29:04', '2019-11-08 15:29:04', 'portada-mesa.png', 'portada mesa', 'assets/imagenes-carousel/portada-mesa.png', NULL, 1, 728, 1),
(730, 'Image', '2019-11-08 15:30:30', '2019-11-08 15:30:30', 'patente.jpg', 'patente', 'assets/imagenes-carousel/patente.jpg', NULL, 1, 728, 1),
(731, 'Image', '2019-11-08 21:28:04', '2019-11-08 21:28:04', 'institucional.jpg', 'institucional', 'assets/Uploads/institucional.jpg', NULL, 1, 1, 1),
(732, 'Image', '2019-11-10 22:47:36', '2019-11-10 22:47:36', 'dautor2.jpg', 'dautor2', 'assets/Uploads/dautor2.jpg', NULL, 1, 1, 1),
(733, 'Folder', '2019-11-10 23:05:48', '2019-11-10 23:05:48', 'imagenes-tarjeta', 'imagenes-tarjeta', 'assets/imagenes-tarjeta/', NULL, 1, 0, 1),
(734, 'Image', '2019-11-10 23:05:48', '2019-11-10 23:47:03', 'icon-registropoder.png', 'icon registropoder', 'assets/imagenes-tarjeta/icon-registropoder.png', NULL, 1, 733, 1),
(735, 'Image', '2019-11-10 23:07:30', '2019-11-10 23:07:30', 'icon-industriacreativa.png', 'icon industriacreativa', 'assets/imagenes-tarjeta/icon-industriacreativa.png', NULL, 1, 733, 1),
(736, 'Image', '2019-11-10 23:08:25', '2019-11-10 23:08:25', 'icon-personas.png', 'icon personas', 'assets/imagenes-tarjeta/icon-personas.png', NULL, 1, 733, 1),
(737, 'Image', '2019-11-10 23:08:59', '2019-11-10 23:08:59', 'icon-circulares.png', 'icon circulares', 'assets/imagenes-tarjeta/icon-circulares.png', NULL, 1, 733, 1),
(738, 'Image', '2019-11-10 23:35:05', '2019-11-10 23:35:05', 'marcas2.jpg', 'marcas2', 'assets/Uploads/marcas2.jpg', NULL, 1, 1, 1),
(739, 'Image', '2019-11-10 23:35:37', '2019-11-10 23:45:45', 'icon-info.png', 'icon info', 'assets/imagenes-tarjeta/icon-info.png', NULL, 1, 733, 1),
(740, 'Image', '2019-11-10 23:38:25', '2019-11-10 23:47:28', 'icon-consulta.png', 'icon consulta', 'assets/imagenes-tarjeta/icon-consulta.png', NULL, 1, 733, 1),
(741, 'Image', '2019-11-10 23:38:49', '2019-11-10 23:38:49', 'icon-niza.png', 'icon niza', 'assets/imagenes-tarjeta/icon-niza.png', NULL, 1, 733, 1),
(742, 'Image', '2019-11-10 23:39:20', '2019-11-10 23:47:50', 'icon-boletin.png', 'icon boletin', 'assets/imagenes-tarjeta/icon-boletin.png', NULL, 1, 733, 1),
(743, 'Image', '2019-11-10 23:44:23', '2019-11-10 23:44:23', 'patente.jpg', 'patente', 'assets/Uploads/patente.jpg', NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `GeneralPage`
--

CREATE TABLE IF NOT EXISTS `GeneralPage` (
  `ID` int(11) NOT NULL,
  `ImagenID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=298 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `GeneralPage`
--

INSERT INTO `GeneralPage` (`ID`, `ImagenID`) VALUES
(244, 665),
(248, 665),
(249, 665),
(250, 665),
(251, 665),
(252, 665),
(253, 665),
(254, 665),
(263, 667),
(264, 667),
(276, 667),
(266, 667),
(267, 667),
(268, 667),
(269, 667),
(270, 667),
(271, 667),
(272, 667),
(273, 667),
(274, 667),
(275, 667),
(284, 665),
(286, 665),
(287, 665),
(288, 665),
(289, 667),
(290, 665),
(291, 706),
(295, 665);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `GeneralPage_Live`
--

CREATE TABLE IF NOT EXISTS `GeneralPage_Live` (
  `ID` int(11) NOT NULL,
  `ImagenID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=298 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `GeneralPage_Live`
--

INSERT INTO `GeneralPage_Live` (`ID`, `ImagenID`) VALUES
(244, 665),
(248, 665),
(249, 665),
(250, 665),
(251, 665),
(252, 665),
(253, 665),
(254, 665),
(263, 667),
(264, 667),
(276, 667),
(266, 667),
(267, 667),
(268, 667),
(269, 667),
(270, 667),
(271, 667),
(272, 667),
(273, 667),
(274, 667),
(275, 667),
(284, 665),
(286, 665),
(288, 665),
(287, 665),
(289, 667),
(290, 665),
(291, 706),
(295, 665);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `GeneralPage_versions`
--

CREATE TABLE IF NOT EXISTS `GeneralPage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ImagenID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=161 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `GeneralPage_versions`
--

INSERT INTO `GeneralPage_versions` (`ID`, `RecordID`, `Version`, `ImagenID`) VALUES
(1, 221, 1, 0),
(2, 221, 2, 667),
(3, 222, 1, 0),
(4, 221, 3, 667),
(5, 239, 1, 0),
(6, 239, 2, 665),
(7, 239, 3, 665),
(8, 239, 4, 665),
(9, 240, 1, 0),
(10, 240, 2, 665),
(11, 241, 1, 0),
(12, 241, 2, 665),
(13, 242, 1, 0),
(14, 242, 2, 665),
(15, 244, 1, 0),
(16, 244, 2, 665),
(17, 244, 3, 665),
(18, 244, 4, 665),
(19, 242, 3, 665),
(20, 242, 4, 665),
(21, 242, 5, 665),
(22, 242, 6, 665),
(23, 248, 1, 665),
(24, 248, 2, 665),
(25, 248, 3, 665),
(26, 248, 4, 665),
(27, 248, 5, 665),
(28, 248, 6, 665),
(29, 248, 7, 665),
(30, 248, 8, 665),
(31, 248, 9, 665),
(32, 248, 10, 665),
(33, 248, 11, 665),
(34, 248, 12, 665),
(35, 249, 1, 665),
(36, 249, 2, 665),
(37, 249, 3, 665),
(38, 249, 4, 665),
(39, 250, 1, 665),
(40, 251, 1, 665),
(41, 252, 1, 665),
(42, 253, 1, 665),
(43, 254, 1, 665),
(44, 250, 2, 665),
(45, 251, 2, 665),
(46, 250, 3, 665),
(47, 252, 2, 665),
(48, 253, 2, 665),
(49, 254, 2, 665),
(50, 250, 4, 665),
(51, 250, 5, 665),
(52, 251, 3, 665),
(53, 251, 4, 665),
(54, 252, 3, 665),
(55, 252, 4, 665),
(56, 253, 3, 665),
(57, 253, 4, 665),
(58, 254, 3, 665),
(59, 254, 4, 665),
(60, 239, 5, 665),
(61, 263, 1, 667),
(62, 263, 2, 667),
(63, 263, 3, 667),
(64, 263, 4, 667),
(65, 264, 1, 667),
(66, 265, 1, 667),
(67, 266, 1, 667),
(68, 267, 1, 667),
(69, 268, 1, 667),
(70, 269, 1, 667),
(71, 270, 1, 667),
(72, 271, 1, 667),
(73, 272, 1, 667),
(74, 273, 1, 667),
(75, 273, 2, 667),
(76, 273, 3, 667),
(77, 273, 4, 667),
(78, 273, 5, 667),
(79, 274, 1, 667),
(80, 263, 5, 667),
(81, 264, 2, 667),
(82, 265, 2, 667),
(83, 266, 2, 667),
(84, 267, 2, 667),
(85, 268, 2, 667),
(86, 269, 2, 667),
(87, 270, 2, 667),
(88, 271, 2, 667),
(89, 272, 2, 667),
(90, 273, 6, 667),
(91, 274, 2, 667),
(92, 275, 1, 667),
(93, 263, 6, 667),
(94, 264, 3, 667),
(95, 265, 3, 667),
(96, 266, 3, 667),
(97, 267, 3, 667),
(98, 268, 3, 667),
(99, 268, 4, 667),
(100, 269, 3, 667),
(101, 270, 3, 667),
(102, 271, 3, 667),
(103, 272, 3, 667),
(104, 273, 7, 667),
(105, 274, 3, 667),
(106, 275, 2, 667),
(107, 275, 3, 667),
(108, 276, 1, 667),
(109, 276, 2, 667),
(110, 276, 3, 667),
(111, 267, 4, 667),
(112, 284, 1, 665),
(113, 284, 2, 665),
(114, 286, 1, 0),
(115, 244, 5, 665),
(116, 286, 2, 667),
(117, 286, 3, 667),
(118, 287, 1, 0),
(119, 288, 1, 665),
(120, 288, 2, 665),
(121, 288, 3, 665),
(122, 287, 2, 0),
(123, 287, 3, 667),
(124, 287, 4, 667),
(125, 289, 1, 667),
(126, 289, 2, 667),
(127, 290, 1, 667),
(128, 290, 2, 667),
(129, 290, 3, 667),
(130, 290, 4, 667),
(131, 290, 5, 667),
(132, 290, 6, 667),
(133, 290, 7, 667),
(134, 291, 1, 667),
(135, 291, 2, 667),
(136, 293, 1, 665),
(137, 295, 1, 665),
(138, 295, 2, 665),
(139, 295, 3, 665),
(140, 244, 6, 665),
(141, 296, 1, 665),
(142, 297, 1, 665),
(143, 296, 2, 665),
(144, 296, 3, 665),
(145, 296, 4, 665),
(146, 296, 5, 665),
(147, 296, 6, 665),
(148, 286, 4, 665),
(149, 287, 5, 665),
(150, 290, 8, 665),
(151, 291, 3, 706),
(152, 244, 7, 665),
(153, 244, 8, 665),
(154, 244, 9, 665),
(155, 244, 10, 665),
(156, 244, 11, 665),
(157, 244, 12, 665),
(158, 244, 13, 665),
(159, 244, 14, 665),
(160, 244, 15, 665);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Group`
--

CREATE TABLE IF NOT EXISTS `Group` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Group') DEFAULT 'Group',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Description` mediumtext,
  `Code` varchar(255) DEFAULT NULL,
  `Locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HtmlEditorConfig` mediumtext,
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Group`
--

INSERT INTO `Group` (`ID`, `ClassName`, `Created`, `LastEdited`, `Title`, `Description`, `Code`, `Locked`, `Sort`, `HtmlEditorConfig`, `ParentID`) VALUES
(1, 'Group', '2015-07-21 17:15:04', '2019-09-06 21:46:26', 'Editores', NULL, 'content-authors', 0, 1, NULL, 0),
(2, 'Group', '2015-07-21 17:15:05', '2019-09-06 21:42:03', 'Administradores', NULL, 'administrators', 0, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Group_Members`
--

CREATE TABLE IF NOT EXISTS `Group_Members` (
  `ID` int(11) NOT NULL,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Group_Members`
--

INSERT INTO `Group_Members` (`ID`, `GroupID`, `MemberID`) VALUES
(1, 2, 1),
(2, 2, 2),
(5, 1, 5),
(6, 2, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Group_Roles`
--

CREATE TABLE IF NOT EXISTS `Group_Roles` (
  `ID` int(11) NOT NULL,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `PermissionRoleID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Group_Roles`
--

INSERT INTO `Group_Roles` (`ID`, `GroupID`, `PermissionRoleID`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Institucional`
--

CREATE TABLE IF NOT EXISTS `Institucional` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Institucional') DEFAULT 'Institucional',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Titulo` varchar(255) DEFAULT NULL,
  `LinkInterno` int(11) NOT NULL DEFAULT '0',
  `LinkExterno` varchar(255) DEFAULT NULL,
  `PaginaID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Institucional`
--

INSERT INTO `Institucional` (`ID`, `ClassName`, `Created`, `LastEdited`, `Titulo`, `LinkInterno`, `LinkExterno`, `PaginaID`) VALUES
(1, 'Institucional', '2019-11-08 21:29:16', '2019-11-08 21:29:16', 'Plan Nacional de Propiedad Intelectual', 223, NULL, 301),
(2, 'Institucional', '2019-11-08 21:29:54', '2019-11-08 21:29:54', 'Plan Estratégico Institucional', 224, NULL, 301),
(3, 'Institucional', '2019-11-08 21:30:22', '2019-11-08 21:30:22', 'MECIP', 295, NULL, 301),
(4, 'Institucional', '2019-11-08 21:30:45', '2019-11-08 21:30:45', 'Misión, visión y funciones de la DINAPI', 224, NULL, 301),
(5, 'Institucional', '2019-11-08 21:46:47', '2019-11-08 21:46:47', 'Organigrama', 0, NULL, 301),
(6, 'Institucional', '2019-11-08 21:47:05', '2019-11-08 21:47:05', 'Autoridades', 0, NULL, 301),
(7, 'Institucional', '2019-11-08 21:47:21', '2019-11-08 21:47:21', 'Marco Normativo de la Propiedad Intelectual', 0, NULL, 301),
(8, 'Institucional', '2019-11-08 21:47:47', '2019-11-08 21:47:47', 'Convenios', 0, NULL, 301),
(9, 'Institucional', '2019-11-08 21:48:00', '2019-11-08 21:48:00', 'Programas y Proyectos', 0, NULL, 301),
(10, 'Institucional', '2019-11-08 21:48:15', '2019-11-08 21:48:15', 'Acceso a la Información Pública', 0, NULL, 301),
(11, 'Institucional', '2019-11-08 21:48:33', '2019-11-08 21:48:33', 'Webmail', 0, NULL, 301),
(12, 'Institucional', '2019-11-08 21:48:50', '2019-11-08 21:48:50', 'Concursos', 0, NULL, 301);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `InstitucionalPage`
--

CREATE TABLE IF NOT EXISTS `InstitucionalPage` (
  `ID` int(11) NOT NULL,
  `Titulo` varchar(255) DEFAULT NULL,
  `ImagenID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=302 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `InstitucionalPage`
--

INSERT INTO `InstitucionalPage` (`ID`, `Titulo`, `ImagenID`) VALUES
(301, 'INSTITUCIONAL', 731);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `InstitucionalPage_Live`
--

CREATE TABLE IF NOT EXISTS `InstitucionalPage_Live` (
  `ID` int(11) NOT NULL,
  `Titulo` varchar(255) DEFAULT NULL,
  `ImagenID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=302 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `InstitucionalPage_Live`
--

INSERT INTO `InstitucionalPage_Live` (`ID`, `Titulo`, `ImagenID`) VALUES
(301, 'INSTITUCIONAL', 731);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `InstitucionalPage_versions`
--

CREATE TABLE IF NOT EXISTS `InstitucionalPage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Titulo` varchar(255) DEFAULT NULL,
  `ImagenID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `InstitucionalPage_versions`
--

INSERT INTO `InstitucionalPage_versions` (`ID`, `RecordID`, `Version`, `Titulo`, `ImagenID`) VALUES
(1, 301, 1, NULL, 0),
(2, 301, 2, 'INSTITUCIONAL', 731),
(3, 301, 3, 'INSTITUCIONAL', 731),
(4, 301, 4, 'INSTITUCIONAL', 731);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `LoginAttempt`
--

CREATE TABLE IF NOT EXISTS `LoginAttempt` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('LoginAttempt') DEFAULT 'LoginAttempt',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Status` enum('Success','Failure') DEFAULT 'Success',
  `IP` varchar(255) DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Member`
--

CREATE TABLE IF NOT EXISTS `Member` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Member') DEFAULT 'Member',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `Surname` varchar(50) DEFAULT NULL,
  `Email` varchar(254) DEFAULT NULL,
  `TempIDHash` varchar(160) DEFAULT NULL,
  `TempIDExpired` datetime DEFAULT NULL,
  `Password` varchar(160) DEFAULT NULL,
  `RememberLoginToken` varchar(160) DEFAULT NULL,
  `NumVisit` int(11) NOT NULL DEFAULT '0',
  `LastVisited` datetime DEFAULT NULL,
  `AutoLoginHash` varchar(160) DEFAULT NULL,
  `AutoLoginExpired` datetime DEFAULT NULL,
  `PasswordEncryption` varchar(50) DEFAULT NULL,
  `Salt` varchar(50) DEFAULT NULL,
  `PasswordExpiry` date DEFAULT NULL,
  `LockedOutUntil` datetime DEFAULT NULL,
  `Locale` varchar(6) DEFAULT NULL,
  `FailedLoginCount` int(11) NOT NULL DEFAULT '0',
  `DateFormat` varchar(30) DEFAULT NULL,
  `TimeFormat` varchar(30) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Member`
--

INSERT INTO `Member` (`ID`, `ClassName`, `Created`, `LastEdited`, `FirstName`, `Surname`, `Email`, `TempIDHash`, `TempIDExpired`, `Password`, `RememberLoginToken`, `NumVisit`, `LastVisited`, `AutoLoginHash`, `AutoLoginExpired`, `PasswordEncryption`, `Salt`, `PasswordExpiry`, `LockedOutUntil`, `Locale`, `FailedLoginCount`, `DateFormat`, `TimeFormat`) VALUES
(1, 'Member', '2015-07-21 17:15:08', '2019-11-10 22:18:28', 'Administrador por defecto', NULL, 'admin', 'b79932f3ce49fc559bb0b6eb73176ab8fbfd1b8f', '2019-11-13 22:18:28', '$2y$10$684be06a41ff4d4fcdbc9Oz0X.H0r/czaafPEU5AYG6rvCBylBCbK', NULL, 434, '2019-11-10 19:47:51', NULL, NULL, 'blowfish', '10$684be06a41ff4d4fcdbc9c', NULL, NULL, 'es_ES', 0, 'dd/MM/yyyy', 'HH:mm:ss'),
(5, 'Member', '2019-09-06 21:28:33', '2019-09-06 21:38:44', 'Marcos', 'Peralta', 'mrcperalta.mp@gmail.com', '601df3b565ab91a139d7c5ccc309a79e38a6ca24', '2019-09-09 21:38:44', '$2y$10$4804d7d8617ebb2d0e279OpNLZGVeRY0EuGuyTpbjF3/FN.hf6hou', NULL, 3, '2019-09-06 17:08:02', NULL, NULL, 'blowfish', '10$4804d7d8617ebb2d0e279a', NULL, NULL, 'es_ES', 0, 'dd/MM/yyyy', 'HH:mm:ss'),
(6, 'Member', '2019-09-06 21:33:02', '2019-09-06 21:38:40', 'Prueba', 'Prueba', 'prueba@gmail.com', 'a75491e1db6b48da6b64433943cfb764d76e1cbb', '2019-09-09 21:37:28', '$2y$10$4905aff3d5e3a713766fdeWIup3mypIWMTWfDlYduw.fer7Uvb2my', NULL, 2, '2019-09-06 15:38:40', NULL, NULL, 'blowfish', '10$4905aff3d5e3a713766fdf', NULL, NULL, 'es_ES', 0, 'dd/MM/yyyy', 'HH:mm:ss');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MemberPassword`
--

CREATE TABLE IF NOT EXISTS `MemberPassword` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('MemberPassword') DEFAULT 'MemberPassword',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Password` varchar(160) DEFAULT NULL,
  `Salt` varchar(50) DEFAULT NULL,
  `PasswordEncryption` varchar(50) DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `MemberPassword`
--

INSERT INTO `MemberPassword` (`ID`, `ClassName`, `Created`, `LastEdited`, `Password`, `Salt`, `PasswordEncryption`, `MemberID`) VALUES
(1, 'MemberPassword', '2015-07-21 17:15:08', '2015-07-21 17:15:08', '$2y$10$684be06a41ff4d4fcdbc9OrrGr8OUnpdapKd1bAY6fkthnZ5wl.q2', '10$684be06a41ff4d4fcdbc9c', 'blowfish', 1),
(2, 'MemberPassword', '2016-11-18 09:43:36', '2016-11-18 09:43:36', '$2y$10$ae602ba7976911338f611eigkuk4E/gErPQNTNwyqOk8NBxLw3b3W', '10$ae602ba7976911338f611f', 'blowfish', 2),
(3, 'MemberPassword', '2016-11-18 09:50:36', '2016-11-18 09:50:36', '$2y$10$386767eac48e72d7ee8d5OzVTOMFYxCKVla6jWG.V9fzr50do0qum', '10$386767eac48e72d7ee8d5d', 'blowfish', 3),
(4, 'MemberPassword', '2016-11-30 14:04:07', '2016-11-30 14:04:07', '$2y$10$684be06a41ff4d4fcdbc9ODYgF/hz/0gKrF3mYhNGZUaDiPkhgyvK', '10$684be06a41ff4d4fcdbc9c', 'blowfish', 1),
(5, 'MemberPassword', '2016-12-05 11:43:11', '2016-12-05 11:43:11', '$2y$10$a26315e016984e183449auydPqKAiWVhSXCuuhhIUiUjAuRv/Kpda', '10$a26315e016984e183449a7', 'blowfish', 4),
(6, 'MemberPassword', '2019-05-31 17:19:40', '2019-05-31 17:19:40', '$2y$10$684be06a41ff4d4fcdbc9Oz0X.H0r/czaafPEU5AYG6rvCBylBCbK', '10$684be06a41ff4d4fcdbc9c', 'blowfish', 1),
(7, 'MemberPassword', '2019-09-06 21:28:33', '2019-09-06 21:28:33', '$2y$10$4804d7d8617ebb2d0e279OpNLZGVeRY0EuGuyTpbjF3/FN.hf6hou', '10$4804d7d8617ebb2d0e279a', 'blowfish', 5),
(8, 'MemberPassword', '2019-09-06 21:33:02', '2019-09-06 21:33:02', '$2y$10$4905aff3d5e3a713766fdeWIup3mypIWMTWfDlYduw.fer7Uvb2my', '10$4905aff3d5e3a713766fdf', 'blowfish', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MensajeContacto`
--

CREATE TABLE IF NOT EXISTS `MensajeContacto` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('MensajeContacto') DEFAULT 'MensajeContacto',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Mensaje` mediumtext,
  `Telefono` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `MensajeContacto`
--

INSERT INTO `MensajeContacto` (`ID`, `ClassName`, `Created`, `LastEdited`, `Nombre`, `Email`, `Mensaje`, `Telefono`) VALUES
(1, 'MensajeContacto', '2019-05-28 23:14:22', '2019-05-28 23:14:22', 'Marcos Peralta', 'mrc_peralta@hotmail.com', 'Prueba', NULL),
(2, 'MensajeContacto', '2019-08-27 00:05:18', '2019-08-27 00:05:18', 'jhony', 'jhonyben.94@gmail.com', '123123123', NULL),
(3, 'MensajeContacto', '2019-08-27 17:35:46', '2019-08-27 17:35:46', '12312', 'jhonyben.94@gmail.com', '12312312 3123123', NULL),
(4, 'MensajeContacto', '2019-08-27 17:38:31', '2019-08-27 17:38:31', '12312', 'jhonyben.94@gmail.com', '12312312 3123123', NULL),
(5, 'MensajeContacto', '2019-08-27 17:38:41', '2019-08-27 17:38:41', '13123', 'jhonyben.94@gmail.com', '123123123', NULL),
(6, 'MensajeContacto', '2019-08-27 17:39:36', '2019-08-27 17:39:36', '131231', 'jhonyben.94@gmail.com', '123123123', NULL),
(7, 'MensajeContacto', '2019-08-27 17:41:08', '2019-08-27 17:41:08', 'Jhony Benitez', 'jhonyben.94@gmail.com', 'adfasdfasdfa', NULL),
(8, 'MensajeContacto', '2019-08-27 17:43:59', '2019-08-27 17:43:59', 'adfasdf', 'jhonyben.94@gmail.com', '123123123', NULL),
(9, 'MensajeContacto', '2019-08-27 17:49:50', '2019-08-27 17:49:50', 'adfad', 'jhonyben.94@gmail.com', 'adsfasdfa', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MensajeNews`
--

CREATE TABLE IF NOT EXISTS `MensajeNews` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('MensajeNews') DEFAULT 'MensajeNews',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `MensajeNews`
--

INSERT INTO `MensajeNews` (`ID`, `ClassName`, `Created`, `LastEdited`, `Email`) VALUES
(1, 'MensajeNews', '2019-08-21 17:54:49', '2019-08-21 17:54:49', 'jhonyben.94@gmail.com'),
(2, 'MensajeNews', '2019-08-21 17:57:01', '2019-08-21 17:57:01', 'jhonyben.94@gmail.com'),
(3, 'MensajeNews', '2019-08-21 17:57:21', '2019-08-21 17:57:21', 'jhonyben.94@gmail.com'),
(4, 'MensajeNews', '2019-08-21 17:58:08', '2019-08-21 17:58:08', 'jhonyben.94@gmail.com'),
(5, 'MensajeNews', '2019-08-21 17:59:49', '2019-08-21 17:59:49', 'jhonyben.94@gmail.com'),
(6, 'MensajeNews', '2019-08-21 18:00:13', '2019-08-21 18:00:13', 'jhonyben.94@gmail.com'),
(7, 'MensajeNews', '2019-08-21 22:11:24', '2019-08-21 22:11:24', 'jhonyben.94@gmail.com'),
(8, 'MensajeNews', '2019-08-26 23:02:16', '2019-08-26 23:02:16', 'jhonyben.94@gmail.com'),
(9, 'MensajeNews', '2019-08-26 23:07:40', '2019-08-26 23:07:40', 'jhonyben.94@gmail.com'),
(10, 'MensajeNews', '2019-08-27 00:00:26', '2019-08-27 00:00:26', 'jhonyben.94@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PaginaArticulo`
--

CREATE TABLE IF NOT EXISTS `PaginaArticulo` (
  `ID` int(11) NOT NULL,
  `ImagenID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=286 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PaginaArticulo_Live`
--

CREATE TABLE IF NOT EXISTS `PaginaArticulo_Live` (
  `ID` int(11) NOT NULL,
  `ImagenID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=263 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PaginaArticulo_versions`
--

CREATE TABLE IF NOT EXISTS `PaginaArticulo_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ImagenID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `PaginaArticulo_versions`
--

INSERT INTO `PaginaArticulo_versions` (`ID`, `RecordID`, `Version`, `ImagenID`) VALUES
(1, 243, 2, 665),
(2, 243, 3, 665),
(3, 243, 4, 665),
(4, 6, 1, 0),
(5, 6, 2, 665),
(6, 217, 1, 0),
(7, 218, 1, 0),
(8, 219, 1, 0),
(9, 243, 5, 665),
(10, 6, 3, 665),
(11, 217, 2, 665),
(12, 217, 3, 665),
(13, 218, 2, 665),
(14, 219, 2, 665),
(15, 243, 6, 665),
(16, 6, 4, 665),
(17, 259, 1, 0),
(18, 6, 5, 665),
(19, 260, 1, 0),
(20, 260, 2, 665),
(21, 260, 3, 665),
(22, 217, 4, 665),
(23, 218, 3, 665),
(24, 218, 4, 665),
(25, 218, 5, 665),
(26, 261, 1, 665),
(27, 261, 2, 665),
(28, 261, 3, 665),
(29, 262, 1, 665),
(30, 262, 2, 665),
(31, 262, 3, 665),
(32, 6, 6, 665),
(33, 6, 7, 665),
(34, 6, 8, 665),
(35, 6, 9, 665),
(36, 6, 10, 665),
(37, 6, 11, 665),
(38, 243, 7, 665),
(39, 262, 4, 665),
(40, 285, 1, 0),
(41, 219, 3, 665),
(42, 6, 12, 665),
(43, 6, 13, 665),
(44, 6, 14, 665);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Permission`
--

CREATE TABLE IF NOT EXISTS `Permission` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Permission') DEFAULT 'Permission',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Code` varchar(50) DEFAULT NULL,
  `Arg` int(11) NOT NULL DEFAULT '0',
  `Type` int(11) NOT NULL DEFAULT '1',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Permission`
--

INSERT INTO `Permission` (`ID`, `ClassName`, `Created`, `LastEdited`, `Code`, `Arg`, `Type`, `GroupID`) VALUES
(6, 'Permission', '2019-09-06 21:42:03', '2019-09-06 21:42:03', 'ADMIN', 0, 1, 2),
(9, 'Permission', '2019-09-06 21:46:26', '2019-09-06 21:46:26', 'SITETREE_GRANT_ACCESS', 0, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PermissionRole`
--

CREATE TABLE IF NOT EXISTS `PermissionRole` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('PermissionRole') DEFAULT 'PermissionRole',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `OnlyAdminCanApply` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `PermissionRole`
--

INSERT INTO `PermissionRole` (`ID`, `ClassName`, `Created`, `LastEdited`, `Title`, `OnlyAdminCanApply`) VALUES
(1, 'PermissionRole', '2019-09-06 21:42:53', '2019-09-06 21:42:53', 'MARKETING', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PermissionRoleCode`
--

CREATE TABLE IF NOT EXISTS `PermissionRoleCode` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('PermissionRoleCode') DEFAULT 'PermissionRoleCode',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Code` varchar(50) DEFAULT NULL,
  `RoleID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `PermissionRoleCode`
--

INSERT INTO `PermissionRoleCode` (`ID`, `ClassName`, `Created`, `LastEdited`, `Code`, `RoleID`) VALUES
(1, 'PermissionRoleCode', '2019-09-06 21:42:53', '2019-09-06 21:42:53', 'CMS_ACCESS_LeftAndMain', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PreguntaFrecuente`
--

CREATE TABLE IF NOT EXISTS `PreguntaFrecuente` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('PreguntaFrecuente') DEFAULT 'PreguntaFrecuente',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Pregunta` varchar(255) DEFAULT NULL,
  `Respuesta` mediumtext
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `PreguntaFrecuente`
--

INSERT INTO `PreguntaFrecuente` (`ID`, `ClassName`, `Created`, `LastEdited`, `Pregunta`, `Respuesta`) VALUES
(3, 'PreguntaFrecuente', '2019-07-25 22:18:06', '2019-07-25 22:18:06', '¿Qué es un título valor?', '<p>Es un activo o instrumento financiero emitido por emisores que representan una obligación que estos han contraído con su poseedor.</p>\n<p>En función a quien emite dichos valores negociables, pueden ser los mismos títulos valores corporativos, emitidos por empresas privadas o títulos valores del sector público los cuales son emitidos por el estado o alguna de sus entidades dependientes. Así también, los títulos valores pueden representar una participación en el capital de una sociedad como en el caso de las acciones.</p>'),
(4, 'PreguntaFrecuente', '2019-07-25 22:18:58', '2019-07-25 22:18:58', '¿Qué es el Mercado de Valores? ¿Quiénes son sus componentes?', '<p>Uno de los Subsistemas componentes del Sistema Financiero Paraguayo es el Mercado de Valores.</p>\n<p>Este mercado es aquel en el cual se comercializan los títulos valores, conocidos también como valores negociables o activos financieros simplemente.</p>\n<p><strong>En este mercado se cuenta básicamente con los siguientes componentes:</strong></p>\n<ol><li><strong>La Comisión Nacional de Valores (CNV):</strong> es el ente regulador del mercado, y está relacionado con el Poder Ejecutivo por medio del Ministerio de Industria y Comercio.</li>\n<li><strong>La Bolsa de Valores y Productos de Asunción S.A (BVPASA):</strong> es una entidad sin fines de lucro (determinado por Ley y por sus propios Estatutos), que pone a disposición de los intermediarios su infraestructura organizacional y tecnológica para hacer viables las operaciones de compra venta de valores negociables entre ellas.</li>\n<li><strong>Las Casas de Bolsa:</strong> son los intermediarios financieros del Mercado de Valores, son las única sociedades autorizadas a operar en el mismo por cuenta, orden y riesgo de sus clientes.</li>\n<li><strong>Empresas Emisoras:</strong> son todas aquellas personas jurídicas que emiten títulos valores al mercado para la captación de recursos financieros que le permitan efectuar sus inversiones en activos fijos o en activos circulantes.</li>\n<li><strong>Inversionistas:</strong> son todas aquellas personas físicas o jurídica que compran y venden títulos valores con el objeto de obtener mejores rendimientos financieros para sus recursos.</li>\n</ol>'),
(5, 'PreguntaFrecuente', '2019-07-25 22:19:38', '2019-07-25 22:19:38', '¿Qué valores negociables se compran y venden en el Mercado de Valores?', '<p><span>En nuestro mercado, actualmente, las principales negociaciones se realizan sobre los Instrumentos de Renta Fija, los bonos corporativos, los pagarés y los cupones principalmente, y en menor medida con las acciones.</span></p>'),
(6, 'PreguntaFrecuente', '2019-07-25 22:20:08', '2019-07-25 22:20:08', '¿Quién es el regulador del Mercado de Valores en el Paraguay', '<p><span>En nuestro país, la Comisión Nacional de Valores es la entidad responsable de regular, supervisar y fomentar las actividades del Mercado de Valores como mecanismo alternativo de inversión, captación y canalización de recursos, para la capitalización de empresas y el financiamiento de proyectos de mediano y largo plazo, dentro de un marco de transparencia, seguridad y credibilidad, mediante la entrega de información pertinente, completa y oportuna a los diferentes actores del mismo.</span></p>'),
(7, 'PreguntaFrecuente', '2019-07-25 22:20:48', '2019-07-25 22:20:48', '¿Qué tipo de persona jurídica tiene la BVPASA?', '<p><span>La BVPASA opera bajo la figura jurídica de Sociedad Anónima, pero de acuerdo a las normativas legales vigentes, la misma se adecua dentro de la figura de Organizaciones sin Fines de Lucro (ONGs), debido a que por sus Estatutos Sociales y la propia Ley del Mercado de Valores, tanto esta como cualquier otra Bolsa en nuestro país tiene expresamente prohibido distribuir utilidades.</span></p>'),
(8, 'PreguntaFrecuente', '2019-07-25 22:21:30', '2019-07-25 22:21:30', '¿Quién o quiénes pueden operar en la BVPASA?', '<p>En los recintos de la BVPASA, solo los representantes autorizados de las Casas de Bolsa, conocidos también como Operadores de Bolsa, son los únicos autorizados para efectuar las operaciones por cuenta, orden y riesgo de sus clientes.¿Contribuye en algo la Bolsa de Valores y Productos de Asunción en el desarrollo del país?</p>\n<p>El Mercado de Valores contribuye en todas sus negociaciones en el desarrollo del Paraguay, ya que una de sus funciones principales es transformar el excedente de ahorro en inversiones, las cuales son aplicadas en empresas generadoras de mano de obra y de recursos, los cuales directa e indirectamente colaboran en el mejoramiento del PIB, por medio la transparencia, la equidad, y la eficiencia.</p>'),
(9, 'PreguntaFrecuente', '2019-07-25 22:22:09', '2019-07-25 22:22:09', '¿Qué hace falta para abrir una Casa de Bolsa?', '<p>Los requisitos que deben cumplir todas las Casas de Bolsa son:</p>\n<ol><li>Constituirse como sociedades anónimas de objeto exclusivo</li>\n<li>Contar con el capital social mínimo de cuatrocientos salarios mínimos mensuales establecidos para trabajadores de actividades diversas no especificadas;</li>\n<li>Constituir las garantías en la forma y por los montos determinados en las normativas legales vigentes;</li>\n<li>No haber solicitado convocatoria de acreedores ni haberse declarado su quiebra; y,</li>\n<li>Cualquier otro requisito que la C.N.V determine por medio de normas de carácter general.</li>\n</ol>'),
(10, 'PreguntaFrecuente', '2019-07-25 22:23:33', '2019-07-25 22:23:33', '¿Cómo se hace para invertir vía Bolsa?', '<p>En primer lugar, se debe identificar cuales son las Casas de Bolsa habilitadas para operar en la BVPASA, visitando o llamando a las mismas a fin de contactar con un Asesor de Inversión.</p>\n<p>Tras las reuniones mantenidas con el mismo, y una vez obtenida toda la información requerida, el potencial inversionista debe sopesar las diversas alternativas de inversión y optar por una o por un conjunto de ellas. Dicha decisión debe ser comunicada al Asesor de Inversión seleccionado, el cual debe en primer lugar establecer una relación contractual con el nuevo inversionista para luego ejecutar las órdenes recibidas de este por su cuenta, orden y riesgo.</p>\n<p>Terminados los pasos previos, los Asesores de Inversión transmiten las órdenes recibidas a su operador en la Bolsa, o ingresan al sistema de negociación electrónicas las mismas, a fin de que estás sean debidamente ejecutadas de acuerdo a lo dispuesto por el cliente. La Casa de Bolsa dispone de hasta 48 horas hábiles bancarias para recepcionar el efectivo de su cliente y entregar al mismo los activos financieros que fueran adquiridos en su nombre.</p>\n<p>Es muy importante destacar que todo inversionista debe hacer el seguimiento de las empresas emisoras en las cuales ha invertido, analizando sus estados contables periódicos y tomando conocimiento de cualquier tipo de información que el mismo proporcione al mercado.</p>'),
(11, 'PreguntaFrecuente', '2019-07-25 22:24:04', '2019-07-25 22:24:04', '¿Qué son los precios de cierre de los títulos valores que se cotizan en la BVPASA?', '<p><span>Son todos aquellos precios que reflejan las mejores cotizaciones tanto de compra como de venta para un valor negociable específico durante una Rueda de Negociación, y son puesto a conocimiento del mercado una vez de finalizada la jornada diaria. El acceso a dichos precios puede ser tanto en el web site de la BVPASA, como así también, en las oficinas de la misma.</span></p>'),
(12, 'PreguntaFrecuente', '2019-07-25 22:24:34', '2019-07-25 22:24:34', '¿Qué es una Calificadora de Riesgo?', '<p>Es una empresa de objeto exclusivo, cuya función es la calificación de riesgo de una empresa en función a su solvencia principalmente, es decir, la capacidad que tiene la misma para hacer frente a sus obligaciones.</p>\n<p>Las evaluaciones que realizan estas empresas están sustentadas en los Estados Contables básicamente, y en otras informaciones que las mismas consideren de importancia en el giro del negocio y que el mercado deba tener conocimiento de las mismas.</p>\n<p>Estos estudios son opiniones profesionales e imparciales sobre la probabilidad de impago de una obligación, lo que no representa una recomendación de inversión para ninguna persona física o jurídica en particular.</p>'),
(13, 'PreguntaFrecuente', '2019-07-25 22:24:58', '2019-07-25 22:24:58', '¿Qué es la tasa LIBOR?', '<p><span>Se le denomina Tasa LIBOR (London Interbanking Offered Rate), a la tasa de interés que se determina día a día en el mercado interbancario en Londres, para los créditos y empréstitos internacionales de tipo fluctuante.</span></p>'),
(14, 'PreguntaFrecuente', '2019-07-25 22:25:19', '2019-07-25 22:25:19', '¿Qué es la tasa PRIME?', '<p><span>La Tasa PRIME (preferencial) es el tipo de interés aplicado por los grandes bancos de Estados Unidos para los créditos y empréstitos internacionales.</span></p>'),
(15, 'PreguntaFrecuente', '2019-07-25 22:25:45', '2019-07-25 22:25:45', '¿Qué son los Estados Contables, para qué se utilizan?', '<p><span>Se denomina Estados Contables a todos aquellos documentos en los cuales se refleja la situación de una empresa en un momento determinado de tiempo. Dichos documentos están compuestos por el Balance General, el Estado de Resultados, Estado de Evolución del Patrimonio, Estado de Origen y Aplicación de Fondos, Informaciones Complementarias y Anexos.</span></p>');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PreguntasFrecuentesPage`
--

CREATE TABLE IF NOT EXISTS `PreguntasFrecuentesPage` (
  `ID` int(11) NOT NULL,
  `ImagenID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=248 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `PreguntasFrecuentesPage`
--

INSERT INTO `PreguntasFrecuentesPage` (`ID`, `ImagenID`) VALUES
(224, 665);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PreguntasFrecuentesPage_Live`
--

CREATE TABLE IF NOT EXISTS `PreguntasFrecuentesPage_Live` (
  `ID` int(11) NOT NULL,
  `ImagenID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=227 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `PreguntasFrecuentesPage_Live`
--

INSERT INTO `PreguntasFrecuentesPage_Live` (`ID`, `ImagenID`) VALUES
(224, 665);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PreguntasFrecuentesPage_versions`
--

CREATE TABLE IF NOT EXISTS `PreguntasFrecuentesPage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ImagenID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `PreguntasFrecuentesPage_versions`
--

INSERT INTO `PreguntasFrecuentesPage_versions` (`ID`, `RecordID`, `Version`, `ImagenID`) VALUES
(1, 224, 1, 0),
(2, 224, 2, 670),
(3, 226, 1, 0),
(4, 226, 2, 672),
(5, 224, 3, 670),
(6, 246, 1, 0),
(7, 247, 1, 0),
(8, 224, 4, 665);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `RedirectorPage`
--

CREATE TABLE IF NOT EXISTS `RedirectorPage` (
  `ID` int(11) NOT NULL,
  `RedirectionType` enum('Internal','External') DEFAULT 'Internal',
  `ExternalURL` varchar(2083) DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=195 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `RedirectorPage_Live`
--

CREATE TABLE IF NOT EXISTS `RedirectorPage_Live` (
  `ID` int(11) NOT NULL,
  `RedirectionType` enum('Internal','External') DEFAULT 'Internal',
  `ExternalURL` varchar(2083) DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=195 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `RedirectorPage_versions`
--

CREATE TABLE IF NOT EXISTS `RedirectorPage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `RedirectionType` enum('Internal','External') DEFAULT 'Internal',
  `ExternalURL` varchar(2083) DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `SiteConfig`
--

CREATE TABLE IF NOT EXISTS `SiteConfig` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SiteConfig') DEFAULT 'SiteConfig',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Tagline` varchar(255) DEFAULT NULL,
  `Theme` varchar(255) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers') DEFAULT 'Anyone',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers') DEFAULT 'LoggedInUsers',
  `CanCreateTopLevelType` enum('LoggedInUsers','OnlyTheseUsers') DEFAULT 'LoggedInUsers',
  `TelefonoContacto` varchar(255) DEFAULT NULL,
  `EmailContacto` varchar(255) DEFAULT NULL,
  `TextoCopyright` mediumtext,
  `FacebookLink` varchar(255) DEFAULT NULL,
  `InstagramLink` varchar(255) DEFAULT NULL,
  `TwitterLink` varchar(255) DEFAULT NULL,
  `LinkedinLink` varchar(255) DEFAULT NULL,
  `MensajeWhatsapp` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `SiteConfig`
--

INSERT INTO `SiteConfig` (`ID`, `ClassName`, `Created`, `LastEdited`, `Title`, `Tagline`, `Theme`, `CanViewType`, `CanEditType`, `CanCreateTopLevelType`, `TelefonoContacto`, `EmailContacto`, `TextoCopyright`, `FacebookLink`, `InstagramLink`, `TwitterLink`, `LinkedinLink`, `MensajeWhatsapp`) VALUES
(1, 'SiteConfig', '2015-07-21 17:15:05', '2019-11-08 17:41:28', 'DINAPI ', 'DINAPI | Dirección Nacional de Propiedad Intelectual', 'dinapi', 'Anyone', 'LoggedInUsers', 'LoggedInUsers', '595991900700', 'comercial@avalon.com.py', 'Avalon Casa de Bolsa S.A. © Copyright 2019 Todos los derechos reservados.', 'https://www.facebook.com/AvalonCasaDeBolsaSa/', NULL, NULL, 'https://www.linkedin.com/company/avalon-casa-de-bolsa/about/  ', 'Hola Avalon, estoy interesado en.... (Esto es un texto de ejemplo modificable desde el administrador)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `SiteConfig_CreateTopLevelGroups`
--

CREATE TABLE IF NOT EXISTS `SiteConfig_CreateTopLevelGroups` (
  `ID` int(11) NOT NULL,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `SiteConfig_EditorGroups`
--

CREATE TABLE IF NOT EXISTS `SiteConfig_EditorGroups` (
  `ID` int(11) NOT NULL,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `SiteConfig_ViewerGroups`
--

CREATE TABLE IF NOT EXISTS `SiteConfig_ViewerGroups` (
  `ID` int(11) NOT NULL,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `SiteTree`
--

CREATE TABLE IF NOT EXISTS `SiteTree` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SiteTree','Page','ErrorPage','RedirectorPage','VirtualPage','ContactPage','AcordeonPage','FullHtmlPage','GeneralPage','HomePage','InstitucionalPage','PreguntasFrecuentesPage','TarjetaPage','UserDefinedForm') DEFAULT 'SiteTree',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `URLSegment` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `MenuTitle` varchar(100) DEFAULT NULL,
  `Content` mediumtext,
  `MetaDescription` mediumtext,
  `ExtraMeta` mediumtext,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=306 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `SiteTree`
--

INSERT INTO `SiteTree` (`ID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `Version`, `ParentID`) VALUES
(1, 'HomePage', '2015-07-21 17:15:05', '2019-11-07 19:27:01', 'home', 'Inicio', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 12, 0),
(4, 'ErrorPage', '2015-07-21 17:15:06', '2019-09-05 21:06:28', 'pagina-no-encontrada', 'Página no encontrada', NULL, '<p>Lo sentimos, parece que intentaste acceder a una página que no existe.</p><p>Por favor, comprueba que la URL que intentabas acceder está bien escrita e inténtalo de nuevo.</p>', NULL, NULL, 0, 0, 10, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(5, 'ErrorPage', '2015-07-21 17:15:07', '2019-09-05 21:08:56', 'error-de-servidor', 'Error de servidor', NULL, '<p>Lo sentimos, hubo un problema al gestionar tu solicitud.</p>', NULL, NULL, 0, 0, 11, 0, 0, NULL, 'Inherit', 'Inherit', 2, 0),
(250, 'GeneralPage', '2019-05-23 21:08:15', '2019-06-24 11:27:48', 'capital-de-riesgo', 'Capital de Riesgo', NULL, '<p><span>Hace referencia a empresas que invierten en los fondos de capital de riesgo, que canalizan grandes sumas de dinero hacia nuevos negocios de alto riesgo y alta rentabilidad, poniendo a disposición de una nueva generación de emprendedores suficiente cantidad de dinero como para enfrentarse a empresas ya existentes.</span></p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 5, 176),
(251, 'GeneralPage', '2019-05-23 21:08:15', '2019-06-24 11:27:49', 'capital-de-riesgo-2', 'Crédito al Consumo', NULL, '<p>Se le llama crédito al consumo o crédito de adquisición de bienes de consumo duradero al producto que se otorga para comprar un bien o servicio de uso personal en plazos determinados.</p>\n<p>Por lo común se aplica a bienes de uso duradero, como automóviles, muebles neveras, televisores, entre otros.</p>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 4, 176),
(252, 'GeneralPage', '2019-05-23 21:08:15', '2019-06-24 11:27:49', 'commodities-financieros', 'Commodities Financieros', NULL, '<p><span>Un commodity es todo aquello que sea subyacente en un contrato de futuros de una bolsa de commodities establecida, el mercado de futuros más conocido es el de Chicago, Estados Unidos.</span></p>', NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 4, 176),
(253, 'GeneralPage', '2019-05-23 21:08:15', '2019-06-24 11:27:49', 'deflacion', 'Deflación', NULL, '<p>La deflación es la caída generalizada del nivel de precios de bienes y servicios en una economía.</p>\n<p>Es el movimiento contrario a la inflación. Es la situación económica en que los precios disminuyen y es producida por una falta de demanda, y es mucho más peligrosa y temida por los gobiernos que la inflación.</p>', NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 4, 176),
(254, 'GeneralPage', '2019-05-23 21:08:15', '2019-06-24 11:27:49', 'devaluacion', 'Devaluación', NULL, '<p>La cooperativa trabaja para el desarrollo sostenible de su comunidad por medio de políticas aceptadas por sus miembros.</p>\n<p>Desarrollo sostenible de su comunidad: Las cooperativas están íntimamente ligadas a sus comunidades. Tienen la responsabilidad especial de asegurar la continuidad del desarrollo de su comunidad en los aspectos económicos, sociales y culturales, y trabajar constantemente por la protección ambiental de su comunidad.</p>\n<p>Queda en manos de sus socias y socios decidir que tanto y en qué forma una cooperativa debe contribuir con su comunidad.</p>', NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 4, 176),
(244, 'GeneralPage', '2019-05-23 21:55:54', '2019-09-13 16:01:44', 'quienes-somos', 'Quiénes somos', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'OnlyTheseUsers', 'OnlyTheseUsers', 15, 0),
(176, 'AcordeonPage', '2016-11-07 14:45:42', '2019-06-24 11:27:49', 'glosario', 'Glosario', NULL, NULL, NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 11, 0),
(263, 'GeneralPage', '2019-05-22 17:08:27', '2019-06-24 11:27:48', 'que-es-un-titulo-valor', 'Qué es un título valor', NULL, '<p>Es un activo o instrumento financiero emitido por emisores que representan una obligación que estos han contraído con su poseedor.</p>\n<p>En función a quien emite dichos valores negociables, pueden ser los mismos títulos valores corporativos, emitidos por empresas privadas o títulos valores del sector público los cuales son emitidos por el estado o alguna de sus entidades dependientes. Así también, los títulos valores pueden representar una participación en el capital de una sociedad como en el caso de las acciones.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 6, 224),
(264, 'GeneralPage', '2019-05-22 17:08:27', '2019-06-24 11:27:48', 'que-es-el-mercado-de-valores-quienes-son-sus-componentes', '¿Qué es el Mercado de Valores? ¿Quiénes son sus componentes?', NULL, '<p>Uno de los Subsistemas componentes del Sistema Financiero Paraguayo es el Mercado de Valores.</p>\n<p>Este mercado es aquel en el cual se comercializan los títulos valores, conocidos también como valores negociables o activos financieros simplemente.</p>\n<p><strong>En este mercado se cuenta básicamente con los siguientes componentes:</strong></p>\n<ol><li><strong>La Comisión Nacional de Valores (CNV):</strong> es el ente regulador del mercado, y está relacionado con el Poder Ejecutivo por medio del Ministerio de Industria y Comercio.</li>\n<li><strong>La Bolsa de Valores y Productos de Asunción S.A (BVPASA):</strong> es una entidad sin fines de lucro (determinado por Ley y por sus propios Estatutos), que pone a disposición de los intermediarios su infraestructura organizacional y tecnológica para hacer viables las operaciones de compra venta de valores negociables entre ellas.</li>\n<li><strong>Las Casas de Bolsa:</strong> son los intermediarios financieros del Mercado de Valores, son las única sociedades autorizadas a operar en el mismo por cuenta, orden y riesgo de sus clientes.</li>\n<li><strong>Empresas Emisoras:</strong> son todas aquellas personas jurídicas que emiten títulos valores al mercado para la captación de recursos financieros que le permitan efectuar sus inversiones en activos fijos o en activos circulantes.</li>\n<li><strong>Inversionistas:</strong> son todas aquellas personas físicas o jurídica que compran y venden títulos valores con el objeto de obtener mejores rendimientos financieros para sus recursos.</li>\n</ol>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 3, 224),
(266, 'GeneralPage', '2019-05-22 17:08:27', '2019-06-24 11:27:49', 'quien-es-el-regulador-del-mercado-de-valores-en-el-paraguay', '¿Quién es el regulador del Mercado de Valores en el Paraguay', NULL, '<p>En nuestro país, la Comisión Nacional de Valores es la entidad responsable de regular, supervisar y fomentar las actividades del Mercado de Valores como mecanismo alternativo de inversión, captación y canalización de recursos, para la capitalización de empresas y el financiamiento de proyectos de mediano y largo plazo, dentro de un marco de transparencia, seguridad y credibilidad, mediante la entrega de información pertinente, completa y oportuna a los diferentes actores del mismo.</p>', NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 3, 224),
(267, 'GeneralPage', '2019-05-22 17:08:27', '2019-06-24 11:27:49', 'que-tipo-de-persona-juridica-tiene-la-bvpasa', '¿Qué tipo de persona jurídica tiene la BVPASA?', NULL, '<p>La BVPASA opera bajo la figura jurídica de Sociedad Anónima, pero de acuerdo a las normativas legales vigentes, la misma se adecua dentro de la figura de Organizaciones sin Fines de Lucro (ONGs), debido a que por sus Estatutos Sociales y la propia Ley del Mercado de Valores, tanto esta como cualquier otra Bolsa en nuestro país tiene expresamente prohibido distribuir utilidades.</p>', NULL, NULL, 0, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 4, 224),
(268, 'GeneralPage', '2019-05-22 17:08:27', '2019-06-24 11:27:49', 'quien-o-quienes-pueden-operar-en-la-bvpasa', '¿Quién o quiénes pueden operar en la BVPASA?', NULL, '<p>En los recintos de la BVPASA, solo los representantes autorizados de las Casas de Bolsa, conocidos también como Operadores de Bolsa, son los únicos autorizados para efectuar las operaciones por cuenta, orden y riesgo de sus clientes.¿Contribuye en algo la Bolsa de Valores y Productos de Asunción en el desarrollo del país?</p>\n<p>El Mercado de Valores contribuye en todas sus negociaciones en el desarrollo del Paraguay, ya que una de sus funciones principales es transformar el excedente de ahorro en inversiones, las cuales son aplicadas en empresas generadoras de mano de obra y de recursos, los cuales directa e indirectamente colaboran en el mejoramiento del PIB, por medio la transparencia, la equidad, y la eficiencia.</p>', NULL, NULL, 0, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 4, 224),
(269, 'GeneralPage', '2019-05-22 17:08:27', '2019-06-24 11:27:49', 'que-hace-falta-para-abrir-una-casa-de-bolsa', '¿Qué hace falta para abrir una Casa de Bolsa?', NULL, '<p>Los requisitos que deben cumplir todas las Casas de Bolsa son:</p>\n<ol><li>Constituirse como sociedades anónimas de objeto exclusivo</li>\n<li>Contar con el capital social mínimo de cuatrocientos salarios mínimos mensuales establecidos para trabajadores de actividades diversas no especificadas;</li>\n<li>Constituir las garantías en la forma y por los montos determinados en las normativas legales vigentes;</li>\n<li>No haber solicitado convocatoria de acreedores ni haberse declarado su quiebra; y,</li>\n<li>Cualquier otro requisito que la C.N.V determine por medio de normas de carácter general.</li>\n</ol>', NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 3, 224),
(270, 'GeneralPage', '2019-05-22 17:08:27', '2019-06-24 11:27:49', 'como-se-hace-para-invertir-via-bolsa', '¿Cómo se hace para invertir vía Bolsa?', NULL, '<p>En primer lugar, se debe identificar cuales son las Casas de Bolsa habilitadas para operar en la BVPASA, visitando o llamando a las mismas a fin de contactar con un Asesor de Inversión.</p>\n<p>Tras las reuniones mantenidas con el mismo, y una vez obtenida toda la información requerida, el potencial inversionista debe sopesar las diversas alternativas de inversión y optar por una o por un conjunto de ellas. Dicha decisión debe ser comunicada al Asesor de Inversión seleccionado, el cual debe en primer lugar establecer una relación contractual con el nuevo inversionista para luego ejecutar las órdenes recibidas de este por su cuenta, orden y riesgo.</p>\n<p>Terminados los pasos previos, los Asesores de Inversión transmiten las órdenes recibidas a su operador en la Bolsa, o ingresan al sistema de negociación electrónicas las mismas, a fin de que estás sean debidamente ejecutadas de acuerdo a lo dispuesto por el cliente. La Casa de Bolsa dispone de hasta 48 horas hábiles bancarias para recepcionar el efectivo de su cliente y entregar al mismo los activos financieros que fueran adquiridos en su nombre.</p>\n<p>Es muy importante destacar que todo inversionista debe hacer el seguimiento de las empresas emisoras en las cuales ha invertido, analizando sus estados contables periódicos y tomando conocimiento de cualquier tipo de información que el mismo proporcione al mercado.</p>', NULL, NULL, 0, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 3, 224),
(271, 'GeneralPage', '2019-05-22 17:08:27', '2019-06-24 11:27:49', 'que-son-los-precios-de-cierre-de-los-titulos-valores-que-se-cotizan-en-la-bvpasa', '¿Qué son los precios de cierre de los títulos valores que se cotizan en la BVPASA?', NULL, '<p>Son todos aquellos precios que reflejan las mejores cotizaciones tanto de compra como de venta para un valor negociable específico durante una Rueda de Negociación, y son puesto a conocimiento del mercado una vez de finalizada la jornada diaria. El acceso a dichos precios puede ser tanto en el web site de la BVPASA, como así también, en las oficinas de la misma.</p>', NULL, NULL, 0, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 3, 224),
(272, 'GeneralPage', '2019-05-22 17:08:27', '2019-06-24 11:27:49', 'que-es-una-calificadora-de-riesgo', '¿Qué es una Calificadora de Riesgo?', NULL, '<p>Es una empresa de objeto exclusivo, cuya función es la calificación de riesgo de una empresa en función a su solvencia principalmente, es decir, la capacidad que tiene la misma para hacer frente a sus obligaciones.</p>\n<p>Las evaluaciones que realizan estas empresas están sustentadas en los Estados Contables básicamente, y en otras informaciones que las mismas consideren de importancia en el giro del negocio y que el mercado deba tener conocimiento de las mismas.</p>\n<p>Estos estudios son opiniones profesionales e imparciales sobre la probabilidad de impago de una obligación, lo que no representa una recomendación de inversión para ninguna persona física o jurídica en particular.</p>', NULL, NULL, 0, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 3, 224),
(273, 'GeneralPage', '2019-05-22 17:08:27', '2019-06-24 11:27:49', 'que-es-la-tasa-libor', '¿Qué es la tasa LIBOR?', NULL, '<p>Se le denomina Tasa LIBOR (London Interbanking Offered Rate), a la tasa de interés que se determina día a día en el mercado interbancario en Londres, para los créditos y empréstitos internacionales de tipo fluctuante.</p>', NULL, NULL, 0, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 7, 224),
(274, 'GeneralPage', '2019-05-22 17:08:27', '2019-06-24 11:27:49', 'que-es-la-tasa-prime', '¿Qué es la tasa PRIME?', NULL, '<p>La Tasa PRIME (preferencial) es el tipo de interés aplicado por los grandes bancos de Estados Unidos para los créditos y empréstitos internacionales.</p>', NULL, NULL, 0, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 3, 224),
(275, 'GeneralPage', '2019-05-22 17:08:27', '2019-06-24 11:27:49', 'que-son-los-estados-contables-para-que-se-utilizan', '¿Qué son los Estados Contables, para qué se utilizan?', NULL, '<p>Se denomina Estados Contables a todos aquellos documentos en los cuales se refleja la situación de una empresa en un momento determinado de tiempo. Dichos documentos están compuestos por el Balance General, el Estado de Resultados, Estado de Evolución del Patrimonio, Estado de Origen y Aplicación de Fondos, Informaciones Complementarias y Anexos.</p>\n<p>Por medio de las diferentes herramientas de análisis financiero, el responsable de dichos estudios aplicará las diversas técnicas que le permitan interpretar los resultados expuestos en los Estados Contables de una empresa emisora en particular.</p>', NULL, NULL, 0, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 3, 224),
(223, 'ContactPage', '2019-05-22 22:34:38', '2019-09-05 21:09:07', 'contacto', 'Contacto', NULL, NULL, NULL, NULL, 0, 0, 9, 0, 0, NULL, 'Inherit', 'Inherit', 10, 0),
(224, 'PreguntasFrecuentesPage', '2019-05-23 16:38:28', '2019-09-04 20:25:48', 'preguntas-frecuentes', 'Preguntas Frecuentes', NULL, NULL, NULL, NULL, 0, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 4, 0),
(276, 'GeneralPage', '2019-05-22 17:08:27', '2019-06-24 11:27:48', 'que-valores-negociables-se-compran-y-venden-en-el-mercado-de-valores', '¿Qué valores negociables se compran y venden en el Mercado de Valores?', NULL, '<p><span>En nuestro mercado, actualmente, las principales negociaciones se realizan sobre los Instrumentos de Renta Fija, los bonos corporativos, los pagarés y los cupones principalmente, y en menor medida con las acciones.</span></p>', NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 3, 224),
(248, 'GeneralPage', '2019-05-23 21:07:41', '2019-06-24 11:27:48', 'bonos', 'Bonos', NULL, '<p>El Bono es un título de deuda, de renta fija, emitido por un Estado, por un gobierno regional, por un municipio o por una empresa industrial, comercial o de servicios.</p>\n<p>También puede ser emitido por una institución supranacional, con el objetivo de obtener fondos directamente de los mercados financieros. El emisor se compromete a devolver el capital principal junto con los intereses.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 12, 176),
(249, 'GeneralPage', '2019-05-23 21:09:03', '2019-06-24 11:27:48', 'acciones', 'Acciones', NULL, '<p>Una acción es una parte proporcional del capital social de una sociedad anónima. Representa la propiedad que una persona tiene de una parte de esa sociedad. Normalmente, salvo excepciones, las acciones son transmisibles libremente y otorgan derechos económicos y políticos a su titular (accionista).</p>\n<p>Como inversión, supone una inversión en renta variable, dado que no tiene un retorno fijo establecido por contrato, sino que depende de la buena marcha de dicha empresa.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 4, 176),
(284, 'GeneralPage', '2019-05-23 21:55:54', '2019-06-26 11:20:52', 'nosotros-2', 'Nosotros', NULL, '<h4>¿Qué es una casa de bolsa?</h4>\n<p>Para comprender mejor el significado de la <strong>Casa de Bolsa</strong>, antes debemos comprender el de la <strong>Bolsa de Valores</strong>.</p>\n<p>Una bolsa de valores es una organización privada que brinda las facilidades necesarias para que sus miembros, atendiendo los mandatos de sus clientes, realicen negociaciones de compra venta de valores, tales como acciones de sociedades o compañías anónimas, bonos públicos y privados, certificados, títulos de participación y una amplia variedad de instrumentos de inversión.</p>\n<p>La negociación de los valores en los mercados bursátiles se hace con base a unos precios conocidos y en tiempo real, en un entorno seguro para la actividad de los inversionistas, donde el mecanismo de las transacciones está totalmente regulado, lo que da garantía de legalidad y seguridad.</p>\n<p>Las bolsas de valores fortalecen al mercado de capitales e impulsan el desarrollo económico y financiero en la mayoría de los países del mundo, donde existen en algunos casos desde hace muchos años, a partir de las primeras entidades de este tipo creadas en los primeros años del siglo XVII.</p>\n<p>La negociación de valores en las bolsas se efectúa a través de los miembros de la Bolsa, conocidos usualmente con el nombre de corredores, sociedades de corretaje de valores, casas de bolsa, agentes o comisionistas, de acuerdo a la denominación que reciben en las leyes de cada país, quienes hacen su labor a cambio de una comisión.</p>\n<p>Las casas de bolsa son entidades, que actúan como intermediarios facultados para llevar a cabo operaciones de compra y venta de valores cotizados en la Bolsa de Valores. Además de esta función, las casas de bolsa actúan como consejeros de sus clientes. Como se ve, las casas de bolsa prestan dos servicios, el de intermediación y el de asesoría, por los cuales cobran comisiones.</p>\n<p>La función de las casas de bolsa es la de facilitar el contacto y el intercambio entre los poseedores de las acciones y los posibles compradores de éstas.</p>\n<p><strong>En Paraguay, según la Ley 1284/98, en su art. 105, las casas de bolsa están facultadas para efectuar las siguientes operaciones:</strong></p>\n<ol><li>comprar y vender valores por cuenta de terceros y también por cuenta propia, con recursos propios, en la bolsa o fuera de ella;</li>\n<li>prestar asesoría en materia de valores y operaciones de bolsa así como brindar a sus clientes un sistema de información y de procesamiento de datos;</li>\n<li>suscribir transitoriamente, con recursos propios, parte o la totalidad de emisiones primarias de valores;</li>\n<li>promover el lanzamiento de valores públicos y privados y facilitar su colocación;</li>\n<li>actuar como representante de los obligacionistas;</li>\n<li>prestar servicios de administración de carteras y custodia de valores;</li>\n<li>llevar el registro contable de valores de sus clientes con sujeción a lo establecido en la presente ley, o en las resoluciones que dicte la Comisión al efecto;</li>\n<li>otorgar créditos, con sus propios recursos, únicamente con el objeto de facilitar la adquisición de valores por sus comitentes, estén o no inscritos en bolsa y con la garantía de tales valores;</li>\n<li>recibir créditos de empresas del sistema financiero para la realización de las actividades que les son propias; y,</li>\n<li>efectuar todas las operaciones y servicios que sean compatibles con la actividad de intermediación en el mercado de valores y que previamente y de manera general autorice la Comisión.</li>\n</ol>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 2, 244),
(288, 'GeneralPage', '2019-05-23 21:55:54', '2019-06-26 11:43:52', 'como-operar', '¿Cómo operar?', NULL, '<p><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Para operar con la Casa de Bolsa, simplemente debe acercarse, o llamarnos por teléfono a nuestras oficinas o bien remitirnos un e-mail, comenzando de esa manera nuestra labor de asesoramiento personal.</span></p>\n<p><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">En nuestras oficinas, contamos con ejecutivos capacitados para evacuar todas las dudas que pudiera tener acerca de cómo operar con nosotros, ofrecerle los servicios que ponemos a su alcance para satisfacer sus necesidades, brindándole los diferentes opciones de inversión que se adapten mejor a su necesidad de rentabilidad y de capital que desea invertir</span></p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 3, 244),
(286, 'GeneralPage', '2019-06-26 11:23:36', '2019-09-04 20:24:11', 'como-ser-cliente', '¿Cómo ser cliente?', NULL, '<p><span>Para ser cliente, sólo debe contactarse con <strong>Avalon Casa de Bolsa S.A.</strong></span></p>\n<p><span>Cuando usted se pone en contacto con nosotros, nuestros ejecutivos le ayudarán a completar una ficha como cliente y a partir de ese momento, comenzaremos a buscar las mejores opciones de inversión, cualquiera sea su necesidad, previo acuerdo entre las partes acerca de los requisitos y condiciones.</span></p>\n<p><span>El deseo de operar con la <strong>Casa de Bolsa</strong> puede originarse por la necesidad de buscar la optimización de los recursos, tanto para aquel que posee capital y lo desea invertir para lograr una rentabilidad por el mismo como aquel que necesita de capital en condiciones ventajosas para realizar inversiones.</span></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 4, 244),
(287, 'GeneralPage', '2019-06-26 11:39:17', '2019-09-04 20:24:37', 'requisitos', 'Requisito', 'Requisitos', '<p><span style="font-family: arial black,avant garde; font-size: medium;"><b>REQUISITOS GENERALES DE IDENTIFICACIÓN DE CLIENTES</b></span></p>\n<h1></h1>\n<h1><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">PERSONAS FISICAS</span></h1>\n<ul><li><span style="font-size: medium;" size="3"></span><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Copia de Cedula de Identidad vigente, ambos lados.</span></li>\n<li><span style="font-size: medium;" size="3"></span><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Copia de factura de servicio público, último mes.</span></li>\n<li><span style="font-size: medium;" size="3"></span><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">En el caso de extranjeros:</span></li>\n<ul><li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Fotocopia autenticada del Carnet de Admisión Permanente, vigente, ambos lados.</span></li>\n<li><span style="font-size: medium;" size="3"></span><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Fotocopia autenticada del Pasaporte o Documento nacional de identidad del país de origen.</span></li>\n</ul><li><span style="font-size: medium;" size="3"></span><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Comprobantes de ingreso:</span></li>\n<ul><li><strong> <span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Asalariados:</span></strong></li>\n<ul><li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Certificado Laboral, indicando ingreso mensual, antigüedad y cargo.</span></li>\n<li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Liquidación de sueldos; 3 últimos meses.</span></li>\n</ul><li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri"></span><strong><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Profesional Independiente:</span></strong></li>\n<ul><li><span style="font-size: medium;" size="3"></span><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">6 últimos pagos de I.V.A.</span></li>\n</ul></ul></ul><p> </p>\n<h1><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">PERSONA JURIDICA</span></h1>\n<p></p>\n<ul><li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Copia del<span> </span>RUC.</span></li>\n<li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Patente Comercial, del semestre y en año en<span> </span>curso.</span></li>\n<li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">6 últimos pagos de<span> </span>I.V.A.</span></li>\n<li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Estados contables de los 2 últimos<span> </span>años.</span></li>\n<li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Comprobante de pago de Impuesto a la Renta, formulario 101, 2 últimos<span> </span>años.</span></li>\n<li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Fotocopia de extractos de cuentas bancarias, de los 3 últimos meses, si<span> </span>tuviere.</span></li>\n<li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Copia de C.I. vigente, ambos lados, de los representantes legales.<span> </span>(*)</span></li>\n<li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Copia de la constitución de la sociedad y modificaciones, si las hubiere.<span> </span>(*)</span></li>\n<li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Ultima Acta de Asamblea donde conste la distribución de cargos, para S.A.<span> </span>(*)</span></li>\n<li><span style="font-family: Calibri;" face="Calibri"><span style="font-size: medium;" size="3">Copia de Poderes, vigentes e inscriptos, si hubieren.<span> </span><span>(*)</span></span></span></li>\n<li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Detalle actualizado de accionistas.</span></li>\n</ul><p><b><i><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Otros documentos aplican en caso de ser Persona Jurídica constituida en el exterior.</span></i></b></p>\n<p><span style="font-family: Calibri;" face="Calibri"><span style="font-size: medium;" size="3">(*) Copias autenticadas por escribanía</span></span></p>\n<p><b> </b><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Llenado y firmado de los formularios proveídos por Avalon S.A. Casa de Bolsa.</span></p>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 5, 244),
(289, 'GeneralPage', '2019-06-26 11:39:17', '2019-06-26 12:09:48', 'informacion-financiera', 'Informacion Financiera', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 2, 244),
(290, 'GeneralPage', '2019-06-26 11:39:17', '2019-09-04 20:24:50', 'estatuto', 'Estatuto', NULL, '<p>DJHFSKJD</p>\n<p><a href="[file_link,id=715]">ESTATUTO</a></p>\n<p></p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 8, 289),
(291, 'GeneralPage', '2019-06-26 11:39:17', '2019-09-04 20:25:01', 'estados-contables', 'Estados Contables', NULL, '<p>DJHFSKJD</p>\n<p><a href="[file_link,id=]">ACTA DE DIRECTORIO 2019</a></p>\n<p></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 3, 289),
(295, 'GeneralPage', '2019-05-23 21:55:54', '2019-06-26 12:32:51', 'nuestros-servicios', 'Nuestros Servicios', NULL, '<div class="row"><i class="fa fa-check" style="padding-right: 10px;"></i> Asesoramiento bursátil</div>\n<div class="row"><i class="fa fa-check" style="padding-right: 10px;"></i> Diseño y estructuración de nuevas emisiones</div>\n<div class="row"><i class="fa fa-check" style="padding-right: 10px;"></i> Administración de portafolio de inversiones</div>\n<div class="row"><i class="fa fa-check" style="padding-right: 10px;"></i> Acceso a mercado de capitales de renta fija y variable.</div>\n<div class="row"><i class="fa fa-check" style="padding-right: 10px;"></i> Asesoramiento para cotizar en bolsa</div>\n<div class="row"><i class="fa fa-check" style="padding-right: 10px;"></i> Elaboración de planes de negocios</div>\n<div class="row"><i class="fa fa-check" style="padding-right: 10px;"></i> Atención personalizada conforme al perfil del inversor.</div>', NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 3, 0),
(301, 'InstitucionalPage', '2019-11-08 21:27:23', '2019-11-10 22:24:21', 'institucional', 'Institucional', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 4, 0),
(302, 'TarjetaPage', '2019-11-10 22:46:02', '2019-11-10 23:06:07', 'derecho-de-autor', 'Derecho de Autor', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 3, 0),
(303, 'Page', '2019-11-10 23:15:28', '2019-11-10 23:16:00', 'propiedad-industrial', 'Propiedad Industrial', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 3, 0),
(304, 'TarjetaPage', '2019-11-10 23:34:14', '2019-11-10 23:35:07', 'marcas', 'Marcas', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 2, 303),
(305, 'TarjetaPage', '2019-11-10 23:43:28', '2019-11-10 23:44:26', 'patentes', 'Patentes', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 2, 303);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `SiteTree_EditorGroups`
--

CREATE TABLE IF NOT EXISTS `SiteTree_EditorGroups` (
  `ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `SiteTree_EditorGroups`
--

INSERT INTO `SiteTree_EditorGroups` (`ID`, `SiteTreeID`, `GroupID`) VALUES
(1, 244, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `SiteTree_ImageTracking`
--

CREATE TABLE IF NOT EXISTS `SiteTree_ImageTracking` (
  `ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `FileID` int(11) NOT NULL DEFAULT '0',
  `FieldName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1165 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `SiteTree_ImageTracking`
--

INSERT INTO `SiteTree_ImageTracking` (`ID`, `SiteTreeID`, `FileID`, `FieldName`) VALUES
(3, 14, 12, 'Content'),
(6, 16, 15, 'Content'),
(9, 18, 17, 'Content'),
(94, 10, 18, 'Content'),
(95, 10, 20, 'Content'),
(96, 10, 21, 'Content'),
(97, 10, 22, 'Content'),
(184, 66, 63, 'Content'),
(807, 96, 108, 'Content'),
(822, 9, 52, 'Content'),
(973, 62, 61, 'Content'),
(992, 84, 86, 'Content'),
(1065, 155, 335, 'Content'),
(1066, 157, 335, 'Content'),
(1101, 105, 535, 'Content'),
(1102, 105, 536, 'Content'),
(1121, 192, 606, 'Content'),
(1129, 209, 633, 'Content'),
(1145, 67, 643, 'Content'),
(1148, 219, 663, 'Content'),
(1164, 290, 715, 'Content');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `SiteTree_LinkTracking`
--

CREATE TABLE IF NOT EXISTS `SiteTree_LinkTracking` (
  `ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `ChildID` int(11) NOT NULL DEFAULT '0',
  `FieldName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `SiteTree_Live`
--

CREATE TABLE IF NOT EXISTS `SiteTree_Live` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SiteTree','Page','ErrorPage','RedirectorPage','VirtualPage','ContactPage','AcordeonPage','FullHtmlPage','GeneralPage','HomePage','InstitucionalPage','PreguntasFrecuentesPage','TarjetaPage','UserDefinedForm') DEFAULT 'SiteTree',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `URLSegment` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `MenuTitle` varchar(100) DEFAULT NULL,
  `Content` mediumtext,
  `MetaDescription` mediumtext,
  `ExtraMeta` mediumtext,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=306 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `SiteTree_Live`
--

INSERT INTO `SiteTree_Live` (`ID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `Version`, `ParentID`) VALUES
(1, 'HomePage', '2015-07-21 17:15:05', '2019-11-07 19:27:01', 'home', 'Inicio', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 12, 0),
(4, 'ErrorPage', '2015-07-21 17:15:06', '2019-06-05 22:27:46', 'pagina-no-encontrada', 'Página no encontrada', NULL, '<p>Lo sentimos, parece que intentaste acceder a una página que no existe.</p><p>Por favor, comprueba que la URL que intentabas acceder está bien escrita e inténtalo de nuevo.</p>', NULL, NULL, 0, 0, 10, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(5, 'ErrorPage', '2015-07-21 17:15:07', '2019-06-05 22:27:46', 'error-de-servidor', 'Error de servidor', NULL, '<p>Lo sentimos, hubo un problema al gestionar tu solicitud.</p>', NULL, NULL, 0, 0, 11, 0, 0, NULL, 'Inherit', 'Inherit', 2, 0),
(250, 'GeneralPage', '2019-05-23 21:08:15', '2019-06-05 22:27:46', 'capital-de-riesgo', 'Capital de Riesgo', NULL, '<p><span>Hace referencia a empresas que invierten en los fondos de capital de riesgo, que canalizan grandes sumas de dinero hacia nuevos negocios de alto riesgo y alta rentabilidad, poniendo a disposición de una nueva generación de emprendedores suficiente cantidad de dinero como para enfrentarse a empresas ya existentes.</span></p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 5, 176),
(251, 'GeneralPage', '2019-05-23 21:08:15', '2019-06-05 22:27:46', 'capital-de-riesgo-2', 'Crédito al Consumo', NULL, '<p>Se le llama crédito al consumo o crédito de adquisición de bienes de consumo duradero al producto que se otorga para comprar un bien o servicio de uso personal en plazos determinados.</p>\n<p>Por lo común se aplica a bienes de uso duradero, como automóviles, muebles neveras, televisores, entre otros.</p>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 4, 176),
(252, 'GeneralPage', '2019-05-23 21:08:15', '2019-06-05 22:27:46', 'commodities-financieros', 'Commodities Financieros', NULL, '<p><span>Un commodity es todo aquello que sea subyacente en un contrato de futuros de una bolsa de commodities establecida, el mercado de futuros más conocido es el de Chicago, Estados Unidos.</span></p>', NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 4, 176),
(253, 'GeneralPage', '2019-05-23 21:08:15', '2019-06-05 22:27:46', 'deflacion', 'Deflación', NULL, '<p>La deflación es la caída generalizada del nivel de precios de bienes y servicios en una economía.</p>\n<p>Es el movimiento contrario a la inflación. Es la situación económica en que los precios disminuyen y es producida por una falta de demanda, y es mucho más peligrosa y temida por los gobiernos que la inflación.</p>', NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 4, 176),
(254, 'GeneralPage', '2019-05-23 21:08:15', '2019-06-05 22:27:46', 'devaluacion', 'Devaluación', NULL, '<p>La cooperativa trabaja para el desarrollo sostenible de su comunidad por medio de políticas aceptadas por sus miembros.</p>\n<p>Desarrollo sostenible de su comunidad: Las cooperativas están íntimamente ligadas a sus comunidades. Tienen la responsabilidad especial de asegurar la continuidad del desarrollo de su comunidad en los aspectos económicos, sociales y culturales, y trabajar constantemente por la protección ambiental de su comunidad.</p>\n<p>Queda en manos de sus socias y socios decidir que tanto y en qué forma una cooperativa debe contribuir con su comunidad.</p>', NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 4, 176),
(244, 'GeneralPage', '2019-05-23 21:55:54', '2019-09-13 16:01:44', 'quienes-somos', 'Quiénes somos', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'OnlyTheseUsers', 'OnlyTheseUsers', 15, 0),
(286, 'GeneralPage', '2019-06-26 11:23:36', '2019-09-04 20:24:11', 'como-ser-cliente', '¿Cómo ser cliente?', NULL, '<p><span>Para ser cliente, sólo debe contactarse con <strong>Avalon Casa de Bolsa S.A.</strong></span></p>\n<p><span>Cuando usted se pone en contacto con nosotros, nuestros ejecutivos le ayudarán a completar una ficha como cliente y a partir de ese momento, comenzaremos a buscar las mejores opciones de inversión, cualquiera sea su necesidad, previo acuerdo entre las partes acerca de los requisitos y condiciones.</span></p>\n<p><span>El deseo de operar con la <strong>Casa de Bolsa</strong> puede originarse por la necesidad de buscar la optimización de los recursos, tanto para aquel que posee capital y lo desea invertir para lograr una rentabilidad por el mismo como aquel que necesita de capital en condiciones ventajosas para realizar inversiones.</span></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 4, 244),
(288, 'GeneralPage', '2019-05-23 21:55:54', '2019-06-26 11:43:52', 'como-operar', '¿Cómo operar?', NULL, '<p><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Para operar con la Casa de Bolsa, simplemente debe acercarse, o llamarnos por teléfono a nuestras oficinas o bien remitirnos un e-mail, comenzando de esa manera nuestra labor de asesoramiento personal.</span></p>\n<p><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">En nuestras oficinas, contamos con ejecutivos capacitados para evacuar todas las dudas que pudiera tener acerca de cómo operar con nosotros, ofrecerle los servicios que ponemos a su alcance para satisfacer sus necesidades, brindándole los diferentes opciones de inversión que se adapten mejor a su necesidad de rentabilidad y de capital que desea invertir</span></p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 3, 244),
(287, 'GeneralPage', '2019-06-26 11:39:17', '2019-09-04 20:24:37', 'requisitos', 'Requisito', 'Requisitos', '<p><span style="font-family: arial black,avant garde; font-size: medium;"><b>REQUISITOS GENERALES DE IDENTIFICACIÓN DE CLIENTES</b></span></p>\n<h1></h1>\n<h1><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">PERSONAS FISICAS</span></h1>\n<ul><li><span style="font-size: medium;" size="3"></span><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Copia de Cedula de Identidad vigente, ambos lados.</span></li>\n<li><span style="font-size: medium;" size="3"></span><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Copia de factura de servicio público, último mes.</span></li>\n<li><span style="font-size: medium;" size="3"></span><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">En el caso de extranjeros:</span></li>\n<ul><li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Fotocopia autenticada del Carnet de Admisión Permanente, vigente, ambos lados.</span></li>\n<li><span style="font-size: medium;" size="3"></span><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Fotocopia autenticada del Pasaporte o Documento nacional de identidad del país de origen.</span></li>\n</ul><li><span style="font-size: medium;" size="3"></span><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Comprobantes de ingreso:</span></li>\n<ul><li><strong> <span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Asalariados:</span></strong></li>\n<ul><li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Certificado Laboral, indicando ingreso mensual, antigüedad y cargo.</span></li>\n<li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Liquidación de sueldos; 3 últimos meses.</span></li>\n</ul><li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri"></span><strong><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Profesional Independiente:</span></strong></li>\n<ul><li><span style="font-size: medium;" size="3"></span><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">6 últimos pagos de I.V.A.</span></li>\n</ul></ul></ul><p> </p>\n<h1><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">PERSONA JURIDICA</span></h1>\n<p></p>\n<ul><li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Copia del<span> </span>RUC.</span></li>\n<li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Patente Comercial, del semestre y en año en<span> </span>curso.</span></li>\n<li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">6 últimos pagos de<span> </span>I.V.A.</span></li>\n<li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Estados contables de los 2 últimos<span> </span>años.</span></li>\n<li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Comprobante de pago de Impuesto a la Renta, formulario 101, 2 últimos<span> </span>años.</span></li>\n<li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Fotocopia de extractos de cuentas bancarias, de los 3 últimos meses, si<span> </span>tuviere.</span></li>\n<li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Copia de C.I. vigente, ambos lados, de los representantes legales.<span> </span>(*)</span></li>\n<li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Copia de la constitución de la sociedad y modificaciones, si las hubiere.<span> </span>(*)</span></li>\n<li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Ultima Acta de Asamblea donde conste la distribución de cargos, para S.A.<span> </span>(*)</span></li>\n<li><span style="font-family: Calibri;" face="Calibri"><span style="font-size: medium;" size="3">Copia de Poderes, vigentes e inscriptos, si hubieren.<span> </span><span>(*)</span></span></span></li>\n<li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Detalle actualizado de accionistas.</span></li>\n</ul><p><b><i><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Otros documentos aplican en caso de ser Persona Jurídica constituida en el exterior.</span></i></b></p>\n<p><span style="font-family: Calibri;" face="Calibri"><span style="font-size: medium;" size="3">(*) Copias autenticadas por escribanía</span></span></p>\n<p><b> </b><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Llenado y firmado de los formularios proveídos por Avalon S.A. Casa de Bolsa.</span></p>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 5, 244),
(176, 'AcordeonPage', '2016-11-07 14:45:42', '2019-06-05 22:27:46', 'glosario', 'Glosario', NULL, NULL, NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 11, 0),
(263, 'GeneralPage', '2019-05-22 17:08:27', '2019-06-05 22:27:46', 'que-es-un-titulo-valor', 'Qué es un título valor', NULL, '<p>Es un activo o instrumento financiero emitido por emisores que representan una obligación que estos han contraído con su poseedor.</p>\n<p>En función a quien emite dichos valores negociables, pueden ser los mismos títulos valores corporativos, emitidos por empresas privadas o títulos valores del sector público los cuales son emitidos por el estado o alguna de sus entidades dependientes. Así también, los títulos valores pueden representar una participación en el capital de una sociedad como en el caso de las acciones.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 6, 224),
(264, 'GeneralPage', '2019-05-22 17:08:27', '2019-06-05 22:27:46', 'que-es-el-mercado-de-valores-quienes-son-sus-componentes', '¿Qué es el Mercado de Valores? ¿Quiénes son sus componentes?', NULL, '<p>Uno de los Subsistemas componentes del Sistema Financiero Paraguayo es el Mercado de Valores.</p>\n<p>Este mercado es aquel en el cual se comercializan los títulos valores, conocidos también como valores negociables o activos financieros simplemente.</p>\n<p><strong>En este mercado se cuenta básicamente con los siguientes componentes:</strong></p>\n<ol><li><strong>La Comisión Nacional de Valores (CNV):</strong> es el ente regulador del mercado, y está relacionado con el Poder Ejecutivo por medio del Ministerio de Industria y Comercio.</li>\n<li><strong>La Bolsa de Valores y Productos de Asunción S.A (BVPASA):</strong> es una entidad sin fines de lucro (determinado por Ley y por sus propios Estatutos), que pone a disposición de los intermediarios su infraestructura organizacional y tecnológica para hacer viables las operaciones de compra venta de valores negociables entre ellas.</li>\n<li><strong>Las Casas de Bolsa:</strong> son los intermediarios financieros del Mercado de Valores, son las única sociedades autorizadas a operar en el mismo por cuenta, orden y riesgo de sus clientes.</li>\n<li><strong>Empresas Emisoras:</strong> son todas aquellas personas jurídicas que emiten títulos valores al mercado para la captación de recursos financieros que le permitan efectuar sus inversiones en activos fijos o en activos circulantes.</li>\n<li><strong>Inversionistas:</strong> son todas aquellas personas físicas o jurídica que compran y venden títulos valores con el objeto de obtener mejores rendimientos financieros para sus recursos.</li>\n</ol>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 3, 224),
(223, 'ContactPage', '2019-05-22 22:34:38', '2019-09-05 21:09:07', 'contacto', 'Contacto', NULL, NULL, NULL, NULL, 0, 0, 9, 0, 0, NULL, 'Inherit', 'Inherit', 10, 0),
(224, 'PreguntasFrecuentesPage', '2019-05-23 16:38:28', '2019-09-04 20:25:48', 'preguntas-frecuentes', 'Preguntas Frecuentes', NULL, NULL, NULL, NULL, 0, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 4, 0),
(276, 'GeneralPage', '2019-05-22 17:08:27', '2019-06-05 22:27:46', 'que-valores-negociables-se-compran-y-venden-en-el-mercado-de-valores', '¿Qué valores negociables se compran y venden en el Mercado de Valores?', NULL, '<p><span>En nuestro mercado, actualmente, las principales negociaciones se realizan sobre los Instrumentos de Renta Fija, los bonos corporativos, los pagarés y los cupones principalmente, y en menor medida con las acciones.</span></p>', NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 3, 224),
(248, 'GeneralPage', '2019-05-23 21:07:41', '2019-06-05 22:27:46', 'bonos', 'Bonos', NULL, '<p>El Bono es un título de deuda, de renta fija, emitido por un Estado, por un gobierno regional, por un municipio o por una empresa industrial, comercial o de servicios.</p>\n<p>También puede ser emitido por una institución supranacional, con el objetivo de obtener fondos directamente de los mercados financieros. El emisor se compromete a devolver el capital principal junto con los intereses.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 12, 176),
(249, 'GeneralPage', '2019-05-23 21:09:03', '2019-06-05 22:27:46', 'acciones', 'Acciones', NULL, '<p>Una acción es una parte proporcional del capital social de una sociedad anónima. Representa la propiedad que una persona tiene de una parte de esa sociedad. Normalmente, salvo excepciones, las acciones son transmisibles libremente y otorgan derechos económicos y políticos a su titular (accionista).</p>\n<p>Como inversión, supone una inversión en renta variable, dado que no tiene un retorno fijo establecido por contrato, sino que depende de la buena marcha de dicha empresa.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 4, 176),
(284, 'GeneralPage', '2019-05-23 21:55:54', '2019-06-26 11:20:52', 'nosotros-2', 'Nosotros', NULL, '<h4>¿Qué es una casa de bolsa?</h4>\n<p>Para comprender mejor el significado de la <strong>Casa de Bolsa</strong>, antes debemos comprender el de la <strong>Bolsa de Valores</strong>.</p>\n<p>Una bolsa de valores es una organización privada que brinda las facilidades necesarias para que sus miembros, atendiendo los mandatos de sus clientes, realicen negociaciones de compra venta de valores, tales como acciones de sociedades o compañías anónimas, bonos públicos y privados, certificados, títulos de participación y una amplia variedad de instrumentos de inversión.</p>\n<p>La negociación de los valores en los mercados bursátiles se hace con base a unos precios conocidos y en tiempo real, en un entorno seguro para la actividad de los inversionistas, donde el mecanismo de las transacciones está totalmente regulado, lo que da garantía de legalidad y seguridad.</p>\n<p>Las bolsas de valores fortalecen al mercado de capitales e impulsan el desarrollo económico y financiero en la mayoría de los países del mundo, donde existen en algunos casos desde hace muchos años, a partir de las primeras entidades de este tipo creadas en los primeros años del siglo XVII.</p>\n<p>La negociación de valores en las bolsas se efectúa a través de los miembros de la Bolsa, conocidos usualmente con el nombre de corredores, sociedades de corretaje de valores, casas de bolsa, agentes o comisionistas, de acuerdo a la denominación que reciben en las leyes de cada país, quienes hacen su labor a cambio de una comisión.</p>\n<p>Las casas de bolsa son entidades, que actúan como intermediarios facultados para llevar a cabo operaciones de compra y venta de valores cotizados en la Bolsa de Valores. Además de esta función, las casas de bolsa actúan como consejeros de sus clientes. Como se ve, las casas de bolsa prestan dos servicios, el de intermediación y el de asesoría, por los cuales cobran comisiones.</p>\n<p>La función de las casas de bolsa es la de facilitar el contacto y el intercambio entre los poseedores de las acciones y los posibles compradores de éstas.</p>\n<p><strong>En Paraguay, según la Ley 1284/98, en su art. 105, las casas de bolsa están facultadas para efectuar las siguientes operaciones:</strong></p>\n<ol><li>comprar y vender valores por cuenta de terceros y también por cuenta propia, con recursos propios, en la bolsa o fuera de ella;</li>\n<li>prestar asesoría en materia de valores y operaciones de bolsa así como brindar a sus clientes un sistema de información y de procesamiento de datos;</li>\n<li>suscribir transitoriamente, con recursos propios, parte o la totalidad de emisiones primarias de valores;</li>\n<li>promover el lanzamiento de valores públicos y privados y facilitar su colocación;</li>\n<li>actuar como representante de los obligacionistas;</li>\n<li>prestar servicios de administración de carteras y custodia de valores;</li>\n<li>llevar el registro contable de valores de sus clientes con sujeción a lo establecido en la presente ley, o en las resoluciones que dicte la Comisión al efecto;</li>\n<li>otorgar créditos, con sus propios recursos, únicamente con el objeto de facilitar la adquisición de valores por sus comitentes, estén o no inscritos en bolsa y con la garantía de tales valores;</li>\n<li>recibir créditos de empresas del sistema financiero para la realización de las actividades que les son propias; y,</li>\n<li>efectuar todas las operaciones y servicios que sean compatibles con la actividad de intermediación en el mercado de valores y que previamente y de manera general autorice la Comisión.</li>\n</ol>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 2, 244),
(266, 'GeneralPage', '2019-05-22 17:08:27', '2019-06-05 22:27:46', 'quien-es-el-regulador-del-mercado-de-valores-en-el-paraguay', '¿Quién es el regulador del Mercado de Valores en el Paraguay', NULL, '<p>En nuestro país, la Comisión Nacional de Valores es la entidad responsable de regular, supervisar y fomentar las actividades del Mercado de Valores como mecanismo alternativo de inversión, captación y canalización de recursos, para la capitalización de empresas y el financiamiento de proyectos de mediano y largo plazo, dentro de un marco de transparencia, seguridad y credibilidad, mediante la entrega de información pertinente, completa y oportuna a los diferentes actores del mismo.</p>', NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 3, 224),
(267, 'GeneralPage', '2019-05-22 17:08:27', '2019-06-05 22:27:46', 'que-tipo-de-persona-juridica-tiene-la-bvpasa', '¿Qué tipo de persona jurídica tiene la BVPASA?', NULL, '<p>La BVPASA opera bajo la figura jurídica de Sociedad Anónima, pero de acuerdo a las normativas legales vigentes, la misma se adecua dentro de la figura de Organizaciones sin Fines de Lucro (ONGs), debido a que por sus Estatutos Sociales y la propia Ley del Mercado de Valores, tanto esta como cualquier otra Bolsa en nuestro país tiene expresamente prohibido distribuir utilidades.</p>', NULL, NULL, 0, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 4, 224),
(268, 'GeneralPage', '2019-05-22 17:08:27', '2019-06-05 22:27:46', 'quien-o-quienes-pueden-operar-en-la-bvpasa', '¿Quién o quiénes pueden operar en la BVPASA?', NULL, '<p>En los recintos de la BVPASA, solo los representantes autorizados de las Casas de Bolsa, conocidos también como Operadores de Bolsa, son los únicos autorizados para efectuar las operaciones por cuenta, orden y riesgo de sus clientes.¿Contribuye en algo la Bolsa de Valores y Productos de Asunción en el desarrollo del país?</p>\n<p>El Mercado de Valores contribuye en todas sus negociaciones en el desarrollo del Paraguay, ya que una de sus funciones principales es transformar el excedente de ahorro en inversiones, las cuales son aplicadas en empresas generadoras de mano de obra y de recursos, los cuales directa e indirectamente colaboran en el mejoramiento del PIB, por medio la transparencia, la equidad, y la eficiencia.</p>', NULL, NULL, 0, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 4, 224),
(269, 'GeneralPage', '2019-05-22 17:08:27', '2019-06-05 22:27:46', 'que-hace-falta-para-abrir-una-casa-de-bolsa', '¿Qué hace falta para abrir una Casa de Bolsa?', NULL, '<p>Los requisitos que deben cumplir todas las Casas de Bolsa son:</p>\n<ol><li>Constituirse como sociedades anónimas de objeto exclusivo</li>\n<li>Contar con el capital social mínimo de cuatrocientos salarios mínimos mensuales establecidos para trabajadores de actividades diversas no especificadas;</li>\n<li>Constituir las garantías en la forma y por los montos determinados en las normativas legales vigentes;</li>\n<li>No haber solicitado convocatoria de acreedores ni haberse declarado su quiebra; y,</li>\n<li>Cualquier otro requisito que la C.N.V determine por medio de normas de carácter general.</li>\n</ol>', NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 3, 224),
(270, 'GeneralPage', '2019-05-22 17:08:27', '2019-06-05 22:27:46', 'como-se-hace-para-invertir-via-bolsa', '¿Cómo se hace para invertir vía Bolsa?', NULL, '<p>En primer lugar, se debe identificar cuales son las Casas de Bolsa habilitadas para operar en la BVPASA, visitando o llamando a las mismas a fin de contactar con un Asesor de Inversión.</p>\n<p>Tras las reuniones mantenidas con el mismo, y una vez obtenida toda la información requerida, el potencial inversionista debe sopesar las diversas alternativas de inversión y optar por una o por un conjunto de ellas. Dicha decisión debe ser comunicada al Asesor de Inversión seleccionado, el cual debe en primer lugar establecer una relación contractual con el nuevo inversionista para luego ejecutar las órdenes recibidas de este por su cuenta, orden y riesgo.</p>\n<p>Terminados los pasos previos, los Asesores de Inversión transmiten las órdenes recibidas a su operador en la Bolsa, o ingresan al sistema de negociación electrónicas las mismas, a fin de que estás sean debidamente ejecutadas de acuerdo a lo dispuesto por el cliente. La Casa de Bolsa dispone de hasta 48 horas hábiles bancarias para recepcionar el efectivo de su cliente y entregar al mismo los activos financieros que fueran adquiridos en su nombre.</p>\n<p>Es muy importante destacar que todo inversionista debe hacer el seguimiento de las empresas emisoras en las cuales ha invertido, analizando sus estados contables periódicos y tomando conocimiento de cualquier tipo de información que el mismo proporcione al mercado.</p>', NULL, NULL, 0, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 3, 224),
(271, 'GeneralPage', '2019-05-22 17:08:27', '2019-06-05 22:27:46', 'que-son-los-precios-de-cierre-de-los-titulos-valores-que-se-cotizan-en-la-bvpasa', '¿Qué son los precios de cierre de los títulos valores que se cotizan en la BVPASA?', NULL, '<p>Son todos aquellos precios que reflejan las mejores cotizaciones tanto de compra como de venta para un valor negociable específico durante una Rueda de Negociación, y son puesto a conocimiento del mercado una vez de finalizada la jornada diaria. El acceso a dichos precios puede ser tanto en el web site de la BVPASA, como así también, en las oficinas de la misma.</p>', NULL, NULL, 0, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 3, 224),
(272, 'GeneralPage', '2019-05-22 17:08:27', '2019-06-05 22:27:46', 'que-es-una-calificadora-de-riesgo', '¿Qué es una Calificadora de Riesgo?', NULL, '<p>Es una empresa de objeto exclusivo, cuya función es la calificación de riesgo de una empresa en función a su solvencia principalmente, es decir, la capacidad que tiene la misma para hacer frente a sus obligaciones.</p>\n<p>Las evaluaciones que realizan estas empresas están sustentadas en los Estados Contables básicamente, y en otras informaciones que las mismas consideren de importancia en el giro del negocio y que el mercado deba tener conocimiento de las mismas.</p>\n<p>Estos estudios son opiniones profesionales e imparciales sobre la probabilidad de impago de una obligación, lo que no representa una recomendación de inversión para ninguna persona física o jurídica en particular.</p>', NULL, NULL, 0, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 3, 224),
(273, 'GeneralPage', '2019-05-22 17:08:27', '2019-06-05 22:27:46', 'que-es-la-tasa-libor', '¿Qué es la tasa LIBOR?', NULL, '<p>Se le denomina Tasa LIBOR (London Interbanking Offered Rate), a la tasa de interés que se determina día a día en el mercado interbancario en Londres, para los créditos y empréstitos internacionales de tipo fluctuante.</p>', NULL, NULL, 0, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 7, 224),
(274, 'GeneralPage', '2019-05-22 17:08:27', '2019-06-05 22:27:46', 'que-es-la-tasa-prime', '¿Qué es la tasa PRIME?', NULL, '<p>La Tasa PRIME (preferencial) es el tipo de interés aplicado por los grandes bancos de Estados Unidos para los créditos y empréstitos internacionales.</p>', NULL, NULL, 0, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 3, 224),
(275, 'GeneralPage', '2019-05-22 17:08:27', '2019-06-05 22:27:46', 'que-son-los-estados-contables-para-que-se-utilizan', '¿Qué son los Estados Contables, para qué se utilizan?', NULL, '<p>Se denomina Estados Contables a todos aquellos documentos en los cuales se refleja la situación de una empresa en un momento determinado de tiempo. Dichos documentos están compuestos por el Balance General, el Estado de Resultados, Estado de Evolución del Patrimonio, Estado de Origen y Aplicación de Fondos, Informaciones Complementarias y Anexos.</p>\n<p>Por medio de las diferentes herramientas de análisis financiero, el responsable de dichos estudios aplicará las diversas técnicas que le permitan interpretar los resultados expuestos en los Estados Contables de una empresa emisora en particular.</p>', NULL, NULL, 0, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 3, 224),
(289, 'GeneralPage', '2019-06-26 11:39:17', '2019-06-26 12:09:49', 'informacion-financiera', 'Informacion Financiera', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 2, 244),
(290, 'GeneralPage', '2019-06-26 11:39:17', '2019-09-04 20:24:50', 'estatuto', 'Estatuto', NULL, '<p>DJHFSKJD</p>\n<p><a href="[file_link,id=715]">ESTATUTO</a></p>\n<p></p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 8, 289),
(291, 'GeneralPage', '2019-06-26 11:39:17', '2019-09-04 20:25:01', 'estados-contables', 'Estados Contables', NULL, '<p>DJHFSKJD</p>\n<p><a href="[file_link,id=]">ACTA DE DIRECTORIO 2019</a></p>\n<p></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 3, 289),
(295, 'GeneralPage', '2019-05-23 21:55:54', '2019-06-26 12:32:51', 'nuestros-servicios', 'Nuestros Servicios', NULL, '<div class="row"><i class="fa fa-check" style="padding-right: 10px;"></i> Asesoramiento bursátil</div>\n<div class="row"><i class="fa fa-check" style="padding-right: 10px;"></i> Diseño y estructuración de nuevas emisiones</div>\n<div class="row"><i class="fa fa-check" style="padding-right: 10px;"></i> Administración de portafolio de inversiones</div>\n<div class="row"><i class="fa fa-check" style="padding-right: 10px;"></i> Acceso a mercado de capitales de renta fija y variable.</div>\n<div class="row"><i class="fa fa-check" style="padding-right: 10px;"></i> Asesoramiento para cotizar en bolsa</div>\n<div class="row"><i class="fa fa-check" style="padding-right: 10px;"></i> Elaboración de planes de negocios</div>\n<div class="row"><i class="fa fa-check" style="padding-right: 10px;"></i> Atención personalizada conforme al perfil del inversor.</div>', NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 3, 0),
(301, 'InstitucionalPage', '2019-11-08 21:27:23', '2019-11-10 22:24:21', 'institucional', 'Institucional', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 4, 0),
(302, 'TarjetaPage', '2019-11-10 22:46:02', '2019-11-10 23:06:07', 'derecho-de-autor', 'Derecho de Autor', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 3, 0),
(303, 'Page', '2019-11-10 23:15:28', '2019-11-10 23:16:00', 'propiedad-industrial', 'Propiedad Industrial', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 3, 0),
(304, 'TarjetaPage', '2019-11-10 23:34:14', '2019-11-10 23:35:07', 'marcas', 'Marcas', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 2, 303),
(305, 'TarjetaPage', '2019-11-10 23:43:28', '2019-11-10 23:44:26', 'patentes', 'Patentes', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 2, 303);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `SiteTree_versions`
--

CREATE TABLE IF NOT EXISTS `SiteTree_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('SiteTree','Page','ErrorPage','RedirectorPage','VirtualPage','ContactPage','AcordeonPage','FullHtmlPage','GeneralPage','HomePage','InstitucionalPage','PreguntasFrecuentesPage','TarjetaPage','UserDefinedForm') DEFAULT 'SiteTree',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `URLSegment` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `MenuTitle` varchar(100) DEFAULT NULL,
  `Content` mediumtext,
  `MetaDescription` mediumtext,
  `ExtraMeta` mediumtext,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2037 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `SiteTree_versions`
--

INSERT INTO `SiteTree_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `ParentID`) VALUES
(1658, 176, 1, 1, 1, 1, 'AcordeonPage', '2016-11-07 14:45:42', '2019-04-23 17:56:30', 'valores-y-principios', 'Valores y Principios', NULL, '<h2>VALORES COPACONS LTDA.</h2>\n<ul><li>HONESTIDAD</li>\n<li>TRANSPARENCIA</li>\n<li>INTEGRIDAD</li>\n<li>EFICIENCIA</li>\n<li>COMPROMISO</li>\n<li>RESPETO</li>\n<li>FIDELIDAD</li>\n</ul><p></p>\n<h2>LOS 7 PRINCIPIOS DEL COOPERATIVISMO</h2>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(1659, 176, 2, 1, 1, 1, 'AcordeonPage', '2016-11-07 14:45:42', '2019-04-23 17:59:15', 'valores-y-principios', 'Valores y Principios', NULL, '<h2>DEFINICIONES</h2>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(1660, 39, 1, 1, 1, 1, 'Page', '2015-09-14 14:50:32', '2019-04-23 17:59:55', '1er-principionuevo-pagina', 'Acciones', NULL, '<p>Una acción es una parte proporcional del capital social de una sociedad anónima. Representa la propiedad que una persona tiene de una parte de esa sociedad. Normalmente, salvo excepciones, las acciones son transmisibles libremente y otorgan derechos económicos y políticos a su titular (accionista).</p>\n<p>Como inversión, supone una inversión en renta variable, dado que no tiene un retorno fijo establecido por contrato, sino que depende de la buena marcha de dicha empresa.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 176),
(1661, 43, 1, 1, 1, 1, 'Page', '2015-09-18 08:52:35', '2019-04-23 18:01:39', 'nuevo-pagina', 'Bonos', NULL, '<div class="justificado">\n<p>Las cooperativas son organizaciones democráticas controladas por sus socias y socios, quiénes participan activamente en la definición de las políticas y en la toma de decisiones. Los hombres y mujeres elegidos para representar a su cooperativa, responden ante socias y socios. Organizaciones democráticas: Dentro de las cooperativas, la "democracia" considera los derechos y las responsabilidades. También significa que fomenta el espíritu de democracia dentro de las mismas.</p>\n<p>Igual derecho a voto: Cada cooperativa conoce cual es la mejor forma y más democrática de hacerlo, de acuerdo a las características de la misma. En las cooperativas de base, socias y socios tienen igual derecho a voto (un miembro, un voto). En cooperativas secundarias y terciarias, los sistemas de votación proporcional han sido adaptados para que reflejen la diversidad de intereses, el número de miembros en las cooperativas asociadas y el compromiso dentro de las cooperativas involucradas.</p>\n<p>"Las cooperativas son organizaciones democráticas controladas por sus miembros, quienes participan activamente en la definición de sus políticas y en la toma de decisiones": Esta oración recalca que socias y socios controlan en última instancia su cooperativa, acentúa que lo hacen democráticamente, reafirma el derecho de socias y socios a involucrase activamente en la determinación de políticas y en la toma de decisiones claves.</p>\n<p>En muchas cooperativas, este involucramiento activo se da en las reuniones generales en las que se discuten las políticas, se toman decisiones importantes y se aprueban acciones. En otras cooperativas, como las de trabajo, de mercadeo o de vivienda, los miembros se involucran más rutinariamente en las operaciones diarias de la cooperativa.</p>\n<p>En todas las cooperativas, "los hombres y las mujeres que han sido elegidos para representar a sus cooperativas, responden ante sus miembros". Las y los representantes deben mantener sus funciones para beneficio de sus socias y socios de inmediato o a largo plazo. Las cooperativas no "pertenecen" a las y los dirigentes electos en mayor medida de la que "pertenecen" a las y los funcionarios. Pertenecen a socias y socios, y todas y todos las y los dirigentes son responsables de sus acciones ante socias y socios, tanto en el tiempo de elección</p>\n</div>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 176),
(1662, 44, 1, 1, 1, 1, 'Page', '2015-09-18 09:25:03', '2019-04-23 18:01:50', 'nuevo-articulo-con-acordeon', 'Capital de Riesgo', '3er. Principio "Participación Económica de los Miembros"ómica de los Miembros"', '<div class="justificado">\n<p>Los miembros contribuyen equitativamente y controlan de manera democrática el capital de la cooperativa. Por lo menos una parte de ese capital es propiedad común de la cooperativa. Usualmente reciben una compensación limitada, si es que la hay, sobre el capital suscrito como condición de membresía.</p>\n<p>Socias y socios asignan excedentes para cualquiera de los siguientes propósitos: el desarrollo de la cooperativa, posiblemente en la creación de reservas, parte de la cual sería indivisible; los beneficios a socias y socios en proporción con sus transacciones con la cooperativa; y al apoyo a otras actividades según lo apruebe la membresía.</p>\n<p>Las cooperativas operan de modo que el capital está al servicio de la organización y no al revés. Las cooperativas existen para hacer frente a las necesidades de la gente, y este Principio describe cómo socias y socios no solo invierten en las cooperativas, sino que también deciden cómo distribuir sus excedentes.</p>\n<p>"Los miembros contribuyen equitativamente y controlan, de manera democrática, el capital de la cooperativa", refuerza la necesidad de los miembros de contribuir con capital a su cooperativa, como la forma de hacerlo equitativamente; ellos pueden contribuir con capital en cuatro formas:</p>\n<p>1. En la mayoría de las cooperativas, los miembros deben invertir en una acción o acciones de membresía, que muy pocas veces paga intereses.</p>\n<p>2. Conforme prospera la cooperativa, se pueden crear reservas derivadas de los ingresos recogidos de las actividades de la organización. Normalmente, todos o por lo menos una gran proporción de estos ingresos se obtienen colectivamente, lo que representa los logros colectivos de los miembros que apoyan la cooperativa.</p>\n<p>3. Las cooperativas podrían tener necesidades de capital más altas de los que pueden ahorrar de sus actividades económicas.</p>\n<p>4. Las cooperativas podrían hacer un llamado especial a los miembros para inversiones adicionales.</p>\n<p>Socias y socios también controlan el capital en sus cooperativas:</p>\n<p>* Sin importar cómo las cooperativas obtienen el capital para sus operaciones, la autoridad final, para la toma de todas las decisiones, debe recaer sobre socias y socios.</p>\n<p>* Socias y socios deben tener derecho a poseer por lo menos parte de su capital colectivo, como reflejo de lo que han obtenido como grupo.</p>\n<p>Cuando las actividades de la cooperativa crean excedentes, socias y socios tienen el derecho y la obligación de decidir cómo serán distribuidos esos excedentes, que podrán asignarlos para cualquiera de los siguientes propósitos:</p>\n<p>a. Pueden escoger el desarrollo de la cooperativa, "posiblemente en la creación de reservas, parte de la cual sería indivisible.</p>\n<p>b. Pueden decidir pagar un beneficio a los miembros, usualmente llamado el excedente en proporción con su participación en la cooperativa.</p>\n<p>c. Pueden apoyar a otras actividades según lo apruebe la membresía. Una de las actividades más importantes que pueden y deben apoyar, es el desarrollo futuro del movimiento cooperativo, local, nacional, regional e internacional.</p>\n</div>', NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 176),
(1663, 45, 1, 1, 1, 1, 'Page', '2015-09-18 09:28:52', '2019-04-23 18:02:03', 'nuevo-pagina-2', 'Crédito al Consumo', NULL, '<div class="justificado">\n<p>"Las cooperativas son organizaciones autónomas de ayuda mutua, controladas por sus miembros". Si entran en acuerdos con otras organizaciones (incluyendo gobiernos) o tienen capital de fuentes externas, lo realizan en términos que aseguren el control democrático por parte de sus socias y socios y mantengan la autonomía de la cooperativa.</p>\n<p>Acuerdos con las organizaciones: Cada vez más cooperativas se involucran en proyectos conjuntos con el sector privado. Este principio recala la importancia de que las cooperativas mantengan su libertad con el fin de controlar su propio destino, cuando se involucren en tales acuerdos.</p>\n<p>En todas partes del mundo las cooperativas se ven muy afectadas por su relación con el estado. Los gobiernos determinan el marco legislativo dentro del cual las cooperativas pueden funcionar. En sus políticas arancelarias, económicas y sociales, los gobiernos pueden beneficiar o perjudicar su relación con las cooperativas. Por está razón todas las cooperativas deben estar alentadas al desarrollo abierto y claro de sus relaciones con los gobiernos.</p>\n<p>El principio de Autonomía remarca la necesidad esencial que tienen las cooperativas de ser autómatas.</p>\n</div>', NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 176),
(1664, 44, 2, 1, 1, 1, 'Page', '2015-09-18 09:25:03', '2019-04-23 18:02:18', 'nuevo-articulo-con-acordeon', 'Capital de Riesgo', NULL, '<div class="justificado">\n<p>Los miembros contribuyen equitativamente y controlan de manera democrática el capital de la cooperativa. Por lo menos una parte de ese capital es propiedad común de la cooperativa. Usualmente reciben una compensación limitada, si es que la hay, sobre el capital suscrito como condición de membresía.</p>\n<p>Socias y socios asignan excedentes para cualquiera de los siguientes propósitos: el desarrollo de la cooperativa, posiblemente en la creación de reservas, parte de la cual sería indivisible; los beneficios a socias y socios en proporción con sus transacciones con la cooperativa; y al apoyo a otras actividades según lo apruebe la membresía.</p>\n<p>Las cooperativas operan de modo que el capital está al servicio de la organización y no al revés. Las cooperativas existen para hacer frente a las necesidades de la gente, y este Principio describe cómo socias y socios no solo invierten en las cooperativas, sino que también deciden cómo distribuir sus excedentes.</p>\n<p>"Los miembros contribuyen equitativamente y controlan, de manera democrática, el capital de la cooperativa", refuerza la necesidad de los miembros de contribuir con capital a su cooperativa, como la forma de hacerlo equitativamente; ellos pueden contribuir con capital en cuatro formas:</p>\n<p>1. En la mayoría de las cooperativas, los miembros deben invertir en una acción o acciones de membresía, que muy pocas veces paga intereses.</p>\n<p>2. Conforme prospera la cooperativa, se pueden crear reservas derivadas de los ingresos recogidos de las actividades de la organización. Normalmente, todos o por lo menos una gran proporción de estos ingresos se obtienen colectivamente, lo que representa los logros colectivos de los miembros que apoyan la cooperativa.</p>\n<p>3. Las cooperativas podrían tener necesidades de capital más altas de los que pueden ahorrar de sus actividades económicas.</p>\n<p>4. Las cooperativas podrían hacer un llamado especial a los miembros para inversiones adicionales.</p>\n<p>Socias y socios también controlan el capital en sus cooperativas:</p>\n<p>* Sin importar cómo las cooperativas obtienen el capital para sus operaciones, la autoridad final, para la toma de todas las decisiones, debe recaer sobre socias y socios.</p>\n<p>* Socias y socios deben tener derecho a poseer por lo menos parte de su capital colectivo, como reflejo de lo que han obtenido como grupo.</p>\n<p>Cuando las actividades de la cooperativa crean excedentes, socias y socios tienen el derecho y la obligación de decidir cómo serán distribuidos esos excedentes, que podrán asignarlos para cualquiera de los siguientes propósitos:</p>\n<p>a. Pueden escoger el desarrollo de la cooperativa, "posiblemente en la creación de reservas, parte de la cual sería indivisible.</p>\n<p>b. Pueden decidir pagar un beneficio a los miembros, usualmente llamado el excedente en proporción con su participación en la cooperativa.</p>\n<p>c. Pueden apoyar a otras actividades según lo apruebe la membresía. Una de las actividades más importantes que pueden y deben apoyar, es el desarrollo futuro del movimiento cooperativo, local, nacional, regional e internacional.</p>\n</div>', NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 176),
(1665, 46, 1, 1, 1, 1, 'Page', '2015-09-18 09:31:27', '2019-04-23 18:02:29', 'nuevo-pagina-3', 'Commodities Financieros', NULL, '<div class="justificado">\n<p>El movimiento cooperativo tiene un marcado compromiso con la educación: "Las cooperativas le proporcionan educación y entrenamiento a sus miembros, representantes electos, dirigentes y empleados de modo que puedan contribuir eficazmente al desarrollo de sus cooperativas".</p>\n<p>El principio destaca la importancia vital que desempeñaron la educación y el entrenamiento a lo interno de las cooperativas. La educación significa no sólo la distribución de información o el fomento del patrocinio; significa lograr que las diferentes mentalidades de sus socias y socios, dirigentes electos y empleados comprendan totalmente la complejidad y la riqueza de la acción y pensamientos cooperativos. El entrenamiento significa que se asegurará que todos los que están asociados a las cooperativas tengan la habilidad requerida para cumplir eficientemente con sus responsabilidades.</p>\n<p>La educación y el entrenamiento son también importantes porque proveen excelentes oportunidades para que los líderes de la cooperativa entiendan las necesidades de su sociedad. Deben dirigirse de manera que permitan evaluar las actividades de la cooperativa y surgieran métodos de mejorar o proporcionar nuevos servicios.</p>\n<p>Las cooperativas tienen la responsabilidad particular de informar a los jóvenes y a los líderes de opinión sobre la "naturaleza beneficio" de la cooperación. Si las cooperativas van a desempeñar en el futuro el papel para el cual están capacitadas, informar es entonces una responsabilidad que deberá satisfacerse mejor. La gente no apreciará lo que no entiende.</p>\n</div>', NULL, NULL, 0, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 176),
(1666, 47, 1, 1, 1, 1, 'Page', '2015-09-18 09:33:59', '2019-04-23 18:02:40', 'nuevo-pagina-4', 'Deflación', NULL, '<div class="justificado">\n<p>"Las cooperativas sirven a sus miembros más eficazmente y fortalecen el movimiento cooperativos trabajando en conjunto o mediante las estructuras locales, nacionales e internacionales".</p>\n<p>Las cooperativas deben ser libres, particularmente de la intervención gubernamental, para gestionar lealtades, fusiones y "joint ventures" entre sí, buscando alcanzar su máximo potencial. Las cooperativas solo pueden maximizar su impacto por medio de la colaboración práctica y rigurosa entre sí.</p>\n<p>Las cooperativas también deben aceptar la necesidad de reforzar sus actividades y organizaciones de apoyo. No es siempre fácil ver un interés cooperativo general, basado en el valor de solidaridad y en el principio de cooperación dentro de las cooperativas. Es por eso que son necesarias las organizaciones generales de apoyo cooperativo; y por eso es importante de manera crucial que los diferentes tipos de cooperativas se unan para dirigirse al gobierno o promocionar la "forma cooperativa" ante el público.</p>\n</div>', NULL, NULL, 0, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 176),
(1667, 48, 1, 1, 1, 1, 'Page', '2015-09-18 09:35:48', '2019-04-23 18:02:49', 'nuevo-pagina-5', 'Devaluación', NULL, '<div class="justificado">\n<p>La cooperativa trabaja para el desarrollo sostenible de su comunidad por medio de políticas aceptadas por sus miembros.</p>\n<p>Desarrollo sostenible de su comunidad: Las cooperativas están íntimamente ligadas a sus comunidades. Tienen la responsabilidad especial de asegurar la continuidad del desarrollo de su comunidad en los aspectos económicos, sociales y culturales, y trabajar constantemente por la protección ambiental de su comunidad.</p>\n<p>Queda en manos de sus socias y socios decidir que tanto y en qué forma una cooperativa debe contribuir con su comunidad.</p>\n</div>', NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 176),
(1668, 176, 3, 1, 1, 1, 'AcordeonPage', '2016-11-07 14:45:42', '2019-04-23 18:03:24', 'glosario', 'Glosario', NULL, '<h2>DEFINICIONES</h2>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(1669, 100, 1, 1, 1, 1, 'Page', '2016-10-15 11:08:16', '2019-04-23 18:04:52', 'glosario', 'Glosario', NULL, NULL, NULL, NULL, 0, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1670, 176, 4, 0, 1, 0, 'AcordeonPage', '2016-11-07 14:45:42', '2019-04-23 18:04:56', 'glosario-2', 'Glosario', NULL, '<h2>DEFINICIONES</h2>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1671, 176, 5, 1, 1, 1, 'AcordeonPage', '2016-11-07 14:45:42', '2019-04-23 18:04:56', 'glosario-2', 'Glosario', NULL, '<h2>DEFINICIONES</h2>', NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1672, 1, 1, 1, 1, 1, 'HomePage', '2015-07-21 17:15:05', '2019-05-20 21:07:35', 'home', 'Inicio', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1673, 176, 6, 1, 1, 1, 'AcordeonPage', '2016-11-07 14:45:42', '2019-05-20 21:08:00', 'glosario-2', 'Glosario', NULL, '<h2>DEFINICIONES</h2>', NULL, NULL, 0, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1674, 220, 1, 0, 1, 0, '', '2019-05-20 22:21:38', '2019-05-20 22:21:38', 'nuevo-pagina-de-leyes-y-resoluciones', 'Nuevo Página de Leyes y Resoluciones', NULL, NULL, NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1675, 220, 2, 1, 1, 1, '', '2019-05-20 22:21:38', '2019-05-20 22:32:12', 'biblioteca-de-leyes-y-resoluciones', 'Biblioteca de Leyes y Resoluciones', NULL, NULL, NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1676, 1, 2, 1, 1, 1, 'HomePage', '2015-07-21 17:15:05', '2019-05-20 22:50:28', 'home', 'Inicio', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1677, 220, 3, 1, 1, 1, '', '2019-05-20 22:21:38', '2019-05-20 22:53:39', 'biblioteca-de-leyes-y-resoluciones', 'Biblioteca de Leyes y Resoluciones', NULL, NULL, NULL, NULL, 0, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1678, 1, 3, 1, 1, 1, 'HomePage', '2015-07-21 17:15:05', '2019-05-21 21:00:35', 'home', 'Inicio', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1679, 1, 4, 1, 1, 1, 'HomePage', '2015-07-21 17:15:05', '2019-05-21 21:17:08', 'home', 'Inicio', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1680, 1, 5, 1, 1, 1, 'HomePage', '2015-07-21 17:15:05', '2019-05-21 21:20:34', 'home', 'Inicio', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1681, 1, 6, 1, 1, 1, 'HomePage', '2015-07-21 17:15:05', '2019-05-21 21:23:46', 'home', 'Inicio', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1682, 176, 7, 1, 1, 1, 'AcordeonPage', '2016-11-07 14:45:42', '2019-05-21 21:53:54', 'glosario-2', 'Glosario', NULL, '<h2>DEFINICIONES</h2>', NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1683, 221, 1, 0, 1, 0, 'GeneralPage', '2019-05-22 17:08:27', '2019-05-22 17:08:27', 'nuevo-pagina-general-para-todas-las-paginas', 'Nuevo Página General para todas las paginas', NULL, NULL, NULL, NULL, 1, 1, 14, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1684, 221, 2, 1, 1, 1, 'GeneralPage', '2019-05-22 17:08:27', '2019-05-22 17:09:56', 'general', 'General', NULL, '<p>Prueba General</p>', NULL, NULL, 1, 1, 14, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1685, 222, 1, 0, 1, 0, 'GeneralPage', '2019-05-22 17:43:48', '2019-05-22 17:43:48', 'nuevo-pagina-general-para-todas-las-paginas', 'Nuevo Página General para todas las paginas', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 176),
(1686, 176, 8, 1, 1, 1, 'AcordeonPage', '2016-11-07 14:45:42', '2019-05-22 20:33:03', 'glosario-2', 'Glosario', NULL, '<h2>DEFINICIONES</h2>', NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1687, 176, 9, 1, 1, 1, 'AcordeonPage', '2016-11-07 14:45:42', '2019-05-22 21:15:55', 'glosario-2', 'Glosario', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1688, 223, 1, 0, 1, 0, 'ContactPage', '2019-05-22 22:34:38', '2019-05-22 22:34:38', 'nuevo-pagina-de-contacto', 'Nuevo Página de contacto', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 104),
(1689, 223, 2, 1, 1, 1, 'ContactPage', '2019-05-22 22:34:38', '2019-05-22 22:35:57', 'contacto-page', 'Contacto Page', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 104),
(1690, 223, 3, 0, 1, 0, 'ContactPage', '2019-05-22 22:34:38', '2019-05-22 22:36:29', 'contacto-page', 'Contacto Page', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1691, 223, 4, 1, 1, 1, 'ContactPage', '2019-05-22 22:34:38', '2019-05-22 22:36:29', 'contacto-page', 'Contacto Page', NULL, NULL, NULL, NULL, 1, 1, 14, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1692, 104, 1, 1, 1, 1, 'Page', '2016-10-17 13:41:43', '2019-05-22 22:56:11', 'contacto', 'Contacto', NULL, NULL, NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1693, 224, 1, 0, 1, 0, 'PreguntasFrecuentesPage', '2019-05-23 16:38:28', '2019-05-23 16:38:28', 'nuevo-pagina-de-preguntas-frecuentes', 'Nuevo Pagina de Preguntas Frecuentes', NULL, NULL, NULL, NULL, 1, 1, 16, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1694, 224, 2, 1, 1, 1, 'PreguntasFrecuentesPage', '2019-05-23 16:38:28', '2019-05-23 16:39:33', 'preguntas-frecuentes', 'Preguntas Frecuentes', NULL, NULL, NULL, NULL, 1, 1, 16, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1695, 223, 5, 1, 1, 1, 'ContactPage', '2019-05-22 22:34:38', '2019-05-23 16:40:37', 'contacto-page', 'Contacto Page', 'Contacto', NULL, NULL, NULL, 1, 1, 14, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1696, 225, 1, 0, 1, 0, 'Page', '2019-05-23 16:41:31', '2019-05-23 16:41:31', 'nuevo-pagina', 'Nuevo Página', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1697, 225, 2, 1, 1, 1, 'Page', '2019-05-23 16:41:31', '2019-05-23 16:46:25', 'que-es-un-titulo-valor', 'Qué es un título valor', NULL, '<p>Es un activo o instrumento financiero emitido por emisores que representan una obligación que estos han contraído con su poseedor.</p>\n<p>En función a quien emite dichos valores negociables, pueden ser los mismos títulos valores corporativos, emitidos por empresas privadas o títulos valores del sector público los cuales son emitidos por el estado o alguna de sus entidades dependientes. Así también, los títulos valores pueden representar una participación en el capital de una sociedad como en el caso de las acciones.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1698, 226, 1, 0, 1, 0, 'PreguntasFrecuentesPage', '2019-05-23 16:53:44', '2019-05-23 16:53:44', 'nuevo-pagina-de-preguntas-frecuentes', 'Nuevo Pagina de Preguntas Frecuentes', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1699, 226, 2, 1, 1, 1, 'PreguntasFrecuentesPage', '2019-05-23 16:53:44', '2019-05-23 16:55:46', 'nuevo-pagina-de-preguntas-frecuentes', 'Nuevo Pagina de Preguntas Frecuentes', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1700, 227, 1, 0, 1, 0, 'Page', '2019-05-23 17:38:04', '2019-05-23 17:38:04', 'nuevo-pagina', 'Nuevo Página', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1701, 227, 2, 1, 1, 1, 'Page', '2019-05-23 17:38:04', '2019-05-23 17:39:36', 'que-es-el-mercado-de-valores-quienes-son-sus-componentes', '¿Qué es el Mercado de Valores? ¿Quiénes son sus componentes?', NULL, '<p>Uno de los Subsistemas componentes del Sistema Financiero Paraguayo es el Mercado de Valores.</p>\n<p>Este mercado es aquel en el cual se comercializan los títulos valores, conocidos también como valores negociables o activos financieros simplemente.</p>\n<p><strong>En este mercado se cuenta básicamente con los siguientes componentes:</strong></p>\n<ol><li><strong>La Comisión Nacional de Valores (CNV):</strong> es el ente regulador del mercado, y está relacionado con el Poder Ejecutivo por medio del Ministerio de Industria y Comercio.</li>\n<li><strong>La Bolsa de Valores y Productos de Asunción S.A (BVPASA):</strong> es una entidad sin fines de lucro (determinado por Ley y por sus propios Estatutos), que pone a disposición de los intermediarios su infraestructura organizacional y tecnológica para hacer viables las operaciones de compra venta de valores negociables entre ellas.</li>\n<li><strong>Las Casas de Bolsa:</strong> son los intermediarios financieros del Mercado de Valores, son las única sociedades autorizadas a operar en el mismo por cuenta, orden y riesgo de sus clientes.</li>\n<li><strong>Empresas Emisoras:</strong> son todas aquellas personas jurídicas que emiten títulos valores al mercado para la captación de recursos financieros que le permitan efectuar sus inversiones en activos fijos o en activos circulantes.</li>\n<li><strong>Inversionistas:</strong> son todas aquellas personas físicas o jurídica que compran y venden títulos valores con el objeto de obtener mejores rendimientos financieros para sus recursos.</li>\n</ol>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1702, 227, 3, 1, 1, 1, 'Page', '2019-05-23 17:38:04', '2019-05-23 17:39:43', 'que-es-el-mercado-de-valores-quienes-son-sus-componentes', '¿Qué es el Mercado de Valores? ¿Quiénes son sus componentes?', NULL, '<p>Uno de los Subsistemas componentes del Sistema Financiero Paraguayo es el Mercado de Valores.</p>\n<p>Este mercado es aquel en el cual se comercializan los títulos valores, conocidos también como valores negociables o activos financieros simplemente.</p>\n<p><strong>En este mercado se cuenta básicamente con los siguientes componentes:</strong></p>\n<ol><li><strong>La Comisión Nacional de Valores (CNV):</strong> es el ente regulador del mercado, y está relacionado con el Poder Ejecutivo por medio del Ministerio de Industria y Comercio.</li>\n<li><strong>La Bolsa de Valores y Productos de Asunción S.A (BVPASA):</strong> es una entidad sin fines de lucro (determinado por Ley y por sus propios Estatutos), que pone a disposición de los intermediarios su infraestructura organizacional y tecnológica para hacer viables las operaciones de compra venta de valores negociables entre ellas.</li>\n<li><strong>Las Casas de Bolsa:</strong> son los intermediarios financieros del Mercado de Valores, son las única sociedades autorizadas a operar en el mismo por cuenta, orden y riesgo de sus clientes.</li>\n<li><strong>Empresas Emisoras:</strong> son todas aquellas personas jurídicas que emiten títulos valores al mercado para la captación de recursos financieros que le permitan efectuar sus inversiones en activos fijos o en activos circulantes.</li>\n<li><strong>Inversionistas:</strong> son todas aquellas personas físicas o jurídica que compran y venden títulos valores con el objeto de obtener mejores rendimientos financieros para sus recursos.</li>\n</ol>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1703, 225, 3, 1, 1, 1, 'Page', '2019-05-23 16:41:31', '2019-05-23 17:39:59', 'que-es-un-titulo-valor', 'Qué es un título valor', NULL, '<p>Es un activo o instrumento financiero emitido por emisores que representan una obligación que estos han contraído con su poseedor.</p>\n<p>En función a quien emite dichos valores negociables, pueden ser los mismos títulos valores corporativos, emitidos por empresas privadas o títulos valores del sector público los cuales son emitidos por el estado o alguna de sus entidades dependientes. Así también, los títulos valores pueden representar una participación en el capital de una sociedad como en el caso de las acciones.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1704, 228, 1, 0, 1, 0, 'Page', '2019-05-23 17:40:15', '2019-05-23 17:40:15', 'nuevo-pagina', 'Nuevo Página', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1705, 228, 2, 1, 1, 1, 'Page', '2019-05-23 17:40:15', '2019-05-23 17:42:32', 'que-valores-negociables-se-compran-y-se-venden-en-el-mercado-de-valores', '¿Qué valores negociables se compran y se venden en el Mercado de Valores', NULL, '<p><span>En nuestro mercado, actualmente, las principales negociaciones se realizan sobre los Instrumentos de Renta Fija, los bonos corporativos, los pagarés y los cupones principalmente, y en menor medida con las acciones.</span></p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1706, 228, 3, 1, 1, 1, 'Page', '2019-05-23 17:40:15', '2019-05-23 17:42:38', 'que-valores-negociables-se-compran-y-se-venden-en-el-mercado-de-valores', '¿Qué valores negociables se compran y se venden en el Mercado de Valores', NULL, '<p><span>En nuestro mercado, actualmente, las principales negociaciones se realizan sobre los Instrumentos de Renta Fija, los bonos corporativos, los pagarés y los cupones principalmente, y en menor medida con las acciones.</span></p>', NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1707, 229, 1, 0, 1, 0, 'Page', '2019-05-23 17:42:49', '2019-05-23 17:42:49', 'nuevo-pagina', 'Nuevo Página', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1708, 229, 2, 1, 1, 1, 'Page', '2019-05-23 17:42:49', '2019-05-23 17:43:36', 'quien-es-el-regulador-del-mercado-de-valores-en-el-paraguay', '¿Quién es el regulador del Mercado de Valores en el Paraguay', NULL, '<p><span>En nuestro país, la Comisión Nacional de Valores es la entidad responsable de regular, supervisar y fomentar las actividades del Mercado de Valores como mecanismo alternativo de inversión, captación y canalización de recursos, para la capitalización de empresas y el financiamiento de proyectos de mediano y largo plazo, dentro de un marco de transparencia, seguridad y credibilidad, mediante la entrega de información pertinente, completa y oportuna a los diferentes actores del mismo.</span></p>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1709, 229, 3, 1, 1, 1, 'Page', '2019-05-23 17:42:49', '2019-05-23 17:43:48', 'quien-es-el-regulador-del-mercado-de-valores-en-el-paraguay', '¿Quién es el regulador del Mercado de Valores en el Paraguay', NULL, '<p><span>En nuestro país, la Comisión Nacional de Valores es la entidad responsable de regular, supervisar y fomentar las actividades del Mercado de Valores como mecanismo alternativo de inversión, captación y canalización de recursos, para la capitalización de empresas y el financiamiento de proyectos de mediano y largo plazo, dentro de un marco de transparencia, seguridad y credibilidad, mediante la entrega de información pertinente, completa y oportuna a los diferentes actores del mismo.</span></p>', NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1710, 230, 1, 0, 1, 0, 'Page', '2019-05-23 17:44:03', '2019-05-23 17:44:03', 'nuevo-pagina', 'Nuevo Página', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1711, 230, 2, 1, 1, 1, 'Page', '2019-05-23 17:44:03', '2019-05-23 17:44:49', 'que-tipo-de-persona-juridica-tiene-la-bvpasa', '¿Qué tipo de persona jurídica tiene la BVPASA?', NULL, '<p><span>La BVPASA opera bajo la figura jurídica de Sociedad Anónima, pero de acuerdo a las normativas legales vigentes, la misma se adecua dentro de la figura de Organizaciones sin Fines de Lucro (ONGs), debido a que por sus Estatutos Sociales y la propia Ley del Mercado de Valores, tanto esta como cualquier otra Bolsa en nuestro país tiene expresamente prohibido distribuir utilidades.</span></p>', NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1712, 230, 3, 1, 1, 1, 'Page', '2019-05-23 17:44:03', '2019-05-23 17:44:56', 'que-tipo-de-persona-juridica-tiene-la-bvpasa', '¿Qué tipo de persona jurídica tiene la BVPASA?', NULL, '<p><span>La BVPASA opera bajo la figura jurídica de Sociedad Anónima, pero de acuerdo a las normativas legales vigentes, la misma se adecua dentro de la figura de Organizaciones sin Fines de Lucro (ONGs), debido a que por sus Estatutos Sociales y la propia Ley del Mercado de Valores, tanto esta como cualquier otra Bolsa en nuestro país tiene expresamente prohibido distribuir utilidades.</span></p>', NULL, NULL, 0, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1713, 231, 1, 0, 1, 0, 'Page', '2019-05-23 17:45:08', '2019-05-23 17:45:08', 'nuevo-pagina', 'Nuevo Página', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1714, 231, 2, 1, 1, 1, 'Page', '2019-05-23 17:45:08', '2019-05-23 17:48:05', 'quien-o-quienes-pueden-operar-en-la-bvpasa', '¿Quién o quiénes pueden operar en la BVPASA?', NULL, '<p>En los recintos de la BVPASA, solo los representantes autorizados de las Casas de Bolsa, conocidos también como Operadores de Bolsa, son los únicos autorizados para efectuar las operaciones por cuenta, orden y riesgo de sus clientes.¿Contribuye en algo la Bolsa de Valores y Productos de Asunción en el desarrollo del país?</p>\n<p>El Mercado de Valores contribuye en todas sus negociaciones en el desarrollo del Paraguay, ya que una de sus funciones principales es transformar el excedente de ahorro en inversiones, las cuales son aplicadas en empresas generadoras de mano de obra y de recursos, los cuales directa e indirectamente colaboran en el mejoramiento del PIB, por medio la transparencia, la equidad, y la eficiencia.</p>', NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1715, 231, 3, 1, 1, 1, 'Page', '2019-05-23 17:45:08', '2019-05-23 17:48:14', 'quien-o-quienes-pueden-operar-en-la-bvpasa', '¿Quién o quiénes pueden operar en la BVPASA?', NULL, '<p>En los recintos de la BVPASA, solo los representantes autorizados de las Casas de Bolsa, conocidos también como Operadores de Bolsa, son los únicos autorizados para efectuar las operaciones por cuenta, orden y riesgo de sus clientes.¿Contribuye en algo la Bolsa de Valores y Productos de Asunción en el desarrollo del país?</p>\n<p>El Mercado de Valores contribuye en todas sus negociaciones en el desarrollo del Paraguay, ya que una de sus funciones principales es transformar el excedente de ahorro en inversiones, las cuales son aplicadas en empresas generadoras de mano de obra y de recursos, los cuales directa e indirectamente colaboran en el mejoramiento del PIB, por medio la transparencia, la equidad, y la eficiencia.</p>', NULL, NULL, 0, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1716, 232, 1, 0, 1, 0, 'Page', '2019-05-23 17:48:33', '2019-05-23 17:48:33', 'nuevo-pagina', 'Nuevo Página', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1717, 232, 2, 1, 1, 1, 'Page', '2019-05-23 17:48:33', '2019-05-23 17:49:02', 'que-hace-falta-para-abrir-una-casa-de-bolsa', '¿Qué hace falta para abrir una Casa de Bolsa?', NULL, '<p>Los requisitos que deben cumplir todas las Casas de Bolsa son:</p>\n<ol><li>Constituirse como sociedades anónimas de objeto exclusivo</li>\n<li>Contar con el capital social mínimo de cuatrocientos salarios mínimos mensuales establecidos para trabajadores de actividades diversas no especificadas;</li>\n<li>Constituir las garantías en la forma y por los montos determinados en las normativas legales vigentes;</li>\n<li>No haber solicitado convocatoria de acreedores ni haberse declarado su quiebra; y,</li>\n<li>Cualquier otro requisito que la C.N.V determine por medio de normas de carácter general.</li>\n</ol>', NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1718, 232, 3, 1, 1, 1, 'Page', '2019-05-23 17:48:33', '2019-05-23 17:49:08', 'que-hace-falta-para-abrir-una-casa-de-bolsa', '¿Qué hace falta para abrir una Casa de Bolsa?', NULL, '<p>Los requisitos que deben cumplir todas las Casas de Bolsa son:</p>\n<ol><li>Constituirse como sociedades anónimas de objeto exclusivo</li>\n<li>Contar con el capital social mínimo de cuatrocientos salarios mínimos mensuales establecidos para trabajadores de actividades diversas no especificadas;</li>\n<li>Constituir las garantías en la forma y por los montos determinados en las normativas legales vigentes;</li>\n<li>No haber solicitado convocatoria de acreedores ni haberse declarado su quiebra; y,</li>\n<li>Cualquier otro requisito que la C.N.V determine por medio de normas de carácter general.</li>\n</ol>', NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1719, 233, 1, 0, 1, 0, 'Page', '2019-05-23 17:49:27', '2019-05-23 17:49:27', 'nuevo-pagina', 'Nuevo Página', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1720, 233, 2, 1, 1, 1, 'Page', '2019-05-23 17:49:27', '2019-05-23 17:49:54', 'como-se-hace-para-invertir-via-bolsa', '¿Cómo se hace para invertir vía Bolsa?', NULL, '<p>En primer lugar, se debe identificar cuales son las Casas de Bolsa habilitadas para operar en la BVPASA, visitando o llamando a las mismas a fin de contactar con un Asesor de Inversión.</p>\n<p>Tras las reuniones mantenidas con el mismo, y una vez obtenida toda la información requerida, el potencial inversionista debe sopesar las diversas alternativas de inversión y optar por una o por un conjunto de ellas. Dicha decisión debe ser comunicada al Asesor de Inversión seleccionado, el cual debe en primer lugar establecer una relación contractual con el nuevo inversionista para luego ejecutar las órdenes recibidas de este por su cuenta, orden y riesgo.</p>\n<p>Terminados los pasos previos, los Asesores de Inversión transmiten las órdenes recibidas a su operador en la Bolsa, o ingresan al sistema de negociación electrónicas las mismas, a fin de que estás sean debidamente ejecutadas de acuerdo a lo dispuesto por el cliente. La Casa de Bolsa dispone de hasta 48 horas hábiles bancarias para recepcionar el efectivo de su cliente y entregar al mismo los activos financieros que fueran adquiridos en su nombre.</p>\n<p>Es muy importante destacar que todo inversionista debe hacer el seguimiento de las empresas emisoras en las cuales ha invertido, analizando sus estados contables periódicos y tomando conocimiento de cualquier tipo de información que el mismo proporcione al mercado.</p>', NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1721, 233, 3, 1, 1, 1, 'Page', '2019-05-23 17:49:27', '2019-05-23 17:50:03', 'como-se-hace-para-invertir-via-bolsa', '¿Cómo se hace para invertir vía Bolsa?', NULL, '<p>En primer lugar, se debe identificar cuales son las Casas de Bolsa habilitadas para operar en la BVPASA, visitando o llamando a las mismas a fin de contactar con un Asesor de Inversión.</p>\n<p>Tras las reuniones mantenidas con el mismo, y una vez obtenida toda la información requerida, el potencial inversionista debe sopesar las diversas alternativas de inversión y optar por una o por un conjunto de ellas. Dicha decisión debe ser comunicada al Asesor de Inversión seleccionado, el cual debe en primer lugar establecer una relación contractual con el nuevo inversionista para luego ejecutar las órdenes recibidas de este por su cuenta, orden y riesgo.</p>\n<p>Terminados los pasos previos, los Asesores de Inversión transmiten las órdenes recibidas a su operador en la Bolsa, o ingresan al sistema de negociación electrónicas las mismas, a fin de que estás sean debidamente ejecutadas de acuerdo a lo dispuesto por el cliente. La Casa de Bolsa dispone de hasta 48 horas hábiles bancarias para recepcionar el efectivo de su cliente y entregar al mismo los activos financieros que fueran adquiridos en su nombre.</p>\n<p>Es muy importante destacar que todo inversionista debe hacer el seguimiento de las empresas emisoras en las cuales ha invertido, analizando sus estados contables periódicos y tomando conocimiento de cualquier tipo de información que el mismo proporcione al mercado.</p>', NULL, NULL, 0, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1722, 234, 1, 0, 1, 0, 'Page', '2019-05-23 17:50:25', '2019-05-23 17:50:25', 'nuevo-pagina', 'Nuevo Página', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1723, 234, 2, 1, 1, 1, 'Page', '2019-05-23 17:50:25', '2019-05-23 17:51:11', 'que-son-los-precios-de-cierre-de-los-titulos-valores-que-se-cotizan-en-la-bvpasa', '¿Qué son los precios de cierre de los títulos valores que se cotizan en la BVPASA?', NULL, '<p><span>Son todos aquellos precios que reflejan las mejores cotizaciones tanto de compra como de venta para un valor negociable específico durante una Rueda de Negociación, y son puesto a conocimiento del mercado una vez de finalizada la jornada diaria. El acceso a dichos precios puede ser tanto en el web site de la BVPASA, como así también, en las oficinas de la misma.</span></p>', NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1724, 234, 3, 1, 1, 1, 'Page', '2019-05-23 17:50:25', '2019-05-23 17:51:18', 'que-son-los-precios-de-cierre-de-los-titulos-valores-que-se-cotizan-en-la-bvpasa', '¿Qué son los precios de cierre de los títulos valores que se cotizan en la BVPASA?', NULL, '<p><span>Son todos aquellos precios que reflejan las mejores cotizaciones tanto de compra como de venta para un valor negociable específico durante una Rueda de Negociación, y son puesto a conocimiento del mercado una vez de finalizada la jornada diaria. El acceso a dichos precios puede ser tanto en el web site de la BVPASA, como así también, en las oficinas de la misma.</span></p>', NULL, NULL, 0, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1725, 235, 1, 0, 1, 0, 'Page', '2019-05-23 17:51:36', '2019-05-23 17:51:36', 'nuevo-pagina', 'Nuevo Página', NULL, NULL, NULL, NULL, 1, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1726, 235, 2, 1, 1, 1, 'Page', '2019-05-23 17:51:36', '2019-05-23 17:52:02', 'que-es-una-calificadora-de-riesgo', '¿Qué es una Calificadora de Riesgo', NULL, '<p>Es una empresa de objeto exclusivo, cuya función es la calificación de riesgo de una empresa en función a su solvencia principalmente, es decir, la capacidad que tiene la misma para hacer frente a sus obligaciones.</p>\n<p>Las evaluaciones que realizan estas empresas están sustentadas en los Estados Contables básicamente, y en otras informaciones que las mismas consideren de importancia en el giro del negocio y que el mercado deba tener conocimiento de las mismas.</p>\n<p>Estos estudios son opiniones profesionales e imparciales sobre la probabilidad de impago de una obligación, lo que no representa una recomendación de inversión para ninguna persona física o jurídica en particular.</p>', NULL, NULL, 1, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1727, 235, 3, 1, 1, 1, 'Page', '2019-05-23 17:51:36', '2019-05-23 17:52:09', 'que-es-una-calificadora-de-riesgo', '¿Qué es una Calificadora de Riesgo', NULL, '<p>Es una empresa de objeto exclusivo, cuya función es la calificación de riesgo de una empresa en función a su solvencia principalmente, es decir, la capacidad que tiene la misma para hacer frente a sus obligaciones.</p>\n<p>Las evaluaciones que realizan estas empresas están sustentadas en los Estados Contables básicamente, y en otras informaciones que las mismas consideren de importancia en el giro del negocio y que el mercado deba tener conocimiento de las mismas.</p>\n<p>Estos estudios son opiniones profesionales e imparciales sobre la probabilidad de impago de una obligación, lo que no representa una recomendación de inversión para ninguna persona física o jurídica en particular.</p>', NULL, NULL, 0, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1728, 236, 1, 0, 1, 0, 'Page', '2019-05-23 17:52:27', '2019-05-23 17:52:27', 'nuevo-pagina', 'Nuevo Página', NULL, NULL, NULL, NULL, 1, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1729, 236, 2, 1, 1, 1, 'Page', '2019-05-23 17:52:27', '2019-05-23 17:52:50', 'que-es-la-tasa-libor', '¿Qué es la tasa LIBOR?', NULL, '<p><span>Se le denomina Tasa LIBOR (London Interbanking Offered Rate), a la tasa de interés que se determina día a día en el mercado interbancario en Londres, para los créditos y empréstitos internacionales de tipo fluctuante.</span></p>', NULL, NULL, 1, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1730, 236, 3, 1, 1, 1, 'Page', '2019-05-23 17:52:27', '2019-05-23 17:52:58', 'que-es-la-tasa-libor', '¿Qué es la tasa LIBOR?', NULL, '<p><span>Se le denomina Tasa LIBOR (London Interbanking Offered Rate), a la tasa de interés que se determina día a día en el mercado interbancario en Londres, para los créditos y empréstitos internacionales de tipo fluctuante.</span></p>', NULL, NULL, 0, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1731, 237, 1, 0, 1, 0, 'Page', '2019-05-23 17:53:20', '2019-05-23 17:53:20', 'nuevo-pagina', 'Nuevo Página', NULL, NULL, NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1732, 237, 2, 1, 1, 1, 'Page', '2019-05-23 17:53:20', '2019-05-23 17:53:38', 'que-es-la-tasa-prime', '¿Qué es la tasa PRIME?', NULL, '<p><span>La Tasa PRIME (preferencial) es el tipo de interés aplicado por los grandes bancos de Estados Unidos para los créditos y empréstitos internacionales.</span></p>', NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1733, 237, 3, 1, 1, 1, 'Page', '2019-05-23 17:53:20', '2019-05-23 17:53:50', 'que-es-la-tasa-prime', '¿Qué es la tasa PRIME?', NULL, '<p><span>La Tasa PRIME (preferencial) es el tipo de interés aplicado por los grandes bancos de Estados Unidos para los créditos y empréstitos internacionales.</span></p>', NULL, NULL, 0, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1734, 238, 1, 0, 1, 0, 'Page', '2019-05-23 17:54:19', '2019-05-23 17:54:19', 'nuevo-pagina', 'Nuevo Página', NULL, NULL, NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1735, 238, 2, 1, 1, 1, 'Page', '2019-05-23 17:54:19', '2019-05-23 17:55:02', 'que-son-los-estados-contables-para-que-se-utilizan', '¿Qué son los Estados Contables, para qué se utilizan?', NULL, '<p>Se denomina Estados Contables a todos aquellos documentos en los cuales se refleja la situación de una empresa en un momento determinado de tiempo. Dichos documentos están compuestos por el Balance General, el Estado de Resultados, Estado de Evolución del Patrimonio, Estado de Origen y Aplicación de Fondos, Informaciones Complementarias y Anexos.</p>\n<p>Por medio de las diferentes herramientas de análisis financiero, el responsable de dichos estudios aplicará las diversas técnicas que le permitan interpretar los resultados expuestos en los Estados Contables de una empresa emisora en particular.</p>', NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1736, 238, 3, 1, 1, 1, 'Page', '2019-05-23 17:54:19', '2019-05-23 17:55:08', 'que-son-los-estados-contables-para-que-se-utilizan', '¿Qué son los Estados Contables, para qué se utilizan?', NULL, '<p>Se denomina Estados Contables a todos aquellos documentos en los cuales se refleja la situación de una empresa en un momento determinado de tiempo. Dichos documentos están compuestos por el Balance General, el Estado de Resultados, Estado de Evolución del Patrimonio, Estado de Origen y Aplicación de Fondos, Informaciones Complementarias y Anexos.</p>\n<p>Por medio de las diferentes herramientas de análisis financiero, el responsable de dichos estudios aplicará las diversas técnicas que le permitan interpretar los resultados expuestos en los Estados Contables de una empresa emisora en particular.</p>', NULL, NULL, 0, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1737, 224, 3, 1, 1, 1, 'PreguntasFrecuentesPage', '2019-05-23 16:38:28', '2019-05-23 20:41:53', 'preguntas-frecuentes', 'Preguntas Frecuentes', NULL, NULL, NULL, NULL, 0, 1, 16, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1738, 221, 3, 1, 1, 1, 'GeneralPage', '2019-05-22 17:08:27', '2019-05-23 21:02:42', 'general', 'General', NULL, '<p>Prueba General</p>', NULL, NULL, 0, 1, 15, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1739, 176, 10, 1, 1, 1, 'AcordeonPage', '2016-11-07 14:45:42', '2019-05-23 21:04:04', 'glosario-2', 'Glosario', NULL, NULL, NULL, NULL, 0, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1740, 239, 1, 0, 1, 0, 'GeneralPage', '2019-05-23 21:04:34', '2019-05-23 21:04:34', 'nuevo-pagina-general-para-todas-las-paginas', 'Nuevo Página General para todas las paginas', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 176),
(1741, 239, 2, 1, 1, 1, 'GeneralPage', '2019-05-23 21:04:34', '2019-05-23 21:05:14', 'producto', 'Producto', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 176),
(1742, 239, 3, 0, 1, 0, 'GeneralPage', '2019-05-23 21:04:34', '2019-05-23 21:06:07', 'producto', 'Producto', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1743, 239, 4, 1, 1, 1, 'GeneralPage', '2019-05-23 21:04:34', '2019-05-23 21:06:07', 'producto', 'Producto', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1744, 240, 1, 0, 1, 0, 'GeneralPage', '2019-05-23 21:07:41', '2019-05-23 21:07:41', 'nuevo-pagina-general-para-todas-las-paginas', 'Nuevo Página General para todas las paginas', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 239),
(1745, 240, 2, 1, 1, 1, 'GeneralPage', '2019-05-23 21:07:41', '2019-05-23 21:08:04', 'bonos', 'Bonos', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 239),
(1746, 241, 1, 0, 1, 0, 'GeneralPage', '2019-05-23 21:08:15', '2019-05-23 21:08:15', 'nuevo-pagina-general-para-todas-las-paginas', 'Nuevo Página General para todas las paginas', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 239),
(1747, 241, 2, 1, 1, 1, 'GeneralPage', '2019-05-23 21:08:15', '2019-05-23 21:08:45', 'acciones', 'Acciones', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 239),
(1748, 242, 1, 0, 1, 0, 'GeneralPage', '2019-05-23 21:09:03', '2019-05-23 21:09:03', 'nuevo-pagina-general-para-todas-las-paginas', 'Nuevo Página General para todas las paginas', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 239),
(1749, 242, 2, 1, 1, 1, 'GeneralPage', '2019-05-23 21:09:03', '2019-05-23 21:09:59', 'cdas', 'CDA''s', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 239);
INSERT INTO `SiteTree_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `ParentID`) VALUES
(1750, 67, 1, 1, 1, 1, '', '2015-10-06 15:25:10', '2019-05-23 21:21:43', 'casas-de-bolsa-delete', 'Casas de Bolsa delete', NULL, '<p><span style="font-family: &#039;comic sans ms&#039;, sans-serif;"><strong><img src="assets/Uploads/_resampled/ResizedImage600213-casa-de-bolsa2.jpg" alt="casa de bolsa2" width="600" height="213" title="" class="leftAlone" mce_advimageresize_id="Form_EditForm_Content_mce_2"></strong></span></p>\n<p></p>\n<p><span style="font-family: &#039;comic sans ms&#039;, sans-serif;"><strong>¿Qué es una casa de bolsa?</strong></span></p>\n<p><br><span style="font-family: &#039;comic sans ms&#039;, sans-serif;">Para comprender mejor el significado de la <strong>Casa de Bolsa</strong>, antes debemos comprender el de la <strong>Bolsa de Valores</strong>.</span></p>\n<p><span style="font-family: &#039;comic sans ms&#039;, sans-serif;">Una bolsa de valores es una organización privada que brinda las facilidades necesarias para que sus miembros, atendiendo los mandatos de sus clientes, realicen negociaciones de compra venta de valores, tales como acciones de sociedades o compañías anónimas, bonos públicos y privados, certificados, títulos de participación y una amplia variedad de instrumentos de inversión.</span></p>\n<p><span style="font-family: &#039;comic sans ms&#039;, sans-serif;">La negociación de los valores en los mercados bursátiles se hace con base a unos precios conocidos y en tiempo real, en un entorno seguro para la actividad de los inversionistas, donde el mecanismo de las transacciones está totalmente regulado, lo que da garantía de legalidad y seguridad.</span></p>\n<p><span style="font-family: &#039;comic sans ms&#039;, sans-serif;">Las bolsas de valores fortalecen al mercado de capitales e impulsan el desarrollo económico y financiero en la mayoría de los países del mundo, donde existen en algunos casos desde hace muchos años, a partir de las primeras entidades de este tipo creadas en los primeros años del siglo XVII.</span></p>\n<p><span style="font-family: &#039;comic sans ms&#039;, sans-serif;">La negociación de valores en las bolsas se efectúa a través de los miembros de la Bolsa, conocidos usualmente con el nombre de corredores, sociedades de corretaje de valores, casas de bolsa, agentes o comisionistas, de acuerdo a la denominación que reciben en las leyes de cada país, quienes hacen su labor a cambio de una comisión.</span></p>\n<p><span style="font-family: &#039;comic sans ms&#039;, sans-serif;">Las casas de bolsa son entidades, que actúan como intermediarios facultados para llevar a cabo operaciones de compra y venta de valores cotizados en la Bolsa de Valores. Además de esta función, las casas de bolsa actúan como consejeros de sus clientes. Como se ve, las casas de bolsa prestan dos servicios, el de intermediación y el de asesoría, por los cuales cobran comisiones.</span></p>\n<p><span style="font-family: &#039;comic sans ms&#039;, sans-serif;">La función de las casas de bolsa es la de facilitar el contacto y el intercambio entre los poseedores de las acciones y los posibles compradores de éstas.</span></p>\n<p><span style="font-family: &#039;comic sans ms&#039;, sans-serif;"><strong>En Paraguay, según la Ley 1284/98, en su art. 105, las casas de bolsa están facultadas para efectuar las siguientes operaciones:</strong></span></p>\n<p><span style="font-family: &#039;comic sans ms&#039;, sans-serif;">a. comprar y vender valores por cuenta de terceros y también por cuenta propia, con recursos propios, en la bolsa o fuera de ella;</span><br><span style="font-family: &#039;comic sans ms&#039;, sans-serif;">b. prestar asesoría en materia de valores y operaciones de bolsa así como brindar a sus clientes un sistema de información y de procesamiento de datos;</span><br><span style="font-family: &#039;comic sans ms&#039;, sans-serif;">c. suscribir transitoriamente, con recursos propios, parte o la totalidad de emisiones primarias de valores;</span><br><span style="font-family: &#039;comic sans ms&#039;, sans-serif;">d. promover el lanzamiento de valores públicos y privados y facilitar su colocación;</span><br><span style="font-family: &#039;comic sans ms&#039;, sans-serif;">e. actuar como representante de los obligacionistas;</span><br><span style="font-family: &#039;comic sans ms&#039;, sans-serif;">f. prestar servicios de administración de carteras y custodia de valores;</span><br><span style="font-family: &#039;comic sans ms&#039;, sans-serif;">g. llevar el registro contable de valores de sus clientes con sujeción a lo establecido en la presente ley, o en las resoluciones que dicte la Comisión al efecto;</span><br><span style="font-family: &#039;comic sans ms&#039;, sans-serif;">h. otorgar créditos, con sus propios recursos, únicamente con el objeto de facilitar la adquisición de valores por sus comitentes, estén o no inscritos en bolsa y con la garantía de tales valores;</span><br><span style="font-family: &#039;comic sans ms&#039;, sans-serif;">i. recibir créditos de empresas del sistema financiero para la realización de las actividades que les son propias; y,</span><br><span style="font-family: &#039;comic sans ms&#039;, sans-serif;">j. efectuar todas las operaciones y servicios que sean compatibles con la actividad de intermediación en el mercado de valores y que previamente y de manera general autorice la Comisión.</span></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(1751, 243, 1, 0, 1, 0, '', '2019-05-23 21:28:53', '2019-05-23 21:28:53', 'nuevo-pagina-de-articulo', 'Nuevo Página de Artículo', NULL, NULL, NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(1752, 243, 2, 1, 1, 1, '', '2019-05-23 21:28:53', '2019-05-23 21:33:23', 'casas-de-bolsa', 'Casas de Bolsa', NULL, NULL, NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(1753, 243, 3, 1, 1, 1, '', '2019-05-23 21:28:53', '2019-05-23 21:34:28', 'casas-de-bolsa', 'Casas de Bolsa', NULL, '<p><span><strong><img src="assets/Uploads/_resampled/ResizedImage600213-casa-de-bolsa2.jpg" alt="casa de bolsa2" width="600" height="213" title="" class="leftAlone" mce_advimageresize_id="Form_EditForm_Content_mce_2"></strong></span></p>\n<p></p>\n<p><span><strong>¿Qué es una casa de bolsa?</strong></span></p>\n<p><br><span>Para comprender mejor el significado de la <strong>Casa de Bolsa</strong>, antes debemos comprender el de la <strong>Bolsa de Valores</strong>.</span></p>\n<p><span>Una bolsa de valores es una organización privada que brinda las facilidades necesarias para que sus miembros, atendiendo los mandatos de sus clientes, realicen negociaciones de compra venta de valores, tales como acciones de sociedades o compañías anónimas, bonos públicos y privados, certificados, títulos de participación y una amplia variedad de instrumentos de inversión.</span></p>\n<p><span>La negociación de los valores en los mercados bursátiles se hace con base a unos precios conocidos y en tiempo real, en un entorno seguro para la actividad de los inversionistas, donde el mecanismo de las transacciones está totalmente regulado, lo que da garantía de legalidad y seguridad.</span></p>\n<p><span>Las bolsas de valores fortalecen al mercado de capitales e impulsan el desarrollo económico y financiero en la mayoría de los países del mundo, donde existen en algunos casos desde hace muchos años, a partir de las primeras entidades de este tipo creadas en los primeros años del siglo XVII.</span></p>\n<p><span>La negociación de valores en las bolsas se efectúa a través de los miembros de la Bolsa, conocidos usualmente con el nombre de corredores, sociedades de corretaje de valores, casas de bolsa, agentes o comisionistas, de acuerdo a la denominación que reciben en las leyes de cada país, quienes hacen su labor a cambio de una comisión.</span></p>\n<p><span>Las casas de bolsa son entidades, que actúan como intermediarios facultados para llevar a cabo operaciones de compra y venta de valores cotizados en la Bolsa de Valores. Además de esta función, las casas de bolsa actúan como consejeros de sus clientes. Como se ve, las casas de bolsa prestan dos servicios, el de intermediación y el de asesoría, por los cuales cobran comisiones.</span></p>\n<p><span>La función de las casas de bolsa es la de facilitar el contacto y el intercambio entre los poseedores de las acciones y los posibles compradores de éstas.</span></p>\n<p><span><strong>En Paraguay, según la Ley 1284/98, en su art. 105, las casas de bolsa están facultadas para efectuar las siguientes operaciones:</strong></span></p>\n<p><span>a. comprar y vender valores por cuenta de terceros y también por cuenta propia, con recursos propios, en la bolsa o fuera de ella;</span><br><span>b. prestar asesoría en materia de valores y operaciones de bolsa así como brindar a sus clientes un sistema de información y de procesamiento de datos;</span><br><span>c. suscribir transitoriamente, con recursos propios, parte o la totalidad de emisiones primarias de valores;</span><br><span>d. promover el lanzamiento de valores públicos y privados y facilitar su colocación;</span><br><span>e. actuar como representante de los obligacionistas;</span><br><span>f. prestar servicios de administración de carteras y custodia de valores;</span><br><span>g. llevar el registro contable de valores de sus clientes con sujeción a lo establecido en la presente ley, o en las resoluciones que dicte la Comisión al efecto;</span><br><span>h. otorgar créditos, con sus propios recursos, únicamente con el objeto de facilitar la adquisición de valores por sus comitentes, estén o no inscritos en bolsa y con la garantía de tales valores;</span><br><span>i. recibir créditos de empresas del sistema financiero para la realización de las actividades que les son propias; y,</span><br><span>j. efectuar todas las operaciones y servicios que sean compatibles con la actividad de intermediación en el mercado de valores y que previamente y de manera general autorice la Comisión.</span></p>', NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(1754, 197, 1, 0, 1, 0, 'Page', '2016-12-01 11:21:37', '2019-05-23 21:36:02', 'extraordinario', 'Extraordinario', NULL, NULL, NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(1755, 197, 2, 0, 1, 0, 'Page', '2016-12-01 11:21:37', '2019-05-23 21:36:02', 'extraordinario', 'Extraordinario', NULL, NULL, NULL, NULL, 0, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(1756, 197, 3, 0, 1, 0, 'Page', '2016-12-01 11:21:37', '2019-05-23 21:36:06', 'extraordinario', 'Extraordinario', NULL, NULL, NULL, NULL, 0, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 243),
(1757, 197, 4, 1, 1, 1, 'Page', '2016-12-01 11:21:37', '2019-05-23 21:36:06', 'extraordinario', 'Extraordinario', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 243),
(1758, 243, 4, 1, 1, 1, '', '2019-05-23 21:28:53', '2019-05-23 21:37:02', 'casas-de-bolsa', 'Casas de Bolsa', NULL, '<p><strong></strong></p>\n<p><strong>¿Qué es una casa de bolsa?</strong></p>\n<p><br><span>Para comprender mejor el significado de la <strong>Casa de Bolsa</strong>, antes debemos comprender el de la <strong>Bolsa de Valores</strong>.</span></p>\n<p><span>Una bolsa de valores es una organización privada que brinda las facilidades necesarias para que sus miembros, atendiendo los mandatos de sus clientes, realicen negociaciones de compra venta de valores, tales como acciones de sociedades o compañías anónimas, bonos públicos y privados, certificados, títulos de participación y una amplia variedad de instrumentos de inversión.</span></p>\n<p><span>La negociación de los valores en los mercados bursátiles se hace con base a unos precios conocidos y en tiempo real, en un entorno seguro para la actividad de los inversionistas, donde el mecanismo de las transacciones está totalmente regulado, lo que da garantía de legalidad y seguridad.</span></p>\n<p><span>Las bolsas de valores fortalecen al mercado de capitales e impulsan el desarrollo económico y financiero en la mayoría de los países del mundo, donde existen en algunos casos desde hace muchos años, a partir de las primeras entidades de este tipo creadas en los primeros años del siglo XVII.</span></p>\n<p><span>La negociación de valores en las bolsas se efectúa a través de los miembros de la Bolsa, conocidos usualmente con el nombre de corredores, sociedades de corretaje de valores, casas de bolsa, agentes o comisionistas, de acuerdo a la denominación que reciben en las leyes de cada país, quienes hacen su labor a cambio de una comisión.</span></p>\n<p><span>Las casas de bolsa son entidades, que actúan como intermediarios facultados para llevar a cabo operaciones de compra y venta de valores cotizados en la Bolsa de Valores. Además de esta función, las casas de bolsa actúan como consejeros de sus clientes. Como se ve, las casas de bolsa prestan dos servicios, el de intermediación y el de asesoría, por los cuales cobran comisiones.</span></p>\n<p><span>La función de las casas de bolsa es la de facilitar el contacto y el intercambio entre los poseedores de las acciones y los posibles compradores de éstas.</span></p>\n<p><span><strong>En Paraguay, según la Ley 1284/98, en su art. 105, las casas de bolsa están facultadas para efectuar las siguientes operaciones:</strong></span></p>\n<p><span>a. comprar y vender valores por cuenta de terceros y también por cuenta propia, con recursos propios, en la bolsa o fuera de ella;</span><br><span>b. prestar asesoría en materia de valores y operaciones de bolsa así como brindar a sus clientes un sistema de información y de procesamiento de datos;</span><br><span>c. suscribir transitoriamente, con recursos propios, parte o la totalidad de emisiones primarias de valores;</span><br><span>d. promover el lanzamiento de valores públicos y privados y facilitar su colocación;</span><br><span>e. actuar como representante de los obligacionistas;</span><br><span>f. prestar servicios de administración de carteras y custodia de valores;</span><br><span>g. llevar el registro contable de valores de sus clientes con sujeción a lo establecido en la presente ley, o en las resoluciones que dicte la Comisión al efecto;</span><br><span>h. otorgar créditos, con sus propios recursos, únicamente con el objeto de facilitar la adquisición de valores por sus comitentes, estén o no inscritos en bolsa y con la garantía de tales valores;</span><br><span>i. recibir créditos de empresas del sistema financiero para la realización de las actividades que les son propias; y,</span><br><span>j. efectuar todas las operaciones y servicios que sean compatibles con la actividad de intermediación en el mercado de valores y que previamente y de manera general autorice la Comisión.</span></p>', NULL, NULL, 1, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(1759, 130, 1, 0, 1, 0, 'Page', '2016-10-26 17:00:15', '2019-05-23 21:39:03', 'construccion', 'Construcción', NULL, '<p><strong>Esta destinado a los Socios que tengan interés de acceder una vivienda. Establece como destino exclusivo del presente préstamo los siguientes: Refacción, Aplicación, Adquisición y Construcción.</strong></p>\n<p>Podrá ser otorgada las siguientes modalidades:</p>\n<p><strong>Adquisición de viviendas terminadas</strong></p>\n<ol><li>Monto: de gs. 30.000.000 hasta gs. 100.000.000.</li>\n<li>Tasa de interés: 17% anual.</li>\n<li>Plazo máximo: hasta 60 meses (5 años).</li>\n<li>Relación aporte/crédito: 1/80.</li>\n<li>Garantía: real, hipotecaria del inmueble objeto del crédito, un cuyo caso podrá ser otorgado hasta el 70% del valor de la tasación.</li>\n</ol><h4>Requisitos:</h4>\n<ol><li>Carta de oferta y fotocopia de C.I del vendedor.</li>\n<li>Copia de titulo de Inmueble e Impuesto Inmobiliario al día.</li>\n<li>Tasación. Luego de pro análisis de factibilidad del préstamo.</li>\n<li>Fotocopia de C.I del titular y/o cónyuge.</li>\n<li>Comprobantes de ingresos:\n<ul><li>Certificado de trabajo original con sello y membrete de la empresa.</li>\n<li>3 ultimas boletas de IPS (asalariados).</li>\n<li>Copias de IVA con movimiento de 6 últimos meses y balance (contribuyentes).</li>\n<li>Contratos de alquiler con copias de C.I inquilinos (rentistas).</li>\n<li>Registro de marca, acta de vacunación y guía de traslado (ganaderos).</li>\n</ul></li>\n<li>La cuota del crédito no debe superar el 40% del ingreso neto demostrado.</li>\n</ol><p><strong>(*) La tasa de interés podrá ser modificada a partir del quinto año y fijada a la tasa del mercado para préstamos MI CASA AFD.</strong></p>', NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 243),
(1760, 130, 2, 1, 1, 1, 'Page', '2016-10-26 17:00:15', '2019-05-23 21:39:03', 'construccion', 'Construcción', NULL, '<p><strong>Esta destinado a los Socios que tengan interés de acceder una vivienda. Establece como destino exclusivo del presente préstamo los siguientes: Refacción, Aplicación, Adquisición y Construcción.</strong></p>\n<p>Podrá ser otorgada las siguientes modalidades:</p>\n<p><strong>Adquisición de viviendas terminadas</strong></p>\n<ol><li>Monto: de gs. 30.000.000 hasta gs. 100.000.000.</li>\n<li>Tasa de interés: 17% anual.</li>\n<li>Plazo máximo: hasta 60 meses (5 años).</li>\n<li>Relación aporte/crédito: 1/80.</li>\n<li>Garantía: real, hipotecaria del inmueble objeto del crédito, un cuyo caso podrá ser otorgado hasta el 70% del valor de la tasación.</li>\n</ol><h4>Requisitos:</h4>\n<ol><li>Carta de oferta y fotocopia de C.I del vendedor.</li>\n<li>Copia de titulo de Inmueble e Impuesto Inmobiliario al día.</li>\n<li>Tasación. Luego de pro análisis de factibilidad del préstamo.</li>\n<li>Fotocopia de C.I del titular y/o cónyuge.</li>\n<li>Comprobantes de ingresos:\n<ul><li>Certificado de trabajo original con sello y membrete de la empresa.</li>\n<li>3 ultimas boletas de IPS (asalariados).</li>\n<li>Copias de IVA con movimiento de 6 últimos meses y balance (contribuyentes).</li>\n<li>Contratos de alquiler con copias de C.I inquilinos (rentistas).</li>\n<li>Registro de marca, acta de vacunación y guía de traslado (ganaderos).</li>\n</ul></li>\n<li>La cuota del crédito no debe superar el 40% del ingreso neto demostrado.</li>\n</ol><p><strong>(*) La tasa de interés podrá ser modificada a partir del quinto año y fijada a la tasa del mercado para préstamos MI CASA AFD.</strong></p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 243),
(1761, 208, 1, 0, 1, 0, 'Page', '2016-12-01 13:01:13', '2019-05-23 21:39:14', 'caja-ahorro-vencimiento-unico', 'Caja de Ahorro Vencimiento Único', NULL, NULL, NULL, NULL, 0, 1, 17, 0, 0, NULL, 'Inherit', 'Inherit', 243),
(1762, 208, 2, 1, 1, 1, 'Page', '2016-12-01 13:01:13', '2019-05-23 21:39:14', 'caja-ahorro-vencimiento-unico', 'Caja de Ahorro Vencimiento Único', NULL, NULL, NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 243),
(1763, 205, 1, 0, 1, 0, 'Page', '2016-12-01 12:58:31', '2019-05-23 21:39:17', 'orden-compra-materiales', 'Orden de Compra para Materiales', NULL, NULL, NULL, NULL, 0, 1, 14, 0, 0, NULL, 'Inherit', 'Inherit', 243),
(1764, 205, 2, 1, 1, 1, 'Page', '2016-12-01 12:58:31', '2019-05-23 21:39:17', 'orden-compra-materiales', 'Orden de Compra para Materiales', NULL, NULL, NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 243),
(1765, 176, 11, 1, 1, 1, 'AcordeonPage', '2016-11-07 14:45:42', '2019-05-23 21:45:50', 'glosario', 'Glosario', NULL, NULL, NULL, NULL, 0, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1766, 6, 1, 1, 1, 1, '', '2015-07-22 11:04:43', '2019-05-23 21:50:38', 'financieros', 'Servicios Financieros', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1767, 6, 2, 1, 1, 1, '', '2015-07-22 11:04:43', '2019-05-23 21:53:00', 'financieros', 'Servicios', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1768, 244, 1, 0, 1, 0, 'GeneralPage', '2019-05-23 21:55:54', '2019-05-23 21:55:54', 'nuevo-pagina-general-para-todas-las-paginas', 'Nuevo Página General para todas las paginas', NULL, NULL, NULL, NULL, 1, 1, 18, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1769, 244, 2, 1, 1, 1, 'GeneralPage', '2019-05-23 21:55:54', '2019-05-23 21:56:16', 'nosotros', 'Nosotros', NULL, NULL, NULL, NULL, 1, 1, 18, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1770, 244, 3, 1, 1, 1, 'GeneralPage', '2019-05-23 21:55:54', '2019-05-23 21:56:34', 'nosotros', 'Nosotros', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1771, 244, 4, 1, 1, 1, 'GeneralPage', '2019-05-23 21:55:54', '2019-05-23 21:58:20', 'nosotros', 'Nosotros', NULL, '<h4>¿Qué es una casa de bolsa?</h4>\n<p>Para comprender mejor el significado de la <strong>Casa de Bolsa</strong>, antes debemos comprender el de la <strong>Bolsa de Valores</strong>.</p>\n<p>Una bolsa de valores es una organización privada que brinda las facilidades necesarias para que sus miembros, atendiendo los mandatos de sus clientes, realicen negociaciones de compra venta de valores, tales como acciones de sociedades o compañías anónimas, bonos públicos y privados, certificados, títulos de participación y una amplia variedad de instrumentos de inversión.</p>\n<p>La negociación de los valores en los mercados bursátiles se hace con base a unos precios conocidos y en tiempo real, en un entorno seguro para la actividad de los inversionistas, donde el mecanismo de las transacciones está totalmente regulado, lo que da garantía de legalidad y seguridad.</p>\n<p>Las bolsas de valores fortalecen al mercado de capitales e impulsan el desarrollo económico y financiero en la mayoría de los países del mundo, donde existen en algunos casos desde hace muchos años, a partir de las primeras entidades de este tipo creadas en los primeros años del siglo XVII.</p>\n<p>La negociación de valores en las bolsas se efectúa a través de los miembros de la Bolsa, conocidos usualmente con el nombre de corredores, sociedades de corretaje de valores, casas de bolsa, agentes o comisionistas, de acuerdo a la denominación que reciben en las leyes de cada país, quienes hacen su labor a cambio de una comisión.</p>\n<p>Las casas de bolsa son entidades, que actúan como intermediarios facultados para llevar a cabo operaciones de compra y venta de valores cotizados en la Bolsa de Valores. Además de esta función, las casas de bolsa actúan como consejeros de sus clientes. Como se ve, las casas de bolsa prestan dos servicios, el de intermediación y el de asesoría, por los cuales cobran comisiones.</p>\n<p>La función de las casas de bolsa es la de facilitar el contacto y el intercambio entre los poseedores de las acciones y los posibles compradores de éstas.</p>\n<p><strong>En Paraguay, según la Ley 1284/98, en su art. 105, las casas de bolsa están facultadas para efectuar las siguientes operaciones:</strong></p>\n<ol><li>comprar y vender valores por cuenta de terceros y también por cuenta propia, con recursos propios, en la bolsa o fuera de ella;</li>\n<li>prestar asesoría en materia de valores y operaciones de bolsa así como brindar a sus clientes un sistema de información y de procesamiento de datos;</li>\n<li>suscribir transitoriamente, con recursos propios, parte o la totalidad de emisiones primarias de valores;</li>\n<li>promover el lanzamiento de valores públicos y privados y facilitar su colocación;</li>\n<li>actuar como representante de los obligacionistas;</li>\n<li>prestar servicios de administración de carteras y custodia de valores;</li>\n<li>llevar el registro contable de valores de sus clientes con sujeción a lo establecido en la presente ley, o en las resoluciones que dicte la Comisión al efecto;</li>\n<li>otorgar créditos, con sus propios recursos, únicamente con el objeto de facilitar la adquisición de valores por sus comitentes, estén o no inscritos en bolsa y con la garantía de tales valores;</li>\n<li>recibir créditos de empresas del sistema financiero para la realización de las actividades que les son propias; y,</li>\n<li>efectuar todas las operaciones y servicios que sean compatibles con la actividad de intermediación en el mercado de valores y que previamente y de manera general autorice la Comisión.</li>\n</ol>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1772, 217, 1, 1, 1, 1, '', '2015-10-06 15:25:10', '2019-05-24 20:21:21', 'como-operar', 'Cómo Operar', NULL, '<h4>[embed width="600" height="213" class="leftAlone" thumbnail="http://www.avalon.com.py/public/img/como_operar2.jpg?r=82531"]http://www.avalon.com.py/public/img/como_operar2.jpg[/embed]</h4>\n<h4><span style="font-family: &#039;comic sans ms&#039;, sans-serif;">¿Como operar con la casa de bolsa?</span></h4>\n<p><span style="font-family: &#039;comic sans ms&#039;, sans-serif;">Para operar con la <strong>Casa de Bolsa</strong>, simplemente debe acercarse a <strong>Avalon Casa de Bolsa S.A.</strong>, o llamarnos por teléfono a nuestras oficinas o bien remitirnos un email, comenzando de esa manera nuestra labor de asesoramiento personal.</span></p>\n<p><span style="font-family: &#039;comic sans ms&#039;, sans-serif;">En nuestras oficinas, contamos con ejecutivos capacitados para evacuar todas las dudas que pudiera tener acerca de cómo operar con la <strong>Casa de Bolsa</strong>, ofrecerle los servicios que ponemos a su alcance para satisfacer sus necesidades, asesorarle de que manera puede invertir su capital o bien cómo puede captar recursos para su empres y además contamos con un Web Site en donde también puede interiorizarse acerca de quiénes somos y qué hacemos.</span></p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(1773, 218, 1, 1, 1, 1, '', '2015-10-06 15:25:10', '2019-05-24 20:21:32', 'hagase-cliente', 'Hágase Cliente', NULL, '<h4><img src="assets/Uploads/_resampled/ResizedImage600213-hagase-cliente2.jpg" alt="hagase cliente2" width="600" height="213" title="" class="leftAlone" mce_advimageresize_id="Form_EditForm_Content_mce_1"></h4>\n<h4><span style="font-family: &#039;comic sans ms&#039;, sans-serif;">¿Cómo ser cliente?</span></h4>\n<p><span style="font-family: &#039;comic sans ms&#039;, sans-serif;">Para ser cliente, sólo debe contactarse con <strong>Avalon Casa de Bolsa S.A.</strong></span></p>\n<p><span style="font-family: &#039;comic sans ms&#039;, sans-serif;">Cuando usted se pone en contacto con nosotros, nuestros ejecutivos le ayudarán a completar una ficha como cliente y a partir de ese momento, comenzaremos a buscar las mejores opciones de inversión, cualquiera sea su necesidad, previo acuerdo entre las partes acerca de los requisitos y condiciones.</span></p>\n<p><span style="font-family: &#039;comic sans ms&#039;, sans-serif;">El deseo de operar con la <strong>Casa de Bolsa</strong> puede originarse por la necesidad de buscar la optimización de los recursos, tanto para aquel que posee capital y lo desea invertir para lograr una rentabilidad por el mismo como aquel que necesita de capital en condiciones ventajosas para realizar inversiones.</span></p>\n<p><span style="font-family: &#039;comic sans ms&#039;, sans-serif;">Si usted está buscando hacer rendir su capital o está buscando obtener capital en condiciones ventajosas, sólo debe acercarse a nuestra <strong>Casa de Bolsa</strong>, llamarnos o enviarnos un email, y lo atenderemos como usted se merece, con seriedad, responsabilidad, y por sobre todo, brindándole seguridad.</span></p>', NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(1774, 219, 1, 1, 1, 1, '', '2015-10-06 15:25:10', '2019-05-24 20:22:31', 'requisitos', 'Requisitos', NULL, '<h4>[embed width="600" height="213" class="leftAlone" thumbnail="http://www.avalon.com.py/public/img/requisitos2.jpg?r=31776"]http://www.avalon.com.py/public/img/requisitos2.jpg[/embed]</h4>\n<h4>¿Cuáles son los requisitos?</h4>\n<p>Si usted es una persona que posee capital y desea que el mismo obtenga una rentabilidad, el único requisito es que usted nos haga saber y a partir de ese momento, nosotros nos encargamos de buscarle la mejor opción y de asesorarlo constantemente.</p>\n<p>Si usted desea obtener recursos para luego invertirlos, necesitamos iniciar un proceso de preparación de su empresa y adecuarla a las exigencias de las leyes y reglamentaciones vigentes para operar en el mercado de valores, situación que permitirá estar en condiciones de realizar emisiones de valores y con ello obtener los recursos que está necesitando.</p>\n<h4><img src="http://www.avalon.com.py/public/img/pdf1.png" mce_advimageresize_id="Form_EditForm_Content_mce_0" alt="" title=""><span> </span><a href="http://www.avalon.com.py/downloads/requisitos_cliente.pdf">Descargar Requisitos</a></h4>', NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(1775, 243, 5, 1, 1, 1, '', '2019-05-23 21:28:53', '2019-05-24 20:22:44', 'casas-de-bolsa', 'Casas de Bolsa', NULL, '<p><strong></strong></p>\n<p><strong>¿Qué es una casa de bolsa?</strong></p>\n<p><br><span>Para comprender mejor el significado de la <strong>Casa de Bolsa</strong>, antes debemos comprender el de la <strong>Bolsa de Valores</strong>.</span></p>\n<p><span>Una bolsa de valores es una organización privada que brinda las facilidades necesarias para que sus miembros, atendiendo los mandatos de sus clientes, realicen negociaciones de compra venta de valores, tales como acciones de sociedades o compañías anónimas, bonos públicos y privados, certificados, títulos de participación y una amplia variedad de instrumentos de inversión.</span></p>\n<p><span>La negociación de los valores en los mercados bursátiles se hace con base a unos precios conocidos y en tiempo real, en un entorno seguro para la actividad de los inversionistas, donde el mecanismo de las transacciones está totalmente regulado, lo que da garantía de legalidad y seguridad.</span></p>\n<p><span>Las bolsas de valores fortalecen al mercado de capitales e impulsan el desarrollo económico y financiero en la mayoría de los países del mundo, donde existen en algunos casos desde hace muchos años, a partir de las primeras entidades de este tipo creadas en los primeros años del siglo XVII.</span></p>\n<p><span>La negociación de valores en las bolsas se efectúa a través de los miembros de la Bolsa, conocidos usualmente con el nombre de corredores, sociedades de corretaje de valores, casas de bolsa, agentes o comisionistas, de acuerdo a la denominación que reciben en las leyes de cada país, quienes hacen su labor a cambio de una comisión.</span></p>\n<p><span>Las casas de bolsa son entidades, que actúan como intermediarios facultados para llevar a cabo operaciones de compra y venta de valores cotizados en la Bolsa de Valores. Además de esta función, las casas de bolsa actúan como consejeros de sus clientes. Como se ve, las casas de bolsa prestan dos servicios, el de intermediación y el de asesoría, por los cuales cobran comisiones.</span></p>\n<p><span>La función de las casas de bolsa es la de facilitar el contacto y el intercambio entre los poseedores de las acciones y los posibles compradores de éstas.</span></p>\n<p><span><strong>En Paraguay, según la Ley 1284/98, en su art. 105, las casas de bolsa están facultadas para efectuar las siguientes operaciones:</strong></span></p>\n<p><span>a. comprar y vender valores por cuenta de terceros y también por cuenta propia, con recursos propios, en la bolsa o fuera de ella;</span><br><span>b. prestar asesoría en materia de valores y operaciones de bolsa así como brindar a sus clientes un sistema de información y de procesamiento de datos;</span><br><span>c. suscribir transitoriamente, con recursos propios, parte o la totalidad de emisiones primarias de valores;</span><br><span>d. promover el lanzamiento de valores públicos y privados y facilitar su colocación;</span><br><span>e. actuar como representante de los obligacionistas;</span><br><span>f. prestar servicios de administración de carteras y custodia de valores;</span><br><span>g. llevar el registro contable de valores de sus clientes con sujeción a lo establecido en la presente ley, o en las resoluciones que dicte la Comisión al efecto;</span><br><span>h. otorgar créditos, con sus propios recursos, únicamente con el objeto de facilitar la adquisición de valores por sus comitentes, estén o no inscritos en bolsa y con la garantía de tales valores;</span><br><span>i. recibir créditos de empresas del sistema financiero para la realización de las actividades que les son propias; y,</span><br><span>j. efectuar todas las operaciones y servicios que sean compatibles con la actividad de intermediación en el mercado de valores y que previamente y de manera general autorice la Comisión.</span></p>', NULL, NULL, 0, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(1776, 6, 3, 1, 1, 1, '', '2015-07-22 11:04:43', '2019-05-24 20:29:04', 'financieros', 'Servicios', NULL, '<h4>¿Qué es una casa de bolsa?</h4>\n<p>Para comprender mejor el significado de la <strong>Casa de Bolsa</strong>, antes debemos comprender el de la <strong>Bolsa de Valores</strong>.</p>\n<p>Una bolsa de valores es una organización privada que brinda las facilidades necesarias para que sus miembros, atendiendo los mandatos de sus clientes, realicen negociaciones de compra venta de valores, tales como acciones de sociedades o compañías anónimas, bonos públicos y privados, certificados, títulos de participación y una amplia variedad de instrumentos de inversión.</p>\n<p>La negociación de los valores en los mercados bursátiles se hace con base a unos precios conocidos y en tiempo real, en un entorno seguro para la actividad de los inversionistas, donde el mecanismo de las transacciones está totalmente regulado, lo que da garantía de legalidad y seguridad.</p>\n<p>Las bolsas de valores fortalecen al mercado de capitales e impulsan el desarrollo económico y financiero en la mayoría de los países del mundo, donde existen en algunos casos desde hace muchos años, a partir de las primeras entidades de este tipo creadas en los primeros años del siglo XVII.</p>\n<p>La negociación de valores en las bolsas se efectúa a través de los miembros de la Bolsa, conocidos usualmente con el nombre de corredores, sociedades de corretaje de valores, casas de bolsa, agentes o comisionistas, de acuerdo a la denominación que reciben en las leyes de cada país, quienes hacen su labor a cambio de una comisión.</p>\n<p>Las casas de bolsa son entidades, que actúan como intermediarios facultados para llevar a cabo operaciones de compra y venta de valores cotizados en la Bolsa de Valores. Además de esta función, las casas de bolsa actúan como consejeros de sus clientes. Como se ve, las casas de bolsa prestan dos servicios, el de intermediación y el de asesoría, por los cuales cobran comisiones.</p>\n<p>La función de las casas de bolsa es la de facilitar el contacto y el intercambio entre los poseedores de las acciones y los posibles compradores de éstas.</p>\n<p><strong>En Paraguay, según la Ley 1284/98, en su art. 105, las casas de bolsa están facultadas para efectuar las siguientes operaciones:</strong></p>\n<ol><li>comprar y vender valores por cuenta de terceros y también por cuenta propia, con recursos propios, en la bolsa o fuera de ella;</li>\n<li>prestar asesoría en materia de valores y operaciones de bolsa así como brindar a sus clientes un sistema de información y de procesamiento de datos;</li>\n<li>suscribir transitoriamente, con recursos propios, parte o la totalidad de emisiones primarias de valores;</li>\n<li>promover el lanzamiento de valores públicos y privados y facilitar su colocación;</li>\n<li>actuar como representante de los obligacionistas;</li>\n<li>prestar servicios de administración de carteras y custodia de valores;</li>\n<li>llevar el registro contable de valores de sus clientes con sujeción a lo establecido en la presente ley, o en las resoluciones que dicte la Comisión al efecto;</li>\n<li>otorgar créditos, con sus propios recursos, únicamente con el objeto de facilitar la adquisición de valores por sus comitentes, estén o no inscritos en bolsa y con la garantía de tales valores;</li>\n<li>recibir créditos de empresas del sistema financiero para la realización de las actividades que les son propias; y,</li>\n<li>efectuar todas las operaciones y servicios que sean compatibles con la actividad de intermediación en el mercado de valores y que previamente y de manera general autorice la Comisión.</li>\n</ol>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1777, 217, 2, 1, 1, 1, '', '2015-10-06 15:25:10', '2019-05-24 20:43:55', 'como-operar', 'Cómo Operar', NULL, '<h4>[embed width="600" height="213" class="leftAlone" thumbnail="http://www.avalon.com.py/public/img/como_operar2.jpg?r"]http://www.avalon.com.py/public/img/como_operar2.jpg[/embed]</h4>\n<h4><span style="font-family: &#039;comic sans ms&#039;, sans-serif;">¿Como operar con la casa de bolsa?</span></h4>\n<p><span style="font-family: &#039;comic sans ms&#039;, sans-serif;">Para operar con la <strong>Casa de Bolsa</strong>, simplemente debe acercarse a <strong>Avalon Casa de Bolsa S.A.</strong>, o llamarnos por teléfono a nuestras oficinas o bien remitirnos un email, comenzando de esa manera nuestra labor de asesoramiento personal.</span></p>\n<p><span style="font-family: &#039;comic sans ms&#039;, sans-serif;">En nuestras oficinas, contamos con ejecutivos capacitados para evacuar todas las dudas que pudiera tener acerca de cómo operar con la <strong>Casa de Bolsa</strong>, ofrecerle los servicios que ponemos a su alcance para satisfacer sus necesidades, asesorarle de que manera puede invertir su capital o bien cómo puede captar recursos para su empres y además contamos con un Web Site en donde también puede interiorizarse acerca de quiénes somos y qué hacemos.</span></p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(1778, 217, 3, 1, 1, 1, '', '2015-10-06 15:25:10', '2019-05-24 20:44:06', 'como-operar', 'Cómo Operar', NULL, '<h4>¿Como operar con la casa de bolsa?</h4>\n<p><span style="font-family: &#039;comic sans ms&#039;, sans-serif;">Para operar con la <strong>Casa de Bolsa</strong>, simplemente debe acercarse a <strong>Avalon Casa de Bolsa S.A.</strong>, o llamarnos por teléfono a nuestras oficinas o bien remitirnos un email, comenzando de esa manera nuestra labor de asesoramiento personal.</span></p>\n<p><span style="font-family: &#039;comic sans ms&#039;, sans-serif;">En nuestras oficinas, contamos con ejecutivos capacitados para evacuar todas las dudas que pudiera tener acerca de cómo operar con la <strong>Casa de Bolsa</strong>, ofrecerle los servicios que ponemos a su alcance para satisfacer sus necesidades, asesorarle de que manera puede invertir su capital o bien cómo puede captar recursos para su empres y además contamos con un Web Site en donde también puede interiorizarse acerca de quiénes somos y qué hacemos.</span></p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(1779, 218, 2, 1, 1, 1, '', '2015-10-06 15:25:10', '2019-05-24 20:44:23', 'hagase-cliente', 'Hágase Cliente', NULL, '<h4><span style="font-family: &#039;comic sans ms&#039;, sans-serif;">¿Cómo ser cliente?</span></h4>\n<p><span style="font-family: &#039;comic sans ms&#039;, sans-serif;">Para ser cliente, sólo debe contactarse con <strong>Avalon Casa de Bolsa S.A.</strong></span></p>\n<p><span style="font-family: &#039;comic sans ms&#039;, sans-serif;">Cuando usted se pone en contacto con nosotros, nuestros ejecutivos le ayudarán a completar una ficha como cliente y a partir de ese momento, comenzaremos a buscar las mejores opciones de inversión, cualquiera sea su necesidad, previo acuerdo entre las partes acerca de los requisitos y condiciones.</span></p>\n<p><span style="font-family: &#039;comic sans ms&#039;, sans-serif;">El deseo de operar con la <strong>Casa de Bolsa</strong> puede originarse por la necesidad de buscar la optimización de los recursos, tanto para aquel que posee capital y lo desea invertir para lograr una rentabilidad por el mismo como aquel que necesita de capital en condiciones ventajosas para realizar inversiones.</span></p>\n<p><span style="font-family: &#039;comic sans ms&#039;, sans-serif;">Si usted está buscando hacer rendir su capital o está buscando obtener capital en condiciones ventajosas, sólo debe acercarse a nuestra <strong>Casa de Bolsa</strong>, llamarnos o enviarnos un email, y lo atenderemos como usted se merece, con seriedad, responsabilidad, y por sobre todo, brindándole seguridad.</span></p>', NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(1780, 219, 2, 1, 1, 1, '', '2015-10-06 15:25:10', '2019-05-24 20:45:01', 'requisitos', 'Requisitos', NULL, '<h4>¿Cuáles son los requisitos?</h4>\n<p>Si usted es una persona que posee capital y desea que el mismo obtenga una rentabilidad, el único requisito es que usted nos haga saber y a partir de ese momento, nosotros nos encargamos de buscarle la mejor opción y de asesorarlo constantemente.</p>\n<p>Si usted desea obtener recursos para luego invertirlos, necesitamos iniciar un proceso de preparación de su empresa y adecuarla a las exigencias de las leyes y reglamentaciones vigentes para operar en el mercado de valores, situación que permitirá estar en condiciones de realizar emisiones de valores y con ello obtener los recursos que está necesitando.</p>\n<h4><img src="http://www.avalon.com.py/public/img/pdf1.png" mce_advimageresize_id="Form_EditForm_Content_mce_0" alt="" title=""><span> </span><a href="http://www.avalon.com.py/downloads/requisitos_cliente.pdf">Descargar Requisitos</a></h4>', NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(1781, 243, 6, 1, 1, 1, '', '2019-05-23 21:28:53', '2019-05-24 20:47:31', 'casas-de-bolsa', 'Casas de Bolsa', NULL, '<p><strong>¿Qué es una casa de bolsa?</strong></p>\n<p><br><span>Para comprender mejor el significado de la <strong>Casa de Bolsa</strong>, antes debemos comprender el de la <strong>Bolsa de Valores</strong>.</span></p>\n<p><span>Una bolsa de valores es una organización privada que brinda las facilidades necesarias para que sus miembros, atendiendo los mandatos de sus clientes, realicen negociaciones de compra venta de valores, tales como acciones de sociedades o compañías anónimas, bonos públicos y privados, certificados, títulos de participación y una amplia variedad de instrumentos de inversión.</span></p>\n<p><span>La negociación de los valores en los mercados bursátiles se hace con base a unos precios conocidos y en tiempo real, en un entorno seguro para la actividad de los inversionistas, donde el mecanismo de las transacciones está totalmente regulado, lo que da garantía de legalidad y seguridad.</span></p>\n<p><span>Las bolsas de valores fortalecen al mercado de capitales e impulsan el desarrollo económico y financiero en la mayoría de los países del mundo, donde existen en algunos casos desde hace muchos años, a partir de las primeras entidades de este tipo creadas en los primeros años del siglo XVII.</span></p>\n<p><span>La negociación de valores en las bolsas se efectúa a través de los miembros de la Bolsa, conocidos usualmente con el nombre de corredores, sociedades de corretaje de valores, casas de bolsa, agentes o comisionistas, de acuerdo a la denominación que reciben en las leyes de cada país, quienes hacen su labor a cambio de una comisión.</span></p>\n<p><span>Las casas de bolsa son entidades, que actúan como intermediarios facultados para llevar a cabo operaciones de compra y venta de valores cotizados en la Bolsa de Valores. Además de esta función, las casas de bolsa actúan como consejeros de sus clientes. Como se ve, las casas de bolsa prestan dos servicios, el de intermediación y el de asesoría, por los cuales cobran comisiones.</span></p>\n<p><span>La función de las casas de bolsa es la de facilitar el contacto y el intercambio entre los poseedores de las acciones y los posibles compradores de éstas.</span></p>\n<p><span><strong>En Paraguay, según la Ley 1284/98, en su art. 105, las casas de bolsa están facultadas para efectuar las siguientes operaciones:</strong></span></p>\n<p><span>a. comprar y vender valores por cuenta de terceros y también por cuenta propia, con recursos propios, en la bolsa o fuera de ella;</span><br><span>b. prestar asesoría en materia de valores y operaciones de bolsa así como brindar a sus clientes un sistema de información y de procesamiento de datos;</span><br><span>c. suscribir transitoriamente, con recursos propios, parte o la totalidad de emisiones primarias de valores;</span><br><span>d. promover el lanzamiento de valores públicos y privados y facilitar su colocación;</span><br><span>e. actuar como representante de los obligacionistas;</span><br><span>f. prestar servicios de administración de carteras y custodia de valores;</span><br><span>g. llevar el registro contable de valores de sus clientes con sujeción a lo establecido en la presente ley, o en las resoluciones que dicte la Comisión al efecto;</span><br><span>h. otorgar créditos, con sus propios recursos, únicamente con el objeto de facilitar la adquisición de valores por sus comitentes, estén o no inscritos en bolsa y con la garantía de tales valores;</span><br><span>i. recibir créditos de empresas del sistema financiero para la realización de las actividades que les son propias; y,</span><br><span>j. efectuar todas las operaciones y servicios que sean compatibles con la actividad de intermediación en el mercado de valores y que previamente y de manera general autorice la Comisión.</span></p>', NULL, NULL, 0, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(1782, 246, 1, 0, 1, 0, 'PreguntasFrecuentesPage', '2019-05-27 20:41:35', '2019-05-27 20:41:35', 'nuevo-pagina-de-preguntas-frecuentes', 'Nuevo Pagina de Preguntas Frecuentes', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 245),
(1783, 247, 1, 0, 1, 0, 'PreguntasFrecuentesPage', '2019-05-27 20:41:39', '2019-05-27 20:41:39', 'nuevo-pagina-de-preguntas-frecuentes-2', 'Nuevo Pagina de Preguntas Frecuentes', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 245),
(1784, 242, 3, 0, 1, 0, 'GeneralPage', '2019-05-23 21:09:03', '2019-05-27 20:55:55', 'cdas', 'CDA''s', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 176),
(1785, 242, 4, 0, 1, 0, 'GeneralPage', '2019-05-23 21:09:03', '2019-05-27 20:55:55', 'cdas', 'CDA''s', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 176),
(1786, 242, 5, 0, 1, 0, 'GeneralPage', '2019-05-23 21:09:03', '2019-05-27 20:56:17', 'cdas', 'CDA''s', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 239),
(1787, 242, 6, 0, 1, 0, 'GeneralPage', '2019-05-23 21:09:03', '2019-05-27 20:56:17', 'cdas', 'CDA''s', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 239),
(1788, 248, 1, 0, 1, 0, 'GeneralPage', '2019-05-23 21:07:41', '2019-05-27 20:56:27', 'bonos-2', 'Bonos', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1789, 248, 2, 0, 1, 0, 'GeneralPage', '2019-05-23 21:07:41', '2019-05-27 20:56:27', 'bonos-2', 'Bonos', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1790, 248, 3, 0, 1, 0, 'GeneralPage', '2019-05-23 21:07:41', '2019-05-27 20:56:32', 'bonos-2', 'Bonos', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 48),
(1791, 248, 4, 0, 1, 0, 'GeneralPage', '2019-05-23 21:07:41', '2019-05-27 20:56:32', 'bonos-2', 'Bonos', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 48),
(1792, 248, 5, 0, 1, 0, 'GeneralPage', '2019-05-23 21:07:41', '2019-05-27 20:56:37', 'bonos-2', 'Bonos', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1793, 248, 6, 0, 1, 0, 'GeneralPage', '2019-05-23 21:07:41', '2019-05-27 20:56:37', 'bonos-2', 'Bonos', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0);
INSERT INTO `SiteTree_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `ParentID`) VALUES
(1794, 248, 7, 1, 1, 1, 'GeneralPage', '2019-05-23 21:07:41', '2019-05-27 20:57:01', 'bonos-2', 'Bonos', NULL, '<p>Las cooperativas son organizaciones democráticas controladas por sus socias y socios, quiénes participan activamente en la definición de las políticas y en la toma de decisiones. Los hombres y mujeres elegidos para representar a su cooperativa, responden ante socias y socios. Organizaciones democráticas: Dentro de las cooperativas, la "democracia" considera los derechos y las responsabilidades. También significa que fomenta el espíritu de democracia dentro de las mismas.</p>\n<p>Igual derecho a voto: Cada cooperativa conoce cual es la mejor forma y más democrática de hacerlo, de acuerdo a las características de la misma. En las cooperativas de base, socias y socios tienen igual derecho a voto (un miembro, un voto). En cooperativas secundarias y terciarias, los sistemas de votación proporcional han sido adaptados para que reflejen la diversidad de intereses, el número de miembros en las cooperativas asociadas y el compromiso dentro de las cooperativas involucradas.</p>\n<p>"Las cooperativas son organizaciones democráticas controladas por sus miembros, quienes participan activamente en la definición de sus políticas y en la toma de decisiones": Esta oración recalca que socias y socios controlan en última instancia su cooperativa, acentúa que lo hacen democráticamente, reafirma el derecho de socias y socios a involucrase activamente en la determinación de políticas y en la toma de decisiones claves.</p>\n<p>En muchas cooperativas, este involucramiento activo se da en las reuniones generales en las que se discuten las políticas, se toman decisiones importantes y se aprueban acciones. En otras cooperativas, como las de trabajo, de mercadeo o de vivienda, los miembros se involucran más rutinariamente en las operaciones diarias de la cooperativa.</p>\n<p>En todas las cooperativas, "los hombres y las mujeres que han sido elegidos para representar a sus cooperativas, responden ante sus miembros". Las y los representantes deben mantener sus funciones para beneficio de sus socias y socios de inmediato o a largo plazo. Las cooperativas no "pertenecen" a las y los dirigentes electos en mayor medida de la que "pertenecen" a las y los funcionarios. Pertenecen a socias y socios, y todas y todos las y los dirigentes son responsables de sus acciones ante socias y socios, tanto en el tiempo de elección</p>', NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1795, 248, 8, 0, 1, 0, 'GeneralPage', '2019-05-23 21:07:41', '2019-05-27 20:57:37', 'bonos-2', 'Bonos', NULL, '<p>Las cooperativas son organizaciones democráticas controladas por sus socias y socios, quiénes participan activamente en la definición de las políticas y en la toma de decisiones. Los hombres y mujeres elegidos para representar a su cooperativa, responden ante socias y socios. Organizaciones democráticas: Dentro de las cooperativas, la "democracia" considera los derechos y las responsabilidades. También significa que fomenta el espíritu de democracia dentro de las mismas.</p>\n<p>Igual derecho a voto: Cada cooperativa conoce cual es la mejor forma y más democrática de hacerlo, de acuerdo a las características de la misma. En las cooperativas de base, socias y socios tienen igual derecho a voto (un miembro, un voto). En cooperativas secundarias y terciarias, los sistemas de votación proporcional han sido adaptados para que reflejen la diversidad de intereses, el número de miembros en las cooperativas asociadas y el compromiso dentro de las cooperativas involucradas.</p>\n<p>"Las cooperativas son organizaciones democráticas controladas por sus miembros, quienes participan activamente en la definición de sus políticas y en la toma de decisiones": Esta oración recalca que socias y socios controlan en última instancia su cooperativa, acentúa que lo hacen democráticamente, reafirma el derecho de socias y socios a involucrase activamente en la determinación de políticas y en la toma de decisiones claves.</p>\n<p>En muchas cooperativas, este involucramiento activo se da en las reuniones generales en las que se discuten las políticas, se toman decisiones importantes y se aprueban acciones. En otras cooperativas, como las de trabajo, de mercadeo o de vivienda, los miembros se involucran más rutinariamente en las operaciones diarias de la cooperativa.</p>\n<p>En todas las cooperativas, "los hombres y las mujeres que han sido elegidos para representar a sus cooperativas, responden ante sus miembros". Las y los representantes deben mantener sus funciones para beneficio de sus socias y socios de inmediato o a largo plazo. Las cooperativas no "pertenecen" a las y los dirigentes electos en mayor medida de la que "pertenecen" a las y los funcionarios. Pertenecen a socias y socios, y todas y todos las y los dirigentes son responsables de sus acciones ante socias y socios, tanto en el tiempo de elección</p>', NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 176),
(1796, 248, 9, 0, 1, 0, 'GeneralPage', '2019-05-23 21:07:41', '2019-05-27 20:57:37', 'bonos-2', 'Bonos', NULL, '<p>Las cooperativas son organizaciones democráticas controladas por sus socias y socios, quiénes participan activamente en la definición de las políticas y en la toma de decisiones. Los hombres y mujeres elegidos para representar a su cooperativa, responden ante socias y socios. Organizaciones democráticas: Dentro de las cooperativas, la "democracia" considera los derechos y las responsabilidades. También significa que fomenta el espíritu de democracia dentro de las mismas.</p>\n<p>Igual derecho a voto: Cada cooperativa conoce cual es la mejor forma y más democrática de hacerlo, de acuerdo a las características de la misma. En las cooperativas de base, socias y socios tienen igual derecho a voto (un miembro, un voto). En cooperativas secundarias y terciarias, los sistemas de votación proporcional han sido adaptados para que reflejen la diversidad de intereses, el número de miembros en las cooperativas asociadas y el compromiso dentro de las cooperativas involucradas.</p>\n<p>"Las cooperativas son organizaciones democráticas controladas por sus miembros, quienes participan activamente en la definición de sus políticas y en la toma de decisiones": Esta oración recalca que socias y socios controlan en última instancia su cooperativa, acentúa que lo hacen democráticamente, reafirma el derecho de socias y socios a involucrase activamente en la determinación de políticas y en la toma de decisiones claves.</p>\n<p>En muchas cooperativas, este involucramiento activo se da en las reuniones generales en las que se discuten las políticas, se toman decisiones importantes y se aprueban acciones. En otras cooperativas, como las de trabajo, de mercadeo o de vivienda, los miembros se involucran más rutinariamente en las operaciones diarias de la cooperativa.</p>\n<p>En todas las cooperativas, "los hombres y las mujeres que han sido elegidos para representar a sus cooperativas, responden ante sus miembros". Las y los representantes deben mantener sus funciones para beneficio de sus socias y socios de inmediato o a largo plazo. Las cooperativas no "pertenecen" a las y los dirigentes electos en mayor medida de la que "pertenecen" a las y los funcionarios. Pertenecen a socias y socios, y todas y todos las y los dirigentes son responsables de sus acciones ante socias y socios, tanto en el tiempo de elección</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 176),
(1797, 248, 10, 1, 1, 1, 'GeneralPage', '2019-05-23 21:07:41', '2019-05-27 20:58:00', 'nuevo-pagina', 'Bonos', NULL, '<p>Las cooperativas son organizaciones democráticas controladas por sus socias y socios, quiénes participan activamente en la definición de las políticas y en la toma de decisiones. Los hombres y mujeres elegidos para representar a su cooperativa, responden ante socias y socios. Organizaciones democráticas: Dentro de las cooperativas, la "democracia" considera los derechos y las responsabilidades. También significa que fomenta el espíritu de democracia dentro de las mismas.</p>\n<p>Igual derecho a voto: Cada cooperativa conoce cual es la mejor forma y más democrática de hacerlo, de acuerdo a las características de la misma. En las cooperativas de base, socias y socios tienen igual derecho a voto (un miembro, un voto). En cooperativas secundarias y terciarias, los sistemas de votación proporcional han sido adaptados para que reflejen la diversidad de intereses, el número de miembros en las cooperativas asociadas y el compromiso dentro de las cooperativas involucradas.</p>\n<p>"Las cooperativas son organizaciones democráticas controladas por sus miembros, quienes participan activamente en la definición de sus políticas y en la toma de decisiones": Esta oración recalca que socias y socios controlan en última instancia su cooperativa, acentúa que lo hacen democráticamente, reafirma el derecho de socias y socios a involucrase activamente en la determinación de políticas y en la toma de decisiones claves.</p>\n<p>En muchas cooperativas, este involucramiento activo se da en las reuniones generales en las que se discuten las políticas, se toman decisiones importantes y se aprueban acciones. En otras cooperativas, como las de trabajo, de mercadeo o de vivienda, los miembros se involucran más rutinariamente en las operaciones diarias de la cooperativa.</p>\n<p>En todas las cooperativas, "los hombres y las mujeres que han sido elegidos para representar a sus cooperativas, responden ante sus miembros". Las y los representantes deben mantener sus funciones para beneficio de sus socias y socios de inmediato o a largo plazo. Las cooperativas no "pertenecen" a las y los dirigentes electos en mayor medida de la que "pertenecen" a las y los funcionarios. Pertenecen a socias y socios, y todas y todos las y los dirigentes son responsables de sus acciones ante socias y socios, tanto en el tiempo de elección</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 176),
(1798, 248, 11, 1, 1, 1, 'GeneralPage', '2019-05-23 21:07:41', '2019-05-27 20:59:27', 'nuevo-pagina', 'Bonos', NULL, '<p>El Bono es un título de deuda, de renta fija, emitido por un Estado, por un gobierno regional, por un municipio o por una empresa industrial, comercial o de servicios.</p>\n<p>También puede ser emitido por una institución supranacional, con el objetivo de obtener fondos directamente de los mercados financieros. El emisor se compromete a devolver el capital principal junto con los intereses.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 176),
(1799, 248, 12, 1, 1, 1, 'GeneralPage', '2019-05-23 21:07:41', '2019-05-27 20:59:34', 'bonos', 'Bonos', NULL, '<p>El Bono es un título de deuda, de renta fija, emitido por un Estado, por un gobierno regional, por un municipio o por una empresa industrial, comercial o de servicios.</p>\n<p>También puede ser emitido por una institución supranacional, con el objetivo de obtener fondos directamente de los mercados financieros. El emisor se compromete a devolver el capital principal junto con los intereses.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 176),
(1800, 249, 1, 0, 1, 0, 'GeneralPage', '2019-05-23 21:09:03', '2019-05-27 21:01:05', 'cdas-2', 'CDA''s', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 176),
(1801, 249, 2, 0, 1, 0, 'GeneralPage', '2019-05-23 21:09:03', '2019-05-27 21:01:05', 'cdas-2', 'CDA''s', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 176),
(1802, 249, 3, 1, 1, 1, 'GeneralPage', '2019-05-23 21:09:03', '2019-05-27 21:01:24', 'cdas-2', 'CDA''s', NULL, '<p>Una acción es una parte proporcional del capital social de una sociedad anónima. Representa la propiedad que una persona tiene de una parte de esa sociedad. Normalmente, salvo excepciones, las acciones son transmisibles libremente y otorgan derechos económicos y políticos a su titular (accionista).</p>\n<p>Como inversión, supone una inversión en renta variable, dado que no tiene un retorno fijo establecido por contrato, sino que depende de la buena marcha de dicha empresa.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 176),
(1803, 249, 4, 1, 1, 1, 'GeneralPage', '2019-05-23 21:09:03', '2019-05-27 21:01:47', 'acciones', 'Acciones', NULL, '<p>Una acción es una parte proporcional del capital social de una sociedad anónima. Representa la propiedad que una persona tiene de una parte de esa sociedad. Normalmente, salvo excepciones, las acciones son transmisibles libremente y otorgan derechos económicos y políticos a su titular (accionista).</p>\n<p>Como inversión, supone una inversión en renta variable, dado que no tiene un retorno fijo establecido por contrato, sino que depende de la buena marcha de dicha empresa.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 176),
(1804, 250, 1, 1, 1, 1, 'GeneralPage', '2019-05-23 21:08:15', '2019-05-27 21:02:22', 'capital-de-riesgo', 'Capital de Riesgo', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 239),
(1805, 251, 1, 1, 1, 1, 'GeneralPage', '2019-05-23 21:08:15', '2019-05-27 21:02:40', 'capital-de-riesgo-2', 'Crédito al Consumo', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 239),
(1806, 252, 1, 1, 1, 1, 'GeneralPage', '2019-05-23 21:08:15', '2019-05-27 21:03:24', 'commodities-financieros', 'Commodities Financieros', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 239),
(1807, 253, 1, 1, 1, 1, 'GeneralPage', '2019-05-23 21:08:15', '2019-05-27 21:03:50', 'deflacion', 'Deflación', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 239),
(1808, 254, 1, 1, 1, 1, 'GeneralPage', '2019-05-23 21:08:15', '2019-05-27 21:04:06', 'devaluacion', 'Devaluación', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 239),
(1809, 250, 2, 1, 1, 1, 'GeneralPage', '2019-05-23 21:08:15', '2019-05-27 21:04:37', 'capital-de-riesgo', 'Capital de Riesgo', NULL, '<p>Los miembros contribuyen equitativamente y controlan de manera democrática el capital de la cooperativa. Por lo menos una parte de ese capital es propiedad común de la cooperativa. Usualmente reciben una compensación limitada, si es que la hay, sobre el capital suscrito como condición de membresía.</p>\n<p>Socias y socios asignan excedentes para cualquiera de los siguientes propósitos: el desarrollo de la cooperativa, posiblemente en la creación de reservas, parte de la cual sería indivisible; los beneficios a socias y socios en proporción con sus transacciones con la cooperativa; y al apoyo a otras actividades según lo apruebe la membresía.</p>\n<p>Las cooperativas operan de modo que el capital está al servicio de la organización y no al revés. Las cooperativas existen para hacer frente a las necesidades de la gente, y este Principio describe cómo socias y socios no solo invierten en las cooperativas, sino que también deciden cómo distribuir sus excedentes.</p>\n<p>"Los miembros contribuyen equitativamente y controlan, de manera democrática, el capital de la cooperativa", refuerza la necesidad de los miembros de contribuir con capital a su cooperativa, como la forma de hacerlo equitativamente; ellos pueden contribuir con capital en cuatro formas:</p>\n<p>1. En la mayoría de las cooperativas, los miembros deben invertir en una acción o acciones de membresía, que muy pocas veces paga intereses.</p>\n<p>2. Conforme prospera la cooperativa, se pueden crear reservas derivadas de los ingresos recogidos de las actividades de la organización. Normalmente, todos o por lo menos una gran proporción de estos ingresos se obtienen colectivamente, lo que representa los logros colectivos de los miembros que apoyan la cooperativa.</p>\n<p>3. Las cooperativas podrían tener necesidades de capital más altas de los que pueden ahorrar de sus actividades económicas.</p>\n<p>4. Las cooperativas podrían hacer un llamado especial a los miembros para inversiones adicionales.</p>\n<p>Socias y socios también controlan el capital en sus cooperativas:</p>\n<p>* Sin importar cómo las cooperativas obtienen el capital para sus operaciones, la autoridad final, para la toma de todas las decisiones, debe recaer sobre socias y socios.</p>\n<p>* Socias y socios deben tener derecho a poseer por lo menos parte de su capital colectivo, como reflejo de lo que han obtenido como grupo.</p>\n<p>Cuando las actividades de la cooperativa crean excedentes, socias y socios tienen el derecho y la obligación de decidir cómo serán distribuidos esos excedentes, que podrán asignarlos para cualquiera de los siguientes propósitos:</p>\n<p>a. Pueden escoger el desarrollo de la cooperativa, "posiblemente en la creación de reservas, parte de la cual sería indivisible.</p>\n<p>b. Pueden decidir pagar un beneficio a los miembros, usualmente llamado el excedente en proporción con su participación en la cooperativa.</p>\n<p>c. Pueden apoyar a otras actividades según lo apruebe la membresía. Una de las actividades más importantes que pueden y deben apoyar, es el desarrollo futuro del movimiento cooperativo, local, nacional, regional e internacional.</p>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 239),
(1810, 251, 2, 1, 1, 1, 'GeneralPage', '2019-05-23 21:08:15', '2019-05-27 21:05:08', 'capital-de-riesgo-2', 'Crédito al Consumo', NULL, '<p>Se le llama crédito al consumo o crédito de adquisición de bienes de consumo duradero al producto que se otorga para comprar un bien o servicio de uso personal en plazos determinados.</p>\n<p>Por lo común se aplica a bienes de uso duradero, como automóviles, muebles neveras, televisores, entre otros.</p>', NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 239),
(1811, 250, 3, 1, 1, 1, 'GeneralPage', '2019-05-23 21:08:15', '2019-05-27 21:05:22', 'capital-de-riesgo', 'Capital de Riesgo', NULL, '<p><span>Hace referencia a empresas que invierten en los fondos de capital de riesgo, que canalizan grandes sumas de dinero hacia nuevos negocios de alto riesgo y alta rentabilidad, poniendo a disposición de una nueva generación de emprendedores suficiente cantidad de dinero como para enfrentarse a empresas ya existentes.</span></p>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 239),
(1812, 252, 2, 1, 1, 1, 'GeneralPage', '2019-05-23 21:08:15', '2019-05-27 21:05:39', 'commodities-financieros', 'Commodities Financieros', NULL, '<p><span>Un commodity es todo aquello que sea subyacente en un contrato de futuros de una bolsa de commodities establecida, el mercado de futuros más conocido es el de Chicago, Estados Unidos.</span></p>', NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 239),
(1813, 253, 2, 1, 1, 1, 'GeneralPage', '2019-05-23 21:08:15', '2019-05-27 21:06:02', 'deflacion', 'Deflación', NULL, '<p>La deflación es la caída generalizada del nivel de precios de bienes y servicios en una economía.</p>\n<p>Es el movimiento contrario a la inflación. Es la situación económica en que los precios disminuyen y es producida por una falta de demanda, y es mucho más peligrosa y temida por los gobiernos que la inflación.</p>', NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 239),
(1814, 254, 2, 1, 1, 1, 'GeneralPage', '2019-05-23 21:08:15', '2019-05-27 21:06:16', 'devaluacion', 'Devaluación', NULL, '<p>La cooperativa trabaja para el desarrollo sostenible de su comunidad por medio de políticas aceptadas por sus miembros.</p>\n<p>Desarrollo sostenible de su comunidad: Las cooperativas están íntimamente ligadas a sus comunidades. Tienen la responsabilidad especial de asegurar la continuidad del desarrollo de su comunidad en los aspectos económicos, sociales y culturales, y trabajar constantemente por la protección ambiental de su comunidad.</p>\n<p>Queda en manos de sus socias y socios decidir que tanto y en qué forma una cooperativa debe contribuir con su comunidad.</p>', NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 239),
(1815, 250, 4, 0, 1, 0, 'GeneralPage', '2019-05-23 21:08:15', '2019-05-27 21:07:56', 'capital-de-riesgo', 'Capital de Riesgo', NULL, '<p><span>Hace referencia a empresas que invierten en los fondos de capital de riesgo, que canalizan grandes sumas de dinero hacia nuevos negocios de alto riesgo y alta rentabilidad, poniendo a disposición de una nueva generación de emprendedores suficiente cantidad de dinero como para enfrentarse a empresas ya existentes.</span></p>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 176),
(1816, 250, 5, 1, 1, 1, 'GeneralPage', '2019-05-23 21:08:15', '2019-05-27 21:07:56', 'capital-de-riesgo', 'Capital de Riesgo', NULL, '<p><span>Hace referencia a empresas que invierten en los fondos de capital de riesgo, que canalizan grandes sumas de dinero hacia nuevos negocios de alto riesgo y alta rentabilidad, poniendo a disposición de una nueva generación de emprendedores suficiente cantidad de dinero como para enfrentarse a empresas ya existentes.</span></p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 176),
(1817, 251, 3, 0, 1, 0, 'GeneralPage', '2019-05-23 21:08:15', '2019-05-27 21:07:59', 'capital-de-riesgo-2', 'Crédito al Consumo', NULL, '<p>Se le llama crédito al consumo o crédito de adquisición de bienes de consumo duradero al producto que se otorga para comprar un bien o servicio de uso personal en plazos determinados.</p>\n<p>Por lo común se aplica a bienes de uso duradero, como automóviles, muebles neveras, televisores, entre otros.</p>', NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 176),
(1818, 251, 4, 1, 1, 1, 'GeneralPage', '2019-05-23 21:08:15', '2019-05-27 21:07:59', 'capital-de-riesgo-2', 'Crédito al Consumo', NULL, '<p>Se le llama crédito al consumo o crédito de adquisición de bienes de consumo duradero al producto que se otorga para comprar un bien o servicio de uso personal en plazos determinados.</p>\n<p>Por lo común se aplica a bienes de uso duradero, como automóviles, muebles neveras, televisores, entre otros.</p>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 176),
(1819, 252, 3, 0, 1, 0, 'GeneralPage', '2019-05-23 21:08:15', '2019-05-27 21:08:02', 'commodities-financieros', 'Commodities Financieros', NULL, '<p><span>Un commodity es todo aquello que sea subyacente en un contrato de futuros de una bolsa de commodities establecida, el mercado de futuros más conocido es el de Chicago, Estados Unidos.</span></p>', NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 176),
(1820, 252, 4, 1, 1, 1, 'GeneralPage', '2019-05-23 21:08:15', '2019-05-27 21:08:02', 'commodities-financieros', 'Commodities Financieros', NULL, '<p><span>Un commodity es todo aquello que sea subyacente en un contrato de futuros de una bolsa de commodities establecida, el mercado de futuros más conocido es el de Chicago, Estados Unidos.</span></p>', NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 176),
(1821, 253, 3, 0, 1, 0, 'GeneralPage', '2019-05-23 21:08:15', '2019-05-27 21:08:05', 'deflacion', 'Deflación', NULL, '<p>La deflación es la caída generalizada del nivel de precios de bienes y servicios en una economía.</p>\n<p>Es el movimiento contrario a la inflación. Es la situación económica en que los precios disminuyen y es producida por una falta de demanda, y es mucho más peligrosa y temida por los gobiernos que la inflación.</p>', NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 176),
(1822, 253, 4, 1, 1, 1, 'GeneralPage', '2019-05-23 21:08:15', '2019-05-27 21:08:05', 'deflacion', 'Deflación', NULL, '<p>La deflación es la caída generalizada del nivel de precios de bienes y servicios en una economía.</p>\n<p>Es el movimiento contrario a la inflación. Es la situación económica en que los precios disminuyen y es producida por una falta de demanda, y es mucho más peligrosa y temida por los gobiernos que la inflación.</p>', NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 176),
(1823, 254, 3, 0, 1, 0, 'GeneralPage', '2019-05-23 21:08:15', '2019-05-27 21:08:07', 'devaluacion', 'Devaluación', NULL, '<p>La cooperativa trabaja para el desarrollo sostenible de su comunidad por medio de políticas aceptadas por sus miembros.</p>\n<p>Desarrollo sostenible de su comunidad: Las cooperativas están íntimamente ligadas a sus comunidades. Tienen la responsabilidad especial de asegurar la continuidad del desarrollo de su comunidad en los aspectos económicos, sociales y culturales, y trabajar constantemente por la protección ambiental de su comunidad.</p>\n<p>Queda en manos de sus socias y socios decidir que tanto y en qué forma una cooperativa debe contribuir con su comunidad.</p>', NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 176),
(1824, 254, 4, 1, 1, 1, 'GeneralPage', '2019-05-23 21:08:15', '2019-05-27 21:08:07', 'devaluacion', 'Devaluación', NULL, '<p>La cooperativa trabaja para el desarrollo sostenible de su comunidad por medio de políticas aceptadas por sus miembros.</p>\n<p>Desarrollo sostenible de su comunidad: Las cooperativas están íntimamente ligadas a sus comunidades. Tienen la responsabilidad especial de asegurar la continuidad del desarrollo de su comunidad en los aspectos económicos, sociales y culturales, y trabajar constantemente por la protección ambiental de su comunidad.</p>\n<p>Queda en manos de sus socias y socios decidir que tanto y en qué forma una cooperativa debe contribuir con su comunidad.</p>', NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 176),
(1825, 220, 4, 1, 1, 1, '', '2019-05-20 22:21:38', '2019-05-27 21:28:58', 'biblioteca-de-leyes-y-resoluciones', 'Biblioteca de Leyes y Resoluciones', NULL, NULL, NULL, NULL, 0, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1826, 6, 4, 1, 1, 1, '', '2015-07-22 11:04:43', '2019-05-27 21:58:26', 'nuestros-servicios', 'Nuestros Servicios', NULL, '<h4>¿Qué es una casa de bolsa?</h4>\n<p>Para comprender mejor el significado de la <strong>Casa de Bolsa</strong>, antes debemos comprender el de la <strong>Bolsa de Valores</strong>.</p>\n<p>Una bolsa de valores es una organización privada que brinda las facilidades necesarias para que sus miembros, atendiendo los mandatos de sus clientes, realicen negociaciones de compra venta de valores, tales como acciones de sociedades o compañías anónimas, bonos públicos y privados, certificados, títulos de participación y una amplia variedad de instrumentos de inversión.</p>\n<p>La negociación de los valores en los mercados bursátiles se hace con base a unos precios conocidos y en tiempo real, en un entorno seguro para la actividad de los inversionistas, donde el mecanismo de las transacciones está totalmente regulado, lo que da garantía de legalidad y seguridad.</p>\n<p>Las bolsas de valores fortalecen al mercado de capitales e impulsan el desarrollo económico y financiero en la mayoría de los países del mundo, donde existen en algunos casos desde hace muchos años, a partir de las primeras entidades de este tipo creadas en los primeros años del siglo XVII.</p>\n<p>La negociación de valores en las bolsas se efectúa a través de los miembros de la Bolsa, conocidos usualmente con el nombre de corredores, sociedades de corretaje de valores, casas de bolsa, agentes o comisionistas, de acuerdo a la denominación que reciben en las leyes de cada país, quienes hacen su labor a cambio de una comisión.</p>\n<p>Las casas de bolsa son entidades, que actúan como intermediarios facultados para llevar a cabo operaciones de compra y venta de valores cotizados en la Bolsa de Valores. Además de esta función, las casas de bolsa actúan como consejeros de sus clientes. Como se ve, las casas de bolsa prestan dos servicios, el de intermediación y el de asesoría, por los cuales cobran comisiones.</p>\n<p>La función de las casas de bolsa es la de facilitar el contacto y el intercambio entre los poseedores de las acciones y los posibles compradores de éstas.</p>\n<p><strong>En Paraguay, según la Ley 1284/98, en su art. 105, las casas de bolsa están facultadas para efectuar las siguientes operaciones:</strong></p>\n<ol><li>comprar y vender valores por cuenta de terceros y también por cuenta propia, con recursos propios, en la bolsa o fuera de ella;</li>\n<li>prestar asesoría en materia de valores y operaciones de bolsa así como brindar a sus clientes un sistema de información y de procesamiento de datos;</li>\n<li>suscribir transitoriamente, con recursos propios, parte o la totalidad de emisiones primarias de valores;</li>\n<li>promover el lanzamiento de valores públicos y privados y facilitar su colocación;</li>\n<li>actuar como representante de los obligacionistas;</li>\n<li>prestar servicios de administración de carteras y custodia de valores;</li>\n<li>llevar el registro contable de valores de sus clientes con sujeción a lo establecido en la presente ley, o en las resoluciones que dicte la Comisión al efecto;</li>\n<li>otorgar créditos, con sus propios recursos, únicamente con el objeto de facilitar la adquisición de valores por sus comitentes, estén o no inscritos en bolsa y con la garantía de tales valores;</li>\n<li>recibir créditos de empresas del sistema financiero para la realización de las actividades que les son propias; y,</li>\n<li>efectuar todas las operaciones y servicios que sean compatibles con la actividad de intermediación en el mercado de valores y que previamente y de manera general autorice la Comisión.</li>\n</ol>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1939, 281, 1, 0, 1, 0, '', '2019-06-07 11:46:13', '2019-06-07 11:46:13', 'nuevo-pagina-para-productos', 'Nuevo Página para Productos', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 239),
(1940, 281, 2, 1, 1, 1, '', '2019-06-07 11:46:13', '2019-06-07 11:48:53', 'nuevo-pagina-para-productos', 'Bonos', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 239),
(1941, 282, 1, 0, 1, 0, '', '2019-06-07 11:54:07', '2019-06-07 11:54:07', 'nuevo-pagina-para-productos-2', 'Nuevo Página para Productos', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 239),
(1942, 282, 2, 1, 1, 1, '', '2019-06-07 11:54:07', '2019-06-07 11:55:31', 'nuevo-pagina-para-productos-2', 'Acciones', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 239),
(1943, 283, 1, 0, 1, 0, '', '2019-06-07 11:57:23', '2019-06-07 11:57:23', 'nuevo-pagina-para-productos-3', 'Nuevo Página para Productos', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 239),
(1944, 283, 2, 1, 1, 1, '', '2019-06-07 11:57:23', '2019-06-07 11:57:54', 'cdas', 'CDA''s', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 239),
(1945, 243, 7, 1, 1, 1, '', '2019-05-23 21:28:53', '2019-06-14 11:35:00', 'casas-de-bolsa', 'Casa de Bolsa', NULL, '<p><strong>¿Qué es una casa de bolsa?</strong></p>\n<p><br><span>Para comprender mejor el significado de la <strong>Casa de Bolsa</strong>, antes debemos comprender el de la <strong>Bolsa de Valores</strong>.</span></p>\n<p><span>Una bolsa de valores es una organización privada que brinda las facilidades necesarias para que sus miembros, atendiendo los mandatos de sus clientes, realicen negociaciones de compra venta de valores, tales como acciones de sociedades o compañías anónimas, bonos públicos y privados, certificados, títulos de participación y una amplia variedad de instrumentos de inversión.</span></p>\n<p><span>La negociación de los valores en los mercados bursátiles se hace con base a unos precios conocidos y en tiempo real, en un entorno seguro para la actividad de los inversionistas, donde el mecanismo de las transacciones está totalmente regulado, lo que da garantía de legalidad y seguridad.</span></p>\n<p><span>Las bolsas de valores fortalecen al mercado de capitales e impulsan el desarrollo económico y financiero en la mayoría de los países del mundo, donde existen en algunos casos desde hace muchos años, a partir de las primeras entidades de este tipo creadas en los primeros años del siglo XVII.</span></p>\n<p><span>La negociación de valores en las bolsas se efectúa a través de los miembros de la Bolsa, conocidos usualmente con el nombre de corredores, sociedades de corretaje de valores, casas de bolsa, agentes o comisionistas, de acuerdo a la denominación que reciben en las leyes de cada país, quienes hacen su labor a cambio de una comisión.</span></p>\n<p><span>Las casas de bolsa son entidades, que actúan como intermediarios facultados para llevar a cabo operaciones de compra y venta de valores cotizados en la Bolsa de Valores. Además de esta función, las casas de bolsa actúan como consejeros de sus clientes. Como se ve, las casas de bolsa prestan dos servicios, el de intermediación y el de asesoría, por los cuales cobran comisiones.</span></p>\n<p><span>La función de las casas de bolsa es la de facilitar el contacto y el intercambio entre los poseedores de las acciones y los posibles compradores de éstas.</span></p>\n<p><span><strong>En Paraguay, según la Ley 1284/98, en su art. 105, las casas de bolsa están facultadas para efectuar las siguientes operaciones:</strong></span></p>\n<p><span>a. comprar y vender valores por cuenta de terceros y también por cuenta propia, con recursos propios, en la bolsa o fuera de ella;</span><br><span>b. prestar asesoría en materia de valores y operaciones de bolsa así como brindar a sus clientes un sistema de información y de procesamiento de datos;</span><br><span>c. suscribir transitoriamente, con recursos propios, parte o la totalidad de emisiones primarias de valores;</span><br><span>d. promover el lanzamiento de valores públicos y privados y facilitar su colocación;</span><br><span>e. actuar como representante de los obligacionistas;</span><br><span>f. prestar servicios de administración de carteras y custodia de valores;</span><br><span>g. llevar el registro contable de valores de sus clientes con sujeción a lo establecido en la presente ley, o en las resoluciones que dicte la Comisión al efecto;</span><br><span>h. otorgar créditos, con sus propios recursos, únicamente con el objeto de facilitar la adquisición de valores por sus comitentes, estén o no inscritos en bolsa y con la garantía de tales valores;</span><br><span>i. recibir créditos de empresas del sistema financiero para la realización de las actividades que les son propias; y,</span><br><span>j. efectuar todas las operaciones y servicios que sean compatibles con la actividad de intermediación en el mercado de valores y que previamente y de manera general autorice la Comisión.</span></p>', NULL, NULL, 0, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(1837, 258, 1, 0, 1, 0, '', '2019-05-28 21:44:15', '2019-05-28 21:44:15', 'nuevo-articulos-page', 'Nuevo Articulos Page', NULL, NULL, NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1838, 259, 1, 0, 1, 0, '', '2019-05-28 21:44:37', '2019-05-28 21:44:37', 'nuevo-pagina-de-articulo', 'Nuevo Página de Artículo', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 258),
(1839, 6, 5, 1, 1, 1, '', '2015-07-22 11:04:43', '2019-05-28 22:02:12', 'nuestros-servicios', 'Nuestros Servicios', NULL, '<ul><li>Asesoramiento bursátil</li>\n<li>Diseño y estructuración de nuevas emisiones</li>\n<li>Administración de portafolio de inversiones</li>\n<li>Acceso a mercado de capitales de renta fija y variable.</li>\n<li>Asesoramiento para cotizar en bolsa</li>\n<li>Elaboración de planes de negocios</li>\n<li>Atención personalizada conforme al perfil del inversor.</li>\n</ul>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1840, 223, 6, 1, 1, 1, 'ContactPage', '2019-05-22 22:34:38', '2019-05-28 22:12:08', 'contacto', 'Contacto', NULL, NULL, NULL, NULL, 1, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1841, 1, 7, 1, 1, 1, 'HomePage', '2015-07-21 17:15:05', '2019-05-28 22:52:55', 'home', 'Inicio', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1842, 260, 1, 0, 1, 0, '', '2019-05-29 16:20:40', '2019-05-29 16:20:40', 'nuevo-pagina-de-articulo', 'Nuevo Página de Artículo', NULL, NULL, NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(1843, 260, 2, 1, 1, 1, '', '2019-05-29 16:20:40', '2019-05-29 16:21:13', 'nuevo-pagina-de-articulo', 'Nuevo Página de Artículo', NULL, '<p>Hola</p>', NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(1844, 260, 3, 1, 1, 1, '', '2019-05-29 16:20:40', '2019-05-29 16:32:41', 'nuevo-pagina-de-articulo', 'Nuevo Página de Artículo', NULL, '<p>Hola</p>', NULL, NULL, 0, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(1845, 217, 4, 1, 1, 1, '', '2015-10-06 15:25:10', '2019-05-29 17:49:35', 'como-operar', 'Cómo Operar', NULL, '<h4><span></span>¿Como operar con la casa de bolsa?</h4>\n<p><span style="font-family: &#039;comic sans ms&#039;, sans-serif;">Para operar con la <strong>Casa de Bolsa</strong>, simplemente debe acercarse a <strong>Avalon Casa de Bolsa S.A.</strong>, o llamarnos por teléfono a nuestras oficinas o bien remitirnos un email, comenzando de esa manera nuestra labor de asesoramiento personal.</span></p>\n<p><span style="font-family: &#039;comic sans ms&#039;, sans-serif;">En nuestras oficinas, contamos con ejecutivos capacitados para evacuar todas las dudas que pudiera tener acerca de cómo operar con la <strong>Casa de Bolsa</strong>, ofrecerle los servicios que ponemos a su alcance para satisfacer sus necesidades, asesorarle de que manera puede invertir su capital o bien cómo puede captar recursos para su empres y además contamos con un Web Site en donde también puede interiorizarse acerca de quiénes somos y qué hacemos.</span></p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(1846, 218, 3, 1, 1, 1, '', '2015-10-06 15:25:10', '2019-05-29 17:49:45', 'hagase-cliente', 'Hágase Cliente', NULL, '<h4><span style="font-family: &#039;comic sans ms&#039;, sans-serif;"><span style="font-family: &#039;comic sans ms&#039;, sans-serif;"></span>¿Cómo ser cliente?</span></h4>\n<p><span style="font-family: &#039;comic sans ms&#039;, sans-serif;">Para ser cliente, sólo debe contactarse con <strong>Avalon Casa de Bolsa S.A.</strong></span></p>\n<p><span style="font-family: &#039;comic sans ms&#039;, sans-serif;">Cuando usted se pone en contacto con nosotros, nuestros ejecutivos le ayudarán a completar una ficha como cliente y a partir de ese momento, comenzaremos a buscar las mejores opciones de inversión, cualquiera sea su necesidad, previo acuerdo entre las partes acerca de los requisitos y condiciones.</span></p>\n<p><span style="font-family: &#039;comic sans ms&#039;, sans-serif;">El deseo de operar con la <strong>Casa de Bolsa</strong> puede originarse por la necesidad de buscar la optimización de los recursos, tanto para aquel que posee capital y lo desea invertir para lograr una rentabilidad por el mismo como aquel que necesita de capital en condiciones ventajosas para realizar inversiones.</span></p>\n<p><span style="font-family: &#039;comic sans ms&#039;, sans-serif;">Si usted está buscando hacer rendir su capital o está buscando obtener capital en condiciones ventajosas, sólo debe acercarse a nuestra <strong>Casa de Bolsa</strong>, llamarnos o enviarnos un email, y lo atenderemos como usted se merece, con seriedad, responsabilidad, y por sobre todo, brindándole seguridad.</span></p>', NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(1847, 218, 4, 1, 1, 1, '', '2015-10-06 15:25:10', '2019-05-29 17:50:10', 'hagase-cliente', 'Hágase Cliente', NULL, '<h4><span style="font-family: &#039;comic sans ms&#039;, sans-serif;"><span style="font-family: arial, helvetica, sans-serif;"></span>¿Cómo ser cliente?</span></h4>\n<p><span style="font-family: &#039;comic sans ms&#039;, sans-serif;">Para ser cliente, sólo debe contactarse con <strong>Avalon Casa de Bolsa S.A.</strong></span></p>\n<p><span style="font-family: &#039;comic sans ms&#039;, sans-serif;">Cuando usted se pone en contacto con nosotros, nuestros ejecutivos le ayudarán a completar una ficha como cliente y a partir de ese momento, comenzaremos a buscar las mejores opciones de inversión, cualquiera sea su necesidad, previo acuerdo entre las partes acerca de los requisitos y condiciones.</span></p>\n<p><span style="font-family: &#039;comic sans ms&#039;, sans-serif;">El deseo de operar con la <strong>Casa de Bolsa</strong> puede originarse por la necesidad de buscar la optimización de los recursos, tanto para aquel que posee capital y lo desea invertir para lograr una rentabilidad por el mismo como aquel que necesita de capital en condiciones ventajosas para realizar inversiones.</span></p>\n<p><span style="font-family: &#039;comic sans ms&#039;, sans-serif;">Si usted está buscando hacer rendir su capital o está buscando obtener capital en condiciones ventajosas, sólo debe acercarse a nuestra <strong>Casa de Bolsa</strong>, llamarnos o enviarnos un email, y lo atenderemos como usted se merece, con seriedad, responsabilidad, y por sobre todo, brindándole seguridad.</span></p>', NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(1848, 218, 5, 1, 1, 1, '', '2015-10-06 15:25:10', '2019-05-29 17:53:53', 'hagase-cliente', 'Hágase Cliente', NULL, '<h4><span style="font-family: &#039;comic sans ms&#039;, sans-serif;"><span style="font-family: arial, helvetica, sans-serif;"></span><span style="font-family: &#039;comic sans ms&#039;, sans-serif;">¿Cómo ser cliente?</span></span></h4>\n<p><span style="font-family: &#039;comic sans ms&#039;, sans-serif;">Para ser cliente, sólo debe contactarse con <strong>Avalon Casa de Bolsa S.A.</strong></span></p>\n<p><span style="font-family: &#039;comic sans ms&#039;, sans-serif;">Cuando usted se pone en contacto con nosotros, nuestros ejecutivos le ayudarán a completar una ficha como cliente y a partir de ese momento, comenzaremos a buscar las mejores opciones de inversión, cualquiera sea su necesidad, previo acuerdo entre las partes acerca de los requisitos y condiciones.</span></p>\n<p><span style="font-family: &#039;comic sans ms&#039;, sans-serif;">El deseo de operar con la <strong>Casa de Bolsa</strong> puede originarse por la necesidad de buscar la optimización de los recursos, tanto para aquel que posee capital y lo desea invertir para lograr una rentabilidad por el mismo como aquel que necesita de capital en condiciones ventajosas para realizar inversiones.</span></p>\n<p><span style="font-family: &#039;comic sans ms&#039;, sans-serif;">Si usted está buscando hacer rendir su capital o está buscando obtener capital en condiciones ventajosas, sólo debe acercarse a nuestra <strong>Casa de Bolsa</strong>, llamarnos o enviarnos un email, y lo atenderemos como usted se merece, con seriedad, responsabilidad, y por sobre todo, brindándole seguridad.</span></p>', NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(1849, 261, 1, 1, 1, 1, '', '2015-10-06 15:25:10', '2019-05-29 17:54:53', 'como-operar-2', 'Cómo Operar', NULL, '<h4><span>¿Cómo ser cliente?</span></h4>\n<p><span>Para ser cliente, sólo debe contactarse con <strong>Avalon Casa de Bolsa S.A.</strong></span></p>\n<p><span>Cuando usted se pone en contacto con nosotros, nuestros ejecutivos le ayudarán a completar una ficha como cliente y a partir de ese momento, comenzaremos a buscar las mejores opciones de inversión, cualquiera sea su necesidad, previo acuerdo entre las partes acerca de los requisitos y condiciones.</span></p>\n<p><span>El deseo de operar con la <strong>Casa de Bolsa</strong> puede originarse por la necesidad de buscar la optimización de los recursos, tanto para aquel que posee capital y lo desea invertir para lograr una rentabilidad por el mismo como aquel que necesita de capital en condiciones ventajosas para realizar inversiones.</span></p>\n<p><span>Si usted está buscando hacer rendir su capital o está buscando obtener capital en condiciones ventajosas, sólo debe acercarse a nuestra <strong>Casa de Bolsa</strong>, llamarnos o enviarnos un email, y lo atenderemos como usted se merece, con seriedad, responsabilidad, y por sobre todo, brindándole seguridad.</span></p>', NULL, NULL, 0, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(1850, 261, 2, 0, 1, 0, '', '2015-10-06 15:25:10', '2019-05-29 17:55:11', 'como-operar-2', 'Cómo Operar', NULL, '<h4><span>¿Cómo ser cliente?</span></h4>\n<p><span>Para ser cliente, sólo debe contactarse con <strong>Avalon Casa de Bolsa S.A.</strong></span></p>\n<p><span>Cuando usted se pone en contacto con nosotros, nuestros ejecutivos le ayudarán a completar una ficha como cliente y a partir de ese momento, comenzaremos a buscar las mejores opciones de inversión, cualquiera sea su necesidad, previo acuerdo entre las partes acerca de los requisitos y condiciones.</span></p>\n<p><span>El deseo de operar con la <strong>Casa de Bolsa</strong> puede originarse por la necesidad de buscar la optimización de los recursos, tanto para aquel que posee capital y lo desea invertir para lograr una rentabilidad por el mismo como aquel que necesita de capital en condiciones ventajosas para realizar inversiones.</span></p>\n<p><span>Si usted está buscando hacer rendir su capital o está buscando obtener capital en condiciones ventajosas, sólo debe acercarse a nuestra <strong>Casa de Bolsa</strong>, llamarnos o enviarnos un email, y lo atenderemos como usted se merece, con seriedad, responsabilidad, y por sobre todo, brindándole seguridad.</span></p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(1851, 261, 3, 1, 1, 1, '', '2015-10-06 15:25:10', '2019-05-29 17:55:18', 'hagase-cliente', 'Hágase Cliente', NULL, '<h4><span>¿Cómo ser cliente?</span></h4>\n<p><span>Para ser cliente, sólo debe contactarse con <strong>Avalon Casa de Bolsa S.A.</strong></span></p>\n<p><span>Cuando usted se pone en contacto con nosotros, nuestros ejecutivos le ayudarán a completar una ficha como cliente y a partir de ese momento, comenzaremos a buscar las mejores opciones de inversión, cualquiera sea su necesidad, previo acuerdo entre las partes acerca de los requisitos y condiciones.</span></p>\n<p><span>El deseo de operar con la <strong>Casa de Bolsa</strong> puede originarse por la necesidad de buscar la optimización de los recursos, tanto para aquel que posee capital y lo desea invertir para lograr una rentabilidad por el mismo como aquel que necesita de capital en condiciones ventajosas para realizar inversiones.</span></p>\n<p><span>Si usted está buscando hacer rendir su capital o está buscando obtener capital en condiciones ventajosas, sólo debe acercarse a nuestra <strong>Casa de Bolsa</strong>, llamarnos o enviarnos un email, y lo atenderemos como usted se merece, con seriedad, responsabilidad, y por sobre todo, brindándole seguridad.</span></p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(1852, 262, 1, 1, 1, 1, '', '2015-10-06 15:25:10', '2019-05-29 17:57:12', 'hagase-cliente-2', 'Hágase Cliente', NULL, '<h4>¿Como operar con la casa de bolsa?</h4>\n<p><span>Para operar con la <strong>Casa de Bolsa</strong>, simplemente debe acercarse a <strong>Avalon Casa de Bolsa S.A.</strong>, o llamarnos por teléfono a nuestras oficinas o bien remitirnos un email, comenzando de esa manera nuestra labor de asesoramiento personal.</span></p>\n<p><span>En nuestras oficinas, contamos con ejecutivos capacitados para evacuar todas las dudas que pudiera tener acerca de cómo operar con la <strong>Casa de Bolsa</strong>, ofrecerle los servicios que ponemos a su alcance para satisfacer sus necesidades, asesorarle de que manera puede invertir su capital o bien cómo puede captar recursos para su empres y además contamos con un Web Site en donde también puede interiorizarse acerca de quiénes somos y qué hacemos.</span></p>', NULL, NULL, 0, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(1853, 262, 2, 1, 1, 1, '', '2015-10-06 15:25:10', '2019-05-29 17:57:29', 'como-operar', 'Cómo Operar', NULL, '<h4>¿Como operar con la casa de bolsa?</h4>\n<p><span>Para operar con la <strong>Casa de Bolsa</strong>, simplemente debe acercarse a <strong>Avalon Casa de Bolsa S.A.</strong>, o llamarnos por teléfono a nuestras oficinas o bien remitirnos un email, comenzando de esa manera nuestra labor de asesoramiento personal.</span></p>\n<p><span>En nuestras oficinas, contamos con ejecutivos capacitados para evacuar todas las dudas que pudiera tener acerca de cómo operar con la <strong>Casa de Bolsa</strong>, ofrecerle los servicios que ponemos a su alcance para satisfacer sus necesidades, asesorarle de que manera puede invertir su capital o bien cómo puede captar recursos para su empres y además contamos con un Web Site en donde también puede interiorizarse acerca de quiénes somos y qué hacemos.</span></p>', NULL, NULL, 0, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(1854, 262, 3, 1, 1, 1, '', '2015-10-06 15:25:10', '2019-05-29 17:57:32', 'como-operar', 'Cómo Operar', NULL, '<h4>¿Como operar con la casa de bolsa?</h4>\n<p><span>Para operar con la <strong>Casa de Bolsa</strong>, simplemente debe acercarse a <strong>Avalon Casa de Bolsa S.A.</strong>, o llamarnos por teléfono a nuestras oficinas o bien remitirnos un email, comenzando de esa manera nuestra labor de asesoramiento personal.</span></p>\n<p><span>En nuestras oficinas, contamos con ejecutivos capacitados para evacuar todas las dudas que pudiera tener acerca de cómo operar con la <strong>Casa de Bolsa</strong>, ofrecerle los servicios que ponemos a su alcance para satisfacer sus necesidades, asesorarle de que manera puede invertir su capital o bien cómo puede captar recursos para su empres y además contamos con un Web Site en donde también puede interiorizarse acerca de quiénes somos y qué hacemos.</span></p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(1855, 239, 5, 1, 1, 1, 'GeneralPage', '2019-05-23 21:04:34', '2019-05-29 20:16:17', 'productos', 'Productos', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0);
INSERT INTO `SiteTree_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `ParentID`) VALUES
(1856, 263, 1, 0, 1, 0, 'GeneralPage', '2019-05-22 17:08:27', '2019-05-29 20:18:49', 'general-2', 'General', NULL, '<p>Prueba General</p>', NULL, NULL, 0, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 225),
(1857, 263, 2, 0, 1, 0, 'GeneralPage', '2019-05-22 17:08:27', '2019-05-29 20:18:49', 'general-2', 'General', NULL, '<p>Prueba General</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 225),
(1858, 263, 3, 0, 1, 0, 'GeneralPage', '2019-05-22 17:08:27', '2019-05-29 20:18:52', 'general-2', 'General', NULL, '<p>Prueba General</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1859, 263, 4, 0, 1, 0, 'GeneralPage', '2019-05-22 17:08:27', '2019-05-29 20:18:52', 'general-2', 'General', NULL, '<p>Prueba General</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1860, 264, 1, 0, 1, 0, 'GeneralPage', '2019-05-22 17:08:27', '2019-05-29 20:19:12', 'general-3', 'General', NULL, '<p>Prueba General</p>', NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1861, 265, 1, 0, 1, 0, 'GeneralPage', '2019-05-22 17:08:27', '2019-05-29 20:19:20', 'general-4', 'General', NULL, '<p>Prueba General</p>', NULL, NULL, 0, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1862, 266, 1, 0, 1, 0, 'GeneralPage', '2019-05-22 17:08:27', '2019-05-29 20:19:32', 'general-5', 'General', NULL, '<p>Prueba General</p>', NULL, NULL, 0, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1863, 267, 1, 0, 1, 0, 'GeneralPage', '2019-05-22 17:08:27', '2019-05-29 20:19:42', 'general-6', 'General', NULL, '<p>Prueba General</p>', NULL, NULL, 0, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1864, 268, 1, 0, 1, 0, 'GeneralPage', '2019-05-22 17:08:27', '2019-05-29 20:19:49', 'general-7', 'General', NULL, '<p>Prueba General</p>', NULL, NULL, 0, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1865, 269, 1, 0, 1, 0, 'GeneralPage', '2019-05-22 17:08:27', '2019-05-29 20:20:03', 'general-8', 'General', NULL, '<p>Prueba General</p>', NULL, NULL, 0, 1, 14, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1866, 270, 1, 0, 1, 0, 'GeneralPage', '2019-05-22 17:08:27', '2019-05-29 20:20:18', 'general-9', 'General', NULL, '<p>Prueba General</p>', NULL, NULL, 0, 1, 16, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1867, 271, 1, 0, 1, 0, 'GeneralPage', '2019-05-22 17:08:27', '2019-05-29 20:20:38', 'general-10', 'General', NULL, '<p>Prueba General</p>', NULL, NULL, 0, 1, 18, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1868, 272, 1, 0, 1, 0, 'GeneralPage', '2019-05-22 17:08:27', '2019-05-29 20:20:48', 'general-11', 'General', NULL, '<p>Prueba General</p>', NULL, NULL, 0, 1, 20, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1869, 273, 1, 0, 1, 0, 'GeneralPage', '2019-05-22 17:08:27', '2019-05-29 20:20:58', 'general-12', 'General', NULL, '<p>Prueba General</p>', NULL, NULL, 0, 1, 22, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1870, 236, 4, 0, 1, 0, 'Page', '2019-05-23 17:52:27', '2019-05-29 20:21:00', 'que-es-la-tasa-libor', '¿Qué es la tasa LIBOR?', NULL, '<p><span>Se le denomina Tasa LIBOR (London Interbanking Offered Rate), a la tasa de interés que se determina día a día en el mercado interbancario en Londres, para los créditos y empréstitos internacionales de tipo fluctuante.</span></p>', NULL, NULL, 0, 1, 21, 0, 0, NULL, 'Inherit', 'Inherit', 273),
(1871, 236, 5, 0, 1, 0, 'Page', '2019-05-23 17:52:27', '2019-05-29 20:21:00', 'que-es-la-tasa-libor', '¿Qué es la tasa LIBOR?', NULL, '<p><span>Se le denomina Tasa LIBOR (London Interbanking Offered Rate), a la tasa de interés que se determina día a día en el mercado interbancario en Londres, para los créditos y empréstitos internacionales de tipo fluctuante.</span></p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 273),
(1872, 273, 2, 0, 1, 0, 'GeneralPage', '2019-05-22 17:08:27', '2019-05-29 20:21:10', 'general-12', 'General', NULL, '<p>Prueba General</p>', NULL, NULL, 0, 1, 22, 0, 0, NULL, 'Inherit', 'Inherit', 237),
(1873, 273, 3, 0, 1, 0, 'GeneralPage', '2019-05-22 17:08:27', '2019-05-29 20:21:10', 'general-12', 'General', NULL, '<p>Prueba General</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 237),
(1874, 273, 4, 0, 1, 0, 'GeneralPage', '2019-05-22 17:08:27', '2019-05-29 20:21:14', 'general-12', 'General', NULL, '<p>Prueba General</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1875, 273, 5, 0, 1, 0, 'GeneralPage', '2019-05-22 17:08:27', '2019-05-29 20:21:14', 'general-12', 'General', NULL, '<p>Prueba General</p>', NULL, NULL, 0, 1, 21, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1876, 236, 6, 0, 1, 0, 'Page', '2019-05-23 17:52:27', '2019-05-29 20:21:17', 'que-es-la-tasa-libor', '¿Qué es la tasa LIBOR?', NULL, '<p><span>Se le denomina Tasa LIBOR (London Interbanking Offered Rate), a la tasa de interés que se determina día a día en el mercado interbancario en Londres, para los créditos y empréstitos internacionales de tipo fluctuante.</span></p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1877, 236, 7, 0, 1, 0, 'Page', '2019-05-23 17:52:27', '2019-05-29 20:21:17', 'que-es-la-tasa-libor', '¿Qué es la tasa LIBOR?', NULL, '<p><span>Se le denomina Tasa LIBOR (London Interbanking Offered Rate), a la tasa de interés que se determina día a día en el mercado interbancario en Londres, para los créditos y empréstitos internacionales de tipo fluctuante.</span></p>', NULL, NULL, 0, 1, 21, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1878, 274, 1, 0, 1, 0, 'GeneralPage', '2019-05-22 17:08:27', '2019-05-29 20:22:31', 'general-13', 'General', NULL, '<p>Prueba General</p>', NULL, NULL, 0, 1, 24, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1879, 263, 5, 1, 1, 1, 'GeneralPage', '2019-05-22 17:08:27', '2019-05-29 20:24:44', 'general-2', 'General', NULL, '<p>Es un activo o instrumento financiero emitido por emisores que representan una obligación que estos han contraído con su poseedor.</p>\n<p>En función a quien emite dichos valores negociables, pueden ser los mismos títulos valores corporativos, emitidos por empresas privadas o títulos valores del sector público los cuales son emitidos por el estado o alguna de sus entidades dependientes. Así también, los títulos valores pueden representar una participación en el capital de una sociedad como en el caso de las acciones.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1880, 264, 2, 1, 1, 1, 'GeneralPage', '2019-05-22 17:08:27', '2019-05-29 20:24:56', 'general-3', 'General', NULL, '<p>Uno de los Subsistemas componentes del Sistema Financiero Paraguayo es el Mercado de Valores.</p>\n<p>Este mercado es aquel en el cual se comercializan los títulos valores, conocidos también como valores negociables o activos financieros simplemente.</p>\n<p><strong>En este mercado se cuenta básicamente con los siguientes componentes:</strong></p>\n<ol><li><strong>La Comisión Nacional de Valores (CNV):</strong> es el ente regulador del mercado, y está relacionado con el Poder Ejecutivo por medio del Ministerio de Industria y Comercio.</li>\n<li><strong>La Bolsa de Valores y Productos de Asunción S.A (BVPASA):</strong> es una entidad sin fines de lucro (determinado por Ley y por sus propios Estatutos), que pone a disposición de los intermediarios su infraestructura organizacional y tecnológica para hacer viables las operaciones de compra venta de valores negociables entre ellas.</li>\n<li><strong>Las Casas de Bolsa:</strong> son los intermediarios financieros del Mercado de Valores, son las única sociedades autorizadas a operar en el mismo por cuenta, orden y riesgo de sus clientes.</li>\n<li><strong>Empresas Emisoras:</strong> son todas aquellas personas jurídicas que emiten títulos valores al mercado para la captación de recursos financieros que le permitan efectuar sus inversiones en activos fijos o en activos circulantes.</li>\n<li><strong>Inversionistas:</strong> son todas aquellas personas físicas o jurídica que compran y venden títulos valores con el objeto de obtener mejores rendimientos financieros para sus recursos.</li>\n</ol>', NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1881, 265, 2, 1, 1, 1, 'GeneralPage', '2019-05-22 17:08:27', '2019-05-29 20:25:09', 'general-4', 'General', NULL, '<p>En nuestro mercado, actualmente, las principales negociaciones se realizan sobre los Instrumentos de Renta Fija, los bonos corporativos, los pagarés y los cupones principalmente, y en menor medida con las acciones.</p>', NULL, NULL, 0, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1882, 266, 2, 1, 1, 1, 'GeneralPage', '2019-05-22 17:08:27', '2019-05-29 20:25:25', 'general-5', 'General', NULL, '<p>En nuestro país, la Comisión Nacional de Valores es la entidad responsable de regular, supervisar y fomentar las actividades del Mercado de Valores como mecanismo alternativo de inversión, captación y canalización de recursos, para la capitalización de empresas y el financiamiento de proyectos de mediano y largo plazo, dentro de un marco de transparencia, seguridad y credibilidad, mediante la entrega de información pertinente, completa y oportuna a los diferentes actores del mismo.</p>', NULL, NULL, 0, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1883, 267, 2, 1, 1, 1, 'GeneralPage', '2019-05-22 17:08:27', '2019-05-29 20:25:34', 'general-6', 'General', NULL, '<p>La BVPASA opera bajo la figura jurídica de Sociedad Anónima, pero de acuerdo a las normativas legales vigentes, la misma se adecua dentro de la figura de Organizaciones sin Fines de Lucro (ONGs), debido a que por sus Estatutos Sociales y la propia Ley del Mercado de Valores, tanto esta como cualquier otra Bolsa en nuestro país tiene expresamente prohibido distribuir utilidades.</p>', NULL, NULL, 0, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1884, 268, 2, 1, 1, 1, 'GeneralPage', '2019-05-22 17:08:27', '2019-05-29 20:25:42', 'general-7', 'General', NULL, '<p>En los recintos de la BVPASA, solo los representantes autorizados de las Casas de Bolsa, conocidos también como Operadores de Bolsa, son los únicos autorizados para efectuar las operaciones por cuenta, orden y riesgo de sus clientes.¿Contribuye en algo la Bolsa de Valores y Productos de Asunción en el desarrollo del país?</p>\n<p>El Mercado de Valores contribuye en todas sus negociaciones en el desarrollo del Paraguay, ya que una de sus funciones principales es transformar el excedente de ahorro en inversiones, las cuales son aplicadas en empresas generadoras de mano de obra y de recursos, los cuales directa e indirectamente colaboran en el mejoramiento del PIB, por medio la transparencia, la equidad, y la eficiencia.</p>', NULL, NULL, 0, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1885, 269, 2, 1, 1, 1, 'GeneralPage', '2019-05-22 17:08:27', '2019-05-29 20:25:51', 'general-8', 'General', NULL, '<p>Los requisitos que deben cumplir todas las Casas de Bolsa son:</p>\n<ol><li>Constituirse como sociedades anónimas de objeto exclusivo</li>\n<li>Contar con el capital social mínimo de cuatrocientos salarios mínimos mensuales establecidos para trabajadores de actividades diversas no especificadas;</li>\n<li>Constituir las garantías en la forma y por los montos determinados en las normativas legales vigentes;</li>\n<li>No haber solicitado convocatoria de acreedores ni haberse declarado su quiebra; y,</li>\n<li>Cualquier otro requisito que la C.N.V determine por medio de normas de carácter general.</li>\n</ol>', NULL, NULL, 0, 1, 14, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1886, 270, 2, 1, 1, 1, 'GeneralPage', '2019-05-22 17:08:27', '2019-05-29 20:26:00', 'general-9', 'General', NULL, '<p>En primer lugar, se debe identificar cuales son las Casas de Bolsa habilitadas para operar en la BVPASA, visitando o llamando a las mismas a fin de contactar con un Asesor de Inversión.</p>\n<p>Tras las reuniones mantenidas con el mismo, y una vez obtenida toda la información requerida, el potencial inversionista debe sopesar las diversas alternativas de inversión y optar por una o por un conjunto de ellas. Dicha decisión debe ser comunicada al Asesor de Inversión seleccionado, el cual debe en primer lugar establecer una relación contractual con el nuevo inversionista para luego ejecutar las órdenes recibidas de este por su cuenta, orden y riesgo.</p>\n<p>Terminados los pasos previos, los Asesores de Inversión transmiten las órdenes recibidas a su operador en la Bolsa, o ingresan al sistema de negociación electrónicas las mismas, a fin de que estás sean debidamente ejecutadas de acuerdo a lo dispuesto por el cliente. La Casa de Bolsa dispone de hasta 48 horas hábiles bancarias para recepcionar el efectivo de su cliente y entregar al mismo los activos financieros que fueran adquiridos en su nombre.</p>\n<p>Es muy importante destacar que todo inversionista debe hacer el seguimiento de las empresas emisoras en las cuales ha invertido, analizando sus estados contables periódicos y tomando conocimiento de cualquier tipo de información que el mismo proporcione al mercado.</p>', NULL, NULL, 0, 1, 16, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1887, 271, 2, 1, 1, 1, 'GeneralPage', '2019-05-22 17:08:27', '2019-05-29 20:26:09', 'general-10', 'General', NULL, '<p>Son todos aquellos precios que reflejan las mejores cotizaciones tanto de compra como de venta para un valor negociable específico durante una Rueda de Negociación, y son puesto a conocimiento del mercado una vez de finalizada la jornada diaria. El acceso a dichos precios puede ser tanto en el web site de la BVPASA, como así también, en las oficinas de la misma.</p>', NULL, NULL, 0, 1, 18, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1888, 272, 2, 1, 1, 1, 'GeneralPage', '2019-05-22 17:08:27', '2019-05-29 20:26:19', 'general-11', 'General', NULL, '<p>Es una empresa de objeto exclusivo, cuya función es la calificación de riesgo de una empresa en función a su solvencia principalmente, es decir, la capacidad que tiene la misma para hacer frente a sus obligaciones.</p>\n<p>Las evaluaciones que realizan estas empresas están sustentadas en los Estados Contables básicamente, y en otras informaciones que las mismas consideren de importancia en el giro del negocio y que el mercado deba tener conocimiento de las mismas.</p>\n<p>Estos estudios son opiniones profesionales e imparciales sobre la probabilidad de impago de una obligación, lo que no representa una recomendación de inversión para ninguna persona física o jurídica en particular.</p>', NULL, NULL, 0, 1, 20, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1889, 273, 6, 1, 1, 1, 'GeneralPage', '2019-05-22 17:08:27', '2019-05-29 20:26:29', 'general-12', 'General', NULL, '<p>Se le denomina Tasa LIBOR (London Interbanking Offered Rate), a la tasa de interés que se determina día a día en el mercado interbancario en Londres, para los créditos y empréstitos internacionales de tipo fluctuante.</p>', NULL, NULL, 0, 1, 22, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1890, 274, 2, 1, 1, 1, 'GeneralPage', '2019-05-22 17:08:27', '2019-05-29 20:26:39', 'general-13', 'General', NULL, '<p>La Tasa PRIME (preferencial) es el tipo de interés aplicado por los grandes bancos de Estados Unidos para los créditos y empréstitos internacionales.</p>', NULL, NULL, 0, 1, 24, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1891, 275, 1, 1, 1, 1, 'GeneralPage', '2019-05-22 17:08:27', '2019-05-29 20:26:49', 'general-14', 'General', NULL, '<p>Se denomina Estados Contables a todos aquellos documentos en los cuales se refleja la situación de una empresa en un momento determinado de tiempo. Dichos documentos están compuestos por el Balance General, el Estado de Resultados, Estado de Evolución del Patrimonio, Estado de Origen y Aplicación de Fondos, Informaciones Complementarias y Anexos.</p>\n<p>Por medio de las diferentes herramientas de análisis financiero, el responsable de dichos estudios aplicará las diversas técnicas que le permitan interpretar los resultados expuestos en los Estados Contables de una empresa emisora en particular.</p>', NULL, NULL, 0, 1, 26, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1892, 263, 6, 1, 1, 1, 'GeneralPage', '2019-05-22 17:08:27', '2019-05-29 20:27:08', 'que-es-un-titulo-valor', 'Qué es un título valor', NULL, '<p>Es un activo o instrumento financiero emitido por emisores que representan una obligación que estos han contraído con su poseedor.</p>\n<p>En función a quien emite dichos valores negociables, pueden ser los mismos títulos valores corporativos, emitidos por empresas privadas o títulos valores del sector público los cuales son emitidos por el estado o alguna de sus entidades dependientes. Así también, los títulos valores pueden representar una participación en el capital de una sociedad como en el caso de las acciones.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1893, 264, 3, 1, 1, 1, 'GeneralPage', '2019-05-22 17:08:27', '2019-05-29 20:27:31', 'que-es-el-mercado-de-valores-quienes-son-sus-componentes', '¿Qué es el Mercado de Valores? ¿Quiénes son sus componentes?', NULL, '<p>Uno de los Subsistemas componentes del Sistema Financiero Paraguayo es el Mercado de Valores.</p>\n<p>Este mercado es aquel en el cual se comercializan los títulos valores, conocidos también como valores negociables o activos financieros simplemente.</p>\n<p><strong>En este mercado se cuenta básicamente con los siguientes componentes:</strong></p>\n<ol><li><strong>La Comisión Nacional de Valores (CNV):</strong> es el ente regulador del mercado, y está relacionado con el Poder Ejecutivo por medio del Ministerio de Industria y Comercio.</li>\n<li><strong>La Bolsa de Valores y Productos de Asunción S.A (BVPASA):</strong> es una entidad sin fines de lucro (determinado por Ley y por sus propios Estatutos), que pone a disposición de los intermediarios su infraestructura organizacional y tecnológica para hacer viables las operaciones de compra venta de valores negociables entre ellas.</li>\n<li><strong>Las Casas de Bolsa:</strong> son los intermediarios financieros del Mercado de Valores, son las única sociedades autorizadas a operar en el mismo por cuenta, orden y riesgo de sus clientes.</li>\n<li><strong>Empresas Emisoras:</strong> son todas aquellas personas jurídicas que emiten títulos valores al mercado para la captación de recursos financieros que le permitan efectuar sus inversiones en activos fijos o en activos circulantes.</li>\n<li><strong>Inversionistas:</strong> son todas aquellas personas físicas o jurídica que compran y venden títulos valores con el objeto de obtener mejores rendimientos financieros para sus recursos.</li>\n</ol>', NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1894, 265, 3, 0, 1, 0, 'GeneralPage', '2019-05-22 17:08:27', '2019-05-29 20:29:37', 'general-4', 'General', NULL, '<p>En nuestro país, la Comisión Nacional de Valores es la entidad responsable de regular, supervisar y fomentar las actividades del Mercado de Valores como mecanismo alternativo de inversión, captación y canalización de recursos, para la capitalización de empresas y el financiamiento de proyectos de mediano y largo plazo, dentro de un marco de transparencia, seguridad y credibilidad, mediante la entrega de información pertinente, completa y oportuna a los diferentes actores del mismo.</p>', NULL, NULL, 0, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1895, 266, 3, 1, 1, 1, 'GeneralPage', '2019-05-22 17:08:27', '2019-05-29 20:30:01', 'quien-es-el-regulador-del-mercado-de-valores-en-el-paraguay', '¿Quién es el regulador del Mercado de Valores en el Paraguay', NULL, '<p>En nuestro país, la Comisión Nacional de Valores es la entidad responsable de regular, supervisar y fomentar las actividades del Mercado de Valores como mecanismo alternativo de inversión, captación y canalización de recursos, para la capitalización de empresas y el financiamiento de proyectos de mediano y largo plazo, dentro de un marco de transparencia, seguridad y credibilidad, mediante la entrega de información pertinente, completa y oportuna a los diferentes actores del mismo.</p>', NULL, NULL, 0, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1896, 267, 3, 1, 1, 1, 'GeneralPage', '2019-05-22 17:08:27', '2019-05-29 20:30:43', 'la-bvpasa-opera-bajo-la-figura-juridica-de-sociedad-anonima-pero-de-acuerdo-a-las-normativas-legales-vigentes-la-misma-se-adecua-dentro-de-la-figura-de-organizaciones-sin-fines-de-lucro-ongs-debido-a-que-por-sus-estatutos-sociales-y-la-propia-ley-del-merc', 'La BVPASA opera bajo la figura jurídica de Sociedad Anónima, pero de acuerdo a las normativas legales vigentes, la misma se adecua dentro de la figura de Organizaciones sin Fines de Lucro (ONGs), debido a que por sus Estatutos Sociales y la propia Ley del', NULL, '<p>La BVPASA opera bajo la figura jurídica de Sociedad Anónima, pero de acuerdo a las normativas legales vigentes, la misma se adecua dentro de la figura de Organizaciones sin Fines de Lucro (ONGs), debido a que por sus Estatutos Sociales y la propia Ley del Mercado de Valores, tanto esta como cualquier otra Bolsa en nuestro país tiene expresamente prohibido distribuir utilidades.</p>', NULL, NULL, 0, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1897, 268, 3, 1, 1, 1, 'GeneralPage', '2019-05-22 17:08:27', '2019-05-29 20:30:58', 'quien-o-quienes-pueden-operar-en-la-bvpasa-2', '¿Quién o quiénes pueden operar en la BVPASA?', NULL, '<p>En los recintos de la BVPASA, solo los representantes autorizados de las Casas de Bolsa, conocidos también como Operadores de Bolsa, son los únicos autorizados para efectuar las operaciones por cuenta, orden y riesgo de sus clientes.¿Contribuye en algo la Bolsa de Valores y Productos de Asunción en el desarrollo del país?</p>\n<p>El Mercado de Valores contribuye en todas sus negociaciones en el desarrollo del Paraguay, ya que una de sus funciones principales es transformar el excedente de ahorro en inversiones, las cuales son aplicadas en empresas generadoras de mano de obra y de recursos, los cuales directa e indirectamente colaboran en el mejoramiento del PIB, por medio la transparencia, la equidad, y la eficiencia.</p>', NULL, NULL, 0, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1898, 268, 4, 1, 1, 1, 'GeneralPage', '2019-05-22 17:08:27', '2019-05-29 20:31:22', 'quien-o-quienes-pueden-operar-en-la-bvpasa', '¿Quién o quiénes pueden operar en la BVPASA?', NULL, '<p>En los recintos de la BVPASA, solo los representantes autorizados de las Casas de Bolsa, conocidos también como Operadores de Bolsa, son los únicos autorizados para efectuar las operaciones por cuenta, orden y riesgo de sus clientes.¿Contribuye en algo la Bolsa de Valores y Productos de Asunción en el desarrollo del país?</p>\n<p>El Mercado de Valores contribuye en todas sus negociaciones en el desarrollo del Paraguay, ya que una de sus funciones principales es transformar el excedente de ahorro en inversiones, las cuales son aplicadas en empresas generadoras de mano de obra y de recursos, los cuales directa e indirectamente colaboran en el mejoramiento del PIB, por medio la transparencia, la equidad, y la eficiencia.</p>', NULL, NULL, 0, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1899, 269, 3, 1, 1, 1, 'GeneralPage', '2019-05-22 17:08:27', '2019-05-29 20:31:42', 'que-hace-falta-para-abrir-una-casa-de-bolsa', '¿Qué hace falta para abrir una Casa de Bolsa?', NULL, '<p>Los requisitos que deben cumplir todas las Casas de Bolsa son:</p>\n<ol><li>Constituirse como sociedades anónimas de objeto exclusivo</li>\n<li>Contar con el capital social mínimo de cuatrocientos salarios mínimos mensuales establecidos para trabajadores de actividades diversas no especificadas;</li>\n<li>Constituir las garantías en la forma y por los montos determinados en las normativas legales vigentes;</li>\n<li>No haber solicitado convocatoria de acreedores ni haberse declarado su quiebra; y,</li>\n<li>Cualquier otro requisito que la C.N.V determine por medio de normas de carácter general.</li>\n</ol>', NULL, NULL, 0, 1, 14, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1900, 270, 3, 1, 1, 1, 'GeneralPage', '2019-05-22 17:08:27', '2019-05-29 20:31:59', 'como-se-hace-para-invertir-via-bolsa', '¿Cómo se hace para invertir vía Bolsa?', NULL, '<p>En primer lugar, se debe identificar cuales son las Casas de Bolsa habilitadas para operar en la BVPASA, visitando o llamando a las mismas a fin de contactar con un Asesor de Inversión.</p>\n<p>Tras las reuniones mantenidas con el mismo, y una vez obtenida toda la información requerida, el potencial inversionista debe sopesar las diversas alternativas de inversión y optar por una o por un conjunto de ellas. Dicha decisión debe ser comunicada al Asesor de Inversión seleccionado, el cual debe en primer lugar establecer una relación contractual con el nuevo inversionista para luego ejecutar las órdenes recibidas de este por su cuenta, orden y riesgo.</p>\n<p>Terminados los pasos previos, los Asesores de Inversión transmiten las órdenes recibidas a su operador en la Bolsa, o ingresan al sistema de negociación electrónicas las mismas, a fin de que estás sean debidamente ejecutadas de acuerdo a lo dispuesto por el cliente. La Casa de Bolsa dispone de hasta 48 horas hábiles bancarias para recepcionar el efectivo de su cliente y entregar al mismo los activos financieros que fueran adquiridos en su nombre.</p>\n<p>Es muy importante destacar que todo inversionista debe hacer el seguimiento de las empresas emisoras en las cuales ha invertido, analizando sus estados contables periódicos y tomando conocimiento de cualquier tipo de información que el mismo proporcione al mercado.</p>', NULL, NULL, 0, 1, 16, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1901, 271, 3, 1, 1, 1, 'GeneralPage', '2019-05-22 17:08:27', '2019-05-29 20:32:14', 'que-son-los-precios-de-cierre-de-los-titulos-valores-que-se-cotizan-en-la-bvpasa', '¿Qué son los precios de cierre de los títulos valores que se cotizan en la BVPASA?', NULL, '<p>Son todos aquellos precios que reflejan las mejores cotizaciones tanto de compra como de venta para un valor negociable específico durante una Rueda de Negociación, y son puesto a conocimiento del mercado una vez de finalizada la jornada diaria. El acceso a dichos precios puede ser tanto en el web site de la BVPASA, como así también, en las oficinas de la misma.</p>', NULL, NULL, 0, 1, 18, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1902, 272, 3, 1, 1, 1, 'GeneralPage', '2019-05-22 17:08:27', '2019-05-29 20:32:43', 'que-es-una-calificadora-de-riesgo', '¿Qué es una Calificadora de Riesgo?', NULL, '<p>Es una empresa de objeto exclusivo, cuya función es la calificación de riesgo de una empresa en función a su solvencia principalmente, es decir, la capacidad que tiene la misma para hacer frente a sus obligaciones.</p>\n<p>Las evaluaciones que realizan estas empresas están sustentadas en los Estados Contables básicamente, y en otras informaciones que las mismas consideren de importancia en el giro del negocio y que el mercado deba tener conocimiento de las mismas.</p>\n<p>Estos estudios son opiniones profesionales e imparciales sobre la probabilidad de impago de una obligación, lo que no representa una recomendación de inversión para ninguna persona física o jurídica en particular.</p>', NULL, NULL, 0, 1, 20, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1903, 273, 7, 1, 1, 1, 'GeneralPage', '2019-05-22 17:08:27', '2019-05-29 20:33:18', 'que-es-la-tasa-libor', '¿Qué es la tasa LIBOR?', NULL, '<p>Se le denomina Tasa LIBOR (London Interbanking Offered Rate), a la tasa de interés que se determina día a día en el mercado interbancario en Londres, para los créditos y empréstitos internacionales de tipo fluctuante.</p>', NULL, NULL, 0, 1, 22, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1904, 274, 3, 1, 1, 1, 'GeneralPage', '2019-05-22 17:08:27', '2019-05-29 20:33:33', 'que-es-la-tasa-prime', '¿Qué es la tasa PRIME?', NULL, '<p>La Tasa PRIME (preferencial) es el tipo de interés aplicado por los grandes bancos de Estados Unidos para los créditos y empréstitos internacionales.</p>', NULL, NULL, 0, 1, 24, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1905, 275, 2, 1, 1, 1, 'GeneralPage', '2019-05-22 17:08:27', '2019-05-29 20:33:51', 'que-son-los-estados-contables-para-que-se-utilizan-2', '¿Qué son los Estados Contables, para qué se utilizan?', NULL, '<p>Se denomina Estados Contables a todos aquellos documentos en los cuales se refleja la situación de una empresa en un momento determinado de tiempo. Dichos documentos están compuestos por el Balance General, el Estado de Resultados, Estado de Evolución del Patrimonio, Estado de Origen y Aplicación de Fondos, Informaciones Complementarias y Anexos.</p>\n<p>Por medio de las diferentes herramientas de análisis financiero, el responsable de dichos estudios aplicará las diversas técnicas que le permitan interpretar los resultados expuestos en los Estados Contables de una empresa emisora en particular.</p>', NULL, NULL, 0, 1, 26, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1906, 275, 3, 1, 1, 1, 'GeneralPage', '2019-05-22 17:08:27', '2019-05-29 20:34:05', 'que-son-los-estados-contables-para-que-se-utilizan', '¿Qué son los Estados Contables, para qué se utilizan?', NULL, '<p>Se denomina Estados Contables a todos aquellos documentos en los cuales se refleja la situación de una empresa en un momento determinado de tiempo. Dichos documentos están compuestos por el Balance General, el Estado de Resultados, Estado de Evolución del Patrimonio, Estado de Origen y Aplicación de Fondos, Informaciones Complementarias y Anexos.</p>\n<p>Por medio de las diferentes herramientas de análisis financiero, el responsable de dichos estudios aplicará las diversas técnicas que le permitan interpretar los resultados expuestos en los Estados Contables de una empresa emisora en particular.</p>', NULL, NULL, 0, 1, 26, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1907, 276, 1, 0, 1, 0, 'GeneralPage', '2019-05-22 17:08:27', '2019-05-29 20:38:29', 'general-2', 'General', NULL, '<p>Prueba General</p>', NULL, NULL, 0, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1908, 276, 2, 0, 1, 0, 'GeneralPage', '2019-05-22 17:08:27', '2019-05-29 20:38:29', 'general-2', 'General', NULL, '<p>Prueba General</p>', NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1909, 276, 3, 1, 1, 1, 'GeneralPage', '2019-05-22 17:08:27', '2019-05-29 20:39:13', 'que-valores-negociables-se-compran-y-venden-en-el-mercado-de-valores', '¿Qué valores negociables se compran y venden en el Mercado de Valores?', NULL, '<p><span>En nuestro mercado, actualmente, las principales negociaciones se realizan sobre los Instrumentos de Renta Fija, los bonos corporativos, los pagarés y los cupones principalmente, y en menor medida con las acciones.</span></p>', NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1910, 267, 4, 1, 1, 1, 'GeneralPage', '2019-05-22 17:08:27', '2019-05-29 20:47:12', 'que-tipo-de-persona-juridica-tiene-la-bvpasa', '¿Qué tipo de persona jurídica tiene la BVPASA?', NULL, '<p>La BVPASA opera bajo la figura jurídica de Sociedad Anónima, pero de acuerdo a las normativas legales vigentes, la misma se adecua dentro de la figura de Organizaciones sin Fines de Lucro (ONGs), debido a que por sus Estatutos Sociales y la propia Ley del Mercado de Valores, tanto esta como cualquier otra Bolsa en nuestro país tiene expresamente prohibido distribuir utilidades.</p>', NULL, NULL, 0, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 224),
(1911, 6, 6, 1, 1, 1, '', '2015-07-22 11:04:43', '2019-05-30 22:34:52', 'nuestros-servicios', 'Nuestros Servicios', NULL, '<p><i class="fa fa-check"></i> Asesoramiento bursátil <i class="fa fa-check"></i> Diseño y estructuración de nuevas emisiones <i class="fa fa-check"></i> Administración de portafolio de inversiones <i class="fa fa-check"></i> Acceso a mercado de capitales de renta fija y variable. <i class="fa fa-check"></i> Asesoramiento para cotizar en bolsa <i class="fa fa-check"></i> Elaboración de planes de negocios <i class="fa fa-check"></i> Atención personalizada conforme al perfil del inversor.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1912, 6, 7, 1, 1, 1, '', '2015-07-22 11:04:43', '2019-05-30 22:35:51', 'nuestros-servicios', 'Nuestros Servicios', NULL, '<p><i class="fa fa-check"></i> Asesoramiento bursátil<br><i class="fa fa-check"></i> Diseño y estructuración de nuevas emisiones<br><i class="fa fa-check"></i> Administración de portafolio de inversiones<br><i class="fa fa-check"></i> Acceso a mercado de capitales de renta fija y variable.<br><i class="fa fa-check"></i> Asesoramiento para cotizar en bolsa<br><i class="fa fa-check"></i> Elaboración de planes de negocios<br><i class="fa fa-check"></i> Atención personalizada conforme al perfil del inversor.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1913, 6, 8, 1, 1, 1, '', '2015-07-22 11:04:43', '2019-05-30 22:45:46', 'nuestros-servicios', 'Nuestros Servicios', NULL, '<div i="" class="fa fa-check">Asesoramiento bursátil </div>\n<div i="" class="fa fa-check">Diseño y estructuración de nuevas emisiones </div>\n<div i="" class="fa fa-check">Administración de portafolio de inversiones </div>\n<div i="" class="fa fa-check">Acceso a mercado de capitales de renta fija y variable. </div>\n<div i="" class="fa fa-check">Asesoramiento para cotizar en bolsa <br><div div="">\n<div i="" class="fa fa-check">Elaboración de planes de negocios </div>\n<div i="" class="fa fa-check">Atención personalizada conforme al perfil del inversor.</div>\n</div>\n</div>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1914, 6, 9, 1, 1, 1, '', '2015-07-22 11:04:43', '2019-05-30 22:45:49', 'nuestros-servicios', 'Nuestros Servicios', NULL, '<div i="" class="fa fa-check">Asesoramiento bursátil</div>\n<div i="" class="fa fa-check">Diseño y estructuración de nuevas emisiones</div>\n<div i="" class="fa fa-check">Administración de portafolio de inversiones</div>\n<div i="" class="fa fa-check">Acceso a mercado de capitales de renta fija y variable.</div>\n<div i="" class="fa fa-check">Asesoramiento para cotizar en bolsa <br><div div="">\n<div i="" class="fa fa-check">Elaboración de planes de negocios</div>\n<div i="" class="fa fa-check">Atención personalizada conforme al perfil del inversor.</div>\n</div>\n</div>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1915, 6, 10, 1, 1, 1, '', '2015-07-22 11:04:43', '2019-05-30 22:47:01', 'nuestros-servicios', 'Nuestros Servicios', NULL, '<div><i class="fa fa-check"></i> Asesoramiento bursátil </div>\n<div><i class="fa fa-check"></i> Diseño y estructuración de nuevas emisiones </div>\n<div><i class="fa fa-check"></i> Administración de portafolio de inversiones </div>\n<div><i class="fa fa-check"></i> Acceso a mercado de capitales de renta fija y variable. </div>\n<div><i class="fa fa-check"></i> Asesoramiento para cotizar en bolsa <br><div div="">\n<div><i class="fa fa-check"></i> Elaboración de planes de negocios </div>\n<div><i class="fa fa-check"></i> Atención personalizada conforme al perfil del inversor.</div>\n</div>\n</div>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1916, 6, 11, 1, 1, 1, '', '2015-07-22 11:04:43', '2019-05-30 22:50:35', 'nuestros-servicios', 'Nuestros Servicios', NULL, '<div class="row"><i class="fa fa-check" style="padding-right: 10px;"></i> Asesoramiento bursátil </div>\n<div class="row"><i class="fa fa-check" style="padding-right: 10px;"></i> Diseño y estructuración de nuevas emisiones </div>\n<div class="row"><i class="fa fa-check" style="padding-right: 10px;"></i> Administración de portafolio de inversiones </div>\n<div class="row"><i class="fa fa-check" style="padding-right: 10px;"></i> Acceso a mercado de capitales de renta fija y variable. </div>\n<div class="row"><i class="fa fa-check" style="padding-right: 10px;"></i> Asesoramiento para cotizar en bolsa </div>\n<div class="row"><i class="fa fa-check" style="padding-right: 10px;"></i> Elaboración de planes de negocios </div>\n<div class="row"><i class="fa fa-check" style="padding-right: 10px;"></i> Atención personalizada conforme al perfil del inversor.</div>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1917, 1, 8, 0, 1, 0, 'HomePage', '2015-07-21 17:15:05', '2019-06-03 15:37:02', 'home', 'Inicio', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1918, 1, 9, 1, 1, 1, 'HomePage', '2015-07-21 17:15:05', '2019-06-03 15:41:06', 'home', 'Inicio', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1919, 1, 10, 1, 1, 1, 'HomePage', '2015-07-21 17:15:05', '2019-06-03 15:53:26', 'home', 'Inicio', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1920, 277, 1, 0, 1, 0, '', '2019-06-05 16:17:52', '2019-06-05 16:17:52', 'nuevo-pagina-de-detalle-de-tarjetas', 'Nuevo Página de Detalle de Tarjetas', NULL, NULL, NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1921, 277, 2, 1, 1, 1, '', '2019-06-05 16:17:52', '2019-06-05 16:18:18', 'nuevo-pagina-de-detalle-de-tarjetas', 'Detalle de Tarjetas', NULL, NULL, NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1922, 277, 3, 0, 1, 0, '', '2019-06-05 16:17:52', '2019-06-05 17:47:38', 'nuevo-pagina-de-detalle-de-tarjetas', 'Detalle de Tarjetas', NULL, NULL, NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 239),
(1923, 277, 4, 1, 1, 1, '', '2019-06-05 16:17:52', '2019-06-05 17:47:38', 'nuevo-pagina-de-detalle-de-tarjetas', 'Detalle de Tarjetas', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 239),
(1927, 277, 5, 1, 1, 1, '', '2019-06-05 16:17:52', '2019-06-05 17:49:53', 'bonos-2', 'Bonos', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 239),
(1928, 278, 1, 1, 1, 1, '', '2019-06-05 16:17:52', '2019-06-05 17:50:25', 'acciones-2', 'Acciones', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 239),
(1930, 280, 1, 1, 1, 1, '', '2019-06-05 16:17:52', '2019-06-05 17:51:34', 'cdas', 'CDA''s', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 239),
(1931, 278, 2, 1, 1, 1, '', '2019-06-05 16:17:52', '2019-06-05 17:51:39', 'acciones-2', 'Acciones', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 239),
(1932, 280, 2, 1, 1, 1, '', '2019-06-05 16:17:52', '2019-06-05 17:51:41', 'cdas', 'CDA''s', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 239),
(1933, 277, 6, 1, 1, 1, '', '2019-06-05 16:17:52', '2019-06-05 20:45:53', 'bonos-2', 'Bonos', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 239),
(1934, 278, 3, 1, 1, 1, '', '2019-06-05 16:17:52', '2019-06-05 20:46:08', 'acciones-2', 'Acciones', NULL, NULL, NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 239),
(1935, 280, 3, 1, 1, 1, '', '2019-06-05 16:17:52', '2019-06-05 20:46:36', 'cdas', 'CDA''s', NULL, NULL, NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 239),
(1946, 262, 4, 1, 1, 1, '', '2015-10-06 15:25:10', '2019-06-14 11:45:30', 'como-operar', 'Cómo Operar', NULL, '<h4>¿Como operar con Avalon Casa de Bolsa?</h4>\n<p><span>Para operar con la <strong>Casa de Bolsa</strong>, simplemente debe acercarse, o llamarnos por teléfono a nuestras oficinas o bien remitirnos un e-mail, comenzando de esa manera nuestra labor de asesoramiento personal.</span></p>\n<p><span>En nuestras oficinas, contamos con ejecutivos capacitados para evacuar todas las dudas que pudiera tener acerca de cómo operar con nosotros, ofrecerle los servicios que ponemos a su alcance para satisfacer sus necesidades, asesorarle de que manera puede invertir su capital o bien cómo puede captar recursos para su empresa.</span></p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(1947, 284, 1, 0, 1, 0, 'GeneralPage', '2019-05-23 21:55:54', '2019-06-26 11:20:36', 'nosotros-2', 'Nosotros', NULL, '<h4>¿Qué es una casa de bolsa?</h4>\n<p>Para comprender mejor el significado de la <strong>Casa de Bolsa</strong>, antes debemos comprender el de la <strong>Bolsa de Valores</strong>.</p>\n<p>Una bolsa de valores es una organización privada que brinda las facilidades necesarias para que sus miembros, atendiendo los mandatos de sus clientes, realicen negociaciones de compra venta de valores, tales como acciones de sociedades o compañías anónimas, bonos públicos y privados, certificados, títulos de participación y una amplia variedad de instrumentos de inversión.</p>\n<p>La negociación de los valores en los mercados bursátiles se hace con base a unos precios conocidos y en tiempo real, en un entorno seguro para la actividad de los inversionistas, donde el mecanismo de las transacciones está totalmente regulado, lo que da garantía de legalidad y seguridad.</p>\n<p>Las bolsas de valores fortalecen al mercado de capitales e impulsan el desarrollo económico y financiero en la mayoría de los países del mundo, donde existen en algunos casos desde hace muchos años, a partir de las primeras entidades de este tipo creadas en los primeros años del siglo XVII.</p>\n<p>La negociación de valores en las bolsas se efectúa a través de los miembros de la Bolsa, conocidos usualmente con el nombre de corredores, sociedades de corretaje de valores, casas de bolsa, agentes o comisionistas, de acuerdo a la denominación que reciben en las leyes de cada país, quienes hacen su labor a cambio de una comisión.</p>\n<p>Las casas de bolsa son entidades, que actúan como intermediarios facultados para llevar a cabo operaciones de compra y venta de valores cotizados en la Bolsa de Valores. Además de esta función, las casas de bolsa actúan como consejeros de sus clientes. Como se ve, las casas de bolsa prestan dos servicios, el de intermediación y el de asesoría, por los cuales cobran comisiones.</p>\n<p>La función de las casas de bolsa es la de facilitar el contacto y el intercambio entre los poseedores de las acciones y los posibles compradores de éstas.</p>\n<p><strong>En Paraguay, según la Ley 1284/98, en su art. 105, las casas de bolsa están facultadas para efectuar las siguientes operaciones:</strong></p>\n<ol><li>comprar y vender valores por cuenta de terceros y también por cuenta propia, con recursos propios, en la bolsa o fuera de ella;</li>\n<li>prestar asesoría en materia de valores y operaciones de bolsa así como brindar a sus clientes un sistema de información y de procesamiento de datos;</li>\n<li>suscribir transitoriamente, con recursos propios, parte o la totalidad de emisiones primarias de valores;</li>\n<li>promover el lanzamiento de valores públicos y privados y facilitar su colocación;</li>\n<li>actuar como representante de los obligacionistas;</li>\n<li>prestar servicios de administración de carteras y custodia de valores;</li>\n<li>llevar el registro contable de valores de sus clientes con sujeción a lo establecido en la presente ley, o en las resoluciones que dicte la Comisión al efecto;</li>\n<li>otorgar créditos, con sus propios recursos, únicamente con el objeto de facilitar la adquisición de valores por sus comitentes, estén o no inscritos en bolsa y con la garantía de tales valores;</li>\n<li>recibir créditos de empresas del sistema financiero para la realización de las actividades que les son propias; y,</li>\n<li>efectuar todas las operaciones y servicios que sean compatibles con la actividad de intermediación en el mercado de valores y que previamente y de manera general autorice la Comisión.</li>\n</ol>', NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 244),
(1948, 284, 2, 1, 1, 1, 'GeneralPage', '2019-05-23 21:55:54', '2019-06-26 11:20:36', 'nosotros-2', 'Nosotros', NULL, '<h4>¿Qué es una casa de bolsa?</h4>\n<p>Para comprender mejor el significado de la <strong>Casa de Bolsa</strong>, antes debemos comprender el de la <strong>Bolsa de Valores</strong>.</p>\n<p>Una bolsa de valores es una organización privada que brinda las facilidades necesarias para que sus miembros, atendiendo los mandatos de sus clientes, realicen negociaciones de compra venta de valores, tales como acciones de sociedades o compañías anónimas, bonos públicos y privados, certificados, títulos de participación y una amplia variedad de instrumentos de inversión.</p>\n<p>La negociación de los valores en los mercados bursátiles se hace con base a unos precios conocidos y en tiempo real, en un entorno seguro para la actividad de los inversionistas, donde el mecanismo de las transacciones está totalmente regulado, lo que da garantía de legalidad y seguridad.</p>\n<p>Las bolsas de valores fortalecen al mercado de capitales e impulsan el desarrollo económico y financiero en la mayoría de los países del mundo, donde existen en algunos casos desde hace muchos años, a partir de las primeras entidades de este tipo creadas en los primeros años del siglo XVII.</p>\n<p>La negociación de valores en las bolsas se efectúa a través de los miembros de la Bolsa, conocidos usualmente con el nombre de corredores, sociedades de corretaje de valores, casas de bolsa, agentes o comisionistas, de acuerdo a la denominación que reciben en las leyes de cada país, quienes hacen su labor a cambio de una comisión.</p>\n<p>Las casas de bolsa son entidades, que actúan como intermediarios facultados para llevar a cabo operaciones de compra y venta de valores cotizados en la Bolsa de Valores. Además de esta función, las casas de bolsa actúan como consejeros de sus clientes. Como se ve, las casas de bolsa prestan dos servicios, el de intermediación y el de asesoría, por los cuales cobran comisiones.</p>\n<p>La función de las casas de bolsa es la de facilitar el contacto y el intercambio entre los poseedores de las acciones y los posibles compradores de éstas.</p>\n<p><strong>En Paraguay, según la Ley 1284/98, en su art. 105, las casas de bolsa están facultadas para efectuar las siguientes operaciones:</strong></p>\n<ol><li>comprar y vender valores por cuenta de terceros y también por cuenta propia, con recursos propios, en la bolsa o fuera de ella;</li>\n<li>prestar asesoría en materia de valores y operaciones de bolsa así como brindar a sus clientes un sistema de información y de procesamiento de datos;</li>\n<li>suscribir transitoriamente, con recursos propios, parte o la totalidad de emisiones primarias de valores;</li>\n<li>promover el lanzamiento de valores públicos y privados y facilitar su colocación;</li>\n<li>actuar como representante de los obligacionistas;</li>\n<li>prestar servicios de administración de carteras y custodia de valores;</li>\n<li>llevar el registro contable de valores de sus clientes con sujeción a lo establecido en la presente ley, o en las resoluciones que dicte la Comisión al efecto;</li>\n<li>otorgar créditos, con sus propios recursos, únicamente con el objeto de facilitar la adquisición de valores por sus comitentes, estén o no inscritos en bolsa y con la garantía de tales valores;</li>\n<li>recibir créditos de empresas del sistema financiero para la realización de las actividades que les son propias; y,</li>\n<li>efectuar todas las operaciones y servicios que sean compatibles con la actividad de intermediación en el mercado de valores y que previamente y de manera general autorice la Comisión.</li>\n</ol>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 244),
(1949, 285, 1, 0, 1, 0, '', '2019-06-26 11:21:44', '2019-06-26 11:21:44', 'nuevo-pagina-de-articulo', 'Nuevo Página de Artículo', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 244),
(1950, 286, 1, 0, 1, 0, 'GeneralPage', '2019-06-26 11:23:36', '2019-06-26 11:23:36', 'nuevo-pagina-general-para-todas-las-paginas', 'Nuevo Página General para todas las paginas', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 244),
(1951, 244, 5, 1, 1, 1, 'GeneralPage', '2019-05-23 21:55:54', '2019-06-26 11:27:45', 'institucional', 'Institucional', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1952, 286, 2, 1, 1, 1, 'GeneralPage', '2019-06-26 11:23:36', '2019-06-26 11:35:50', 'nuevo-pagina-general-para-todas-las-paginas', 'Nuevo Página General para todas las paginas', NULL, '<p><span>Para ser cliente, sólo debe contactarse con <strong>Avalon Casa de Bolsa S.A.</strong></span></p>\n<p><span>Cuando usted se pone en contacto con nosotros, nuestros ejecutivos le ayudarán a completar una ficha como cliente y a partir de ese momento, comenzaremos a buscar las mejores opciones de inversión, cualquiera sea su necesidad, previo acuerdo entre las partes acerca de los requisitos y condiciones.</span></p>\n<p><span>El deseo de operar con la <strong>Casa de Bolsa</strong> puede originarse por la necesidad de buscar la optimización de los recursos, tanto para aquel que posee capital y lo desea invertir para lograr una rentabilidad por el mismo como aquel que necesita de capital en condiciones ventajosas para realizar inversiones.</span></p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 244),
(1953, 286, 3, 1, 1, 1, 'GeneralPage', '2019-06-26 11:23:36', '2019-06-26 11:38:34', 'como-ser-cliente', '¿Cómo ser cliente?', NULL, '<p><span>Para ser cliente, sólo debe contactarse con <strong>Avalon Casa de Bolsa S.A.</strong></span></p>\n<p><span>Cuando usted se pone en contacto con nosotros, nuestros ejecutivos le ayudarán a completar una ficha como cliente y a partir de ese momento, comenzaremos a buscar las mejores opciones de inversión, cualquiera sea su necesidad, previo acuerdo entre las partes acerca de los requisitos y condiciones.</span></p>\n<p><span>El deseo de operar con la <strong>Casa de Bolsa</strong> puede originarse por la necesidad de buscar la optimización de los recursos, tanto para aquel que posee capital y lo desea invertir para lograr una rentabilidad por el mismo como aquel que necesita de capital en condiciones ventajosas para realizar inversiones.</span></p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 244);
INSERT INTO `SiteTree_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `ParentID`) VALUES
(1954, 287, 1, 0, 1, 0, 'GeneralPage', '2019-06-26 11:39:17', '2019-06-26 11:39:17', 'nuevo-pagina-general-para-todas-las-paginas', 'Nuevo Página General para todas las paginas', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 244),
(1955, 288, 1, 0, 1, 0, 'GeneralPage', '2019-05-23 21:55:54', '2019-06-26 11:41:33', 'institucional-2', 'Institucional', NULL, NULL, NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 244),
(1956, 288, 2, 0, 1, 0, 'GeneralPage', '2019-05-23 21:55:54', '2019-06-26 11:41:33', 'institucional-2', 'Institucional', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 244),
(1957, 219, 3, 1, 1, 1, '', '2015-10-06 15:25:10', '2019-06-26 11:43:50', 'requisitos', 'Requisitos', NULL, '<h4>¿Cuáles son los requisitos?</h4>\n<p>Si usted es una persona que posee capital y desea que el mismo obtenga una rentabilidad, el único requisito es que usted nos haga saber y a partir de ese momento, nosotros nos encargamos de buscarle la mejor opción y de asesorarlo constantemente.</p>\n<p>Si usted desea obtener recursos para luego invertirlos, necesitamos iniciar un proceso de preparación de su empresa y adecuarla a las exigencias de las leyes y reglamentaciones vigentes para operar en el mercado de valores, situación que permitirá estar en condiciones de realizar <a href="[file_link,id=663]">emisiones de valores y con ello obtener los recursos que está necesitando.</a></p>\n<h4><a href="[file_link,id=663]"><img src="http://www.avalon.com.py/public/img/pdf1.png" mce_advimageresize_id="Form_EditForm_Content_mce_0" alt="" title=""><span> </span>Descargar Requisitos</a></h4>', NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(1958, 288, 3, 1, 1, 1, 'GeneralPage', '2019-05-23 21:55:54', '2019-06-26 11:43:52', 'como-operar', '¿Cómo operar?', NULL, '<p><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Para operar con la Casa de Bolsa, simplemente debe acercarse, o llamarnos por teléfono a nuestras oficinas o bien remitirnos un e-mail, comenzando de esa manera nuestra labor de asesoramiento personal.</span></p>\n<p><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">En nuestras oficinas, contamos con ejecutivos capacitados para evacuar todas las dudas que pudiera tener acerca de cómo operar con nosotros, ofrecerle los servicios que ponemos a su alcance para satisfacer sus necesidades, brindándole los diferentes opciones de inversión que se adapten mejor a su necesidad de rentabilidad y de capital que desea invertir</span></p>', NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 244),
(1959, 287, 2, 0, 1, 0, 'GeneralPage', '2019-06-26 11:39:17', '2019-06-26 11:44:21', 'nuevo-pagina-general-para-todas-las-paginas', 'Nuevo Página General para todas las paginas', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 244),
(1960, 287, 3, 1, 1, 1, 'GeneralPage', '2019-06-26 11:39:17', '2019-06-26 11:55:25', 'requisitos', 'Requisitos', NULL, '<p><b>Requisitos Generales de Identificación de Clientes</b></p>\n<p><b> </b></p>\n<h1><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">PERSONAS FISICAS</span></h1>\n<ul><li><span style="font-size: medium;" size="3"></span><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Copia de Cedula de Identidad vigente, ambos lados.</span></li>\n<li><span style="font-size: medium;" size="3"></span><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Copia de factura de servicio público, último mes.</span></li>\n<li><span style="font-size: medium;" size="3"></span><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">En el caso de extranjeros:</span></li>\n<ul><li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Fotocopia autenticada del Carnet de Admisión Permanente, vigente, ambos lados.</span></li>\n<li><span style="font-size: medium;" size="3"></span><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Fotocopia autenticada del Pasaporte o Documento nacional de identidad del país de origen.</span></li>\n</ul><li><span style="font-size: medium;" size="3"></span><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Comprobantes de ingreso:</span></li>\n<ul><li><strong> <span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Asalariados:</span></strong></li>\n<ul><li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Certificado Laboral, indicando ingreso mensual, antigüedad y cargo.</span></li>\n<li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Liquidación de sueldos; 3 últimos meses.</span></li>\n</ul><li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri"></span><strong><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Profesional Independiente:</span></strong></li>\n<ul><li><span style="font-size: medium;" size="3"></span><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">6 últimos pagos de I.V.A.</span></li>\n</ul></ul></ul><p> </p>\n<h1><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">PERSONA JURIDICA</span></h1>\n<ul><li><span style="font-size: medium;" size="3">·</span>         <span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Copia del RUC.</span></li>\n<li><span style="font-size: medium;" size="3">·</span>         <span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Patente Comercial, del semestre y en año en curso.</span></li>\n<li><span style="font-size: medium;" size="3">·</span>         <span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">6 últimos pagos de I.V.A.</span></li>\n<li><span style="font-size: medium;" size="3">·</span>         <span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Estados contables de los 2 últimos años.</span></li>\n<li><span style="font-size: medium;" size="3">·</span>         <span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Comprobante de pago de Impuesto a la Renta, formulario 101, 2 últimos años.</span></li>\n<li><span style="font-size: medium;" size="3">·</span>         <span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Fotocopia de extractos de cuentas bancarias, de los 3 últimos meses, si tuviere.</span></li>\n<li><span style="font-size: medium;" size="3">·</span>         <span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Copia de C.I. vigente, ambos lados, de los representantes legales. (*)</span></li>\n<li><span style="font-size: medium;" size="3">·</span>         <span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Copia de la constitución de la sociedad y modificaciones, si las hubiere. (*)</span></li>\n<li><span style="font-size: medium;" size="3">·</span>         <span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Ultima Acta de Asamblea donde conste la distribución de cargos, para S.A. (*)</span></li>\n<li><span style="font-size: medium;" size="3">·</span>         <span style="font-family: Calibri;" face="Calibri"><span style="font-size: medium;" size="3">Copia de Poderes, vigentes e inscriptos, si hubieren. (*)</span></span></li>\n<li><span style="font-size: medium;" size="3">·</span>         <span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Detalle actualizado de accionistas.</span></li>\n</ul><p> </p>\n<p><b><i><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Otros documentos aplican en caso de ser Persona Jurídica constituida en el exterior.</span></i></b></p>\n<p><b><i> </i></b></p>\n<h1><span style="font-family: Calibri;" face="Calibri"><span style="font-size: medium;" size="3">(*) Copias autenticadas por escribanía</span></span></h1>\n<p><b> </b></p>\n<p><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Llenado y firmado de los formularios proveídos por Avalon S.A. Casa de Bolsa.</span></p>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 244),
(1961, 287, 4, 1, 1, 1, 'GeneralPage', '2019-06-26 11:39:17', '2019-06-26 12:07:19', 'requisitos', 'Requisito', 'Requisitos', '<p><span style="font-family: arial black,avant garde; font-size: medium;"><b>REQUISITOS GENERALES DE IDENTIFICACIÓN DE CLIENTES</b></span></p>\n<h1><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri"></span></h1>\n<h1><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">PERSONAS FISICAS</span></h1>\n<ul><li><span style="font-size: medium;" size="3"></span><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Copia de Cedula de Identidad vigente, ambos lados.</span></li>\n<li><span style="font-size: medium;" size="3"></span><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Copia de factura de servicio público, último mes.</span></li>\n<li><span style="font-size: medium;" size="3"></span><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">En el caso de extranjeros:</span></li>\n<ul><li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Fotocopia autenticada del Carnet de Admisión Permanente, vigente, ambos lados.</span></li>\n<li><span style="font-size: medium;" size="3"></span><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Fotocopia autenticada del Pasaporte o Documento nacional de identidad del país de origen.</span></li>\n</ul><li><span style="font-size: medium;" size="3"></span><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Comprobantes de ingreso:</span></li>\n<ul><li><strong> <span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Asalariados:</span></strong></li>\n<ul><li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Certificado Laboral, indicando ingreso mensual, antigüedad y cargo.</span></li>\n<li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Liquidación de sueldos; 3 últimos meses.</span></li>\n</ul><li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri"></span><strong><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Profesional Independiente:</span></strong></li>\n<ul><li><span style="font-size: medium;" size="3"></span><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">6 últimos pagos de I.V.A.</span></li>\n</ul></ul></ul><p> </p>\n<h1><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">PERSONA JURIDICA</span></h1>\n<p><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri"></span></p>\n<ul><li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Copia del<span> </span>RUC.</span></li>\n<li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Patente Comercial, del semestre y en año en<span> </span>curso.</span></li>\n<li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">6 últimos pagos de<span> </span>I.V.A.</span></li>\n<li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Estados contables de los 2 últimos<span> </span>años.</span></li>\n<li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Comprobante de pago de Impuesto a la Renta, formulario 101, 2 últimos<span> </span>años.</span></li>\n<li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Fotocopia de extractos de cuentas bancarias, de los 3 últimos meses, si<span> </span>tuviere.</span></li>\n<li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Copia de C.I. vigente, ambos lados, de los representantes legales.<span> </span>(*)</span></li>\n<li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Copia de la constitución de la sociedad y modificaciones, si las hubiere.<span> </span>(*)</span></li>\n<li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Ultima Acta de Asamblea donde conste la distribución de cargos, para S.A.<span> </span>(*)</span></li>\n<li><span style="font-family: Calibri;" face="Calibri"><span style="font-size: medium;" size="3">Copia de Poderes, vigentes e inscriptos, si hubieren.<span> </span><span>(*)</span></span></span></li>\n<li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Detalle actualizado de accionistas.</span></li>\n</ul><p><b><i><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Otros documentos aplican en caso de ser Persona Jurídica constituida en el exterior.</span></i></b></p>\n<p><span style="font-family: Calibri;" face="Calibri"><span style="font-size: medium;" size="3">(*) Copias autenticadas por escribanía</span></span></p>\n<p><b> </b><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Llenado y firmado de los formularios proveídos por Avalon S.A. Casa de Bolsa.</span></p>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 244),
(1962, 289, 1, 1, 1, 1, 'GeneralPage', '2019-06-26 11:39:17', '2019-06-26 12:08:50', 'informacion-financiera', 'Informacion Financiera', NULL, '<p><span style="font-family: arial black,avant garde; font-size: medium;"><b>REQUISITOS GENERALES DE IDENTIFICACIÓN DE CLIENTES</b></span></p>\n<h1></h1>\n<h1><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">PERSONAS FISICAS</span></h1>\n<ul><li><span style="font-size: medium;" size="3"></span><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Copia de Cedula de Identidad vigente, ambos lados.</span></li>\n<li><span style="font-size: medium;" size="3"></span><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Copia de factura de servicio público, último mes.</span></li>\n<li><span style="font-size: medium;" size="3"></span><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">En el caso de extranjeros:</span></li>\n<ul><li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Fotocopia autenticada del Carnet de Admisión Permanente, vigente, ambos lados.</span></li>\n<li><span style="font-size: medium;" size="3"></span><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Fotocopia autenticada del Pasaporte o Documento nacional de identidad del país de origen.</span></li>\n</ul><li><span style="font-size: medium;" size="3"></span><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Comprobantes de ingreso:</span></li>\n<ul><li><strong> <span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Asalariados:</span></strong></li>\n<ul><li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Certificado Laboral, indicando ingreso mensual, antigüedad y cargo.</span></li>\n<li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Liquidación de sueldos; 3 últimos meses.</span></li>\n</ul><li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri"></span><strong><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Profesional Independiente:</span></strong></li>\n<ul><li><span style="font-size: medium;" size="3"></span><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">6 últimos pagos de I.V.A.</span></li>\n</ul></ul></ul><p> </p>\n<h1><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">PERSONA JURIDICA</span></h1>\n<p></p>\n<ul><li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Copia del<span> </span>RUC.</span></li>\n<li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Patente Comercial, del semestre y en año en<span> </span>curso.</span></li>\n<li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">6 últimos pagos de<span> </span>I.V.A.</span></li>\n<li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Estados contables de los 2 últimos<span> </span>años.</span></li>\n<li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Comprobante de pago de Impuesto a la Renta, formulario 101, 2 últimos<span> </span>años.</span></li>\n<li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Fotocopia de extractos de cuentas bancarias, de los 3 últimos meses, si<span> </span>tuviere.</span></li>\n<li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Copia de C.I. vigente, ambos lados, de los representantes legales.<span> </span>(*)</span></li>\n<li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Copia de la constitución de la sociedad y modificaciones, si las hubiere.<span> </span>(*)</span></li>\n<li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Ultima Acta de Asamblea donde conste la distribución de cargos, para S.A.<span> </span>(*)</span></li>\n<li><span style="font-family: Calibri;" face="Calibri"><span style="font-size: medium;" size="3">Copia de Poderes, vigentes e inscriptos, si hubieren.<span> </span><span>(*)</span></span></span></li>\n<li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Detalle actualizado de accionistas.</span></li>\n</ul><p><b><i><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Otros documentos aplican en caso de ser Persona Jurídica constituida en el exterior.</span></i></b></p>\n<p><span style="font-family: Calibri;" face="Calibri"><span style="font-size: medium;" size="3">(*) Copias autenticadas por escribanía</span></span></p>\n<p><b> </b><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Llenado y firmado de los formularios proveídos por Avalon S.A. Casa de Bolsa.</span></p>', NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 244),
(1963, 289, 2, 1, 1, 1, 'GeneralPage', '2019-06-26 11:39:17', '2019-06-26 12:09:48', 'informacion-financiera', 'Informacion Financiera', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 244),
(1964, 290, 1, 0, 1, 0, 'GeneralPage', '2019-06-26 11:39:17', '2019-06-26 12:10:56', 'informacion-financiera-2', 'Informacion Financiera', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 289),
(1965, 290, 2, 0, 1, 0, 'GeneralPage', '2019-06-26 11:39:17', '2019-06-26 12:10:56', 'informacion-financiera-2', 'Informacion Financiera', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 289),
(1966, 290, 3, 1, 1, 1, 'GeneralPage', '2019-06-26 11:39:17', '2019-06-26 12:11:55', 'estatuto', 'Estatuto', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 289),
(1967, 290, 4, 1, 1, 1, 'GeneralPage', '2019-06-26 11:39:17', '2019-06-26 12:16:58', 'estatuto', 'Estatuto', NULL, '<p>DJHFSKJD</p>\n<p></p>\n<p></p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 289),
(1968, 290, 5, 1, 1, 1, 'GeneralPage', '2019-06-26 11:39:17', '2019-06-26 12:19:24', 'estatuto', 'Estatuto', NULL, '<p>DJHFSKJD</p>\n<p><a href="[file_link,id=714]">ESTATUTO</a></p>\n<p></p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 289),
(1969, 290, 6, 1, 1, 1, 'GeneralPage', '2019-06-26 11:39:17', '2019-06-26 12:21:35', 'estatuto', 'Estatuto', NULL, '<p>DJHFSKJD</p>\n<p>ESTATUTO</p>\n<p></p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 289),
(1970, 290, 7, 1, 1, 1, 'GeneralPage', '2019-06-26 11:39:17', '2019-06-26 12:22:28', 'estatuto', 'Estatuto', NULL, '<p>DJHFSKJD</p>\n<p><a href="[file_link,id=715]">ESTATUTO</a></p>\n<p></p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 289),
(1971, 291, 1, 1, 1, 1, 'GeneralPage', '2019-06-26 11:39:17', '2019-06-26 12:23:27', 'acta-de-directorio', 'Acta de Directorio', NULL, '<p>DJHFSKJD</p>\n<p><a href="[file_link,id=]">ACTA DE DIRECTORIO 2019</a></p>\n<p></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 289),
(1972, 291, 2, 1, 1, 1, 'GeneralPage', '2019-06-26 11:39:17', '2019-06-26 12:27:05', 'estados-contables', 'Estados Contables', NULL, '<p>DJHFSKJD</p>\n<p><a href="[file_link,id=]">ACTA DE DIRECTORIO 2019</a></p>\n<p></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 289),
(1973, 293, 1, 1, 1, 1, 'GeneralPage', '2019-05-23 21:55:54', '2019-06-26 12:27:24', 'servicios', 'Servicios', NULL, '<div class="row">\n<ul><li>Asesoramiento bursátil</li>\n<li>Diseño y estructuración de nuevas emisiones</li>\n<li>Administración de portafolio de inversiones</li>\n<li>Acceso a mercado de capitales de renta fija y variable.</li>\n<li>Asesoramiento para cotizar en bolsa</li>\n<li>Elaboración de planes de negocios</li>\n<li>Atención personalizada conforme al perfil del inversor.</li>\n</ul></div>\n<div class="row"><i class="fa fa-check"></i></div>\n<div class="row"><i class="fa fa-check"></i></div>\n<div class="row"><i class="fa fa-check"></i></div>\n<div class="row"><i class="fa fa-check"></i></div>\n<div class="row"><i class="fa fa-check"></i></div>\n<div class="row"><i class="fa fa-check"></i></div>', NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1974, 6, 12, 1, 1, 1, '', '2015-07-22 11:04:43', '2019-06-26 12:30:35', 'nuestros-servicios-viejo', 'Nuestros Servicios viejo', NULL, '<div class="row"><i class="fa fa-check" style="padding-right: 10px;"></i> Asesoramiento bursátil</div>\n<div class="row"><i class="fa fa-check" style="padding-right: 10px;"></i> Diseño y estructuración de nuevas emisiones</div>\n<div class="row"><i class="fa fa-check" style="padding-right: 10px;"></i> Administración de portafolio de inversiones</div>\n<div class="row"><i class="fa fa-check" style="padding-right: 10px;"></i> Acceso a mercado de capitales de renta fija y variable.</div>\n<div class="row"><i class="fa fa-check" style="padding-right: 10px;"></i> Asesoramiento para cotizar en bolsa</div>\n<div class="row"><i class="fa fa-check" style="padding-right: 10px;"></i> Elaboración de planes de negocios</div>\n<div class="row"><i class="fa fa-check" style="padding-right: 10px;"></i> Atención personalizada conforme al perfil del inversor.</div>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1975, 6, 13, 1, 1, 1, '', '2015-07-22 11:04:43', '2019-06-26 12:31:01', 'nuestros-servicios-viejo', 'Nuestros Servicios viejo', NULL, '<div class="row"><i class="fa fa-check" style="padding-right: 10px;"></i> Asesoramiento bursátil</div>\n<div class="row"><i class="fa fa-check" style="padding-right: 10px;"></i> Diseño y estructuración de nuevas emisiones</div>\n<div class="row"><i class="fa fa-check" style="padding-right: 10px;"></i> Administración de portafolio de inversiones</div>\n<div class="row"><i class="fa fa-check" style="padding-right: 10px;"></i> Acceso a mercado de capitales de renta fija y variable.</div>\n<div class="row"><i class="fa fa-check" style="padding-right: 10px;"></i> Asesoramiento para cotizar en bolsa</div>\n<div class="row"><i class="fa fa-check" style="padding-right: 10px;"></i> Elaboración de planes de negocios</div>\n<div class="row"><i class="fa fa-check" style="padding-right: 10px;"></i> Atención personalizada conforme al perfil del inversor.</div>', NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1976, 295, 1, 0, 1, 0, 'GeneralPage', '2019-05-23 21:55:54', '2019-06-26 12:31:44', 'institucional-3', 'Institucional', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1977, 295, 2, 1, 1, 1, 'GeneralPage', '2019-05-23 21:55:54', '2019-06-26 12:32:16', 'nuestros-servicios', 'Nuestros Servicios', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1978, 295, 3, 1, 1, 1, 'GeneralPage', '2019-05-23 21:55:54', '2019-06-26 12:32:47', 'nuestros-servicios', 'Nuestros Servicios', NULL, '<div class="row"><i class="fa fa-check" style="padding-right: 10px;"></i> Asesoramiento bursátil</div>\n<div class="row"><i class="fa fa-check" style="padding-right: 10px;"></i> Diseño y estructuración de nuevas emisiones</div>\n<div class="row"><i class="fa fa-check" style="padding-right: 10px;"></i> Administración de portafolio de inversiones</div>\n<div class="row"><i class="fa fa-check" style="padding-right: 10px;"></i> Acceso a mercado de capitales de renta fija y variable.</div>\n<div class="row"><i class="fa fa-check" style="padding-right: 10px;"></i> Asesoramiento para cotizar en bolsa</div>\n<div class="row"><i class="fa fa-check" style="padding-right: 10px;"></i> Elaboración de planes de negocios</div>\n<div class="row"><i class="fa fa-check" style="padding-right: 10px;"></i> Atención personalizada conforme al perfil del inversor.</div>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1979, 244, 6, 1, 1, 1, 'GeneralPage', '2019-05-23 21:55:54', '2019-08-27 16:33:58', 'quienes-somos', 'Quiénes somos', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1980, 223, 7, 1, 1, 1, 'ContactPage', '2019-05-22 22:34:38', '2019-08-27 16:34:45', 'contacto', 'Contacto', NULL, NULL, NULL, NULL, 0, 0, 10, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1981, 296, 1, 1, 1, 1, 'GeneralPage', '2019-05-23 21:55:54', '2019-08-27 16:35:33', 'institucional-2', 'Institucional', NULL, NULL, NULL, NULL, 0, 0, 13, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1982, 297, 1, 1, 1, 1, 'GeneralPage', '2019-05-23 21:55:54', '2019-08-27 16:35:42', 'institucional-3', 'Institucional', NULL, NULL, NULL, NULL, 0, 0, 14, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1983, 296, 2, 1, 1, 1, 'GeneralPage', '2019-05-23 21:55:54', '2019-08-27 16:39:32', 'telforno', 'telefono', NULL, NULL, NULL, NULL, 0, 0, 13, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1984, 296, 3, 1, 1, 1, 'GeneralPage', '2019-05-23 21:55:54', '2019-08-27 16:39:51', 'telforno', 'telefono', NULL, NULL, NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1985, 296, 4, 1, 1, 1, 'GeneralPage', '2019-05-23 21:55:54', '2019-08-27 16:40:28', 'formulario-contacto', 'telefono', NULL, NULL, NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1986, 296, 5, 1, 1, 1, 'GeneralPage', '2019-05-23 21:55:54', '2019-08-27 16:42:13', 'institucional', 'institucional', NULL, NULL, NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1987, 296, 6, 1, 1, 1, 'GeneralPage', '2019-05-23 21:55:54', '2019-08-27 16:42:20', 'institucional', 'institucional', NULL, NULL, NULL, NULL, 0, 0, 13, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1988, 298, 1, 0, 1, 0, 'UserDefinedForm', '2019-08-27 16:45:14', '2019-08-27 16:45:14', 'nuevo-formulario-definido-por-el-usuario', 'Nuevo Formulario definido por el usuario', NULL, '$UserDefinedForm', NULL, NULL, 1, 1, 15, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1989, 298, 2, 1, 1, 1, 'UserDefinedForm', '2019-08-27 16:45:14', '2019-08-27 16:46:38', 'nuevo-formulario-definido-por-el-usuario', 'Nuevo Formulario definido por el usuario', NULL, '<p>$UserDefinedForm</p>', NULL, NULL, 1, 1, 15, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1990, 299, 1, 0, 1, 0, 'Page', '2019-08-27 16:59:39', '2019-08-27 16:59:39', 'nuevo-pagina', 'Nuevo Página', NULL, NULL, NULL, NULL, 1, 1, 15, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1991, 299, 2, 1, 1, 1, 'Page', '2019-08-27 16:59:39', '2019-08-27 17:00:12', 'formulario-contacto', 'Nuevo Página', NULL, NULL, NULL, NULL, 1, 1, 15, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1992, 223, 8, 1, 1, 1, 'ContactPage', '2019-05-22 22:34:38', '2019-08-27 17:35:33', 'contacto', 'Contacto', NULL, NULL, NULL, NULL, 1, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1993, 6, 14, 1, 1, 1, '', '2015-07-22 11:04:43', '2019-08-28 17:08:56', 'nuestros-servicios-viejo', 'Nuestros Servicios viejo', NULL, '<div class="row"><i class="fa fa-check" style="padding-right: 10px;"></i> Asesoramiento bursátil</div>\n<div class="row"><i class="fa fa-check" style="padding-right: 10px;"></i> Diseño y estructuración de nuevas emisiones</div>\n<div class="row"><i class="fa fa-check" style="padding-right: 10px;"></i> Administración de portafolio de inversiones</div>\n<div class="row"><i class="fa fa-check" style="padding-right: 10px;"></i> Acceso a mercado de capitales de renta fija y variable.</div>\n<div class="row"><i class="fa fa-check" style="padding-right: 10px;"></i> Asesoramiento para cotizar en bolsa</div>\n<div class="row"><i class="fa fa-check" style="padding-right: 10px;"></i> Elaboración de planes de negocios</div>\n<div class="row"><i class="fa fa-check" style="padding-right: 10px;"></i> Atención personalizada conforme al perfil del inversor.</div>', NULL, NULL, 0, 0, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1994, 223, 9, 1, 1, 1, 'ContactPage', '2019-05-22 22:34:38', '2019-08-28 17:09:59', 'contacto', 'Contacto', NULL, NULL, NULL, NULL, 0, 0, 10, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1995, 1, 11, 1, 1, 1, 'HomePage', '2015-07-21 17:15:05', '2019-09-04 20:20:44', 'home', 'Inicio', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(1996, 286, 4, 1, 1, 1, 'GeneralPage', '2019-06-26 11:23:36', '2019-09-04 20:24:11', 'como-ser-cliente', '¿Cómo ser cliente?', NULL, '<p><span>Para ser cliente, sólo debe contactarse con <strong>Avalon Casa de Bolsa S.A.</strong></span></p>\n<p><span>Cuando usted se pone en contacto con nosotros, nuestros ejecutivos le ayudarán a completar una ficha como cliente y a partir de ese momento, comenzaremos a buscar las mejores opciones de inversión, cualquiera sea su necesidad, previo acuerdo entre las partes acerca de los requisitos y condiciones.</span></p>\n<p><span>El deseo de operar con la <strong>Casa de Bolsa</strong> puede originarse por la necesidad de buscar la optimización de los recursos, tanto para aquel que posee capital y lo desea invertir para lograr una rentabilidad por el mismo como aquel que necesita de capital en condiciones ventajosas para realizar inversiones.</span></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 244),
(1997, 287, 5, 1, 1, 1, 'GeneralPage', '2019-06-26 11:39:17', '2019-09-04 20:24:37', 'requisitos', 'Requisito', 'Requisitos', '<p><span style="font-family: arial black,avant garde; font-size: medium;"><b>REQUISITOS GENERALES DE IDENTIFICACIÓN DE CLIENTES</b></span></p>\n<h1></h1>\n<h1><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">PERSONAS FISICAS</span></h1>\n<ul><li><span style="font-size: medium;" size="3"></span><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Copia de Cedula de Identidad vigente, ambos lados.</span></li>\n<li><span style="font-size: medium;" size="3"></span><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Copia de factura de servicio público, último mes.</span></li>\n<li><span style="font-size: medium;" size="3"></span><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">En el caso de extranjeros:</span></li>\n<ul><li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Fotocopia autenticada del Carnet de Admisión Permanente, vigente, ambos lados.</span></li>\n<li><span style="font-size: medium;" size="3"></span><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Fotocopia autenticada del Pasaporte o Documento nacional de identidad del país de origen.</span></li>\n</ul><li><span style="font-size: medium;" size="3"></span><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Comprobantes de ingreso:</span></li>\n<ul><li><strong> <span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Asalariados:</span></strong></li>\n<ul><li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Certificado Laboral, indicando ingreso mensual, antigüedad y cargo.</span></li>\n<li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Liquidación de sueldos; 3 últimos meses.</span></li>\n</ul><li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri"></span><strong><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Profesional Independiente:</span></strong></li>\n<ul><li><span style="font-size: medium;" size="3"></span><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">6 últimos pagos de I.V.A.</span></li>\n</ul></ul></ul><p> </p>\n<h1><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">PERSONA JURIDICA</span></h1>\n<p></p>\n<ul><li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Copia del<span> </span>RUC.</span></li>\n<li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Patente Comercial, del semestre y en año en<span> </span>curso.</span></li>\n<li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">6 últimos pagos de<span> </span>I.V.A.</span></li>\n<li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Estados contables de los 2 últimos<span> </span>años.</span></li>\n<li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Comprobante de pago de Impuesto a la Renta, formulario 101, 2 últimos<span> </span>años.</span></li>\n<li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Fotocopia de extractos de cuentas bancarias, de los 3 últimos meses, si<span> </span>tuviere.</span></li>\n<li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Copia de C.I. vigente, ambos lados, de los representantes legales.<span> </span>(*)</span></li>\n<li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Copia de la constitución de la sociedad y modificaciones, si las hubiere.<span> </span>(*)</span></li>\n<li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Ultima Acta de Asamblea donde conste la distribución de cargos, para S.A.<span> </span>(*)</span></li>\n<li><span style="font-family: Calibri;" face="Calibri"><span style="font-size: medium;" size="3">Copia de Poderes, vigentes e inscriptos, si hubieren.<span> </span><span>(*)</span></span></span></li>\n<li><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Detalle actualizado de accionistas.</span></li>\n</ul><p><b><i><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Otros documentos aplican en caso de ser Persona Jurídica constituida en el exterior.</span></i></b></p>\n<p><span style="font-family: Calibri;" face="Calibri"><span style="font-size: medium;" size="3">(*) Copias autenticadas por escribanía</span></span></p>\n<p><b> </b><span style="font-family: Calibri; font-size: medium;" size="3" face="Calibri">Llenado y firmado de los formularios proveídos por Avalon S.A. Casa de Bolsa.</span></p>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 244),
(1998, 290, 8, 1, 1, 1, 'GeneralPage', '2019-06-26 11:39:17', '2019-09-04 20:24:50', 'estatuto', 'Estatuto', NULL, '<p>DJHFSKJD</p>\n<p><a href="[file_link,id=715]">ESTATUTO</a></p>\n<p></p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 289),
(1999, 291, 3, 1, 1, 1, 'GeneralPage', '2019-06-26 11:39:17', '2019-09-04 20:25:01', 'estados-contables', 'Estados Contables', NULL, '<p>DJHFSKJD</p>\n<p><a href="[file_link,id=]">ACTA DE DIRECTORIO 2019</a></p>\n<p></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 289),
(2000, 224, 4, 1, 1, 1, 'PreguntasFrecuentesPage', '2019-05-23 16:38:28', '2019-09-04 20:25:48', 'preguntas-frecuentes', 'Preguntas Frecuentes', NULL, NULL, NULL, NULL, 0, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2001, 4, 1, 0, 1, 0, 'ErrorPage', '2015-07-21 17:15:06', '2019-09-05 21:06:28', 'pagina-no-encontrada', 'Página no encontrada', NULL, '<p>Lo sentimos, parece que intentaste acceder a una página que no existe.</p><p>Por favor, comprueba que la URL que intentabas acceder está bien escrita e inténtalo de nuevo.</p>', NULL, NULL, 0, 0, 8, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2002, 5, 1, 0, 1, 0, 'ErrorPage', '2015-07-21 17:15:07', '2019-09-05 21:06:33', 'error-de-servidor', 'Error de servidor', NULL, '<p>Lo sentimos, hubo un problema al gestionar tu solicitud.</p>', NULL, NULL, 0, 0, 8, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2003, 223, 10, 1, 1, 1, 'ContactPage', '2019-05-22 22:34:38', '2019-09-05 21:06:38', 'contacto', 'Contacto', NULL, NULL, NULL, NULL, 0, 0, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2004, 244, 7, 1, 1, 1, 'GeneralPage', '2019-05-23 21:55:54', '2019-09-06 21:27:30', 'quienes-somos', 'Quiénes somos', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'OnlyTheseUsers', 'Inherit', 0),
(2005, 244, 8, 1, 1, 1, 'GeneralPage', '2019-05-23 21:55:54', '2019-09-06 21:29:54', 'quienes-somos', 'Quiénes somos', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'OnlyTheseUsers', 'OnlyTheseUsers', 0),
(2006, 244, 9, 1, 6, 6, 'GeneralPage', '2019-05-23 21:55:54', '2019-09-06 21:33:57', 'quienes-somos', 'Quiénes somos', 'Quiénes somo', NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'OnlyTheseUsers', 'OnlyTheseUsers', 0),
(2007, 244, 10, 1, 6, 6, 'GeneralPage', '2019-05-23 21:55:54', '2019-09-06 21:34:03', 'quienes-somos', 'Quiénes somos', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'OnlyTheseUsers', 'OnlyTheseUsers', 0),
(2008, 244, 11, 1, 1, 1, 'GeneralPage', '2019-05-23 21:55:54', '2019-09-06 21:35:27', 'quienes-somos', 'Quiénes somos', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'LoggedInUsers', 'OnlyTheseUsers', 0),
(2009, 244, 12, 1, 6, 5, 'GeneralPage', '2019-05-23 21:55:54', '2019-09-06 21:35:48', 'quienes-somos', 'Quiénes somos', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Anyone', 'OnlyTheseUsers', 0),
(2010, 244, 13, 1, 5, 5, 'GeneralPage', '2019-05-23 21:55:54', '2019-09-06 21:36:41', 'quienes-somos', 'Quiénes somos', 'Quiénes somo', NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Anyone', 'OnlyTheseUsers', 0),
(2011, 244, 14, 1, 5, 5, 'GeneralPage', '2019-05-23 21:55:54', '2019-09-06 21:36:48', 'quienes-somos', 'Quiénes somos', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Anyone', 'OnlyTheseUsers', 0),
(2012, 244, 15, 1, 1, 1, 'GeneralPage', '2019-05-23 21:55:54', '2019-09-06 21:38:05', 'quienes-somos', 'Quiénes somos', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'OnlyTheseUsers', 'OnlyTheseUsers', 0),
(2013, 1, 12, 1, 1, 1, 'HomePage', '2015-07-21 17:15:05', '2019-11-07 19:27:01', 'home', 'Inicio', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2014, 300, 1, 0, 1, 0, 'FullHtmlPage', '2019-11-08 17:53:04', '2019-11-08 17:53:04', 'nuevo-paginas-con-contenido-completamente-en-html', 'Nuevo Páginas con contenido completamente en html', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2015, 300, 2, 1, 1, 1, 'FullHtmlPage', '2019-11-08 17:53:04', '2019-11-08 17:53:40', 'institucional', 'Institucional', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2016, 300, 3, 1, 1, 1, 'FullHtmlPage', '2019-11-08 17:53:04', '2019-11-08 17:53:46', 'institucional', 'Institucional', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2017, 300, 4, 1, 1, 1, 'FullHtmlPage', '2019-11-08 17:53:04', '2019-11-08 17:58:06', 'institucional', 'Institucional', NULL, '<div class="col-md-12 clear-section float-left pt-3 " id="secondary-container">\n<div class="clearfix"></div>\n<div class="row">\n<div class="col-md-4 col-12 float-left eje-box-outer-institucionales grid">\n<figure><div class="icono-eje mt-5 pl-2 pr-2"><!--span class="fas fa-file-signature"></span-->\n<div class="texto-eje h2">Plan Nacional de Propiedad Intelectual</div>\n</div>\n<figcaption><p></p>\n<a href="institucional/plan_nacional_2030.pdf.pdf">Vea más</a> </figcaption></figure></div>\n<div class="col-md-4 col-12 float-left eje-box-outer-institucionales grid">\n<figure><div class="icono-eje mt-5 pl-2 pr-2"><!--span class="fas fa-user-friends"></span-->\n<div class="texto-eje h2">Plan Estratégico Institucional</div>\n</div>\n<figcaption><p></p>\n<a href="institucional/PLAN_ESTRATEGICO_INSTITUCIONAL.pdf">Vea más</a> </figcaption></figure></div>\n<div class="col-md-4 col-12 float-left eje-box-outer-institucionales grid">\n<figure><div class="icono-eje mt-5 pl-2 pr-2"><!--span class="fas fa-user-friends"></span-->\n<div class="texto-eje h2">MECIP</div>\n</div>\n<figcaption><p></p>\n<a href="mecip.php">Vea más</a> </figcaption></figure></div>\n</div>\n<div class="row">\n<div class="col-md-4 col-12 float-left eje-box-outer-institucionales grid">\n<figure><div class="icono-eje mt-5 pl-2 pr-2"><!--span class="fas fa-file-signature"></span-->\n<div class="texto-eje h2">Misión, visión y funciones de la DINAPI</div>\n</div>\n<figcaption><p></p>\n<a href="mision_vision_funciones.php">Vea más</a> </figcaption></figure></div>\n<div class="col-md-4 col-12 float-left eje-box-outer-institucionales grid">\n<figure><div class="icono-eje mt-5 pl-2 pr-2"><!--span class="fas fa-file-signature"></span-->\n<div class="texto-eje h2">Organigrama</div>\n</div>\n<figcaption><p></p>\n<a href="organigrama.php">Vea más</a> </figcaption></figure></div>\n<div class="col-md-4 col-12 float-left eje-box-outer-institucionales grid">\n<figure><div class="icono-eje mt-5 pl-2 pr-2"><!--span class="fas fa-user-friends"></span-->\n<div class="texto-eje h2">Autoridades</div>\n</div>\n<figcaption><p></p>\n<a href="autoridades.php">Vea más</a> </figcaption></figure></div>\n</div>\n<div class="row">\n<div class="col-md-4 col-12 float-left eje-box-outer-institucionales grid">\n<figure><div class="icono-eje mt-5 pl-2 pr-2"><!--span class="fas fa-file-signature"></span-->\n<div class="texto-eje h2">Marco Normativo de la Propiedad Intelectual</div>\n</div>\n<figcaption><p></p>\n<a href="marco_normativo.php">Vea más</a> </figcaption></figure></div>\n<div class="col-md-4 col-12 float-left eje-box-outer-institucionales grid">\n<figure><div class="icono-eje mt-5 pl-2 pr-2"><!--span class="fas fa-user-friends"></span-->\n<div class="texto-eje h2">Convenios</div>\n</div>\n<figcaption><p></p>\n<a href="convenios.php">Vea más</a> </figcaption></figure></div>\n<div class="col-md-4 col-12 float-left eje-box-outer-institucionales grid">\n<figure><div class="icono-eje mt-5 pl-2 pr-2"><!--span class="fas fa-user-friends"></span-->\n<div class="texto-eje h2">Programas y Proyectos</div>\n</div>\n<figcaption><p></p>\n<a href="institucional/Proyecto_de_Ley.pdf">Vea más</a> </figcaption></figure></div>\n</div>\n<div class="row">\n<div class="col-md-4 col-12 float-left eje-box-outer-institucionales grid">\n<figure><div class="icono-eje mt-5 pl-2 pr-2"><!--span class="fas fa-file-signature"></span-->\n<div class="texto-eje h2">Acceso a la Información Pública</div>\n</div>\n<figcaption><p></p>\n<a href="informacion_publica.php">Vea más</a> </figcaption></figure></div>\n<div class="col-md-4 col-12 float-left eje-box-outer-institucionales grid">\n<figure><div class="icono-eje mt-5 pl-2 pr-2"><!--span class="fas fa-file-signature"></span-->\n<div class="texto-eje h2">Webmail</div>\n</div>\n<figcaption><p></p>\n<a href="https://sts.dinapi.gov.py/adfs/ls/?client-request-id=40a975a2-525f-47e5-9e0a-ca12d21db238&amp;username=&amp;wa=wsignin1.0&amp;wtrealm=urn%3afederation%3aMicrosoftOnline&amp;wctx=estsredirect%3d2%26estsrequest%3drQIIAY2RO2_TUACFc-PUagOIqurAUtGBCena19eJr22JigTn1SaliWhIvESxY8dO6lzHj7QJv4CtQkwdGLoRiaULiD-AlKli7I6EGBBiYiQRCxt8w9EZj77zkBE4QX2A_oDhKiGybQGa1qr9RbCV3ryM3z7uNL6U3qQXW593ruQLcKfnjrq-y_XphPOnc3DfiSI_VHmextEJpUOO2rZrWpxJPZ6edvkPAFwDME8SSZQkhAmSFElEMhGIwiFZIQQrBBpkOSVjIAXKSteCXVO0UAZh2cTGTfLu01wcOXgVNHBn1s_khk0Dr-PTMLpgXgPNjPJaWOkXCvkGqsaZWi_XKFFdP6wKmjHT6q5-QI36oGmVI31S7ZDn7olAhlLPcaTiadvMaW6xLue1M8erO4VxZXCYG-W9Z4W8d9wPnaDWKtXKRbJfjYnYak8Gs1rTHmS9yJhmA7ENO90zCDtPGmIYhn57HB_jqDyplOfMfym-YtilJ4-OFgxLfWvk9q5T4FvqNmLU9XV2E9xL7CZ-pcDl2vKKV7e47y8_vau9f6Hs2XozsVjjcatoj8kUlS2-Ze_H_vCoj4qmcRCGQTgYHuUKEu-4bbGiD8NHkiqcs-CcZb-y4Aeb-Ljxr-Nu0tsYCTJEGYizu4KkioKawfpv0">Vea más</a> </figcaption></figure></div>\n<div class="col-md-4 col-12 float-left eje-box-outer-institucionales grid">\n<figure><div class="icono-eje mt-5 pl-2 pr-2"><!--span class="fas fa-user-friends"></span-->\n<div class="texto-eje h2">Concursos</div>\n</div>\n<figcaption><p></p>\n<a href="concursos.php">Vea más</a> </figcaption></figure></div>\n</div>\n<div class="col-md-1 float-left"></div>\n</div>\n\n<div class="col-md-12 clear-section float-left clear-section pb-5 " id="noticias" v-bind:style=" heightsDivs[3] "></div>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0);
INSERT INTO `SiteTree_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `ParentID`) VALUES
(2018, 300, 5, 1, 1, 1, 'FullHtmlPage', '2019-11-08 17:53:04', '2019-11-08 17:58:08', 'institucional', 'Institucional', NULL, '<div class="col-md-12 clear-section float-left pt-3 " id="secondary-container">\n<div class="clearfix"></div>\n<div class="row">\n<div class="col-md-4 col-12 float-left eje-box-outer-institucionales grid">\n<figure><div class="icono-eje mt-5 pl-2 pr-2"><!--span class="fas fa-file-signature"></span-->\n<div class="texto-eje h2">Plan Nacional de Propiedad Intelectual</div>\n</div>\n<figcaption><p></p>\n<a href="institucional/plan_nacional_2030.pdf.pdf">Vea más</a> </figcaption></figure></div>\n<div class="col-md-4 col-12 float-left eje-box-outer-institucionales grid">\n<figure><div class="icono-eje mt-5 pl-2 pr-2"><!--span class="fas fa-user-friends"></span-->\n<div class="texto-eje h2">Plan Estratégico Institucional</div>\n</div>\n<figcaption><p></p>\n<a href="institucional/PLAN_ESTRATEGICO_INSTITUCIONAL.pdf">Vea más</a> </figcaption></figure></div>\n<div class="col-md-4 col-12 float-left eje-box-outer-institucionales grid">\n<figure><div class="icono-eje mt-5 pl-2 pr-2"><!--span class="fas fa-user-friends"></span-->\n<div class="texto-eje h2">MECIP</div>\n</div>\n<figcaption><p></p>\n<a href="mecip.php">Vea más</a> </figcaption></figure></div>\n</div>\n<div class="row">\n<div class="col-md-4 col-12 float-left eje-box-outer-institucionales grid">\n<figure><div class="icono-eje mt-5 pl-2 pr-2"><!--span class="fas fa-file-signature"></span-->\n<div class="texto-eje h2">Misión, visión y funciones de la DINAPI</div>\n</div>\n<figcaption><p></p>\n<a href="mision_vision_funciones.php">Vea más</a> </figcaption></figure></div>\n<div class="col-md-4 col-12 float-left eje-box-outer-institucionales grid">\n<figure><div class="icono-eje mt-5 pl-2 pr-2"><!--span class="fas fa-file-signature"></span-->\n<div class="texto-eje h2">Organigrama</div>\n</div>\n<figcaption><p></p>\n<a href="organigrama.php">Vea más</a> </figcaption></figure></div>\n<div class="col-md-4 col-12 float-left eje-box-outer-institucionales grid">\n<figure><div class="icono-eje mt-5 pl-2 pr-2"><!--span class="fas fa-user-friends"></span-->\n<div class="texto-eje h2">Autoridades</div>\n</div>\n<figcaption><p></p>\n<a href="autoridades.php">Vea más</a> </figcaption></figure></div>\n</div>\n<div class="row">\n<div class="col-md-4 col-12 float-left eje-box-outer-institucionales grid">\n<figure><div class="icono-eje mt-5 pl-2 pr-2"><!--span class="fas fa-file-signature"></span-->\n<div class="texto-eje h2">Marco Normativo de la Propiedad Intelectual</div>\n</div>\n<figcaption><p></p>\n<a href="marco_normativo.php">Vea más</a> </figcaption></figure></div>\n<div class="col-md-4 col-12 float-left eje-box-outer-institucionales grid">\n<figure><div class="icono-eje mt-5 pl-2 pr-2"><!--span class="fas fa-user-friends"></span-->\n<div class="texto-eje h2">Convenios</div>\n</div>\n<figcaption><p></p>\n<a href="convenios.php">Vea más</a> </figcaption></figure></div>\n<div class="col-md-4 col-12 float-left eje-box-outer-institucionales grid">\n<figure><div class="icono-eje mt-5 pl-2 pr-2"><!--span class="fas fa-user-friends"></span-->\n<div class="texto-eje h2">Programas y Proyectos</div>\n</div>\n<figcaption><p></p>\n<a href="institucional/Proyecto_de_Ley.pdf">Vea más</a> </figcaption></figure></div>\n</div>\n<div class="row">\n<div class="col-md-4 col-12 float-left eje-box-outer-institucionales grid">\n<figure><div class="icono-eje mt-5 pl-2 pr-2"><!--span class="fas fa-file-signature"></span-->\n<div class="texto-eje h2">Acceso a la Información Pública</div>\n</div>\n<figcaption><p></p>\n<a href="informacion_publica.php">Vea más</a> </figcaption></figure></div>\n<div class="col-md-4 col-12 float-left eje-box-outer-institucionales grid">\n<figure><div class="icono-eje mt-5 pl-2 pr-2"><!--span class="fas fa-file-signature"></span-->\n<div class="texto-eje h2">Webmail</div>\n</div>\n<figcaption><p></p>\n<a href="https://sts.dinapi.gov.py/adfs/ls/?client-request-id=40a975a2-525f-47e5-9e0a-ca12d21db238&amp;username=&amp;wa=wsignin1.0&amp;wtrealm=urn%3afederation%3aMicrosoftOnline&amp;wctx=estsredirect%3d2%26estsrequest%3drQIIAY2RO2_TUACFc-PUagOIqurAUtGBCena19eJr22JigTn1SaliWhIvESxY8dO6lzHj7QJv4CtQkwdGLoRiaULiD-AlKli7I6EGBBiYiQRCxt8w9EZj77zkBE4QX2A_oDhKiGybQGa1qr9RbCV3ryM3z7uNL6U3qQXW593ruQLcKfnjrq-y_XphPOnc3DfiSI_VHmextEJpUOO2rZrWpxJPZ6edvkPAFwDME8SSZQkhAmSFElEMhGIwiFZIQQrBBpkOSVjIAXKSteCXVO0UAZh2cTGTfLu01wcOXgVNHBn1s_khk0Dr-PTMLpgXgPNjPJaWOkXCvkGqsaZWi_XKFFdP6wKmjHT6q5-QI36oGmVI31S7ZDn7olAhlLPcaTiadvMaW6xLue1M8erO4VxZXCYG-W9Z4W8d9wPnaDWKtXKRbJfjYnYak8Gs1rTHmS9yJhmA7ENO90zCDtPGmIYhn57HB_jqDyplOfMfym-YtilJ4-OFgxLfWvk9q5T4FvqNmLU9XV2E9xL7CZ-pcDl2vKKV7e47y8_vau9f6Hs2XozsVjjcatoj8kUlS2-Ze_H_vCoj4qmcRCGQTgYHuUKEu-4bbGiD8NHkiqcs-CcZb-y4Aeb-Ljxr-Nu0tsYCTJEGYizu4KkioKawfpv0">Vea más</a> </figcaption></figure></div>\n<div class="col-md-4 col-12 float-left eje-box-outer-institucionales grid">\n<figure><div class="icono-eje mt-5 pl-2 pr-2"><!--span class="fas fa-user-friends"></span-->\n<div class="texto-eje h2">Concursos</div>\n</div>\n<figcaption><p></p>\n<a href="concursos.php">Vea más</a> </figcaption></figure></div>\n</div>\n<div class="col-md-1 float-left"></div>\n</div>\n<div class="col-md-12 clear-section float-left clear-section pb-5 " id="noticias" v-bind:style=" heightsDivs[3] "></div>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2019, 300, 6, 1, 1, 1, 'FullHtmlPage', '2019-11-08 17:53:04', '2019-11-08 20:04:13', 'institucional', 'Institucional', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2020, 300, 7, 1, 1, 1, 'FullHtmlPage', '2019-11-08 17:53:04', '2019-11-08 20:08:02', 'institucional', 'Institucional', NULL, '<div class="float-left secondary-header head2 head_institucional">\n<div class="header-secondary-image"></div>\n<div class="titulo-pagina-principal ml-5 mt-2 pl-2 pr-5 col-md-4">\n<div class="font-weight-bold">INSTITUCIONAL</div>\n</div>\n</div>\n<div class="col-md-12 clear-section float-left pt-3 " id="secondary-container">\n<div class="clearfix"></div>\n<div class="row">\n<div class="col-md-4 col-12 float-left eje-box-outer-institucionales grid">\n<figure><div class="icono-eje mt-5 pl-2 pr-2"><!--span class="fas fa-file-signature"></span-->\n<div class="texto-eje h2">Plan Nacional de Propiedad Intelectual</div>\n</div>\n<figcaption><p></p>\n<a href="institucional/plan_nacional_2030.pdf.pdf">Vea más</a> </figcaption></figure></div>\n<div class="col-md-4 col-12 float-left eje-box-outer-institucionales grid">\n<figure><div class="icono-eje mt-5 pl-2 pr-2"><!--span class="fas fa-user-friends"></span-->\n<div class="texto-eje h2">Plan Estratégico Institucional</div>\n</div>\n<figcaption><p></p>\n<a href="institucional/PLAN_ESTRATEGICO_INSTITUCIONAL.pdf">Vea más</a> </figcaption></figure></div>\n<div class="col-md-4 col-12 float-left eje-box-outer-institucionales grid">\n<figure><div class="icono-eje mt-5 pl-2 pr-2"><!--span class="fas fa-user-friends"></span-->\n<div class="texto-eje h2">MECIP</div>\n</div>\n<figcaption><p></p>\n<a href="mecip.php">Vea más</a> </figcaption></figure></div>\n</div>\n<div class="row">\n<div class="col-md-4 col-12 float-left eje-box-outer-institucionales grid">\n<figure><div class="icono-eje mt-5 pl-2 pr-2"><!--span class="fas fa-file-signature"></span-->\n<div class="texto-eje h2">Misión, visión y funciones de la DINAPI</div>\n</div>\n<figcaption><p></p>\n<a href="mision_vision_funciones.php">Vea más</a> </figcaption></figure></div>\n<div class="col-md-4 col-12 float-left eje-box-outer-institucionales grid">\n<figure><div class="icono-eje mt-5 pl-2 pr-2"><!--span class="fas fa-file-signature"></span-->\n<div class="texto-eje h2">Organigrama</div>\n</div>\n<figcaption><p></p>\n<a href="organigrama.php">Vea más</a> </figcaption></figure></div>\n<div class="col-md-4 col-12 float-left eje-box-outer-institucionales grid">\n<figure><div class="icono-eje mt-5 pl-2 pr-2"><!--span class="fas fa-user-friends"></span-->\n<div class="texto-eje h2">Autoridades</div>\n</div>\n<figcaption><p></p>\n<a href="autoridades.php">Vea más</a> </figcaption></figure></div>\n</div>\n<div class="row">\n<div class="col-md-4 col-12 float-left eje-box-outer-institucionales grid">\n<figure><div class="icono-eje mt-5 pl-2 pr-2"><!--span class="fas fa-file-signature"></span-->\n<div class="texto-eje h2">Marco Normativo de la Propiedad Intelectual</div>\n</div>\n<figcaption><p></p>\n<a href="marco_normativo.php">Vea más</a> </figcaption></figure></div>\n<div class="col-md-4 col-12 float-left eje-box-outer-institucionales grid">\n<figure><div class="icono-eje mt-5 pl-2 pr-2"><!--span class="fas fa-user-friends"></span-->\n<div class="texto-eje h2">Convenios</div>\n</div>\n<figcaption><p></p>\n<a href="convenios.php">Vea más</a> </figcaption></figure></div>\n<div class="col-md-4 col-12 float-left eje-box-outer-institucionales grid">\n<figure><div class="icono-eje mt-5 pl-2 pr-2"><!--span class="fas fa-user-friends"></span-->\n<div class="texto-eje h2">Programas y Proyectos</div>\n</div>\n<figcaption><p></p>\n<a href="institucional/Proyecto_de_Ley.pdf">Vea más</a> </figcaption></figure></div>\n</div>\n<div class="row">\n<div class="col-md-4 col-12 float-left eje-box-outer-institucionales grid">\n<figure><div class="icono-eje mt-5 pl-2 pr-2"><!--span class="fas fa-file-signature"></span-->\n<div class="texto-eje h2">Acceso a la Información Pública</div>\n</div>\n<figcaption><p></p>\n<a href="informacion_publica.php">Vea más</a> </figcaption></figure></div>\n<div class="col-md-4 col-12 float-left eje-box-outer-institucionales grid">\n<figure><div class="icono-eje mt-5 pl-2 pr-2"><!--span class="fas fa-file-signature"></span-->\n<div class="texto-eje h2">Webmail</div>\n</div>\n<figcaption><p></p>\n<a href="https://sts.dinapi.gov.py/adfs/ls/?client-request-id=40a975a2-525f-47e5-9e0a-ca12d21db238&amp;username=&amp;wa=wsignin1.0&amp;wtrealm=urn%3afederation%3aMicrosoftOnline&amp;wctx=estsredirect%3d2%26estsrequest%3drQIIAY2RO2_TUACFc-PUagOIqurAUtGBCena19eJr22JigTn1SaliWhIvESxY8dO6lzHj7QJv4CtQkwdGLoRiaULiD-AlKli7I6EGBBiYiQRCxt8w9EZj77zkBE4QX2A_oDhKiGybQGa1qr9RbCV3ryM3z7uNL6U3qQXW593ruQLcKfnjrq-y_XphPOnc3DfiSI_VHmextEJpUOO2rZrWpxJPZ6edvkPAFwDME8SSZQkhAmSFElEMhGIwiFZIQQrBBpkOSVjIAXKSteCXVO0UAZh2cTGTfLu01wcOXgVNHBn1s_khk0Dr-PTMLpgXgPNjPJaWOkXCvkGqsaZWi_XKFFdP6wKmjHT6q5-QI36oGmVI31S7ZDn7olAhlLPcaTiadvMaW6xLue1M8erO4VxZXCYG-W9Z4W8d9wPnaDWKtXKRbJfjYnYak8Gs1rTHmS9yJhmA7ENO90zCDtPGmIYhn57HB_jqDyplOfMfym-YtilJ4-OFgxLfWvk9q5T4FvqNmLU9XV2E9xL7CZ-pcDl2vKKV7e47y8_vau9f6Hs2XozsVjjcatoj8kUlS2-Ze_H_vCoj4qmcRCGQTgYHuUKEu-4bbGiD8NHkiqcs-CcZb-y4Aeb-Ljxr-Nu0tsYCTJEGYizu4KkioKawfpv0">Vea más</a> </figcaption></figure></div>\n<div class="col-md-4 col-12 float-left eje-box-outer-institucionales grid">\n<figure><div class="icono-eje mt-5 pl-2 pr-2"><!--span class="fas fa-user-friends"></span-->\n<div class="texto-eje h2">Concursos</div>\n</div>\n<figcaption><p></p>\n<a href="concursos.php">Vea más</a> </figcaption></figure></div>\n</div>\n<div class="col-md-1 float-left"></div>\n</div>\n\n<div class="col-md-12 clear-section float-left clear-section pb-5 " id="noticias" v-bind:style=" heightsDivs[3] "></div>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2021, 300, 8, 1, 1, 1, 'FullHtmlPage', '2019-11-08 17:53:04', '2019-11-08 20:09:14', 'institucional', 'Institucional', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2022, 301, 1, 0, 1, 0, 'InstitucionalPage', '2019-11-08 21:27:23', '2019-11-08 21:27:23', 'nuevo-pagina-institucional', 'Nuevo Página institucional', NULL, NULL, NULL, NULL, 1, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2023, 301, 2, 1, 1, 1, 'InstitucionalPage', '2019-11-08 21:27:23', '2019-11-08 21:28:33', 'institucional-2', 'Institucional', NULL, NULL, NULL, NULL, 1, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2024, 300, 9, 1, 1, 1, 'FullHtmlPage', '2019-11-08 17:53:04', '2019-11-10 22:21:07', 'institucional', 'Institucional', NULL, '<div class="float-left secondary-header head2 head_institucional">\n<div class="header-secondary-image"></div>\n<div class="titulo-pagina-principal ml-5 mt-2 pl-2 pr-5 col-md-4">\n<div class="font-weight-bold">INSTITUCIONAL</div>\n</div>\n</div>\n<div class="col-md-12 clear-section float-left pt-3 " id="secondary-container">\n<div class="clearfix"></div>\n<div class="row">\n<div class="col-md-4 col-12 float-left eje-box-outer-institucionales grid">\n<figure><div class="icono-eje mt-5 pl-2 pr-2"><!--span class="fas fa-file-signature"></span-->\n<div class="texto-eje h2">Plan Nacional de Propiedad Intelectual</div>\n</div>\n<figcaption><p></p>\n<a href="institucional/plan_nacional_2030.pdf.pdf">Vea más</a> </figcaption></figure></div>\n<div class="col-md-4 col-12 float-left eje-box-outer-institucionales grid">\n<figure><div class="icono-eje mt-5 pl-2 pr-2"><!--span class="fas fa-user-friends"></span-->\n<div class="texto-eje h2">Plan Estratégico Institucional</div>\n</div>\n<figcaption><p></p>\n<a href="institucional/PLAN_ESTRATEGICO_INSTITUCIONAL.pdf">Vea más</a> </figcaption></figure></div>\n<div class="col-md-4 col-12 float-left eje-box-outer-institucionales grid">\n<figure><div class="icono-eje mt-5 pl-2 pr-2"><!--span class="fas fa-user-friends"></span-->\n<div class="texto-eje h2">MECIP</div>\n</div>\n<figcaption><p></p>\n<a href="mecip.php">Vea más</a> </figcaption></figure></div>\n</div>\n<div class="row">\n<div class="col-md-4 col-12 float-left eje-box-outer-institucionales grid">\n<figure><div class="icono-eje mt-5 pl-2 pr-2"><!--span class="fas fa-file-signature"></span-->\n<div class="texto-eje h2">Misión, visión y funciones de la DINAPI</div>\n</div>\n<figcaption><p></p>\n<a href="mision_vision_funciones.php">Vea más</a> </figcaption></figure></div>\n<div class="col-md-4 col-12 float-left eje-box-outer-institucionales grid">\n<figure><div class="icono-eje mt-5 pl-2 pr-2"><!--span class="fas fa-file-signature"></span-->\n<div class="texto-eje h2">Organigrama</div>\n</div>\n<figcaption><p></p>\n<a href="organigrama.php">Vea más</a> </figcaption></figure></div>\n<div class="col-md-4 col-12 float-left eje-box-outer-institucionales grid">\n<figure><div class="icono-eje mt-5 pl-2 pr-2"><!--span class="fas fa-user-friends"></span-->\n<div class="texto-eje h2">Autoridades</div>\n</div>\n<figcaption><p></p>\n<a href="autoridades.php">Vea más</a> </figcaption></figure></div>\n</div>\n<div class="row">\n<div class="col-md-4 col-12 float-left eje-box-outer-institucionales grid">\n<figure><div class="icono-eje mt-5 pl-2 pr-2"><!--span class="fas fa-file-signature"></span-->\n<div class="texto-eje h2">Marco Normativo de la Propiedad Intelectual</div>\n</div>\n<figcaption><p></p>\n<a href="marco_normativo.php">Vea más</a> </figcaption></figure></div>\n<div class="col-md-4 col-12 float-left eje-box-outer-institucionales grid">\n<figure><div class="icono-eje mt-5 pl-2 pr-2"><!--span class="fas fa-user-friends"></span-->\n<div class="texto-eje h2">Convenios</div>\n</div>\n<figcaption><p></p>\n<a href="convenios.php">Vea más</a> </figcaption></figure></div>\n<div class="col-md-4 col-12 float-left eje-box-outer-institucionales grid">\n<figure><div class="icono-eje mt-5 pl-2 pr-2"><!--span class="fas fa-user-friends"></span-->\n<div class="texto-eje h2">Programas y Proyectos</div>\n</div>\n<figcaption><p></p>\n<a href="institucional/Proyecto_de_Ley.pdf">Vea más</a> </figcaption></figure></div>\n</div>\n<div class="row">\n<div class="col-md-4 col-12 float-left eje-box-outer-institucionales grid">\n<figure><div class="icono-eje mt-5 pl-2 pr-2"><!--span class="fas fa-file-signature"></span-->\n<div class="texto-eje h2">Acceso a la Información Pública</div>\n</div>\n<figcaption><p></p>\n<a href="informacion_publica.php">Vea más</a> </figcaption></figure></div>\n<div class="col-md-4 col-12 float-left eje-box-outer-institucionales grid">\n<figure><div class="icono-eje mt-5 pl-2 pr-2"><!--span class="fas fa-file-signature"></span-->\n<div class="texto-eje h2">Webmail</div>\n</div>\n<figcaption><p></p>\n<a href="https://sts.dinapi.gov.py/adfs/ls/?client-request-id=40a975a2-525f-47e5-9e0a-ca12d21db238&amp;username=&amp;wa=wsignin1.0&amp;wtrealm=urn%3afederation%3aMicrosoftOnline&amp;wctx=estsredirect%3d2%26estsrequest%3drQIIAY2RO2_TUACFc-PUagOIqurAUtGBCena19eJr22JigTn1SaliWhIvESxY8dO6lzHj7QJv4CtQkwdGLoRiaULiD-AlKli7I6EGBBiYiQRCxt8w9EZj77zkBE4QX2A_oDhKiGybQGa1qr9RbCV3ryM3z7uNL6U3qQXW593ruQLcKfnjrq-y_XphPOnc3DfiSI_VHmextEJpUOO2rZrWpxJPZ6edvkPAFwDME8SSZQkhAmSFElEMhGIwiFZIQQrBBpkOSVjIAXKSteCXVO0UAZh2cTGTfLu01wcOXgVNHBn1s_khk0Dr-PTMLpgXgPNjPJaWOkXCvkGqsaZWi_XKFFdP6wKmjHT6q5-QI36oGmVI31S7ZDn7olAhlLPcaTiadvMaW6xLue1M8erO4VxZXCYG-W9Z4W8d9wPnaDWKtXKRbJfjYnYak8Gs1rTHmS9yJhmA7ENO90zCDtPGmIYhn57HB_jqDyplOfMfym-YtilJ4-OFgxLfWvk9q5T4FvqNmLU9XV2E9xL7CZ-pcDl2vKKV7e47y8_vau9f6Hs2XozsVjjcatoj8kUlS2-Ze_H_vCoj4qmcRCGQTgYHuUKEu-4bbGiD8NHkiqcs-CcZb-y4Aeb-Ljxr-Nu0tsYCTJEGYizu4KkioKawfpv0">Vea más</a> </figcaption></figure></div>\n<div class="col-md-4 col-12 float-left eje-box-outer-institucionales grid">\n<figure><div class="icono-eje mt-5 pl-2 pr-2"><!--span class="fas fa-user-friends"></span-->\n<div class="texto-eje h2">Concursos</div>\n</div>\n<figcaption><p></p>\n<a href="concursos.php">Vea más</a> </figcaption></figure></div>\n</div>\n<div class="col-md-1 float-left"></div>\n</div>\n\n<div class="col-md-12 clear-section float-left clear-section pb-5 " id="noticias" v-bind:style=" heightsDivs[3] "></div>\n\n<p></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2025, 301, 3, 1, 1, 1, 'InstitucionalPage', '2019-11-08 21:27:23', '2019-11-10 22:23:43', 'institucional-2', 'Institucional', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2026, 301, 4, 1, 1, 1, 'InstitucionalPage', '2019-11-08 21:27:23', '2019-11-10 22:24:21', 'institucional', 'Institucional', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2027, 302, 1, 0, 1, 0, 'TarjetaPage', '2019-11-10 22:46:02', '2019-11-10 22:46:02', 'nuevo-pagina-de-tarjeta', 'Nuevo Página de tarjeta', NULL, NULL, NULL, NULL, 1, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2028, 302, 2, 1, 1, 1, 'TarjetaPage', '2019-11-10 22:46:02', '2019-11-10 22:47:41', 'derecho-de-autor', 'Derecho de Autor', NULL, NULL, NULL, NULL, 1, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2029, 302, 3, 1, 1, 1, 'TarjetaPage', '2019-11-10 22:46:02', '2019-11-10 22:47:51', 'derecho-de-autor', 'Derecho de Autor', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2030, 303, 1, 0, 1, 0, 'Page', '2019-11-10 23:15:28', '2019-11-10 23:15:28', 'nuevo-pagina', 'Nuevo Página', NULL, NULL, NULL, NULL, 1, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2031, 303, 2, 1, 1, 1, 'Page', '2019-11-10 23:15:28', '2019-11-10 23:15:51', 'propiedad-industrial', 'Propiedad Industrial', NULL, NULL, NULL, NULL, 1, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2032, 303, 3, 1, 1, 1, 'Page', '2019-11-10 23:15:28', '2019-11-10 23:15:56', 'propiedad-industrial', 'Propiedad Industrial', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2033, 304, 1, 0, 1, 0, 'TarjetaPage', '2019-11-10 23:34:14', '2019-11-10 23:34:14', 'nuevo-pagina-de-tarjeta', 'Nuevo Página de tarjeta', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 303),
(2034, 304, 2, 1, 1, 1, 'TarjetaPage', '2019-11-10 23:34:14', '2019-11-10 23:35:07', 'marcas', 'Marcas', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 303),
(2035, 305, 1, 0, 1, 0, 'TarjetaPage', '2019-11-10 23:43:28', '2019-11-10 23:43:28', 'nuevo-pagina-de-tarjeta', 'Nuevo Página de tarjeta', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 303),
(2036, 305, 2, 1, 1, 1, 'TarjetaPage', '2019-11-10 23:43:28', '2019-11-10 23:44:26', 'patentes', 'Patentes', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 303);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `SiteTree_ViewerGroups`
--

CREATE TABLE IF NOT EXISTS `SiteTree_ViewerGroups` (
  `ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `SiteTree_ViewerGroups`
--

INSERT INTO `SiteTree_ViewerGroups` (`ID`, `SiteTreeID`, `GroupID`) VALUES
(1, 244, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `SubmittedFileField`
--

CREATE TABLE IF NOT EXISTS `SubmittedFileField` (
  `ID` int(11) NOT NULL,
  `UploadedFileID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `SubmittedForm`
--

CREATE TABLE IF NOT EXISTS `SubmittedForm` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SubmittedForm') DEFAULT 'SubmittedForm',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `SubmittedByID` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `SubmittedFormField`
--

CREATE TABLE IF NOT EXISTS `SubmittedFormField` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SubmittedFormField','SubmittedFileField') DEFAULT 'SubmittedFormField',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Value` mediumtext,
  `Title` varchar(255) DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `SucursalObject`
--

CREATE TABLE IF NOT EXISTS `SucursalObject` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SucursalObject') DEFAULT 'SucursalObject',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  `Direccion` varchar(255) DEFAULT NULL,
  `HorarioAtencion` mediumtext,
  `Email` varchar(255) DEFAULT NULL,
  `Latitud` varchar(255) DEFAULT NULL,
  `Longitud` varchar(255) DEFAULT NULL,
  `FotoID` int(11) NOT NULL DEFAULT '0',
  `Telefono` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `SucursalObject`
--

INSERT INTO `SucursalObject` (`ID`, `ClassName`, `Created`, `LastEdited`, `Nombre`, `Direccion`, `HorarioAtencion`, `Email`, `Latitud`, `Longitud`, `FotoID`, `Telefono`) VALUES
(1, 'SucursalObject', '2015-09-11 16:26:24', '2019-05-31 17:42:15', 'Casa Matriz', 'R.I. 18 Pitiantuta casi Capitán Nicolás Blinoff', ' ', 'comercial@avalon.com.py', '-25.304322', '-57.563932', 674, '(+595) 21 611-308 / 611-336');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Tarjeta`
--

CREATE TABLE IF NOT EXISTS `Tarjeta` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Tarjeta') DEFAULT 'Tarjeta',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Titulo` varchar(255) DEFAULT NULL,
  `LinkInterno` int(11) NOT NULL DEFAULT '0',
  `LinkExterno` varchar(255) DEFAULT NULL,
  `PaginaID` int(11) NOT NULL DEFAULT '0',
  `ImagenID` int(11) NOT NULL DEFAULT '0',
  `Subtitulo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Tarjeta`
--

INSERT INTO `Tarjeta` (`ID`, `ClassName`, `Created`, `LastEdited`, `Titulo`, `LinkInterno`, `LinkExterno`, `PaginaID`, `ImagenID`, `Subtitulo`) VALUES
(1, 'Tarjeta', '2019-11-10 23:05:50', '2019-11-10 23:05:50', 'Registro de Derecho de Autor y Derechos Conexos', 301, NULL, 302, 734, NULL),
(2, 'Tarjeta', '2019-11-10 23:07:32', '2019-11-10 23:07:32', 'Industrias Creativas y Promoción del Folklore', 0, 'https://www.facebook.com/', 302, 735, NULL),
(3, 'Tarjeta', '2019-11-10 23:08:28', '2019-11-10 23:08:28', 'Sociedades de Gestión Colectiva', 1, NULL, 302, 736, NULL),
(5, 'Tarjeta', '2019-11-10 23:35:38', '2019-11-10 23:35:38', 'Información Relevante', 301, NULL, 304, 739, NULL),
(6, 'Tarjeta', '2019-11-10 23:37:29', '2019-11-10 23:37:29', 'Gestionar Trámites', 301, NULL, 304, 734, NULL),
(7, 'Tarjeta', '2019-11-10 23:38:27', '2019-11-10 23:38:27', 'Consultas y Herramientas', 301, NULL, 304, 740, NULL),
(8, 'Tarjeta', '2019-11-10 23:38:51', '2019-11-10 23:38:51', 'Clasificación NIZA', 301, NULL, 304, 741, NULL),
(9, 'Tarjeta', '2019-11-10 23:39:21', '2019-11-10 23:39:21', 'Boletines de Marcas', 0, NULL, 304, 742, NULL),
(10, 'Tarjeta', '2019-11-10 23:45:47', '2019-11-10 23:45:47', 'Información Relevante', 301, NULL, 305, 739, NULL),
(11, 'Tarjeta', '2019-11-10 23:47:04', '2019-11-10 23:47:04', 'Gestionar Trámites', 0, NULL, 305, 734, NULL),
(12, 'Tarjeta', '2019-11-10 23:47:30', '2019-11-10 23:47:30', 'Consultas y Herramientas', 0, NULL, 305, 740, NULL),
(13, 'Tarjeta', '2019-11-10 23:47:51', '2019-11-10 23:47:51', 'Boletines de Patentes', 0, NULL, 305, 742, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TarjetaPage`
--

CREATE TABLE IF NOT EXISTS `TarjetaPage` (
  `ID` int(11) NOT NULL,
  `Titulo` varchar(255) DEFAULT NULL,
  `ImagenID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=306 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `TarjetaPage`
--

INSERT INTO `TarjetaPage` (`ID`, `Titulo`, `ImagenID`) VALUES
(302, 'Derecho de Autor y Derechos Conexos', 732),
(304, 'Marcas', 738),
(305, 'Patentes', 743);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TarjetaPage_Live`
--

CREATE TABLE IF NOT EXISTS `TarjetaPage_Live` (
  `ID` int(11) NOT NULL,
  `Titulo` varchar(255) DEFAULT NULL,
  `ImagenID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=306 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `TarjetaPage_Live`
--

INSERT INTO `TarjetaPage_Live` (`ID`, `Titulo`, `ImagenID`) VALUES
(302, 'Derecho de Autor y Derechos Conexos', 732),
(304, 'Marcas', 738),
(305, 'Patentes', 743);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TarjetaPage_versions`
--

CREATE TABLE IF NOT EXISTS `TarjetaPage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Titulo` varchar(255) DEFAULT NULL,
  `ImagenID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `TarjetaPage_versions`
--

INSERT INTO `TarjetaPage_versions` (`ID`, `RecordID`, `Version`, `Titulo`, `ImagenID`) VALUES
(1, 302, 1, NULL, 0),
(2, 302, 2, 'Derecho de Autor y Derechos Conexos', 732),
(3, 302, 3, 'Derecho de Autor y Derechos Conexos', 732),
(4, 304, 1, NULL, 0),
(5, 304, 2, 'Marcas', 738),
(6, 305, 1, NULL, 0),
(7, 305, 2, 'Patentes', 743);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Telefono`
--

CREATE TABLE IF NOT EXISTS `Telefono` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Telefono') DEFAULT 'Telefono',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Telefono` varchar(12) DEFAULT NULL,
  `Mensaje` mediumtext,
  `ImagenID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Telefono`
--

INSERT INTO `Telefono` (`ID`, `ClassName`, `Created`, `LastEdited`, `Telefono`, `Mensaje`, `ImagenID`) VALUES
(1, 'Telefono', '2019-08-27 22:33:16', '2019-08-27 22:41:41', '595994683545', 'Buenas Tardes Jhony! He visitado http://www.avalon.com.py/ tengo mas preguntas.', 0),
(2, 'Telefono', '2019-08-27 22:55:32', '2019-08-27 22:55:50', '595961822311', 'Buenas Tardes Marcos! He visitado http://www.avalon.com.py/ tengo mas preguntas.', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TemaEje`
--

CREATE TABLE IF NOT EXISTS `TemaEje` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('TemaEje') DEFAULT 'TemaEje',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  `Link` int(11) NOT NULL DEFAULT '0',
  `Eje` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `TemaEje`
--

INSERT INTO `TemaEje` (`ID`, `ClassName`, `Created`, `LastEdited`, `Nombre`, `Link`, `Eje`) VALUES
(1, 'TemaEje', '2019-11-07 19:40:25', '2019-11-07 19:40:25', 'Marcas', 295, '1'),
(2, 'TemaEje', '2019-11-07 19:42:31', '2019-11-07 19:42:31', 'Patentes', 244, '1'),
(3, 'TemaEje', '2019-11-07 19:42:49', '2019-11-07 19:42:54', 'IG/DO', 295, '1'),
(4, 'TemaEje', '2019-11-07 19:43:06', '2019-11-07 19:43:06', 'Dibujos y Modelos Industriales', 176, '1'),
(5, 'TemaEje', '2019-11-07 19:43:17', '2019-11-07 19:43:17', 'Gestiones Administrativas', 295, '1'),
(6, 'TemaEje', '2019-11-07 19:43:53', '2019-11-07 19:43:53', 'Derecho de Autor y Derechos Conexos', 224, '2'),
(7, 'TemaEje', '2019-11-07 19:44:05', '2019-11-07 19:44:05', 'Industrias Creativas y Folklore', 224, '2'),
(8, 'TemaEje', '2019-11-07 19:44:19', '2019-11-07 19:44:19', 'Sociedades de Gestión Colectiva', 224, '2'),
(9, 'TemaEje', '2019-11-07 19:44:48', '2019-11-07 19:44:48', 'Información Relevante DGO', 244, '3'),
(10, 'TemaEje', '2019-11-07 19:44:59', '2019-11-07 19:44:59', 'Áreas de Observancia', 223, '3'),
(11, 'TemaEje', '2019-11-07 19:45:13', '2019-11-07 19:45:13', 'Denuncias Ciudadanas', 224, '3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `UserDefinedForm`
--

CREATE TABLE IF NOT EXISTS `UserDefinedForm` (
  `ID` int(11) NOT NULL,
  `SubmitButtonText` varchar(50) DEFAULT NULL,
  `ClearButtonText` varchar(50) DEFAULT NULL,
  `OnCompleteMessage` mediumtext,
  `ShowClearButton` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisableSaveSubmissions` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `EnableLiveValidation` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HideFieldLabels` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisplayErrorMessagesAtTop` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisableAuthenicatedFinishAction` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisableCsrfSecurityToken` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=299 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `UserDefinedForm_EmailRecipient`
--

CREATE TABLE IF NOT EXISTS `UserDefinedForm_EmailRecipient` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('UserDefinedForm_EmailRecipient') DEFAULT 'UserDefinedForm_EmailRecipient',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `EmailAddress` varchar(200) DEFAULT NULL,
  `EmailSubject` varchar(200) DEFAULT NULL,
  `EmailFrom` varchar(200) DEFAULT NULL,
  `EmailReplyTo` varchar(200) DEFAULT NULL,
  `EmailBody` mediumtext,
  `EmailBodyHtml` mediumtext,
  `EmailTemplate` varchar(50) DEFAULT NULL,
  `SendPlain` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HideFormData` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `CustomRulesCondition` enum('And','Or') DEFAULT 'And',
  `FormID` int(11) NOT NULL DEFAULT '0',
  `SendEmailFromFieldID` int(11) NOT NULL DEFAULT '0',
  `SendEmailToFieldID` int(11) NOT NULL DEFAULT '0',
  `SendEmailSubjectFieldID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `UserDefinedForm_EmailRecipientCondition`
--

CREATE TABLE IF NOT EXISTS `UserDefinedForm_EmailRecipientCondition` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('UserDefinedForm_EmailRecipientCondition') DEFAULT 'UserDefinedForm_EmailRecipientCondition',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `ConditionOption` enum('IsBlank','IsNotBlank','Equals','NotEquals') DEFAULT 'IsBlank',
  `ConditionValue` varchar(50) DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `ConditionFieldID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `UserDefinedForm_Live`
--

CREATE TABLE IF NOT EXISTS `UserDefinedForm_Live` (
  `ID` int(11) NOT NULL,
  `SubmitButtonText` varchar(50) DEFAULT NULL,
  `ClearButtonText` varchar(50) DEFAULT NULL,
  `OnCompleteMessage` mediumtext,
  `ShowClearButton` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisableSaveSubmissions` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `EnableLiveValidation` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HideFieldLabels` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisplayErrorMessagesAtTop` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisableAuthenicatedFinishAction` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisableCsrfSecurityToken` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=299 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `UserDefinedForm_versions`
--

CREATE TABLE IF NOT EXISTS `UserDefinedForm_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `SubmitButtonText` varchar(50) DEFAULT NULL,
  `ClearButtonText` varchar(50) DEFAULT NULL,
  `OnCompleteMessage` mediumtext,
  `ShowClearButton` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisableSaveSubmissions` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `EnableLiveValidation` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HideFieldLabels` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisplayErrorMessagesAtTop` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisableAuthenicatedFinishAction` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisableCsrfSecurityToken` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `UserDefinedForm_versions`
--

INSERT INTO `UserDefinedForm_versions` (`ID`, `RecordID`, `Version`, `SubmitButtonText`, `ClearButtonText`, `OnCompleteMessage`, `ShowClearButton`, `DisableSaveSubmissions`, `EnableLiveValidation`, `HideFieldLabels`, `DisplayErrorMessagesAtTop`, `DisableAuthenicatedFinishAction`, `DisableCsrfSecurityToken`) VALUES
(5, 298, 1, NULL, NULL, '<p>Thanks, we''ve received your submission.</p>', 0, 0, 0, 0, 0, 0, 0),
(6, 298, 2, NULL, NULL, '<p>Thanks, we''ve received your submission.</p>', 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `VirtualPage`
--

CREATE TABLE IF NOT EXISTS `VirtualPage` (
  `ID` int(11) NOT NULL,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=152 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `VirtualPage`
--

INSERT INTO `VirtualPage` (`ID`, `VersionID`, `CopyContentFromID`) VALUES
(69, 0, 26);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `VirtualPage_Live`
--

CREATE TABLE IF NOT EXISTS `VirtualPage_Live` (
  `ID` int(11) NOT NULL,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=152 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `VirtualPage_Live`
--

INSERT INTO `VirtualPage_Live` (`ID`, `VersionID`, `CopyContentFromID`) VALUES
(69, 0, 26),
(67, 0, 0),
(9, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `VirtualPage_versions`
--

CREATE TABLE IF NOT EXISTS `VirtualPage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `_obsolete_HomePage`
--

CREATE TABLE IF NOT EXISTS `_obsolete_HomePage` (
  `ID` int(11) NOT NULL,
  `LinkBiblioteca` int(11) NOT NULL DEFAULT '0',
  `ImagenSliderID` int(11) NOT NULL DEFAULT '0',
  `ImagenBibliotecaID` int(11) NOT NULL DEFAULT '0',
  `LeyendaHomePage` varchar(255) DEFAULT NULL,
  `LeyendaHomePageBottom` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `_obsolete_HomePage`
--

INSERT INTO `_obsolete_HomePage` (`ID`, `LinkBiblioteca`, `ImagenSliderID`, `ImagenBibliotecaID`, `LeyendaHomePage`, `LeyendaHomePageBottom`) VALUES
(1, 220, 667, 666, ' 	    	    Somos especialistas en asesoramiento financiero e intermediación 	de valores en el ámbito de mercado de valores con el fin de atender las necesidades de nuestros clientes, a través de nuestro excelente equipo de profesionales. ', 244);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `_obsolete_HomePage_Live`
--

CREATE TABLE IF NOT EXISTS `_obsolete_HomePage_Live` (
  `ID` int(11) NOT NULL,
  `LinkBiblioteca` int(11) NOT NULL DEFAULT '0',
  `ImagenSliderID` int(11) NOT NULL DEFAULT '0',
  `ImagenBibliotecaID` int(11) NOT NULL DEFAULT '0',
  `LeyendaHomePage` varchar(255) DEFAULT NULL,
  `LeyendaHomePageBottom` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `_obsolete_HomePage_Live`
--

INSERT INTO `_obsolete_HomePage_Live` (`ID`, `LinkBiblioteca`, `ImagenSliderID`, `ImagenBibliotecaID`, `LeyendaHomePage`, `LeyendaHomePageBottom`) VALUES
(1, 220, 667, 666, ' 	    	    Somos especialistas en asesoramiento financiero e intermediación 	de valores en el ámbito de mercado de valores con el fin de atender las necesidades de nuestros clientes, a través de nuestro excelente equipo de profesionales. ', 244);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `_obsolete_HomePage_versions`
--

CREATE TABLE IF NOT EXISTS `_obsolete_HomePage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `LinkBiblioteca` int(11) NOT NULL DEFAULT '0',
  `ImagenSliderID` int(11) NOT NULL DEFAULT '0',
  `ImagenBibliotecaID` int(11) NOT NULL DEFAULT '0',
  `LeyendaHomePage` varchar(255) DEFAULT NULL,
  `LeyendaHomePageBottom` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `_obsolete_HomePage_versions`
--

INSERT INTO `_obsolete_HomePage_versions` (`ID`, `RecordID`, `Version`, `LinkBiblioteca`, `ImagenSliderID`, `ImagenBibliotecaID`, `LeyendaHomePage`, `LeyendaHomePageBottom`) VALUES
(1, 1, 2, 0, 0, 0, NULL, 0),
(2, 1, 3, 0, 665, 666, NULL, 0),
(3, 1, 4, 0, 665, 666, 'Marquitos Jacobramina', 0),
(4, 1, 5, 0, 665, 666, ' 	    	    Somos especialistas en asesoramiento financiero e intermediación 	de valores en el ámbito de mercado de valores con el fin de atender las necesidades de nuestros clientes, a través de nuestro excelente equipo de profesionales. ', 0),
(5, 1, 6, 0, 665, 666, ' 	    	    Somos especialistas en asesoramiento financiero e intermediación 	de valores en el ámbito de mercado de valores con el fin de atender las necesidades de nuestros clientes, a través de nuestro excelente equipo de profesionales. ', 0),
(6, 1, 7, 220, 665, 666, ' 	    	    Somos especialistas en asesoramiento financiero e intermediación 	de valores en el ámbito de mercado de valores con el fin de atender las necesidades de nuestros clientes, a través de nuestro excelente equipo de profesionales. ', 0),
(7, 1, 8, 220, 665, 666, ' 	    	    Somos especialistas en asesoramiento financiero e intermediación 	de valores en el ámbito de mercado de valores con el fin de atender las necesidades de nuestros clientes, a través de nuestro excelente equipo de profesionales. ', 244),
(8, 1, 9, 220, 665, 666, ' 	    	    Somos especialistas en asesoramiento financiero e intermediación 	de valores en el ámbito de mercado de valores con el fin de atender las necesidades de nuestros clientes, a través de nuestro excelente equipo de profesionales. ', 0),
(9, 1, 10, 220, 665, 666, ' 	    	    Somos especialistas en asesoramiento financiero e intermediación 	de valores en el ámbito de mercado de valores con el fin de atender las necesidades de nuestros clientes, a través de nuestro excelente equipo de profesionales. ', 244),
(10, 1, 11, 220, 667, 666, ' 	    	    Somos especialistas en asesoramiento financiero e intermediación 	de valores en el ámbito de mercado de valores con el fin de atender las necesidades de nuestros clientes, a través de nuestro excelente equipo de profesionales. ', 244),
(11, 1, 12, 220, 667, 666, ' 	    	    Somos especialistas en asesoramiento financiero e intermediación 	de valores en el ámbito de mercado de valores con el fin de atender las necesidades de nuestros clientes, a través de nuestro excelente equipo de profesionales. ', 244);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `AcordeonPage`
--
ALTER TABLE `AcordeonPage`
  ADD PRIMARY KEY (`ID`), ADD KEY `ImagenID` (`ImagenID`);

--
-- Indices de la tabla `AcordeonPage_Live`
--
ALTER TABLE `AcordeonPage_Live`
  ADD PRIMARY KEY (`ID`), ADD KEY `ImagenID` (`ImagenID`);

--
-- Indices de la tabla `AcordeonPage_versions`
--
ALTER TABLE `AcordeonPage_versions`
  ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`), ADD KEY `ImagenID` (`ImagenID`);

--
-- Indices de la tabla `Anuncio`
--
ALTER TABLE `Anuncio`
  ADD PRIMARY KEY (`ID`), ADD KEY `ImagenID` (`ImagenID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indices de la tabla `Banner`
--
ALTER TABLE `Banner`
  ADD PRIMARY KEY (`ID`), ADD KEY `ImagenID` (`ImagenID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indices de la tabla `Carousel`
--
ALTER TABLE `Carousel`
  ADD PRIMARY KEY (`ID`), ADD KEY `ImagenID` (`ImagenID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indices de la tabla `ContactPage`
--
ALTER TABLE `ContactPage`
  ADD PRIMARY KEY (`ID`), ADD KEY `ImagenID` (`ImagenID`);

--
-- Indices de la tabla `ContactPage_Live`
--
ALTER TABLE `ContactPage_Live`
  ADD PRIMARY KEY (`ID`), ADD KEY `ImagenID` (`ImagenID`);

--
-- Indices de la tabla `ContactPage_versions`
--
ALTER TABLE `ContactPage_versions`
  ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`), ADD KEY `ImagenID` (`ImagenID`);

--
-- Indices de la tabla `EditableCustomRule`
--
ALTER TABLE `EditableCustomRule`
  ADD PRIMARY KEY (`ID`), ADD KEY `ParentID` (`ParentID`), ADD KEY `ConditionFieldID` (`ConditionFieldID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indices de la tabla `EditableCustomRule_Live`
--
ALTER TABLE `EditableCustomRule_Live`
  ADD PRIMARY KEY (`ID`), ADD KEY `ParentID` (`ParentID`), ADD KEY `ConditionFieldID` (`ConditionFieldID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indices de la tabla `EditableCustomRule_versions`
--
ALTER TABLE `EditableCustomRule_versions`
  ADD PRIMARY KEY (`ID`), ADD KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`), ADD KEY `AuthorID` (`AuthorID`), ADD KEY `PublisherID` (`PublisherID`), ADD KEY `ParentID` (`ParentID`), ADD KEY `ConditionFieldID` (`ConditionFieldID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indices de la tabla `EditableFieldGroup`
--
ALTER TABLE `EditableFieldGroup`
  ADD PRIMARY KEY (`ID`), ADD KEY `EndID` (`EndID`);

--
-- Indices de la tabla `EditableFieldGroup_Live`
--
ALTER TABLE `EditableFieldGroup_Live`
  ADD PRIMARY KEY (`ID`), ADD KEY `EndID` (`EndID`);

--
-- Indices de la tabla `EditableFieldGroup_versions`
--
ALTER TABLE `EditableFieldGroup_versions`
  ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`), ADD KEY `EndID` (`EndID`);

--
-- Indices de la tabla `EditableFormField`
--
ALTER TABLE `EditableFormField`
  ADD PRIMARY KEY (`ID`), ADD KEY `ParentID` (`ParentID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indices de la tabla `EditableFormField_Live`
--
ALTER TABLE `EditableFormField_Live`
  ADD PRIMARY KEY (`ID`), ADD KEY `ParentID` (`ParentID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indices de la tabla `EditableFormField_versions`
--
ALTER TABLE `EditableFormField_versions`
  ADD PRIMARY KEY (`ID`), ADD KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`), ADD KEY `AuthorID` (`AuthorID`), ADD KEY `PublisherID` (`PublisherID`), ADD KEY `ParentID` (`ParentID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indices de la tabla `EditableOption`
--
ALTER TABLE `EditableOption`
  ADD PRIMARY KEY (`ID`), ADD KEY `ParentID` (`ParentID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indices de la tabla `EditableOption_Live`
--
ALTER TABLE `EditableOption_Live`
  ADD PRIMARY KEY (`ID`), ADD KEY `ParentID` (`ParentID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indices de la tabla `EditableOption_versions`
--
ALTER TABLE `EditableOption_versions`
  ADD PRIMARY KEY (`ID`), ADD KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`), ADD KEY `AuthorID` (`AuthorID`), ADD KEY `PublisherID` (`PublisherID`), ADD KEY `ParentID` (`ParentID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indices de la tabla `EnlaceInteres`
--
ALTER TABLE `EnlaceInteres`
  ADD PRIMARY KEY (`ID`), ADD KEY `ImagenID` (`ImagenID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indices de la tabla `EnlaceUtil`
--
ALTER TABLE `EnlaceUtil`
  ADD PRIMARY KEY (`ID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indices de la tabla `ErrorPage`
--
ALTER TABLE `ErrorPage`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `ErrorPage_Live`
--
ALTER TABLE `ErrorPage_Live`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `ErrorPage_versions`
--
ALTER TABLE `ErrorPage_versions`
  ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`);

--
-- Indices de la tabla `File`
--
ALTER TABLE `File`
  ADD PRIMARY KEY (`ID`), ADD KEY `ParentID` (`ParentID`), ADD KEY `OwnerID` (`OwnerID`), ADD KEY `ClassName` (`ClassName`), ADD FULLTEXT KEY `SearchFields` (`Filename`,`Title`,`Content`);

--
-- Indices de la tabla `GeneralPage`
--
ALTER TABLE `GeneralPage`
  ADD PRIMARY KEY (`ID`), ADD KEY `ImagenID` (`ImagenID`);

--
-- Indices de la tabla `GeneralPage_Live`
--
ALTER TABLE `GeneralPage_Live`
  ADD PRIMARY KEY (`ID`), ADD KEY `ImagenID` (`ImagenID`);

--
-- Indices de la tabla `GeneralPage_versions`
--
ALTER TABLE `GeneralPage_versions`
  ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`), ADD KEY `ImagenID` (`ImagenID`);

--
-- Indices de la tabla `Group`
--
ALTER TABLE `Group`
  ADD PRIMARY KEY (`ID`), ADD KEY `ParentID` (`ParentID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indices de la tabla `Group_Members`
--
ALTER TABLE `Group_Members`
  ADD PRIMARY KEY (`ID`), ADD KEY `GroupID` (`GroupID`), ADD KEY `MemberID` (`MemberID`);

--
-- Indices de la tabla `Group_Roles`
--
ALTER TABLE `Group_Roles`
  ADD PRIMARY KEY (`ID`), ADD KEY `GroupID` (`GroupID`), ADD KEY `PermissionRoleID` (`PermissionRoleID`);

--
-- Indices de la tabla `Institucional`
--
ALTER TABLE `Institucional`
  ADD PRIMARY KEY (`ID`), ADD KEY `PaginaID` (`PaginaID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indices de la tabla `InstitucionalPage`
--
ALTER TABLE `InstitucionalPage`
  ADD PRIMARY KEY (`ID`), ADD KEY `ImagenID` (`ImagenID`);

--
-- Indices de la tabla `InstitucionalPage_Live`
--
ALTER TABLE `InstitucionalPage_Live`
  ADD PRIMARY KEY (`ID`), ADD KEY `ImagenID` (`ImagenID`);

--
-- Indices de la tabla `InstitucionalPage_versions`
--
ALTER TABLE `InstitucionalPage_versions`
  ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`), ADD KEY `ImagenID` (`ImagenID`);

--
-- Indices de la tabla `LoginAttempt`
--
ALTER TABLE `LoginAttempt`
  ADD PRIMARY KEY (`ID`), ADD KEY `MemberID` (`MemberID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indices de la tabla `Member`
--
ALTER TABLE `Member`
  ADD PRIMARY KEY (`ID`), ADD KEY `Email` (`Email`), ADD KEY `ClassName` (`ClassName`);

--
-- Indices de la tabla `MemberPassword`
--
ALTER TABLE `MemberPassword`
  ADD PRIMARY KEY (`ID`), ADD KEY `MemberID` (`MemberID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indices de la tabla `MensajeContacto`
--
ALTER TABLE `MensajeContacto`
  ADD PRIMARY KEY (`ID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indices de la tabla `MensajeNews`
--
ALTER TABLE `MensajeNews`
  ADD PRIMARY KEY (`ID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indices de la tabla `PaginaArticulo`
--
ALTER TABLE `PaginaArticulo`
  ADD PRIMARY KEY (`ID`), ADD KEY `ImagenID` (`ImagenID`);

--
-- Indices de la tabla `PaginaArticulo_Live`
--
ALTER TABLE `PaginaArticulo_Live`
  ADD PRIMARY KEY (`ID`), ADD KEY `ImagenID` (`ImagenID`);

--
-- Indices de la tabla `PaginaArticulo_versions`
--
ALTER TABLE `PaginaArticulo_versions`
  ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`), ADD KEY `ImagenID` (`ImagenID`);

--
-- Indices de la tabla `Permission`
--
ALTER TABLE `Permission`
  ADD PRIMARY KEY (`ID`), ADD KEY `GroupID` (`GroupID`), ADD KEY `Code` (`Code`), ADD KEY `ClassName` (`ClassName`);

--
-- Indices de la tabla `PermissionRole`
--
ALTER TABLE `PermissionRole`
  ADD PRIMARY KEY (`ID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indices de la tabla `PermissionRoleCode`
--
ALTER TABLE `PermissionRoleCode`
  ADD PRIMARY KEY (`ID`), ADD KEY `RoleID` (`RoleID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indices de la tabla `PreguntaFrecuente`
--
ALTER TABLE `PreguntaFrecuente`
  ADD PRIMARY KEY (`ID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indices de la tabla `PreguntasFrecuentesPage`
--
ALTER TABLE `PreguntasFrecuentesPage`
  ADD PRIMARY KEY (`ID`), ADD KEY `ImagenID` (`ImagenID`);

--
-- Indices de la tabla `PreguntasFrecuentesPage_Live`
--
ALTER TABLE `PreguntasFrecuentesPage_Live`
  ADD PRIMARY KEY (`ID`), ADD KEY `ImagenID` (`ImagenID`);

--
-- Indices de la tabla `PreguntasFrecuentesPage_versions`
--
ALTER TABLE `PreguntasFrecuentesPage_versions`
  ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`), ADD KEY `ImagenID` (`ImagenID`);

--
-- Indices de la tabla `RedirectorPage`
--
ALTER TABLE `RedirectorPage`
  ADD PRIMARY KEY (`ID`), ADD KEY `LinkToID` (`LinkToID`);

--
-- Indices de la tabla `RedirectorPage_Live`
--
ALTER TABLE `RedirectorPage_Live`
  ADD PRIMARY KEY (`ID`), ADD KEY `LinkToID` (`LinkToID`);

--
-- Indices de la tabla `RedirectorPage_versions`
--
ALTER TABLE `RedirectorPage_versions`
  ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`), ADD KEY `LinkToID` (`LinkToID`);

--
-- Indices de la tabla `SiteConfig`
--
ALTER TABLE `SiteConfig`
  ADD PRIMARY KEY (`ID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indices de la tabla `SiteConfig_CreateTopLevelGroups`
--
ALTER TABLE `SiteConfig_CreateTopLevelGroups`
  ADD PRIMARY KEY (`ID`), ADD KEY `SiteConfigID` (`SiteConfigID`), ADD KEY `GroupID` (`GroupID`);

--
-- Indices de la tabla `SiteConfig_EditorGroups`
--
ALTER TABLE `SiteConfig_EditorGroups`
  ADD PRIMARY KEY (`ID`), ADD KEY `SiteConfigID` (`SiteConfigID`), ADD KEY `GroupID` (`GroupID`);

--
-- Indices de la tabla `SiteConfig_ViewerGroups`
--
ALTER TABLE `SiteConfig_ViewerGroups`
  ADD PRIMARY KEY (`ID`), ADD KEY `SiteConfigID` (`SiteConfigID`), ADD KEY `GroupID` (`GroupID`);

--
-- Indices de la tabla `SiteTree`
--
ALTER TABLE `SiteTree`
  ADD PRIMARY KEY (`ID`), ADD KEY `ParentID` (`ParentID`), ADD KEY `URLSegment` (`URLSegment`), ADD KEY `ClassName` (`ClassName`), ADD FULLTEXT KEY `SearchFields` (`Title`,`MenuTitle`,`Content`,`MetaDescription`);

--
-- Indices de la tabla `SiteTree_EditorGroups`
--
ALTER TABLE `SiteTree_EditorGroups`
  ADD PRIMARY KEY (`ID`), ADD KEY `SiteTreeID` (`SiteTreeID`), ADD KEY `GroupID` (`GroupID`);

--
-- Indices de la tabla `SiteTree_ImageTracking`
--
ALTER TABLE `SiteTree_ImageTracking`
  ADD PRIMARY KEY (`ID`), ADD KEY `SiteTreeID` (`SiteTreeID`), ADD KEY `FileID` (`FileID`);

--
-- Indices de la tabla `SiteTree_LinkTracking`
--
ALTER TABLE `SiteTree_LinkTracking`
  ADD PRIMARY KEY (`ID`), ADD KEY `SiteTreeID` (`SiteTreeID`), ADD KEY `ChildID` (`ChildID`);

--
-- Indices de la tabla `SiteTree_Live`
--
ALTER TABLE `SiteTree_Live`
  ADD PRIMARY KEY (`ID`), ADD KEY `ParentID` (`ParentID`), ADD KEY `URLSegment` (`URLSegment`), ADD KEY `ClassName` (`ClassName`), ADD FULLTEXT KEY `SearchFields` (`Title`,`MenuTitle`,`Content`,`MetaDescription`);

--
-- Indices de la tabla `SiteTree_versions`
--
ALTER TABLE `SiteTree_versions`
  ADD PRIMARY KEY (`ID`), ADD KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`), ADD KEY `AuthorID` (`AuthorID`), ADD KEY `PublisherID` (`PublisherID`), ADD KEY `ParentID` (`ParentID`), ADD KEY `URLSegment` (`URLSegment`), ADD KEY `ClassName` (`ClassName`), ADD FULLTEXT KEY `SearchFields` (`Title`,`MenuTitle`,`Content`,`MetaDescription`);

--
-- Indices de la tabla `SiteTree_ViewerGroups`
--
ALTER TABLE `SiteTree_ViewerGroups`
  ADD PRIMARY KEY (`ID`), ADD KEY `SiteTreeID` (`SiteTreeID`), ADD KEY `GroupID` (`GroupID`);

--
-- Indices de la tabla `SubmittedFileField`
--
ALTER TABLE `SubmittedFileField`
  ADD PRIMARY KEY (`ID`), ADD KEY `UploadedFileID` (`UploadedFileID`);

--
-- Indices de la tabla `SubmittedForm`
--
ALTER TABLE `SubmittedForm`
  ADD PRIMARY KEY (`ID`), ADD KEY `SubmittedByID` (`SubmittedByID`), ADD KEY `ParentID` (`ParentID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indices de la tabla `SubmittedFormField`
--
ALTER TABLE `SubmittedFormField`
  ADD PRIMARY KEY (`ID`), ADD KEY `ParentID` (`ParentID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indices de la tabla `SucursalObject`
--
ALTER TABLE `SucursalObject`
  ADD PRIMARY KEY (`ID`), ADD KEY `FotoID` (`FotoID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indices de la tabla `Tarjeta`
--
ALTER TABLE `Tarjeta`
  ADD PRIMARY KEY (`ID`), ADD KEY `PaginaID` (`PaginaID`), ADD KEY `ImagenID` (`ImagenID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indices de la tabla `TarjetaPage`
--
ALTER TABLE `TarjetaPage`
  ADD PRIMARY KEY (`ID`), ADD KEY `ImagenID` (`ImagenID`);

--
-- Indices de la tabla `TarjetaPage_Live`
--
ALTER TABLE `TarjetaPage_Live`
  ADD PRIMARY KEY (`ID`), ADD KEY `ImagenID` (`ImagenID`);

--
-- Indices de la tabla `TarjetaPage_versions`
--
ALTER TABLE `TarjetaPage_versions`
  ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`), ADD KEY `ImagenID` (`ImagenID`);

--
-- Indices de la tabla `Telefono`
--
ALTER TABLE `Telefono`
  ADD PRIMARY KEY (`ID`), ADD KEY `ImagenID` (`ImagenID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indices de la tabla `TemaEje`
--
ALTER TABLE `TemaEje`
  ADD PRIMARY KEY (`ID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indices de la tabla `UserDefinedForm`
--
ALTER TABLE `UserDefinedForm`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `UserDefinedForm_EmailRecipient`
--
ALTER TABLE `UserDefinedForm_EmailRecipient`
  ADD PRIMARY KEY (`ID`), ADD KEY `FormID` (`FormID`), ADD KEY `SendEmailFromFieldID` (`SendEmailFromFieldID`), ADD KEY `SendEmailToFieldID` (`SendEmailToFieldID`), ADD KEY `SendEmailSubjectFieldID` (`SendEmailSubjectFieldID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indices de la tabla `UserDefinedForm_EmailRecipientCondition`
--
ALTER TABLE `UserDefinedForm_EmailRecipientCondition`
  ADD PRIMARY KEY (`ID`), ADD KEY `ParentID` (`ParentID`), ADD KEY `ConditionFieldID` (`ConditionFieldID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indices de la tabla `UserDefinedForm_Live`
--
ALTER TABLE `UserDefinedForm_Live`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `UserDefinedForm_versions`
--
ALTER TABLE `UserDefinedForm_versions`
  ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`);

--
-- Indices de la tabla `VirtualPage`
--
ALTER TABLE `VirtualPage`
  ADD PRIMARY KEY (`ID`), ADD KEY `CopyContentFromID` (`CopyContentFromID`);

--
-- Indices de la tabla `VirtualPage_Live`
--
ALTER TABLE `VirtualPage_Live`
  ADD PRIMARY KEY (`ID`), ADD KEY `CopyContentFromID` (`CopyContentFromID`);

--
-- Indices de la tabla `VirtualPage_versions`
--
ALTER TABLE `VirtualPage_versions`
  ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`), ADD KEY `CopyContentFromID` (`CopyContentFromID`);

--
-- Indices de la tabla `_obsolete_HomePage`
--
ALTER TABLE `_obsolete_HomePage`
  ADD PRIMARY KEY (`ID`), ADD KEY `ImagenSliderID` (`ImagenSliderID`), ADD KEY `ImagenBibliotecaID` (`ImagenBibliotecaID`);

--
-- Indices de la tabla `_obsolete_HomePage_Live`
--
ALTER TABLE `_obsolete_HomePage_Live`
  ADD PRIMARY KEY (`ID`), ADD KEY `ImagenSliderID` (`ImagenSliderID`), ADD KEY `ImagenBibliotecaID` (`ImagenBibliotecaID`);

--
-- Indices de la tabla `_obsolete_HomePage_versions`
--
ALTER TABLE `_obsolete_HomePage_versions`
  ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`), ADD KEY `ImagenSliderID` (`ImagenSliderID`), ADD KEY `ImagenBibliotecaID` (`ImagenBibliotecaID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `AcordeonPage`
--
ALTER TABLE `AcordeonPage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=177;
--
-- AUTO_INCREMENT de la tabla `AcordeonPage_Live`
--
ALTER TABLE `AcordeonPage_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=177;
--
-- AUTO_INCREMENT de la tabla `AcordeonPage_versions`
--
ALTER TABLE `AcordeonPage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `Anuncio`
--
ALTER TABLE `Anuncio`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `Banner`
--
ALTER TABLE `Banner`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT de la tabla `Carousel`
--
ALTER TABLE `Carousel`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `ContactPage`
--
ALTER TABLE `ContactPage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=224;
--
-- AUTO_INCREMENT de la tabla `ContactPage_Live`
--
ALTER TABLE `ContactPage_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=224;
--
-- AUTO_INCREMENT de la tabla `ContactPage_versions`
--
ALTER TABLE `ContactPage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `EditableCustomRule`
--
ALTER TABLE `EditableCustomRule`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `EditableCustomRule_Live`
--
ALTER TABLE `EditableCustomRule_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `EditableCustomRule_versions`
--
ALTER TABLE `EditableCustomRule_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `EditableFieldGroup`
--
ALTER TABLE `EditableFieldGroup`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `EditableFieldGroup_Live`
--
ALTER TABLE `EditableFieldGroup_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `EditableFieldGroup_versions`
--
ALTER TABLE `EditableFieldGroup_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `EditableFormField`
--
ALTER TABLE `EditableFormField`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `EditableFormField_Live`
--
ALTER TABLE `EditableFormField_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `EditableFormField_versions`
--
ALTER TABLE `EditableFormField_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT de la tabla `EditableOption`
--
ALTER TABLE `EditableOption`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `EditableOption_Live`
--
ALTER TABLE `EditableOption_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `EditableOption_versions`
--
ALTER TABLE `EditableOption_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `EnlaceInteres`
--
ALTER TABLE `EnlaceInteres`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `EnlaceUtil`
--
ALTER TABLE `EnlaceUtil`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `ErrorPage`
--
ALTER TABLE `ErrorPage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `ErrorPage_Live`
--
ALTER TABLE `ErrorPage_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `ErrorPage_versions`
--
ALTER TABLE `ErrorPage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `File`
--
ALTER TABLE `File`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=744;
--
-- AUTO_INCREMENT de la tabla `GeneralPage`
--
ALTER TABLE `GeneralPage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=298;
--
-- AUTO_INCREMENT de la tabla `GeneralPage_Live`
--
ALTER TABLE `GeneralPage_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=298;
--
-- AUTO_INCREMENT de la tabla `GeneralPage_versions`
--
ALTER TABLE `GeneralPage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=161;
--
-- AUTO_INCREMENT de la tabla `Group`
--
ALTER TABLE `Group`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `Group_Members`
--
ALTER TABLE `Group_Members`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `Group_Roles`
--
ALTER TABLE `Group_Roles`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `Institucional`
--
ALTER TABLE `Institucional`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `InstitucionalPage`
--
ALTER TABLE `InstitucionalPage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=302;
--
-- AUTO_INCREMENT de la tabla `InstitucionalPage_Live`
--
ALTER TABLE `InstitucionalPage_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=302;
--
-- AUTO_INCREMENT de la tabla `InstitucionalPage_versions`
--
ALTER TABLE `InstitucionalPage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `LoginAttempt`
--
ALTER TABLE `LoginAttempt`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `Member`
--
ALTER TABLE `Member`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `MemberPassword`
--
ALTER TABLE `MemberPassword`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `MensajeContacto`
--
ALTER TABLE `MensajeContacto`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `MensajeNews`
--
ALTER TABLE `MensajeNews`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `PaginaArticulo`
--
ALTER TABLE `PaginaArticulo`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=286;
--
-- AUTO_INCREMENT de la tabla `PaginaArticulo_Live`
--
ALTER TABLE `PaginaArticulo_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=263;
--
-- AUTO_INCREMENT de la tabla `PaginaArticulo_versions`
--
ALTER TABLE `PaginaArticulo_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT de la tabla `Permission`
--
ALTER TABLE `Permission`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `PermissionRole`
--
ALTER TABLE `PermissionRole`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `PermissionRoleCode`
--
ALTER TABLE `PermissionRoleCode`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `PreguntaFrecuente`
--
ALTER TABLE `PreguntaFrecuente`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `PreguntasFrecuentesPage`
--
ALTER TABLE `PreguntasFrecuentesPage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=248;
--
-- AUTO_INCREMENT de la tabla `PreguntasFrecuentesPage_Live`
--
ALTER TABLE `PreguntasFrecuentesPage_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=227;
--
-- AUTO_INCREMENT de la tabla `PreguntasFrecuentesPage_versions`
--
ALTER TABLE `PreguntasFrecuentesPage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `RedirectorPage`
--
ALTER TABLE `RedirectorPage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=195;
--
-- AUTO_INCREMENT de la tabla `RedirectorPage_Live`
--
ALTER TABLE `RedirectorPage_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=195;
--
-- AUTO_INCREMENT de la tabla `RedirectorPage_versions`
--
ALTER TABLE `RedirectorPage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT de la tabla `SiteConfig`
--
ALTER TABLE `SiteConfig`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `SiteConfig_CreateTopLevelGroups`
--
ALTER TABLE `SiteConfig_CreateTopLevelGroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `SiteConfig_EditorGroups`
--
ALTER TABLE `SiteConfig_EditorGroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `SiteConfig_ViewerGroups`
--
ALTER TABLE `SiteConfig_ViewerGroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `SiteTree`
--
ALTER TABLE `SiteTree`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=306;
--
-- AUTO_INCREMENT de la tabla `SiteTree_EditorGroups`
--
ALTER TABLE `SiteTree_EditorGroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `SiteTree_ImageTracking`
--
ALTER TABLE `SiteTree_ImageTracking`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1165;
--
-- AUTO_INCREMENT de la tabla `SiteTree_LinkTracking`
--
ALTER TABLE `SiteTree_LinkTracking`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `SiteTree_Live`
--
ALTER TABLE `SiteTree_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=306;
--
-- AUTO_INCREMENT de la tabla `SiteTree_versions`
--
ALTER TABLE `SiteTree_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2037;
--
-- AUTO_INCREMENT de la tabla `SiteTree_ViewerGroups`
--
ALTER TABLE `SiteTree_ViewerGroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `SubmittedFileField`
--
ALTER TABLE `SubmittedFileField`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `SubmittedForm`
--
ALTER TABLE `SubmittedForm`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `SubmittedFormField`
--
ALTER TABLE `SubmittedFormField`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `SucursalObject`
--
ALTER TABLE `SucursalObject`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `Tarjeta`
--
ALTER TABLE `Tarjeta`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `TarjetaPage`
--
ALTER TABLE `TarjetaPage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=306;
--
-- AUTO_INCREMENT de la tabla `TarjetaPage_Live`
--
ALTER TABLE `TarjetaPage_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=306;
--
-- AUTO_INCREMENT de la tabla `TarjetaPage_versions`
--
ALTER TABLE `TarjetaPage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `Telefono`
--
ALTER TABLE `Telefono`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `TemaEje`
--
ALTER TABLE `TemaEje`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `UserDefinedForm`
--
ALTER TABLE `UserDefinedForm`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=299;
--
-- AUTO_INCREMENT de la tabla `UserDefinedForm_EmailRecipient`
--
ALTER TABLE `UserDefinedForm_EmailRecipient`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `UserDefinedForm_EmailRecipientCondition`
--
ALTER TABLE `UserDefinedForm_EmailRecipientCondition`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `UserDefinedForm_Live`
--
ALTER TABLE `UserDefinedForm_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=299;
--
-- AUTO_INCREMENT de la tabla `UserDefinedForm_versions`
--
ALTER TABLE `UserDefinedForm_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `VirtualPage`
--
ALTER TABLE `VirtualPage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=152;
--
-- AUTO_INCREMENT de la tabla `VirtualPage_Live`
--
ALTER TABLE `VirtualPage_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=152;
--
-- AUTO_INCREMENT de la tabla `VirtualPage_versions`
--
ALTER TABLE `VirtualPage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `_obsolete_HomePage`
--
ALTER TABLE `_obsolete_HomePage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `_obsolete_HomePage_Live`
--
ALTER TABLE `_obsolete_HomePage_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `_obsolete_HomePage_versions`
--
ALTER TABLE `_obsolete_HomePage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
