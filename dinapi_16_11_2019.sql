-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-11-2019 a las 17:03:51
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
-- Estructura de tabla para la tabla `Acordeon`
--

CREATE TABLE IF NOT EXISTS `Acordeon` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Acordeon') DEFAULT 'Acordeon',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Titulo` varchar(255) DEFAULT NULL,
  `Content` mediumtext,
  `AdjuntoID` int(11) NOT NULL DEFAULT '0',
  `TituloAdjunto` varchar(255) DEFAULT NULL,
  `PaginaID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Acordeon`
--

INSERT INTO `Acordeon` (`ID`, `ClassName`, `Created`, `LastEdited`, `Titulo`, `Content`, `AdjuntoID`, `TituloAdjunto`, `PaginaID`) VALUES
(1, 'Acordeon', '2019-11-13 15:48:25', '2019-11-13 15:48:25', 'REQUISITOS PARA REGISTRAR: ACTOS, CONVENIOS Y CONTRATOS', '<ol><li>Presentar la solicitud de registro (completada en computadora o manualmente), en tres ejemplares (podría ser un original y dos fotocopias). La solicitud puede ser descargada de la página web de la DINAPI o retirada de la unidad de Mesa de Entrada de la Dirección General de Derecho de Autor y Derechos Conexos.</li>\n<li>Presentar el documento a ser registrado para el depósito legal de la obra.</li>\n<li>Presentar una fotocopia simple de cédula de identidad de los intervinientes.</li>\n<li>Abonar la tasa correspondiente.</li>\n<li>Retirar y publicar edicto por un día en un diario de gran circulación o especializado.</li>\n<li>Acercar a la Dirección General de Derecho de Autor y Derechos Conexos, la publicación del edicto, sin recortarla, de tal manera a que se aprecie la fecha de publicación y en qué diario fue hecha, acompañada de la orden de publicación original o fotocopia de la misma, y retirar en ese momento el Título de Concesión del Registro (para Actos, Convenios y Contratos, el Título de concesión del registro se prepara inmediatamente, una vez presentada la publicación del edicto).</li>\n</ol><p>Estos trámites pueden ser realizados por el autor o su representante, a través de una simple autorización.</p>', 872, 'Formulario de Registro Nro. 018', 345),
(2, 'Acordeon', '2019-11-13 15:49:13', '2019-11-13 15:49:13', 'REQUISITOS PARA REGISTRAR: EDITORIALES MUSICALES', '<ol><li>Presentar la solicitud de registro, en dos ejemplares (podría ser un original y una fotocopia). La solicitud puede ser descargada de la página web institucional (Formulario 027) o retirada de la unidad de Mesa de Entrada de la DGDAC, dependiente de la DINAPI.</li>\n<li>Presentar copia autenticada de la siguiente documentación para procesar la solicitud: 1) Acta de constitución de sociedad o matrícula de comerciante. 2) Registro Único de Contribuyente. 3) Declaración Jurada de domicilio comercial de su casa matriz, sucursales, filiales. 4) Acta de asamblea por la cual se designa director o apoderado, en caso de ser persona jurídica.</li>\n<li>Abonar tasa correspondiente.</li>\n<li>Retirar y Publicar edicto por un día en un diario de gran circulación o especializado (DINAPI facilita el texto). El interesado selecciona el diario donde hará la publicación.</li>\n<li>Acercar a la Dirección General de Derecho de Autor y Derechos Conexos la publicación del edicto, sin recortarla, de tal manera a que se aprecie la fecha de publicación y en qué diario fue hecha, acompañada de la orden de publicación original o fotocopia de la misma, y Retirar en ese momento, el Título de Concesión del Registro (para registro de Editoriales Musicales, el título de concesión del registro se prepara inmediatamente, una vez presentada la publicación del edicto).</li>\n</ol><p>Estos trámites pueden ser realizados por el autor o su representante, a través de carta poder.</p>', 873, 'Formulario de Registro Nro. 027', 345);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `AcordeonPage`
--

CREATE TABLE IF NOT EXISTS `AcordeonPage` (
  `ID` int(11) NOT NULL,
  `ImagenID` int(11) NOT NULL DEFAULT '0',
  `TituloPadre` varchar(255) DEFAULT NULL,
  `TituloAnexo` varchar(255) DEFAULT NULL,
  `AnexoID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=346 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `AcordeonPage`
--

INSERT INTO `AcordeonPage` (`ID`, `ImagenID`, `TituloPadre`, `TituloAnexo`, `AnexoID`) VALUES
(345, 867, 'DERECHO DE AUTOR Y DERECHOS CONEXOS', 'Anexo de Titulares', 870);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `AcordeonPage_Live`
--

CREATE TABLE IF NOT EXISTS `AcordeonPage_Live` (
  `ID` int(11) NOT NULL,
  `ImagenID` int(11) NOT NULL DEFAULT '0',
  `TituloPadre` varchar(255) DEFAULT NULL,
  `TituloAnexo` varchar(255) DEFAULT NULL,
  `AnexoID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=346 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `AcordeonPage_Live`
--

INSERT INTO `AcordeonPage_Live` (`ID`, `ImagenID`, `TituloPadre`, `TituloAnexo`, `AnexoID`) VALUES
(345, 867, 'DERECHO DE AUTOR Y DERECHOS CONEXOS', 'Anexo de Titulares', 870);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `AcordeonPage_versions`
--

CREATE TABLE IF NOT EXISTS `AcordeonPage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ImagenID` int(11) NOT NULL DEFAULT '0',
  `TituloPadre` varchar(255) DEFAULT NULL,
  `TituloAnexo` varchar(255) DEFAULT NULL,
  `AnexoID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `AcordeonPage_versions`
--

INSERT INTO `AcordeonPage_versions` (`ID`, `RecordID`, `Version`, `ImagenID`, `TituloPadre`, `TituloAnexo`, `AnexoID`) VALUES
(1, 176, 8, 668, NULL, NULL, 0),
(2, 176, 9, 668, NULL, NULL, 0),
(3, 176, 10, 668, NULL, NULL, 0),
(4, 176, 11, 668, NULL, NULL, 0),
(5, 345, 1, 0, NULL, NULL, 0),
(6, 345, 2, 867, 'DERECHO DE AUTOR Y DERECHOS CONEXOS', NULL, 0),
(7, 345, 3, 867, 'DERECHO DE AUTOR Y DERECHOS CONEXOS', NULL, 870),
(8, 345, 4, 867, 'DERECHO DE AUTOR Y DERECHOS CONEXOS', NULL, 870),
(9, 345, 5, 867, 'DERECHO DE AUTOR Y DERECHOS CONEXOS', 'Anexo de Titulares', 870);

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
-- Estructura de tabla para la tabla `Archivo`
--

CREATE TABLE IF NOT EXISTS `Archivo` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Archivo') DEFAULT 'Archivo',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Titulo` varchar(255) DEFAULT NULL,
  `LinkExterno` varchar(255) DEFAULT NULL,
  `PdfID` int(11) NOT NULL DEFAULT '0',
  `PaginaID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Archivo`
--

INSERT INTO `Archivo` (`ID`, `ClassName`, `Created`, `LastEdited`, `Titulo`, `LinkExterno`, `PdfID`, `PaginaID`) VALUES
(4, 'Archivo', '2019-11-12 18:53:03', '2019-11-13 01:14:37', 'Constitución Política de la República de Paraguay (1992)', NULL, 859, 340),
(5, 'Archivo', '2019-11-13 01:14:17', '2019-11-13 01:14:17', 'Ley 4798/12 Que crea la Dirección Nacional de Propiedad Intelectual', NULL, 0, 340),
(6, 'Archivo', '2019-11-13 01:18:51', '2019-11-13 01:18:51', 'Constitución Política de la República de Paraguay (1992)', NULL, 0, 343),
(7, 'Archivo', '2019-11-13 01:19:09', '2019-11-13 01:19:09', 'Ley 4798/12 Que crea la Dirección Nacional de Propiedad Intelectual', NULL, 0, 343),
(8, 'Archivo', '2019-11-13 01:19:49', '2019-11-13 01:19:49', 'Ley N° 1.630-2000 de Patentes de Invenciones (modificada por última vez por la Ley N° 2.593-2005) (2005)', NULL, 0, 344),
(9, 'Archivo', '2019-11-13 01:20:07', '2019-11-13 01:20:07', 'Ley N° 1.294-1998 de Marcas 1998', NULL, 0, 344),
(10, 'Archivo', '2019-11-13 01:48:28', '2019-11-13 01:48:28', 'CONVENIO MARCO DE COOPERACIÓN INTERINSTITUCIONAL ENTRE LA FACULTAD DE CIENCIAS SOCIALES Y POLITICAS DE LA UNIVERSIDAD NACIONAL DE CAAGUAZU Y LA DIRECCIÓN NACIONAL DE PROPIEDAD INTELECTUAL 10/07/2019', NULL, 0, 338),
(11, 'Archivo', '2019-11-14 15:08:58', '2019-11-14 15:08:58', 'CONVENIO MARCO DE COOPERACIÓN INTERINSTITUCIONAL ENTRE LA FEDERACIÓN DE INDUSTRIAS CREATIVAS DEL PARAGUAY Y LA DIRECCION NACIONAL DE PROPIEDAD INTELECTUAL 10/07/2019', NULL, 849, 338),
(12, 'Archivo', '2019-11-14 15:09:38', '2019-11-14 15:09:38', 'CONVENIO DE COOPERACIÓN INTERINSTITUCIONAL ENTRE LA UNIVERSIDAD NACIONAL DE VILLARRICA DEL ESPÍRITU SANTO Y LA DIRECCIÓN NACIONAL DE PROPIEDAD INTELECTUAL 10/07/2019', NULL, 850, 338),
(13, 'Archivo', '2019-11-14 15:13:28', '2019-11-14 15:13:28', 'CONVENIO DE COOPERACIÓN INTERINSTITUCIONAL ENTRE LA FACULTAD POLITÉCNICA DE LA UNIVERSIDAD NACIONAL DE ASUNCIÓN Y LA DIRECCIÓN NACIONAL DE PROPIEDAD INTELECTUAL', NULL, 881, 338),
(14, 'Archivo', '2019-11-14 15:14:01', '2019-11-14 15:14:01', 'CONVENIO MARCO DE COOPERACIÓN INTERINSTITUCIONAL ENTRE LA FUNDACIÓN PARQUE TECNOLÓGICO ITAIPU - PARAGUAY (FPTI-PY) Y LA DIRECCIÓN NACIONAL DE PROPIEDAD INTELECTUAL - DINAPI', NULL, 882, 338),
(15, 'Archivo', '2019-11-14 15:14:32', '2019-11-14 15:14:32', 'CONVENIO MARCO DE COOPERACIÓN INTERINSTITUCIONAL ENTRE LA DIRECCIÓN NACIONAL DE PROPIEDAD INTELECUTAL (DINAPI) Y LA UNIVERSIDAD NACIONAL DEL ESTE (UNE) 28/07/2017', NULL, 883, 338),
(16, 'Archivo', '2019-11-14 15:15:33', '2019-11-14 15:15:33', 'CONVENIO MARCO DE COLABORACIÓN INSTITUCIONAL ENTRE ASIPI Y DINAPI', NULL, 884, 338),
(17, 'Archivo', '2019-11-14 15:16:27', '2019-11-14 15:16:27', 'AL CONVENIO MARCO DE COOPERACION INTERINSTITUCIONAL ENTRE LA SECRETARÍA NACIONAL DE CULTURA (SNC) Y LA DIRECCIÓN NACIONAL DE PROPIEDAD INTELECTUAL (DINAPI)', NULL, 859, 338),
(18, 'Archivo', '2019-11-14 15:17:02', '2019-11-14 15:17:02', 'CONVENIO DINAPI-MEC 17/11/16', NULL, 885, 338),
(19, 'Archivo', '2019-11-14 15:17:33', '2019-11-14 15:17:33', 'Convenio Marco de Cooperación Técnica y Fortalecimiento Institucional que celebran, por una parte la Comisión Nacional de la Competencia - CONACOM Y LA DINAPI.', NULL, 886, 338),
(20, 'Archivo', '2019-11-14 15:18:26', '2019-11-14 15:18:26', 'Convenio MIPYMES', NULL, 887, 338),
(21, 'Archivo', '2019-11-14 15:18:58', '2019-11-14 15:18:58', 'CONVENIO DE COOPERACION FOX LATIN AMERICAN CHANEL, LLC - DINAPI 17/11/16', NULL, 888, 338),
(22, 'Archivo', '2019-11-14 15:19:29', '2019-11-14 15:19:29', ' Convenios CONVENIO MARCO DE COOPERACIÓN INTERINSTITUCIONAL ENTRE LA FACULTAD DE CIENCIAS SOCIALES Y POLITICAS DE LA UNIVERSIDAD NACIONAL DE CAAGUAZU Y LA DIRECCIÓN NACIONAL DE PROPIEDAD INTELECTUAL 10/07/2019 CONVENIO MARCO DE COOPERACIÓN INTERINSTITUCIO', NULL, 889, 338),
(23, 'Archivo', '2019-11-14 15:20:03', '2019-11-14 15:20:03', 'CONVENIO DE COOPERACIÓN TÉCNICA ENTRE DINAPI Y LA CISAC', NULL, 890, 338),
(24, 'Archivo', '2019-11-14 15:20:35', '2019-11-14 15:20:35', 'PROTOCOLO ACUERDO DE COOP. SIST. DE COOP. EN PI PROSUR - PROSUL', NULL, 891, 338),
(25, 'Archivo', '2019-11-14 15:20:55', '2019-11-14 15:20:55', 'CONVENIO DINAPI-CONATEL', NULL, 892, 338),
(26, 'Archivo', '2019-11-14 15:21:20', '2019-11-14 15:21:20', 'MEMORANDUM DE ENTENDIMIENTO OMPI - DINAPI', NULL, 893, 338),
(27, 'Archivo', '2019-11-14 15:22:26', '2019-11-14 15:22:26', 'CONVENIO DINAPI-SENATIC''s ACUERDO ESPECÍFICO N° 1', NULL, 894, 338),
(28, 'Archivo', '2019-11-14 15:24:23', '2019-11-14 15:24:23', 'CONVENIO MARCO DE COOPERACIÓN INTERINSTITUCIONAL ENTRE EL INSTITUTO PARAGUAYO DE ARTESANÍA IPA) Y LA DIRECCIÓN NACIONAL DE PROPIEDAD INTELECTUAL (DINAPI) 26/12/2018', NULL, 895, 338),
(29, 'Archivo', '2019-11-14 15:25:18', '2019-11-14 15:25:18', 'CONVENIO DINAPI-FADA UNA 02.12.15', NULL, 896, 338),
(30, 'Archivo', '2019-11-14 15:27:51', '2019-11-14 15:27:51', 'MEMORANDUM DE ENTENDIMIENTO PROGRAMA PILOTO PATENTES SIST. COOP. PROP. INDUS. PROSUR - PROSUL', NULL, 0, 338),
(31, 'Archivo', '2019-11-14 15:27:51', '2019-11-14 15:27:51', 'MEMORANDUM DE ENTENDIMIENTO PROGRAMA PILOTO PATENTES SIST. COOP. PROP. INDUS. PROSUR - PROSUL', NULL, 0, 338),
(32, 'Archivo', '2019-11-14 15:27:52', '2019-11-14 15:27:52', 'MEMORANDUM DE ENTENDIMIENTO PROGRAMA PILOTO PATENTES SIST. COOP. PROP. INDUS. PROSUR - PROSUL', NULL, 0, 338),
(33, 'Archivo', '2019-11-14 15:27:53', '2019-11-14 15:27:53', 'MEMORANDUM DE ENTENDIMIENTO PROGRAMA PILOTO PATENTES SIST. COOP. PROP. INDUS. PROSUR - PROSUL', NULL, 0, 338),
(34, 'Archivo', '2019-11-14 15:27:54', '2019-11-14 15:27:54', 'MEMORANDUM DE ENTENDIMIENTO PROGRAMA PILOTO PATENTES SIST. COOP. PROP. INDUS. PROSUR - PROSUL', NULL, 0, 338),
(35, 'Archivo', '2019-11-14 15:27:54', '2019-11-14 15:27:54', 'MEMORANDUM DE ENTENDIMIENTO PROGRAMA PILOTO PATENTES SIST. COOP. PROP. INDUS. PROSUR - PROSUL', NULL, 0, 338),
(36, 'Archivo', '2019-11-14 15:28:24', '2019-11-14 15:28:24', 'CONVENIO MARCO DINAPI-ESPAÑA', NULL, 898, 338),
(37, 'Archivo', '2019-11-14 15:29:01', '2019-11-14 15:29:01', 'CONVENIO DINAPI-COREA MISION', NULL, 899, 338),
(38, 'Archivo', '2019-11-14 15:29:37', '2019-11-14 15:29:37', 'RESOLUCION RG-14-15 DECLARA DE INTERES NACIONAL PRODUCCION CINEMATOGRAFICA MANGORE', NULL, 900, 338),
(39, 'Archivo', '2019-11-14 15:30:11', '2019-11-14 15:30:11', 'CONVENIO MARCO DE COOPERACION Y APOYO INTERINSTITUCIONAL ENTRE EL CABILDO Y LA DINAPI', NULL, 901, 338),
(40, 'Archivo', '2019-11-14 15:30:33', '2019-11-14 15:30:33', 'CONVENIO MARCO SUSCRIPTO ENTRE LA DINAPI Y EL IPA', NULL, 902, 338),
(41, 'Archivo', '2019-11-14 22:26:57', '2019-11-14 22:26:57', 'PLAN ESTRATÉGICO INSTITUCIONAL 2019-2023', NULL, 905, 352),
(42, 'Archivo', '2019-11-15 14:22:21', '2019-11-15 14:22:21', 'Acta de Compromiso para la Implementación del MECIP. ACTA N° 01/2019', NULL, 906, 352),
(43, 'Archivo', '2019-11-15 14:37:07', '2019-11-15 14:37:07', 'Resolución/DINAPI/RG/N°08/2019. “POR LA CUAL SE CONFORMAN COMITÉS, EQUIPOS DE TRABAJO, SE ASIGNAN ROLES Y SE ESTABLECEN FUNCIONES PARA EL DISEÑO E IMPLEMENTACIÓN DEL MECIP EN LA DIRECCIÓN NACIONAL DE PROPIEDAD INTELECTUAL', NULL, 907, 354),
(44, 'Archivo', '2019-11-15 14:37:46', '2019-11-15 14:37:46', 'Resolución/DINAPI/RG/N°07/2019. “POR LA CUAL SE APRUEBA EL PLAN ANUAL DE TRABAJO PARA LA IMPLEMENTACIÓN DEL MODELO ESTÁNDAR DE CONTROL INTERNO PARA INSTITUCIONES PÚBLICAS DEL PARAGUAY (MECIP) EN LA DINAPI, CORRESPONDIENTE AL PERIODO 2019', NULL, 908, 354),
(45, 'Archivo', '2019-11-15 14:39:27', '2019-11-15 14:39:27', 'Resolución/DINAPI/RG/N°06/2019. “POR LA CUAL SE APRUEBA EL PLAN ESTRATÉGICO INSTITUCIONAL DE LA DIRECCIÓN NACIONAL DE PROPIEDAD INTELECTUAL PARA EL PERIODO 2019 - 2023 Y SE CONFORMA UN EQUIPO DIRECTIVO PARA SU IMPLEMENTACIÓN”', NULL, 909, 354),
(46, 'Archivo', '2019-11-15 14:40:12', '2019-11-15 14:40:12', 'Resolución/DINAPI/RG/N°05/2019. “POR LA CUAL SE APRUEBA LA POLÍTICA DE CONTROL INTERNO DE LA DINAPI EN EL MARCO DE LA IMPLEMENTACIÓN DEL MODELO ESTANDAR DE CONTROL INTERNO PARA INSTITUCIONES PÚBLICAS DEL PARAGUAY (MECIP 2015)', NULL, 910, 354),
(47, 'Archivo', '2019-11-15 15:20:03', '2019-11-15 15:20:03', 'Resolución DINAPI/RP/N° 55/2019. “POR LA CUAL SE DESIGNA AL RESPONSABLE DE LA IMPLEMENTACIÓN DEL MODELO ESTÁNDAR DEL CONTROL INTERNO PARA LAS ENTIDADES PÚBLICAS DEL PARAGUAY (MECIP) ANTE LA MÁXIMA AUTORIDAD DE LA INSTITUCIÓN; CONFORMA EL EQUIPO DE TRABAJO', NULL, 911, 354),
(48, 'Archivo', '2019-11-15 15:20:33', '2019-11-15 15:20:33', 'Resolución DINAPI/RP/N° 54/2019. “POR LA CUAL SE ADOPTA EL MODELO ESTÁNDAR DE CONTROL INTERNO – MECIP – EN LA DIRECCIÓN NACIONAL DE PROPIEDAD INTELECTUAL (DINAPI)', NULL, 912, 354),
(49, 'Archivo', '2019-11-15 15:26:34', '2019-11-15 15:26:34', 'Resolución DINAPI/RP/N° 99/2019. “POR LA CUAL SE APRUEBA EL PROYECTO PARA LA CONFORMACIÓN Y GESTIÓN DE MESAS DE TRABAJO INSTITUCIONAL EN BASE AL MODELO DE GESTIÓN DE PROCESOS”', NULL, 913, 354),
(50, 'Archivo', '2019-11-15 15:41:27', '2019-11-15 15:41:27', 'Resolución/DINAPI/RP/N°187/2019.- POR LA CUAL SE APRUEBAN POLÍTICA GENERAL DE GESTIÓN Y DESARROLLO DEL TALENTO HUMANO DE LA DIRECCION NACIONAL DE PROPIEDAD INTELECTUAL (DINAPI)', NULL, 914, 355),
(51, 'Archivo', '2019-11-15 15:42:16', '2019-11-15 15:42:16', 'Resolución/DINAPI/RP/N°186/2019.- POR LA CUAL SE APRUEBA Y SE PONE EN VIGENCIA EL CÓDIGO DE BUEN GOBIERNO DE LA DIRECCION NACIONAL DE PROPIEDAD INTELECTUAL (DINAPI)', NULL, 915, 355),
(52, 'Archivo', '2019-11-15 15:43:18', '2019-11-15 15:43:18', 'Resolución/DINAPI/RP/N°169/2019. “POR LA CUAL SE APRUEBA LA ACTUALIZACIÓN DEL CÓDIGO DE ÉTICA DE LA DIRECCIÓN NACIONAL DE PROPIEDAD INTELECTUAL (DINAPI)', NULL, 916, 355),
(53, 'Archivo', '2019-11-15 15:43:41', '2019-11-15 15:43:41', 'Actualización del Código de Ética - Resolución/DINAPI/RP/N°169/2019.', NULL, 917, 355),
(54, 'Archivo', '2019-11-15 15:44:57', '2019-11-15 15:44:57', 'Formato N°9 - Plan de Trabajo 2019', NULL, 918, 356),
(55, 'Archivo', '2019-11-15 15:45:15', '2019-11-15 15:45:15', 'Formato N°7 - Resultado de Diagnóstico del CI', NULL, 0, 356),
(56, 'Archivo', '2019-11-15 15:45:16', '2019-11-15 15:45:20', 'Formato N°7 - Resultado de Diagnóstico del CI', NULL, 919, 356),
(57, 'Archivo', '2019-11-15 15:45:51', '2019-11-15 15:45:51', 'Reuniones de Mesas de Trabajo', NULL, 920, 356);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ArchivoDesplegablePage`
--

CREATE TABLE IF NOT EXISTS `ArchivoDesplegablePage` (
  `ID` int(11) NOT NULL,
  `Titulo` varchar(255) DEFAULT NULL,
  `TituloPadre` varchar(255) DEFAULT NULL,
  `ImagenID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=354 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ArchivoDesplegablePage`
--

INSERT INTO `ArchivoDesplegablePage` (`ID`, `Titulo`, `TituloPadre`, `ImagenID`) VALUES
(353, 'MECIP', 'DATOS INSTITUCIONALES', 798),
(341, 'MARCO NORMATIVO DE LA PROPIEDAD INTELECTUAL EN PARAGUAY', 'MARCO NORMATIVO DE LA PROPIEDAD INTELECTUAL', 731);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ArchivoDesplegablePage_Live`
--

CREATE TABLE IF NOT EXISTS `ArchivoDesplegablePage_Live` (
  `ID` int(11) NOT NULL,
  `Titulo` varchar(255) DEFAULT NULL,
  `TituloPadre` varchar(255) DEFAULT NULL,
  `ImagenID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=354 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ArchivoDesplegablePage_Live`
--

INSERT INTO `ArchivoDesplegablePage_Live` (`ID`, `Titulo`, `TituloPadre`, `ImagenID`) VALUES
(341, 'MARCO NORMATIVO DE LA PROPIEDAD INTELECTUAL EN PARAGUAY', 'MARCO NORMATIVO DE LA PROPIEDAD INTELECTUAL', 731),
(353, 'MECIP', 'DATOS INSTITUCIONALES', 798);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ArchivoDesplegablePage_versions`
--

CREATE TABLE IF NOT EXISTS `ArchivoDesplegablePage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Titulo` varchar(255) DEFAULT NULL,
  `TituloPadre` varchar(255) DEFAULT NULL,
  `ImagenID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ArchivoDesplegablePage_versions`
--

INSERT INTO `ArchivoDesplegablePage_versions` (`ID`, `RecordID`, `Version`, `Titulo`, `TituloPadre`, `ImagenID`) VALUES
(1, 339, 1, NULL, NULL, 0),
(2, 339, 2, 'asdfasf', 'adsaf', 0),
(3, 341, 1, NULL, NULL, 0),
(4, 341, 2, 'MARCO NORMATIVO DE LA PROPIEDAD INTELECTUAL EN PARAGUAY', 'MARCO NORMATIVO DE LA PROPIEDAD INTELECTUAL EN PARAGUAY', 731),
(5, 341, 3, 'MARCO NORMATIVO DE LA PROPIEDAD INTELECTUAL EN PARAGUAY', 'MARCO NORMATIVO DE LA PROPIEDAD INTELECTUAL EN PARAGUAY', 731),
(6, 341, 4, 'MARCO NORMATIVO DE LA PROPIEDAD INTELECTUAL EN PARAGUAY', 'MARCO NORMATIVO DE LA PROPIEDAD INTELECTUAL', 731),
(7, 353, 1, 'MECIP', 'DATOS INSTITUCIONALES', 798);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ArchivoPage`
--

CREATE TABLE IF NOT EXISTS `ArchivoPage` (
  `ID` int(11) NOT NULL,
  `Titulo` varchar(255) DEFAULT NULL,
  `ImagenID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=357 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ArchivoPage`
--

INSERT INTO `ArchivoPage` (`ID`, `Titulo`, `ImagenID`) VALUES
(338, 'DATOS INSTITUCIONALES', 798),
(352, 'DATOS INSTITUCIONALES', 798),
(354, 'DATOS INSTITUCIONALES', 798),
(355, 'DATOS INSTITUCIONALES', 798),
(356, 'DATOS INSTITUCIONALES', 798);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ArchivoPage_Live`
--

CREATE TABLE IF NOT EXISTS `ArchivoPage_Live` (
  `ID` int(11) NOT NULL,
  `Titulo` varchar(255) DEFAULT NULL,
  `ImagenID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=357 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ArchivoPage_Live`
--

INSERT INTO `ArchivoPage_Live` (`ID`, `Titulo`, `ImagenID`) VALUES
(338, 'DATOS INSTITUCIONALES', 798),
(340, NULL, 0),
(342, NULL, 0),
(343, NULL, 0),
(344, NULL, 0),
(352, 'DATOS INSTITUCIONALES', 798),
(354, 'DATOS INSTITUCIONALES', 798),
(355, 'DATOS INSTITUCIONALES', 798),
(356, 'DATOS INSTITUCIONALES', 798);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ArchivoPage_versions`
--

CREATE TABLE IF NOT EXISTS `ArchivoPage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Titulo` varchar(255) DEFAULT NULL,
  `ImagenID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ArchivoPage_versions`
--

INSERT INTO `ArchivoPage_versions` (`ID`, `RecordID`, `Version`, `Titulo`, `ImagenID`) VALUES
(1, 338, 4, NULL, 0),
(2, 338, 5, 'DATOS INSTITUCIONALES', 798),
(3, 340, 3, NULL, 0),
(4, 342, 2, NULL, 0),
(5, 343, 4, NULL, 0),
(6, 344, 2, NULL, 0),
(7, 352, 1, 'DATOS INSTITUCIONALES', 798),
(8, 352, 2, 'DATOS INSTITUCIONALES', 798),
(9, 352, 3, 'DATOS INSTITUCIONALES', 798),
(10, 352, 4, 'DATOS INSTITUCIONALES', 798),
(11, 354, 1, 'DATOS INSTITUCIONALES', 798),
(12, 355, 1, 'DATOS INSTITUCIONALES', 798),
(13, 356, 1, 'DATOS INSTITUCIONALES', 798);

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
-- Estructura de tabla para la tabla `BoletinGeneral`
--

CREATE TABLE IF NOT EXISTS `BoletinGeneral` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('BoletinGeneral') DEFAULT 'BoletinGeneral',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Titulo` varchar(255) DEFAULT NULL,
  `PdfID` int(11) NOT NULL DEFAULT '0',
  `ImagenID` int(11) NOT NULL DEFAULT '0',
  `PaginaID` int(11) NOT NULL DEFAULT '0',
  `PaginaBoletinesID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `BoletinGeneral`
--

INSERT INTO `BoletinGeneral` (`ID`, `ClassName`, `Created`, `LastEdited`, `Titulo`, `PdfID`, `ImagenID`, `PaginaID`, `PaginaBoletinesID`) VALUES
(1, 'BoletinGeneral', '2019-11-11 04:26:41', '2019-11-11 04:26:41', 'Resolución Nro. 0479', 773, 0, 316, 0),
(4, 'BoletinGeneral', '2019-11-11 14:16:13', '2019-11-11 14:16:13', 'Boletín de Patentes N° 13 02.01.2019', 785, 0, 0, 320),
(5, 'BoletinGeneral', '2019-11-11 14:16:34', '2019-11-11 14:16:34', 'Boletín de Patentes N° 12 06.12.2018', 786, 0, 0, 320),
(6, 'BoletinGeneral', '2019-11-11 14:32:59', '2019-11-11 14:32:59', '1406875', 789, 788, 0, 322),
(7, 'BoletinGeneral', '2019-11-11 14:33:28', '2019-11-11 14:33:28', '1535138', 791, 790, 0, 322),
(8, 'BoletinGeneral', '2019-11-11 14:34:08', '2019-11-11 14:34:08', '1600513', 793, 792, 0, 323),
(9, 'BoletinGeneral', '2019-11-11 14:34:33', '2019-11-11 14:34:33', '1406876', 795, 794, 0, 323),
(10, 'BoletinGeneral', '2019-11-11 14:34:54', '2019-11-11 14:34:54', '1350880', 797, 796, 0, 323),
(11, 'BoletinGeneral', '2019-11-12 16:55:38', '2019-11-12 16:55:38', 'Boletín de Patentes N° 11 06.11.2018', 845, 0, 0, 320),
(12, 'BoletinGeneral', '2019-11-12 16:57:45', '2019-11-12 16:57:45', 'Boletín de Patentes N° 10 01.10.2018', 846, 0, 0, 320),
(13, 'BoletinGeneral', '2019-11-12 16:58:27', '2019-11-12 18:39:45', 'Boletín de Patentes N° 09 04.09.2018', 847, 0, 0, 320),
(14, 'BoletinGeneral', '2019-11-12 18:40:55', '2019-11-12 18:41:06', 'Boletín de Patentes N° 08 06.08.2018', 851, 0, 0, 320),
(15, 'BoletinGeneral', '2019-11-12 18:42:02', '2019-11-12 18:42:02', 'Boletín de Patentes N° 07 13/07/2018', 852, 0, 0, 320),
(16, 'BoletinGeneral', '2019-11-12 18:43:18', '2019-11-12 18:43:18', 'Boletín de Patentes N° 06 04/06/2018', 853, 0, 0, 320),
(17, 'BoletinGeneral', '2019-11-12 18:43:56', '2019-11-12 18:43:56', 'Boletín de Patentes N° 05 02/05/2018', 854, 0, 0, 320),
(18, 'BoletinGeneral', '2019-11-12 18:45:17', '2019-11-12 18:45:17', 'Boletín de Patentes N° 04 04/04/2018', 855, 0, 0, 320),
(19, 'BoletinGeneral', '2019-11-12 18:45:52', '2019-11-12 18:45:52', 'Boletín de Patentes N° 03 05/03/2018', 856, 0, 0, 320),
(20, 'BoletinGeneral', '2019-11-12 18:46:37', '2019-11-12 18:46:37', 'Boletín de Patentes N° 02 05/02/2018', 857, 0, 0, 320),
(21, 'BoletinGeneral', '2019-11-12 18:48:27', '2019-11-12 18:48:27', 'Boletín de Patentes N° 01 05/01/2018', 858, 0, 0, 320),
(22, 'BoletinGeneral', '2019-11-12 18:56:58', '2019-11-12 18:56:58', 'Boletín de Patentes N° 11 08.11.2019', 860, 0, 0, 319),
(23, 'BoletinGeneral', '2019-11-12 18:57:42', '2019-11-12 18:58:38', 'Boletín de Patentes N° 10 11.10.2019', 861, 0, 0, 319),
(24, 'BoletinGeneral', '2019-11-12 18:59:16', '2019-11-12 18:59:16', 'Boletín de Patentes N° 09 03.09.2019', 783, 0, 0, 319),
(25, 'BoletinGeneral', '2019-11-13 14:41:29', '2019-11-13 14:41:29', 'Boletín de Patentes N° 08 09.08.2019', 784, 0, 0, 319),
(26, 'BoletinGeneral', '2019-11-13 14:42:30', '2019-11-13 14:42:30', 'Boletín de Patentes N° 07 03.07.2019', 862, 0, 0, 319),
(27, 'BoletinGeneral', '2019-11-13 14:43:24', '2019-11-13 14:43:24', 'Boletín de Patentes N° 06 05.06.2019', 854, 0, 0, 319),
(28, 'BoletinGeneral', '2019-11-13 14:44:18', '2019-11-13 14:44:18', 'Boletín de Patentes N° 05 21.05.2019', 863, 0, 0, 319),
(29, 'BoletinGeneral', '2019-11-13 14:45:04', '2019-11-13 14:45:04', 'Boletín de Patentes N° 04 01.04.2019', 855, 0, 0, 319),
(30, 'BoletinGeneral', '2019-11-13 15:07:00', '2019-11-13 15:07:00', 'Boletín de Patentes N° 03 06.03.2019', 864, 0, 0, 319),
(31, 'BoletinGeneral', '2019-11-13 15:07:56', '2019-11-13 15:07:56', 'Boletín de Patentes N° 02 04.02.2019', 866, 0, 0, 319),
(32, 'BoletinGeneral', '2019-11-13 15:08:49', '2019-11-13 15:08:49', 'Boletín de Patentes N° 01 02.01.2019', 786, 0, 0, 319);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `BoletinLogotiposMarcas`
--

CREATE TABLE IF NOT EXISTS `BoletinLogotiposMarcas` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('BoletinLogotiposMarcas') DEFAULT 'BoletinLogotiposMarcas',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Titulo` varchar(255) DEFAULT NULL,
  `PdfID` int(11) NOT NULL DEFAULT '0',
  `ImagenID` int(11) NOT NULL DEFAULT '0',
  `PaginaID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `BoletinLogotiposMarcas`
--

INSERT INTO `BoletinLogotiposMarcas` (`ID`, `ClassName`, `Created`, `LastEdited`, `Titulo`, `PdfID`, `ImagenID`, `PaginaID`) VALUES
(2, 'BoletinLogotiposMarcas', '2019-11-11 05:16:27', '2019-11-11 05:16:27', 'Del 01 al 04', 780, 0, 316),
(3, 'BoletinLogotiposMarcas', '2019-11-12 15:23:26', '2019-11-12 15:23:26', 'Del 07 al 11', 801, 0, 316),
(4, 'BoletinLogotiposMarcas', '2019-11-12 15:25:02', '2019-11-12 15:25:02', 'Del 14 al 18', 776, 0, 316),
(5, 'BoletinLogotiposMarcas', '2019-11-12 15:25:36', '2019-11-12 15:25:36', 'Del 21 al 31', 779, 0, 316),
(6, 'BoletinLogotiposMarcas', '2019-11-12 15:31:35', '2019-11-12 15:31:35', 'Del 02 al 06', 807, 0, 317),
(7, 'BoletinLogotiposMarcas', '2019-11-12 15:31:58', '2019-11-12 15:31:58', 'Del 09 al 13', 808, 0, 317),
(8, 'BoletinLogotiposMarcas', '2019-11-12 15:37:58', '2019-11-12 15:37:58', 'Del 16 al 20', 809, 0, 317),
(9, 'BoletinLogotiposMarcas', '2019-11-12 15:52:02', '2019-11-12 15:52:02', 'Del 01 al 08', 820, 0, 335),
(10, 'BoletinLogotiposMarcas', '2019-11-12 16:09:49', '2019-11-12 16:09:49', 'Del 01 al 09 ', 825, 0, 336),
(11, 'BoletinLogotiposMarcas', '2019-11-12 16:10:48', '2019-11-12 16:10:48', 'Del 12 al 16', 826, 0, 336),
(12, 'BoletinLogotiposMarcas', '2019-11-12 16:11:24', '2019-11-12 16:11:24', 'Del 19 al 23 ', 827, 0, 336),
(13, 'BoletinLogotiposMarcas', '2019-11-12 16:12:03', '2019-11-12 16:12:03', 'Del 26 al 30', 828, 0, 336),
(14, 'BoletinLogotiposMarcas', '2019-11-12 16:19:35', '2019-11-12 16:19:35', 'Del 01 al 05', 837, 0, 337),
(15, 'BoletinLogotiposMarcas', '2019-11-12 16:19:55', '2019-11-12 16:19:55', 'Del 08 al 12', 838, 0, 337),
(16, 'BoletinLogotiposMarcas', '2019-11-12 16:20:19', '2019-11-12 16:20:19', 'Del 15 al 19', 839, 0, 337),
(17, 'BoletinLogotiposMarcas', '2019-11-12 16:20:48', '2019-11-12 16:20:48', 'Del 22 al 31', 840, 0, 337);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `BoletinMarcaPage`
--

CREATE TABLE IF NOT EXISTS `BoletinMarcaPage` (
  `ID` int(11) NOT NULL,
  `TituloPadre` varchar(255) DEFAULT NULL,
  `ImagenID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=316 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `BoletinMarcaPage`
--

INSERT INTO `BoletinMarcaPage` (`ID`, `TituloPadre`, `ImagenID`) VALUES
(315, 'MARCAS', 738);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `BoletinMarcaPage_Live`
--

CREATE TABLE IF NOT EXISTS `BoletinMarcaPage_Live` (
  `ID` int(11) NOT NULL,
  `TituloPadre` varchar(255) DEFAULT NULL,
  `ImagenID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=316 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `BoletinMarcaPage_Live`
--

INSERT INTO `BoletinMarcaPage_Live` (`ID`, `TituloPadre`, `ImagenID`) VALUES
(315, 'MARCAS', 738);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `BoletinMarcaPage_versions`
--

CREATE TABLE IF NOT EXISTS `BoletinMarcaPage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `TituloPadre` varchar(255) DEFAULT NULL,
  `ImagenID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `BoletinMarcaPage_versions`
--

INSERT INTO `BoletinMarcaPage_versions` (`ID`, `RecordID`, `Version`, `TituloPadre`, `ImagenID`) VALUES
(1, 315, 6, 'MARCAS', 738);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `BoletinMarcasDocumentos`
--

CREATE TABLE IF NOT EXISTS `BoletinMarcasDocumentos` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('BoletinMarcasDocumentos') DEFAULT 'BoletinMarcasDocumentos',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Titulo` varchar(255) DEFAULT NULL,
  `PdfID` int(11) NOT NULL DEFAULT '0',
  `ImagenID` int(11) NOT NULL DEFAULT '0',
  `PaginaID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `BoletinMarcasDocumentos`
--

INSERT INTO `BoletinMarcasDocumentos` (`ID`, `ClassName`, `Created`, `LastEdited`, `Titulo`, `PdfID`, `ImagenID`, `PaginaID`) VALUES
(1, 'BoletinMarcasDocumentos', '2019-11-11 04:27:45', '2019-11-11 04:27:45', 'Del 01 al 04', 774, 0, 316),
(2, 'BoletinMarcasDocumentos', '2019-11-11 05:12:40', '2019-11-11 05:12:40', 'Del 07 al 11', 775, 0, 316),
(3, 'BoletinMarcasDocumentos', '2019-11-11 05:14:01', '2019-11-11 05:14:01', 'Del 14 al 18', 776, 0, 316),
(4, 'BoletinMarcasDocumentos', '2019-11-11 05:15:32', '2019-11-11 05:15:32', 'Del 21 al 31', 778, 0, 316),
(5, 'BoletinMarcasDocumentos', '2019-11-11 05:21:38', '2019-11-11 05:21:38', 'Del 02 al 06', 782, 0, 317),
(6, 'BoletinMarcasDocumentos', '2019-11-12 15:30:19', '2019-11-12 15:30:19', 'Del 09 al 13', 805, 0, 317),
(7, 'BoletinMarcasDocumentos', '2019-11-12 15:30:43', '2019-11-12 15:30:43', 'Del 16 al 20', 806, 0, 317),
(8, 'BoletinMarcasDocumentos', '2019-11-12 15:51:37', '2019-11-12 15:51:37', 'Del 01 al 08', 819, 0, 335),
(9, 'BoletinMarcasDocumentos', '2019-11-12 15:54:08', '2019-11-12 15:54:08', 'Del 01 al 09', 822, 0, 336),
(13, 'BoletinMarcasDocumentos', '2019-11-12 16:13:40', '2019-11-12 16:13:40', 'Del 12 al 16', 823, 0, 336),
(14, 'BoletinMarcasDocumentos', '2019-11-12 16:14:03', '2019-11-12 16:14:03', 'Del 19 al 23', 823, 0, 336),
(15, 'BoletinMarcasDocumentos', '2019-11-12 16:14:28', '2019-11-12 16:14:28', 'Del 26 al 30', 824, 0, 336),
(16, 'BoletinMarcasDocumentos', '2019-11-12 16:17:48', '2019-11-12 16:17:48', 'Del 01 al 05', 833, 0, 337),
(17, 'BoletinMarcasDocumentos', '2019-11-12 16:18:10', '2019-11-12 16:18:10', 'Del 08 al 12', 834, 0, 337),
(18, 'BoletinMarcasDocumentos', '2019-11-12 16:18:35', '2019-11-12 16:18:35', 'Del 15 al 19', 835, 0, 337),
(19, 'BoletinMarcasDocumentos', '2019-11-12 16:18:59', '2019-11-12 16:18:59', 'Del 22 al 31', 836, 0, 337);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `BoletinMovimientosAdministrativos`
--

CREATE TABLE IF NOT EXISTS `BoletinMovimientosAdministrativos` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('BoletinMovimientosAdministrativos') DEFAULT 'BoletinMovimientosAdministrativos',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Titulo` varchar(255) DEFAULT NULL,
  `PdfID` int(11) NOT NULL DEFAULT '0',
  `ImagenID` int(11) NOT NULL DEFAULT '0',
  `PaginaID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `BoletinMovimientosAdministrativos`
--

INSERT INTO `BoletinMovimientosAdministrativos` (`ID`, `ClassName`, `Created`, `LastEdited`, `Titulo`, `PdfID`, `ImagenID`, `PaginaID`) VALUES
(1, 'BoletinMovimientosAdministrativos', '2019-11-11 05:16:52', '2019-11-11 05:16:52', 'Del 01 al 04', 781, 0, 316),
(2, 'BoletinMovimientosAdministrativos', '2019-11-12 15:26:39', '2019-11-12 15:26:39', 'Del 07 al 11', 802, 0, 316),
(3, 'BoletinMovimientosAdministrativos', '2019-11-12 15:27:43', '2019-11-12 15:28:32', 'Del 14 al 18', 803, 0, 316),
(4, 'BoletinMovimientosAdministrativos', '2019-11-12 15:29:01', '2019-11-12 15:29:01', 'Del 21 al 31', 804, 0, 316),
(5, 'BoletinMovimientosAdministrativos', '2019-11-12 15:38:30', '2019-11-12 15:38:30', 'Del 02 al 06', 811, 0, 317),
(6, 'BoletinMovimientosAdministrativos', '2019-11-12 15:40:32', '2019-11-12 15:40:32', 'Del 09 al 13', 813, 0, 317),
(7, 'BoletinMovimientosAdministrativos', '2019-11-12 15:41:00', '2019-11-12 15:41:00', 'Del 16 al 20', 816, 0, 317),
(8, 'BoletinMovimientosAdministrativos', '2019-11-12 15:52:25', '2019-11-12 15:52:25', 'Del 01 al 08', 821, 0, 335),
(9, 'BoletinMovimientosAdministrativos', '2019-11-12 16:15:15', '2019-11-12 16:15:15', 'Del 01 al 09 ', 829, 0, 336),
(10, 'BoletinMovimientosAdministrativos', '2019-11-12 16:15:50', '2019-11-12 16:15:50', 'Del 12 al 16', 830, 0, 336),
(11, 'BoletinMovimientosAdministrativos', '2019-11-12 16:16:43', '2019-11-12 16:16:43', 'Del 19 al 23', 831, 0, 336),
(12, 'BoletinMovimientosAdministrativos', '2019-11-12 16:17:04', '2019-11-12 16:17:04', 'Del 26 al 30 ', 832, 0, 336),
(13, 'BoletinMovimientosAdministrativos', '2019-11-12 16:21:38', '2019-11-12 16:21:38', 'Del 01 al 05', 841, 0, 337),
(14, 'BoletinMovimientosAdministrativos', '2019-11-12 16:22:39', '2019-11-12 16:22:39', 'Del 08 al 12', 842, 0, 337),
(15, 'BoletinMovimientosAdministrativos', '2019-11-12 16:23:00', '2019-11-12 16:23:00', 'Del 15 al 19', 843, 0, 337),
(16, 'BoletinMovimientosAdministrativos', '2019-11-12 16:23:19', '2019-11-12 16:23:19', 'Del 22 al 31', 844, 0, 337);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `BoletinPage`
--

CREATE TABLE IF NOT EXISTS `BoletinPage` (
  `ID` int(11) NOT NULL,
  `TituloPadre` varchar(255) DEFAULT NULL,
  `ImagenID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=322 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `BoletinPage`
--

INSERT INTO `BoletinPage` (`ID`, `TituloPadre`, `ImagenID`) VALUES
(318, 'PATENTES', 798),
(321, 'DIBUJOS Y MODELOS INDUSTRIALES', 798);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `BoletinPage_Live`
--

CREATE TABLE IF NOT EXISTS `BoletinPage_Live` (
  `ID` int(11) NOT NULL,
  `TituloPadre` varchar(255) DEFAULT NULL,
  `ImagenID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=322 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `BoletinPage_Live`
--

INSERT INTO `BoletinPage_Live` (`ID`, `TituloPadre`, `ImagenID`) VALUES
(318, 'PATENTES', 798),
(321, 'DIBUJOS Y MODELOS INDUSTRIALES', 798);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `BoletinPage_versions`
--

CREATE TABLE IF NOT EXISTS `BoletinPage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `TituloPadre` varchar(255) DEFAULT NULL,
  `ImagenID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `BoletinPage_versions`
--

INSERT INTO `BoletinPage_versions` (`ID`, `RecordID`, `Version`, `TituloPadre`, `ImagenID`) VALUES
(1, 318, 6, 'PATENTES', 798),
(2, 321, 5, 'DIBUJOS Y MODELOS INDUSTRIALES', 798),
(3, 321, 6, 'DIBUJOS Y MODELOS INDUSTRIALES', 0),
(4, 321, 7, 'DIBUJOS Y MODELOS INDUSTRIALES', 798);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Carousel`
--

INSERT INTO `Carousel` (`ID`, `ClassName`, `Created`, `LastEdited`, `Titulo`, `Descripcion`, `TituloLink`, `Link`, `ImagenID`) VALUES
(1, 'Carousel', '2019-11-08 15:29:36', '2019-11-14 22:43:13', 'Dirección Nacional de Propiedad Intelectual', 'Nuestra misión es diseñar, implementar, fomentar y coordinar las políticas públicas de propiedad intelectual, concediendo la protección de los derechos derivados de esta materia a fin de garantizar la seguridad jurídica a sus titulares.', 'Más Noticias', 346, 729);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CategoriaNoticia`
--

CREATE TABLE IF NOT EXISTS `CategoriaNoticia` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('CategoriaNoticia') DEFAULT 'CategoriaNoticia',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Categoria` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `CategoriaNoticia`
--

INSERT INTO `CategoriaNoticia` (`ID`, `ClassName`, `Created`, `LastEdited`, `Categoria`) VALUES
(1, 'CategoriaNoticia', '2019-11-13 19:06:09', '2019-11-13 19:06:09', 'General'),
(2, 'CategoriaNoticia', '2019-11-13 19:06:42', '2019-11-13 19:06:42', 'Especifica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ConcursoItemPage`
--

CREATE TABLE IF NOT EXISTS `ConcursoItemPage` (
  `ID` int(11) NOT NULL,
  `Titulo` varchar(255) DEFAULT NULL,
  `ImagenCortaID` int(11) NOT NULL DEFAULT '0',
  `ImagenCompletaID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=335 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ConcursoItemPage`
--

INSERT INTO `ConcursoItemPage` (`ID`, `Titulo`, `ImagenCortaID`, `ImagenCompletaID`) VALUES
(332, 'DATOS INSTITUCIONALES', 812, 810),
(333, 'DATOS INSTITUCIONALES', 817, 818),
(334, 'DATOS INSTITUCIONALES', 814, 815);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ConcursoItemPage_Live`
--

CREATE TABLE IF NOT EXISTS `ConcursoItemPage_Live` (
  `ID` int(11) NOT NULL,
  `Titulo` varchar(255) DEFAULT NULL,
  `ImagenCortaID` int(11) NOT NULL DEFAULT '0',
  `ImagenCompletaID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=335 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ConcursoItemPage_Live`
--

INSERT INTO `ConcursoItemPage_Live` (`ID`, `Titulo`, `ImagenCortaID`, `ImagenCompletaID`) VALUES
(332, 'DATOS INSTITUCIONALES', 812, 810),
(333, 'DATOS INSTITUCIONALES', 817, 818),
(334, 'DATOS INSTITUCIONALES', 814, 815);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ConcursoItemPage_versions`
--

CREATE TABLE IF NOT EXISTS `ConcursoItemPage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Titulo` varchar(255) DEFAULT NULL,
  `ImagenCortaID` int(11) NOT NULL DEFAULT '0',
  `ImagenCompletaID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ConcursoItemPage_versions`
--

INSERT INTO `ConcursoItemPage_versions` (`ID`, `RecordID`, `Version`, `Titulo`, `ImagenCortaID`, `ImagenCompletaID`) VALUES
(1, 332, 1, NULL, 0, 0),
(2, 332, 2, 'DATOS INSTITUCIONALES', 812, 810),
(3, 332, 3, 'DATOS INSTITUCIONALES', 814, 815),
(4, 333, 1, 'DATOS INSTITUCIONALES', 817, 818),
(5, 332, 4, 'DATOS INSTITUCIONALES', 812, 810),
(6, 334, 1, 'DATOS INSTITUCIONALES', 814, 815);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ConcursosPage`
--

CREATE TABLE IF NOT EXISTS `ConcursosPage` (
  `ID` int(11) NOT NULL,
  `Titulo` varchar(255) DEFAULT NULL,
  `ImagenID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=332 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ConcursosPage`
--

INSERT INTO `ConcursosPage` (`ID`, `Titulo`, `ImagenID`) VALUES
(331, 'DATOS INSTITUCIONALES', 731);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ConcursosPage_Live`
--

CREATE TABLE IF NOT EXISTS `ConcursosPage_Live` (
  `ID` int(11) NOT NULL,
  `Titulo` varchar(255) DEFAULT NULL,
  `ImagenID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=332 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ConcursosPage_Live`
--

INSERT INTO `ConcursosPage_Live` (`ID`, `Titulo`, `ImagenID`) VALUES
(331, 'DATOS INSTITUCIONALES', 731);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ConcursosPage_versions`
--

CREATE TABLE IF NOT EXISTS `ConcursosPage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Titulo` varchar(255) DEFAULT NULL,
  `ImagenID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ConcursosPage_versions`
--

INSERT INTO `ConcursosPage_versions` (`ID`, `RecordID`, `Version`, `Titulo`, `ImagenID`) VALUES
(1, 331, 1, NULL, 0),
(2, 331, 2, 'DATOS INSTITUCIONALES', 731),
(3, 331, 3, 'DATOS INSTITUCIONALES', 731);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ContactPage`
--

CREATE TABLE IF NOT EXISTS `ContactPage` (
  `ID` int(11) NOT NULL,
  `ImagenID` int(11) NOT NULL DEFAULT '0',
  `Titulo` varchar(255) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=224 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ContactPage`
--

INSERT INTO `ContactPage` (`ID`, `ImagenID`, `Titulo`) VALUES
(223, 800, 'Consultas, Reclamos y Sugerencias');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ContactPage_Live`
--

CREATE TABLE IF NOT EXISTS `ContactPage_Live` (
  `ID` int(11) NOT NULL,
  `ImagenID` int(11) NOT NULL DEFAULT '0',
  `Titulo` varchar(255) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=224 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ContactPage_Live`
--

INSERT INTO `ContactPage_Live` (`ID`, `ImagenID`, `Titulo`) VALUES
(223, 800, 'Consultas, Reclamos y Sugerencias');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ContactPage_versions`
--

CREATE TABLE IF NOT EXISTS `ContactPage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ImagenID` int(11) NOT NULL DEFAULT '0',
  `Titulo` varchar(255) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ContactPage_versions`
--

INSERT INTO `ContactPage_versions` (`ID`, `RecordID`, `Version`, `ImagenID`, `Titulo`) VALUES
(1, 223, 1, 0, NULL),
(2, 223, 2, 669, NULL),
(3, 223, 3, 669, NULL),
(4, 223, 4, 669, NULL),
(5, 223, 5, 669, NULL),
(6, 223, 6, 669, NULL),
(7, 223, 7, 669, NULL),
(8, 223, 8, 669, NULL),
(9, 223, 9, 669, NULL),
(10, 223, 10, 669, NULL),
(11, 223, 11, 800, 'Consultas, Reclamos y Sugerencias');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ConvenioPage`
--

CREATE TABLE IF NOT EXISTS `ConvenioPage` (
  `ID` int(11) NOT NULL,
  `Titulo` varchar(255) DEFAULT NULL,
  `ImagenID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=345 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ConvenioPage`
--

INSERT INTO `ConvenioPage` (`ID`, `Titulo`, `ImagenID`) VALUES
(338, 'DATOS INSTITUCIONALES', 798),
(340, 'DATOS INSTITUCIONALES', 798),
(342, 'DATOS INSTITUCIONALES', 798),
(343, 'DATOS INSTITUCIONALES', 798),
(344, 'DATOS INSTITUCIONALES', 798);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ConvenioPage_Live`
--

CREATE TABLE IF NOT EXISTS `ConvenioPage_Live` (
  `ID` int(11) NOT NULL,
  `Titulo` varchar(255) DEFAULT NULL,
  `ImagenID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=345 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ConvenioPage_Live`
--

INSERT INTO `ConvenioPage_Live` (`ID`, `Titulo`, `ImagenID`) VALUES
(338, 'DATOS INSTITUCIONALES', 798),
(340, 'DATOS INSTITUCIONALES', 798),
(342, 'DATOS INSTITUCIONALES', 798),
(343, 'DATOS INSTITUCIONALES', 798),
(344, 'DATOS INSTITUCIONALES', 798);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ConvenioPage_versions`
--

CREATE TABLE IF NOT EXISTS `ConvenioPage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Titulo` varchar(255) DEFAULT NULL,
  `ImagenID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ConvenioPage_versions`
--

INSERT INTO `ConvenioPage_versions` (`ID`, `RecordID`, `Version`, `Titulo`, `ImagenID`) VALUES
(1, 338, 1, NULL, 0),
(2, 338, 2, 'DATOS INSTITUCIONALES', 798),
(3, 338, 3, 'DATOS INSTITUCIONALES', 798),
(4, 340, 1, 'DATOS INSTITUCIONALES', 798),
(5, 340, 2, 'DATOS INSTITUCIONALES', 798),
(6, 342, 1, 'DATOS INSTITUCIONALES', 798),
(7, 343, 1, 'DATOS INSTITUCIONALES', 798),
(8, 343, 2, 'DATOS INSTITUCIONALES', 798),
(9, 343, 3, 'DATOS INSTITUCIONALES', 798),
(10, 344, 1, 'DATOS INSTITUCIONALES', 798);

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
) ENGINE=MyISAM AUTO_INCREMENT=921 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `File`
--

INSERT INTO `File` (`ID`, `ClassName`, `Created`, `LastEdited`, `Name`, `Title`, `Filename`, `Content`, `ShowInSearch`, `ParentID`, `OwnerID`) VALUES
(1, 'Folder', '2015-07-21 23:15:08', '2015-07-21 23:15:08', 'Uploads', 'Uploads', 'assets/Uploads/', NULL, 1, 0, 0),
(2, 'File', '2015-07-21 23:15:08', '2015-07-21 23:15:08', 'error-404.html', 'error-404.html', 'assets/error-404.html', NULL, 1, 0, 0),
(3, 'File', '2015-07-21 23:15:08', '2015-07-21 23:15:08', 'error-500.html', 'error-500.html', 'assets/error-500.html', NULL, 1, 0, 0),
(807, 'File', '2019-11-12 15:31:33', '2019-11-12 15:31:33', 'Logotipo-de-Marcas-02-06-Setiembre.pdf', 'Logotipo de Marcas 02 06 Setiembre', 'assets/boletines/pdf-boletines/Logotipo-de-Marcas-02-06-Setiembre.pdf', NULL, 1, 772, 1),
(806, 'File', '2019-11-12 15:30:41', '2019-11-12 15:30:41', 'Marcas-y-Documentos-Recibidos-16-20-Setiembre.pdf', 'Marcas y Documentos Recibidos 16 20 Setiembre', 'assets/boletines/pdf-boletines/Marcas-y-Documentos-Recibidos-16-20-Setiembre.pdf', NULL, 1, 772, 1),
(119, 'Folder', '2015-12-01 13:55:43', '2015-12-01 13:55:43', 'assets', 'assets', 'assets/assets/', NULL, 1, 0, 1),
(800, 'Image', '2019-11-11 20:23:37', '2019-11-14 17:44:00', 'contacto.jpg', 'contacto', 'assets/Uploads/contacto.jpg', NULL, 1, 1, 1),
(801, 'File', '2019-11-12 15:22:53', '2019-11-12 15:22:53', 'Logotipo-de-Marcas-07-11-Ocubre.pdf', 'Logotipo de Marcas 07 11 Ocubre', 'assets/boletines/pdf-boletines/Logotipo-de-Marcas-07-11-Ocubre.pdf', NULL, 1, 772, 1),
(802, 'File', '2019-11-12 15:26:37', '2019-11-12 15:26:37', 'Movimientos-Administrativos-07-11-Octubre.pdf', 'Movimientos Administrativos 07 11 Octubre', 'assets/boletines/pdf-boletines/Movimientos-Administrativos-07-11-Octubre.pdf', NULL, 1, 772, 1),
(803, 'File', '2019-11-12 15:27:39', '2019-11-12 15:27:39', 'Movimientos-Administrativos-14-18-Octubre.pdf', 'Movimientos Administrativos 14 18 Octubre', 'assets/boletines/pdf-boletines/Movimientos-Administrativos-14-18-Octubre.pdf', NULL, 1, 772, 1),
(804, 'File', '2019-11-12 15:28:59', '2019-11-12 15:28:59', 'Movimientos-Administrativos-21-31-Octubre.pdf', 'Movimientos Administrativos 21 31 Octubre', 'assets/boletines/pdf-boletines/Movimientos-Administrativos-21-31-Octubre.pdf', NULL, 1, 772, 1),
(805, 'File', '2019-11-12 15:30:13', '2019-11-12 15:30:13', 'Marcas-y-Documentos-Recibidos-09-13-Setiembre.pdf', 'Marcas y Documentos Recibidos 09 13 Setiembre', 'assets/boletines/pdf-boletines/Marcas-y-Documentos-Recibidos-09-13-Setiembre.pdf', NULL, 1, 772, 1),
(797, 'File', '2019-11-11 14:34:53', '2019-11-11 14:34:53', '1350880.pdf', '1350880', 'assets/boletines/pdf-boletines/1350880.pdf', NULL, 1, 772, 1),
(798, 'Image', '2019-11-11 15:08:53', '2019-11-14 22:25:48', 'news.jpg', 'news', 'assets/Uploads/news.jpg', NULL, 1, 1, 1),
(799, 'Image', '2019-11-11 15:36:21', '2019-11-11 15:36:21', 'marcas-interior.jpg', 'marcas interior', 'assets/Uploads/marcas-interior.jpg', NULL, 1, 1, 1),
(796, 'Image', '2019-11-11 14:34:49', '2019-11-11 14:34:49', '1350880.jpg', '1350880', 'assets/boletines/imagenes-boletines/1350880.jpg', NULL, 1, 787, 1),
(788, 'Image', '2019-11-11 14:32:52', '2019-11-11 14:32:52', '1406875.jpg', '1406875', 'assets/boletines/imagenes-boletines/1406875.jpg', NULL, 1, 787, 1),
(789, 'File', '2019-11-11 14:32:57', '2019-11-11 14:32:57', '1406875.pdf', '1406875', 'assets/boletines/pdf-boletines/1406875.pdf', NULL, 1, 772, 1),
(790, 'Image', '2019-11-11 14:33:19', '2019-11-11 14:33:19', '1535138.jpg', '1535138', 'assets/boletines/imagenes-boletines/1535138.jpg', NULL, 1, 787, 1),
(791, 'File', '2019-11-11 14:33:24', '2019-11-11 14:33:24', '1535138.pdf', '1535138', 'assets/boletines/pdf-boletines/1535138.pdf', NULL, 1, 772, 1),
(792, 'Image', '2019-11-11 14:34:02', '2019-11-11 14:34:02', '1600513.jpg', '1600513', 'assets/boletines/imagenes-boletines/1600513.jpg', NULL, 1, 787, 1),
(793, 'File', '2019-11-11 14:34:07', '2019-11-11 14:34:07', '1600513.pdf', '1600513', 'assets/boletines/pdf-boletines/1600513.pdf', NULL, 1, 772, 1),
(794, 'Image', '2019-11-11 14:34:26', '2019-11-11 14:34:26', '1406876.jpg', '1406876', 'assets/boletines/imagenes-boletines/1406876.jpg', NULL, 1, 787, 1),
(795, 'File', '2019-11-11 14:34:31', '2019-11-11 14:34:31', '1406876.pdf', '1406876', 'assets/boletines/pdf-boletines/1406876.pdf', NULL, 1, 772, 1),
(787, 'Folder', '2019-11-11 14:32:51', '2019-11-11 14:32:51', 'imagenes-boletines', 'imagenes-boletines', 'assets/boletines/imagenes-boletines/', NULL, 1, 771, 1),
(752, 'Image', '2019-11-11 00:04:45', '2019-11-11 00:04:45', 'dibujos.jpg', 'dibujos', 'assets/Uploads/dibujos.jpg', NULL, 1, 1, 1),
(753, 'Image', '2019-11-11 00:08:53', '2019-11-11 00:08:53', 'igydo.jpg', 'igydo', 'assets/Uploads/igydo.jpg', NULL, 1, 1, 1),
(754, 'Image', '2019-11-11 00:12:50', '2019-11-11 00:12:50', 'gestionesadministrativas.jpg', 'gestionesadministrativas', 'assets/Uploads/gestionesadministrativas.jpg', NULL, 1, 1, 1),
(755, 'Image', '2019-11-11 00:13:13', '2019-11-11 00:13:13', 'icon-matricula.png', 'icon matricula', 'assets/imagenes-tarjeta/icon-matricula.png', NULL, 1, 733, 1),
(756, 'Image', '2019-11-11 00:13:59', '2019-11-11 00:13:59', 'icon-probono.png', 'icon probono', 'assets/imagenes-tarjeta/icon-probono.png', NULL, 1, 733, 1),
(757, 'Image', '2019-11-11 00:15:12', '2019-11-11 00:15:12', 'icon-actosjuridicos.png', 'icon actosjuridicos', 'assets/imagenes-tarjeta/icon-actosjuridicos.png', NULL, 1, 733, 1),
(758, 'Image', '2019-11-11 00:15:51', '2019-11-11 00:15:51', 'icon-agentes.png', 'icon agentes', 'assets/imagenes-tarjeta/icon-agentes.png', NULL, 1, 733, 1),
(759, 'Image', '2019-11-11 00:19:18', '2019-11-11 00:19:18', 'observancia.jpg', 'observancia', 'assets/Uploads/observancia.jpg', NULL, 1, 1, 1),
(760, 'Image', '2019-11-11 00:20:02', '2019-11-11 00:20:02', 'icon-areas.png', 'icon areas', 'assets/imagenes-tarjeta/icon-areas.png', NULL, 1, 733, 1),
(761, 'Image', '2019-11-11 00:20:21', '2019-11-11 00:20:21', 'icon-denuncia.png', 'icon denuncia', 'assets/imagenes-tarjeta/icon-denuncia.png', NULL, 1, 733, 1),
(762, 'Folder', '2019-11-11 00:56:25', '2019-11-11 00:56:25', 'archivos-pdf', 'archivos-pdf', 'assets/archivos-pdf/', NULL, 1, 0, 1),
(763, 'File', '2019-11-10 20:57:24', '2019-11-10 20:57:24', 'ANEXO_RES_RP_N___209__01.07.16_Manual_DINAPI_revision_01_julio_2016_final.pdf', 'ANEXO_RES_RP_N___209__01.07.16_Manual_DINAPI_revision_01_julio_2016_final.pdf', 'assets/archivos-pdf/ANEXO_RES_RP_N___209__01.07.16_Manual_DINAPI_revision_01_julio_2016_final.pdf', NULL, 1, 762, 1),
(764, 'File', '2019-11-10 20:57:24', '2019-11-10 20:57:24', 'Informe_Gestion.pdf', 'Informe_Gestion.pdf', 'assets/archivos-pdf/Informe_Gestion.pdf', NULL, 1, 762, 1),
(765, 'File', '2019-11-10 20:57:24', '2019-11-10 20:57:24', 'PLAN_ESTRATEGICO_INSTITUCIONAL.pdf', 'PLAN_ESTRATEGICO_INSTITUCIONAL.pdf', 'assets/archivos-pdf/PLAN_ESTRATEGICO_INSTITUCIONAL.pdf', NULL, 1, 762, 1),
(766, 'File', '2019-11-10 20:57:24', '2019-11-10 20:57:24', 'Proyecto_de_Ley.pdf', 'Proyecto_de_Ley.pdf', 'assets/archivos-pdf/Proyecto_de_Ley.pdf', NULL, 1, 762, 1),
(767, 'File', '2019-11-10 20:57:24', '2019-11-10 20:57:24', 'Reso_169_codigo_etica.pdf', 'Reso_169_codigo_etica.pdf', 'assets/archivos-pdf/Reso_169_codigo_etica.pdf', NULL, 1, 762, 1),
(768, 'File', '2019-11-10 20:57:24', '2019-11-10 20:57:24', 'Resolucion_RG_336.pdf', 'Resolucion_RG_336.pdf', 'assets/archivos-pdf/Resolucion_RG_336.pdf', NULL, 1, 762, 1),
(769, 'File', '2019-11-10 20:57:24', '2019-11-10 20:57:24', 'orden_de_publicaciones.pdf', 'orden_de_publicaciones.pdf', 'assets/archivos-pdf/orden_de_publicaciones.pdf', NULL, 1, 762, 1),
(770, 'File', '2019-11-10 20:57:24', '2019-11-10 20:57:24', 'plan_nacional_2030.pdf.pdf', 'plan_nacional_2030.pdf.pdf', 'assets/archivos-pdf/plan_nacional_2030.pdf.pdf', NULL, 1, 762, 1),
(771, 'Folder', '2019-11-11 03:41:14', '2019-11-11 03:41:14', 'boletines', 'boletines', 'assets/boletines/', NULL, 1, 0, 1),
(772, 'Folder', '2019-11-11 03:41:14', '2019-11-11 03:41:14', 'pdf-boletines', 'pdf-boletines', 'assets/boletines/pdf-boletines/', NULL, 1, 771, 1),
(773, 'File', '2019-11-11 03:41:15', '2019-11-11 04:26:39', 'boletin-marcas-octubre-2019-actosjuridicos.pdf', 'boletin marcas octubre 2019 actosjuridicos', 'assets/boletines/pdf-boletines/boletin-marcas-octubre-2019-actosjuridicos.pdf', NULL, 1, 772, 1),
(774, 'File', '2019-11-11 04:27:43', '2019-11-11 04:27:43', 'Marcas-y-Doc-01-al-04-Oct.pdf', 'Marcas y Doc 01 al 04 Oct', 'assets/boletines/pdf-boletines/Marcas-y-Doc-01-al-04-Oct.pdf', NULL, 1, 772, 1),
(775, 'File', '2019-11-11 05:12:39', '2019-11-11 05:12:39', 'Marcas-y-Documentos-Recibidos-07-11-Octubre.pdf', 'Marcas y Documentos Recibidos 07 11 Octubre', 'assets/boletines/pdf-boletines/Marcas-y-Documentos-Recibidos-07-11-Octubre.pdf', NULL, 1, 772, 1),
(776, 'File', '2019-11-11 05:14:00', '2019-11-12 15:25:00', 'Logotipo-de-Marcas-14-18-Octubre.pdf', 'Logotipo de Marcas 14 18 Octubre', 'assets/boletines/pdf-boletines/Logotipo-de-Marcas-14-18-Octubre.pdf', NULL, 1, 772, 1),
(779, 'File', '2019-11-11 05:16:02', '2019-11-12 15:25:35', 'Logotipo-de-Marcas-21-31-Octubre.pdf', 'Logotipo de Marcas 21 31 Octubre', 'assets/boletines/pdf-boletines/Logotipo-de-Marcas-21-31-Octubre.pdf', NULL, 1, 772, 1),
(778, 'File', '2019-11-11 05:15:30', '2019-11-11 05:15:30', 'Marcas-y-Documentos-Recibidos-21-31-Octubre.pdf', 'Marcas y Documentos Recibidos 21 31 Octubre', 'assets/boletines/pdf-boletines/Marcas-y-Documentos-Recibidos-21-31-Octubre.pdf', NULL, 1, 772, 1),
(780, 'File', '2019-11-11 05:16:25', '2019-11-11 05:16:25', 'Logotipos-1-al-04-Octubre.pdf', 'Logotipos 1 al 04 Octubre', 'assets/boletines/pdf-boletines/Logotipos-1-al-04-Octubre.pdf', NULL, 1, 772, 1),
(781, 'File', '2019-11-11 05:16:50', '2019-11-11 05:16:50', 'Mov-Admin-01-al-04-Oct.pdf', 'Mov Admin 01 al 04 Oct', 'assets/boletines/pdf-boletines/Mov-Admin-01-al-04-Oct.pdf', NULL, 1, 772, 1),
(782, 'File', '2019-11-11 05:21:37', '2019-11-11 05:21:37', 'Marcas-y-Documentos-Recibidos-02-06-Setiembre.pdf', 'Marcas y Documentos Recibidos 02 06 Setiembre', 'assets/boletines/pdf-boletines/Marcas-y-Documentos-Recibidos-02-06-Setiembre.pdf', NULL, 1, 772, 1),
(783, 'File', '2019-11-11 14:10:55', '2019-11-12 18:59:05', '03.09.2019-Publicaciones-de-Patentesn.pdf', '03.09.2019 Publicaciones de Patentesn', 'assets/boletines/pdf-boletines/03.09.2019-Publicaciones-de-Patentesn.pdf', NULL, 1, 772, 1),
(784, 'File', '2019-11-11 14:15:15', '2019-11-13 14:41:16', 'Escaneo-Patentes-Agosto-09.08.2019.pdf', 'Escaneo Patentes Agosto 09.08.2019', 'assets/boletines/pdf-boletines/Escaneo-Patentes-Agosto-09.08.2019.pdf', NULL, 1, 772, 1),
(785, 'File', '2019-11-11 14:16:12', '2019-11-11 14:16:12', 'Patentes-Diciembre-2018-opt.pdf', 'Patentes Diciembre 2018 opt', 'assets/boletines/pdf-boletines/Patentes-Diciembre-2018-opt.pdf', NULL, 1, 772, 1),
(786, 'File', '2019-11-11 14:16:32', '2019-11-13 15:08:47', 'Patentes-Noviembre-2018-opt.pdf', 'Patentes Noviembre 2018 opt', 'assets/boletines/pdf-boletines/Patentes-Noviembre-2018-opt.pdf', NULL, 1, 772, 1),
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
(731, 'Image', '2019-11-08 21:28:04', '2019-11-12 18:12:40', 'institucional.jpg', 'institucional', 'assets/Uploads/institucional.jpg', NULL, 1, 1, 1),
(732, 'Image', '2019-11-10 22:47:36', '2019-11-10 22:47:36', 'dautor2.jpg', 'dautor2', 'assets/Uploads/dautor2.jpg', NULL, 1, 1, 1),
(733, 'Folder', '2019-11-10 23:05:48', '2019-11-10 23:05:48', 'imagenes-tarjeta', 'imagenes-tarjeta', 'assets/imagenes-tarjeta/', NULL, 1, 0, 1),
(734, 'Image', '2019-11-10 23:05:48', '2019-11-11 00:14:18', 'icon-registropoder.png', 'icon registropoder', 'assets/imagenes-tarjeta/icon-registropoder.png', NULL, 1, 733, 1),
(735, 'Image', '2019-11-10 23:07:30', '2019-11-10 23:07:30', 'icon-industriacreativa.png', 'icon industriacreativa', 'assets/imagenes-tarjeta/icon-industriacreativa.png', NULL, 1, 733, 1),
(736, 'Image', '2019-11-10 23:08:25', '2019-11-10 23:08:25', 'icon-personas.png', 'icon personas', 'assets/imagenes-tarjeta/icon-personas.png', NULL, 1, 733, 1),
(737, 'Image', '2019-11-10 23:08:59', '2019-11-11 00:14:35', 'icon-circulares.png', 'icon circulares', 'assets/imagenes-tarjeta/icon-circulares.png', NULL, 1, 733, 1),
(738, 'Image', '2019-11-10 23:35:05', '2019-11-11 19:08:25', 'marcas2.jpg', 'marcas2', 'assets/Uploads/marcas2.jpg', NULL, 1, 1, 1),
(739, 'Image', '2019-11-10 23:35:37', '2019-11-11 00:19:44', 'icon-info.png', 'icon info', 'assets/imagenes-tarjeta/icon-info.png', NULL, 1, 733, 1),
(740, 'Image', '2019-11-10 23:38:25', '2019-11-11 00:10:40', 'icon-consulta.png', 'icon consulta', 'assets/imagenes-tarjeta/icon-consulta.png', NULL, 1, 733, 1),
(741, 'Image', '2019-11-10 23:38:49', '2019-11-10 23:38:49', 'icon-niza.png', 'icon niza', 'assets/imagenes-tarjeta/icon-niza.png', NULL, 1, 733, 1),
(742, 'Image', '2019-11-10 23:39:20', '2019-11-11 00:06:20', 'icon-boletin.png', 'icon boletin', 'assets/imagenes-tarjeta/icon-boletin.png', NULL, 1, 733, 1),
(743, 'Image', '2019-11-10 23:44:23', '2019-11-10 23:44:23', 'patente.jpg', 'patente', 'assets/Uploads/patente.jpg', NULL, 1, 1, 1),
(808, 'File', '2019-11-12 15:31:56', '2019-11-12 15:31:56', 'Logotipo-de-Marcas-09-13-Setiembre.pdf', 'Logotipo de Marcas 09 13 Setiembre', 'assets/boletines/pdf-boletines/Logotipo-de-Marcas-09-13-Setiembre.pdf', NULL, 1, 772, 1),
(809, 'File', '2019-11-12 15:37:56', '2019-11-12 15:37:56', 'Logotipo-de-Marcas-16-20-Setiembre.pdf', 'Logotipo de Marcas 16 20 Setiembre', 'assets/boletines/pdf-boletines/Logotipo-de-Marcas-16-20-Setiembre.pdf', NULL, 1, 772, 1),
(810, 'Image', '2019-11-12 15:38:03', '2019-11-12 15:59:24', '3a.png', '3a', 'assets/Uploads/3a.png', NULL, 1, 1, 1),
(811, 'File', '2019-11-12 15:38:28', '2019-11-12 15:38:28', 'Movimientos-Administrativos-02-06-Setiembre.pdf', 'Movimientos Administrativos 02 06 Setiembre', 'assets/boletines/pdf-boletines/Movimientos-Administrativos-02-06-Setiembre.pdf', NULL, 1, 772, 1),
(812, 'Image', '2019-11-12 15:38:46', '2019-11-12 15:59:22', '3.png', '3', 'assets/Uploads/3.png', NULL, 1, 1, 1),
(813, 'File', '2019-11-12 15:40:31', '2019-11-12 15:40:31', 'Movimientos-Administrativos-09-13-Setiembre.pdf', 'Movimientos Administrativos 09 13 Setiembre', 'assets/boletines/pdf-boletines/Movimientos-Administrativos-09-13-Setiembre.pdf', NULL, 1, 772, 1),
(814, 'Image', '2019-11-12 15:40:41', '2019-11-12 15:59:43', '1.png', '1', 'assets/Uploads/1.png', NULL, 1, 1, 1),
(815, 'Image', '2019-11-12 15:40:46', '2019-11-12 15:59:44', '1a.png', '1a', 'assets/Uploads/1a.png', NULL, 1, 1, 1),
(816, 'File', '2019-11-12 15:40:58', '2019-11-12 15:40:58', 'Movimientos-Administrativos-16-20-Setiembre.pdf', 'Movimientos Administrativos 16 20 Setiembre', 'assets/boletines/pdf-boletines/Movimientos-Administrativos-16-20-Setiembre.pdf', NULL, 1, 772, 1),
(817, 'Image', '2019-11-12 15:41:12', '2019-11-12 15:41:12', '2.png', '2', 'assets/Uploads/2.png', NULL, 1, 1, 1),
(818, 'Image', '2019-11-12 15:41:17', '2019-11-12 15:41:17', '2a.png', '2a', 'assets/Uploads/2a.png', NULL, 1, 1, 1),
(819, 'File', '2019-11-12 15:51:33', '2019-11-12 15:51:33', 'Marcas-y-Documentos-Recibidos-01-08-Noviembre.pdf', 'Marcas y Documentos Recibidos 01 08 Noviembre', 'assets/boletines/pdf-boletines/Marcas-y-Documentos-Recibidos-01-08-Noviembre.pdf', NULL, 1, 772, 1),
(820, 'File', '2019-11-12 15:51:55', '2019-11-12 15:51:55', 'Logotipo-de-Marcas-01-08-Noviembre.pdf', 'Logotipo de Marcas 01 08 Noviembre', 'assets/boletines/pdf-boletines/Logotipo-de-Marcas-01-08-Noviembre.pdf', NULL, 1, 772, 1),
(821, 'File', '2019-11-12 15:52:24', '2019-11-12 15:52:24', 'Movimientos-Administrativos-01-08-Noviembre.pdf', 'Movimientos Administrativos 01 08 Noviembre', 'assets/boletines/pdf-boletines/Movimientos-Administrativos-01-08-Noviembre.pdf', NULL, 1, 772, 1),
(822, 'File', '2019-11-12 15:54:06', '2019-11-12 15:54:06', 'Marcas-y-Documentos-Recibidos-01-09-Agosto.pdf', 'Marcas y Documentos Recibidos 01 09 Agosto', 'assets/boletines/pdf-boletines/Marcas-y-Documentos-Recibidos-01-09-Agosto.pdf', NULL, 1, 772, 1),
(823, 'File', '2019-11-12 16:08:10', '2019-11-12 16:14:02', 'Marcas-y-Documentos-Recibidos-19-23-Agosto.pdf', 'Marcas y Documentos Recibidos 19 23 Agosto', 'assets/boletines/pdf-boletines/Marcas-y-Documentos-Recibidos-19-23-Agosto.pdf', NULL, 1, 772, 1),
(824, 'File', '2019-11-12 16:09:21', '2019-11-12 16:14:26', 'Marcas-y-Documentos-Recibidos-26-30-Agosto.pdf', 'Marcas y Documentos Recibidos 26 30 Agosto', 'assets/boletines/pdf-boletines/Marcas-y-Documentos-Recibidos-26-30-Agosto.pdf', NULL, 1, 772, 1),
(825, 'File', '2019-11-12 16:09:46', '2019-11-12 16:09:46', 'Logotipo-de-Marcas-01-09-Agosto.pdf', 'Logotipo de Marcas 01 09 Agosto', 'assets/boletines/pdf-boletines/Logotipo-de-Marcas-01-09-Agosto.pdf', NULL, 1, 772, 1),
(826, 'File', '2019-11-12 16:10:47', '2019-11-12 16:10:47', 'Logotipo-de-Marcas-12-16-Agosto.pdf', 'Logotipo de Marcas 12 16 Agosto', 'assets/boletines/pdf-boletines/Logotipo-de-Marcas-12-16-Agosto.pdf', NULL, 1, 772, 1),
(827, 'File', '2019-11-12 16:11:11', '2019-11-12 16:11:22', 'Logotipo-de-Marcas-19-23-Agosto.pdf', 'Logotipo de Marcas 19 23 Agosto', 'assets/boletines/pdf-boletines/Logotipo-de-Marcas-19-23-Agosto.pdf', NULL, 1, 772, 1),
(828, 'File', '2019-11-12 16:11:53', '2019-11-12 16:12:02', 'Logotipo-de-Marcas-26-30-Agosto.pdf', 'Logotipo de Marcas 26 30 Agosto', 'assets/boletines/pdf-boletines/Logotipo-de-Marcas-26-30-Agosto.pdf', NULL, 1, 772, 1),
(829, 'File', '2019-11-12 16:15:14', '2019-11-12 16:15:14', 'Movimientos-Administrativos-01-09-Agosto.pdf', 'Movimientos Administrativos 01 09 Agosto', 'assets/boletines/pdf-boletines/Movimientos-Administrativos-01-09-Agosto.pdf', NULL, 1, 772, 1),
(830, 'File', '2019-11-12 16:15:47', '2019-11-12 16:15:47', 'Movimientos-Administrativos-12-16-Agosto.pdf', 'Movimientos Administrativos 12 16 Agosto', 'assets/boletines/pdf-boletines/Movimientos-Administrativos-12-16-Agosto.pdf', NULL, 1, 772, 1),
(831, 'File', '2019-11-12 16:16:41', '2019-11-12 16:16:41', 'Movimientos-Administrativos-19-23-Agosto.pdf', 'Movimientos Administrativos 19 23 Agosto', 'assets/boletines/pdf-boletines/Movimientos-Administrativos-19-23-Agosto.pdf', NULL, 1, 772, 1),
(832, 'File', '2019-11-12 16:17:02', '2019-11-12 16:17:02', 'Movimientos-Administrativos-26-30-Agosto.pdf', 'Movimientos Administrativos 26 30 Agosto', 'assets/boletines/pdf-boletines/Movimientos-Administrativos-26-30-Agosto.pdf', NULL, 1, 772, 1),
(833, 'File', '2019-11-12 16:17:46', '2019-11-12 16:17:46', 'Marcas-y-Documentos-Recibidos-01-05-Julio.pdf', 'Marcas y Documentos Recibidos 01 05 Julio', 'assets/boletines/pdf-boletines/Marcas-y-Documentos-Recibidos-01-05-Julio.pdf', NULL, 1, 772, 1),
(834, 'File', '2019-11-12 16:18:08', '2019-11-12 16:18:08', 'Marcas-y-Documentos-Recibidos-08-12-Julio.pdf', 'Marcas y Documentos Recibidos 08 12 Julio', 'assets/boletines/pdf-boletines/Marcas-y-Documentos-Recibidos-08-12-Julio.pdf', NULL, 1, 772, 1),
(835, 'File', '2019-11-12 16:18:33', '2019-11-12 16:18:33', 'Marcas-y-Documentos-Recibidos-15-19-Julio.pdf', 'Marcas y Documentos Recibidos 15 19 Julio', 'assets/boletines/pdf-boletines/Marcas-y-Documentos-Recibidos-15-19-Julio.pdf', NULL, 1, 772, 1),
(836, 'File', '2019-11-12 16:18:58', '2019-11-12 16:18:58', 'Marcas-y-Documentos-Recibidos-22-31Julio.pdf', 'Marcas y Documentos Recibidos 22 31Julio', 'assets/boletines/pdf-boletines/Marcas-y-Documentos-Recibidos-22-31Julio.pdf', NULL, 1, 772, 1),
(837, 'File', '2019-11-12 16:19:33', '2019-11-12 16:19:33', 'Logotipo-de-Marcas-01-05-Julio.pdf', 'Logotipo de Marcas 01 05 Julio', 'assets/boletines/pdf-boletines/Logotipo-de-Marcas-01-05-Julio.pdf', NULL, 1, 772, 1),
(838, 'File', '2019-11-12 16:19:53', '2019-11-12 16:22:11', 'Logotipo-de-Marcas-08-12-Julio.pdf', 'Logotipo de Marcas 08 12 Julio', 'assets/boletines/pdf-boletines/Logotipo-de-Marcas-08-12-Julio.pdf', NULL, 1, 772, 1),
(839, 'File', '2019-11-12 16:20:17', '2019-11-12 16:20:17', 'Logotipo-de-Marcas-15-19-Julio.pdf', 'Logotipo de Marcas 15 19 Julio', 'assets/boletines/pdf-boletines/Logotipo-de-Marcas-15-19-Julio.pdf', NULL, 1, 772, 1),
(840, 'File', '2019-11-12 16:20:47', '2019-11-12 16:20:47', 'Logotipo-de-Marcas-22-31-Julio.pdf', 'Logotipo de Marcas 22 31 Julio', 'assets/boletines/pdf-boletines/Logotipo-de-Marcas-22-31-Julio.pdf', NULL, 1, 772, 1),
(841, 'File', '2019-11-12 16:21:36', '2019-11-12 16:21:36', 'Movimientos-Administrativos-01-05-Julio.pdf', 'Movimientos Administrativos 01 05 Julio', 'assets/boletines/pdf-boletines/Movimientos-Administrativos-01-05-Julio.pdf', NULL, 1, 772, 1),
(842, 'File', '2019-11-12 16:22:37', '2019-11-12 16:22:37', 'Movimientos-Administrativos-08-12-Julio.pdf', 'Movimientos Administrativos 08 12 Julio', 'assets/boletines/pdf-boletines/Movimientos-Administrativos-08-12-Julio.pdf', NULL, 1, 772, 1),
(843, 'File', '2019-11-12 16:22:59', '2019-11-12 16:22:59', 'Movimientos-Administrativos-15-19-Julio.pdf', 'Movimientos Administrativos 15 19 Julio', 'assets/boletines/pdf-boletines/Movimientos-Administrativos-15-19-Julio.pdf', NULL, 1, 772, 1),
(844, 'File', '2019-11-12 16:23:18', '2019-11-12 16:23:18', 'Movimientos-Administrativos-22-31-Julio.pdf', 'Movimientos Administrativos 22 31 Julio', 'assets/boletines/pdf-boletines/Movimientos-Administrativos-22-31-Julio.pdf', NULL, 1, 772, 1),
(845, 'File', '2019-11-12 16:55:30', '2019-11-12 16:55:30', 'Boletin-de-Patentes-N-11-06.11.2018-opt.pdf', 'Boletin de Patentes N 11 06.11.2018 opt', 'assets/boletines/pdf-boletines/Boletin-de-Patentes-N-11-06.11.2018-opt.pdf', NULL, 1, 772, 1),
(846, 'File', '2019-11-12 16:57:42', '2019-11-12 16:57:42', 'Setiembre-01.10.18-opt-opt.pdf', 'Setiembre 01.10.18 opt opt', 'assets/boletines/pdf-boletines/Setiembre-01.10.18-opt-opt.pdf', NULL, 1, 772, 1),
(847, 'File', '2019-11-12 16:58:24', '2019-11-12 16:58:24', 'Boletin-de-Patentes-N-9-04.09.2018-opt.pdf', 'Boletin de Patentes N 9 04.09.2018 opt', 'assets/boletines/pdf-boletines/Boletin-de-Patentes-N-9-04.09.2018-opt.pdf', NULL, 1, 772, 1),
(848, 'File', '2019-11-12 17:27:00', '2019-11-12 17:27:00', '1.pdf', '1', 'assets/archivos-pdf/1.pdf', NULL, 1, 762, 1),
(849, 'File', '2019-11-12 17:29:35', '2019-11-14 15:08:52', '2.pdf', '2', 'assets/archivos-pdf/2.pdf', NULL, 1, 762, 1),
(850, 'File', '2019-11-12 17:29:45', '2019-11-14 15:09:36', '3.pdf', '3', 'assets/archivos-pdf/3.pdf', NULL, 1, 762, 1),
(851, 'File', '2019-11-12 18:40:51', '2019-11-12 18:40:51', 'Boletin-de-Patentes-N-8-06.08.2018-opt.pdf', 'Boletin de Patentes N 8 06.08.2018 opt', 'assets/boletines/pdf-boletines/Boletin-de-Patentes-N-8-06.08.2018-opt.pdf', NULL, 1, 772, 1),
(852, 'File', '2019-11-12 18:41:58', '2019-11-12 18:41:58', 'Escaneo-Patentes-03.07.2018-opt.pdf', 'Escaneo Patentes 03.07.2018 opt', 'assets/boletines/pdf-boletines/Escaneo-Patentes-03.07.2018-opt.pdf', NULL, 1, 772, 1),
(853, 'File', '2019-11-12 18:43:16', '2019-11-12 18:43:16', 'Patentes-Mayo-2018.pdf', 'Patentes Mayo 2018', 'assets/boletines/pdf-boletines/Patentes-Mayo-2018.pdf', NULL, 1, 772, 1),
(854, 'File', '2019-11-12 18:43:44', '2019-11-13 14:43:23', 'Escaneos-Patentes-junio-2019-opt.pdf', 'Escaneos Patentes junio 2019 opt', 'assets/boletines/pdf-boletines/Escaneos-Patentes-junio-2019-opt.pdf', NULL, 1, 772, 1),
(855, 'File', '2019-11-12 18:44:43', '2019-11-13 14:45:03', 'Escaneos-Patentes-abril-2019-opt-opt.pdf', 'Escaneos Patentes abril 2019 opt opt', 'assets/boletines/pdf-boletines/Escaneos-Patentes-abril-2019-opt-opt.pdf', NULL, 1, 772, 1),
(856, 'File', '2019-11-12 18:45:51', '2019-11-12 18:45:51', 'Patentes-marzo-2018-opt.pdf', 'Patentes marzo 2018 opt', 'assets/boletines/pdf-boletines/Patentes-marzo-2018-opt.pdf', NULL, 1, 772, 1),
(857, 'File', '2019-11-12 18:46:24', '2019-11-12 18:46:24', 'Pantenes-Febrero-2018-opt.pdf', 'Pantenes Febrero 2018 opt', 'assets/boletines/pdf-boletines/Pantenes-Febrero-2018-opt.pdf', NULL, 1, 772, 1),
(858, 'File', '2019-11-12 18:47:41', '2019-11-12 18:47:41', 'Boletin-Patentes-01.18-opt.pdf', 'Boletin Patentes 01.18 opt', 'assets/boletines/pdf-boletines/Boletin-Patentes-01.18-opt.pdf', NULL, 1, 772, 1),
(859, 'File', '2019-11-12 18:53:01', '2019-11-14 15:16:25', 'AL-CONVENIO-MARCO-DE-COOPERACION-INTERINSTITUCIONAL-ENTRE-LA-SECRETARIA-NACIONAL-DE-CULTURA-SNC-Y-LA-DIRECCION-NACIONAL-DE-PROPIEDAD-INTELECTUAL-DINAPI.pdf', 'AL CONVENIO MARCO DE COOPERACION INTERINSTITUCIONAL ENTRE LA SECRETARIA NACIONAL DE CULTURA SNC Y LA DIRECCION NACIONAL DE PROPIEDAD INTELECTUAL DINAPI', 'assets/archivos-pdf/AL-CONVENIO-MARCO-DE-COOPERACION-INTERINSTITUCIONAL-ENTRE-LA-SECRETARIA-NACIONAL-DE-CULTURA-SNC-Y-LA-DIRECCION-NACIONAL-DE-PROPIEDAD-INTELECTUAL-DINAPI.pdf', NULL, 1, 762, 1),
(860, 'File', '2019-11-12 18:55:43', '2019-11-12 18:55:43', 'Boletin-de-Patentes-N-11-08.11.2019.pdf', 'Boletin de Patentes N 11 08.11.2019', 'assets/boletines/pdf-boletines/Boletin-de-Patentes-N-11-08.11.2019.pdf', NULL, 1, 772, 1),
(861, 'File', '2019-11-12 18:57:41', '2019-11-12 18:57:41', 'Boletin-Patentes-Setiembre.pdf', 'Boletin Patentes Setiembre', 'assets/boletines/pdf-boletines/Boletin-Patentes-Setiembre.pdf', NULL, 1, 772, 1),
(862, 'File', '2019-11-13 14:42:28', '2019-11-13 14:42:28', 'Escaneos-Patentes-03.07.2019-opt.pdf', 'Escaneos Patentes 03.07.2019 opt', 'assets/boletines/pdf-boletines/Escaneos-Patentes-03.07.2019-opt.pdf', NULL, 1, 772, 1),
(863, 'File', '2019-11-13 14:44:15', '2019-11-13 14:44:15', 'Boletin-de-Patentes-N05-21.05.2019-opt.pdf', 'Boletin de Patentes N05 21.05.2019 opt', 'assets/boletines/pdf-boletines/Boletin-de-Patentes-N05-21.05.2019-opt.pdf', NULL, 1, 772, 1),
(864, 'File', '2019-11-13 15:06:57', '2019-11-13 15:06:57', 'Marzo-2019-Patentes-opt.pdf', 'Marzo 2019 Patentes opt', 'assets/boletines/pdf-boletines/Marzo-2019-Patentes-opt.pdf', NULL, 1, 772, 1),
(865, 'Image', '2019-11-13 15:07:50', '2019-11-13 15:11:51', 'boton-expandir.png', 'boton expandir', 'assets/Uploads/boton-expandir.png', NULL, 1, 1, 1),
(866, 'File', '2019-11-13 15:07:52', '2019-11-13 15:07:52', 'Febrero-2019.pdf', 'Febrero 2019', 'assets/boletines/pdf-boletines/Febrero-2019.pdf', NULL, 1, 772, 1),
(867, 'Image', '2019-11-13 15:44:51', '2019-11-13 20:45:41', 'derechoautor-interior.jpg', 'derechoautor interior', 'assets/Uploads/derechoautor-interior.jpg', NULL, 1, 1, 1),
(868, 'Folder', '2019-11-13 15:46:08', '2019-11-13 15:46:08', 'acordeon', 'acordeon', 'assets/acordeon/', NULL, 1, 0, 1),
(869, 'Folder', '2019-11-13 15:46:08', '2019-11-13 15:46:08', 'archivos-anexos', 'archivos-anexos', 'assets/acordeon/archivos-anexos/', NULL, 1, 868, 1),
(870, 'File', '2019-11-13 15:46:09', '2019-11-13 15:46:09', 'Formulario-015-ANEXO-TITULARES-Marcas-Version-3.0.doc', 'Formulario 015 ANEXO TITULARES Marcas Version 3.0', 'assets/acordeon/archivos-anexos/Formulario-015-ANEXO-TITULARES-Marcas-Version-3.0.doc', NULL, 1, 869, 1),
(871, 'Folder', '2019-11-13 15:48:23', '2019-11-13 15:48:23', 'archivos-adjuntos', 'archivos-adjuntos', 'assets/acordeon/archivos-adjuntos/', NULL, 1, 868, 1),
(872, 'File', '2019-11-13 15:48:24', '2019-11-13 15:48:24', 'Formulario-018-ACTOS-CONVENIOS-CONTRATOS-Derechos-de-Autor-Version-3.0.doc', 'Formulario 018 ACTOS CONVENIOS CONTRATOS Derechos de Autor Version 3.0', 'assets/acordeon/archivos-adjuntos/Formulario-018-ACTOS-CONVENIOS-CONTRATOS-Derechos-de-Autor-Version-3.0.doc', NULL, 1, 871, 1),
(873, 'File', '2019-11-13 15:49:12', '2019-11-13 15:49:12', 'Formulario-027-SOLICITUD-DE-INSCRIPCION-DE-EDITORIAL-MUSICAL-Derechos-de-Autor-Version-3-0.doc', 'Formulario 027 SOLICITUD DE INSCRIPCION DE EDITORIAL MUSICAL Derechos de Autor Version 3 0', 'assets/acordeon/archivos-adjuntos/Formulario-027-SOLICITUD-DE-INSCRIPCION-DE-EDITORIAL-MUSICAL-Derechos-de-Autor-Version-3-0.doc', NULL, 1, 871, 1),
(874, 'Folder', '2019-11-13 17:45:32', '2019-11-13 17:45:32', 'noticias', 'noticias', 'assets/noticias/', NULL, 1, 0, 1),
(875, 'Folder', '2019-11-13 17:45:32', '2019-11-13 17:45:32', 'imagenes-noticias', 'imagenes-noticias', 'assets/noticias/imagenes-noticias/', NULL, 1, 874, 1),
(876, 'Image', '2019-11-13 17:45:33', '2019-11-13 17:45:33', '25.jpg', '25', 'assets/noticias/imagenes-noticias/25.jpg', NULL, 1, 875, 1),
(877, 'Image', '2019-11-13 17:58:28', '2019-11-13 17:58:28', '24.jpg', '24', 'assets/noticias/imagenes-noticias/24.jpg', NULL, 1, 875, 1),
(878, 'Image', '2019-11-13 19:38:34', '2019-11-13 19:38:34', '19.jpg', '19', 'assets/noticias/imagenes-noticias/19.jpg', NULL, 1, 875, 1),
(879, 'Image', '2019-11-13 19:39:10', '2019-11-13 19:39:10', '18.jpg', '18', 'assets/noticias/imagenes-noticias/18.jpg', NULL, 1, 875, 1),
(880, 'Image', '2019-11-13 20:59:48', '2019-11-13 20:59:48', 'observancia-interior.jpg', 'observancia interior', 'assets/Uploads/observancia-interior.jpg', NULL, 1, 1, 1),
(881, 'File', '2019-11-14 15:13:24', '2019-11-14 15:13:24', '4.pdf', '4', 'assets/archivos-pdf/4.pdf', NULL, 1, 762, 1),
(882, 'File', '2019-11-14 15:13:59', '2019-11-14 15:13:59', '5.pdf', '5', 'assets/archivos-pdf/5.pdf', NULL, 1, 762, 1),
(883, 'File', '2019-11-14 15:14:29', '2019-11-14 15:14:29', '6.pdf', '6', 'assets/archivos-pdf/6.pdf', NULL, 1, 762, 1),
(884, 'File', '2019-11-14 15:15:31', '2019-11-14 15:15:31', 'CONVENIO-MARCO-DE-COLABORACION-INSTITUCIONAL-ENTRE-ASIPI-Y-DINAPI.pdf', 'CONVENIO MARCO DE COLABORACION INSTITUCIONAL ENTRE ASIPI Y DINAPI', 'assets/archivos-pdf/CONVENIO-MARCO-DE-COLABORACION-INSTITUCIONAL-ENTRE-ASIPI-Y-DINAPI.pdf', NULL, 1, 762, 1),
(885, 'File', '2019-11-14 15:16:59', '2019-11-14 15:16:59', 'CONVENIO-DINAPI-MEC-17-11-16.pdf', 'CONVENIO DINAPI MEC 17 11 16', 'assets/archivos-pdf/CONVENIO-DINAPI-MEC-17-11-16.pdf', NULL, 1, 762, 1),
(886, 'File', '2019-11-14 15:17:31', '2019-11-14 15:17:31', 'Convenio-Marco-de-Cooperacion-Tecnica-y-Fortalecimiento-Institucional-que-celebran-por-una-parte-la-Comision-Nacional-de-la-Competencia-CONACOM-Y-LA-DINAPI.pdf', 'Convenio Marco de Cooperacion Tecnica y Fortalecimiento Institucional que celebran por una parte la Comision Nacional de la Competencia CONACOM Y LA DINAPI', 'assets/archivos-pdf/Convenio-Marco-de-Cooperacion-Tecnica-y-Fortalecimiento-Institucional-que-celebran-por-una-parte-la-Comision-Nacional-de-la-Competencia-CONACOM-Y-LA-DINAPI.pdf', NULL, 1, 762, 1),
(887, 'File', '2019-11-14 15:18:24', '2019-11-14 15:18:24', 'Convenio-MIPYMES.pdf', 'Convenio MIPYMES', 'assets/archivos-pdf/Convenio-MIPYMES.pdf', NULL, 1, 762, 1),
(888, 'File', '2019-11-14 15:18:56', '2019-11-14 15:18:56', 'CONVENIO-DE-COOPERACION-FOX-LATIN-AMERICAN-CHANEL-LLC-DINAPI-17-11-16.pdf', 'CONVENIO DE COOPERACION FOX LATIN AMERICAN CHANEL LLC DINAPI 17 11 16', 'assets/archivos-pdf/CONVENIO-DE-COOPERACION-FOX-LATIN-AMERICAN-CHANEL-LLC-DINAPI-17-11-16.pdf', NULL, 1, 762, 1),
(889, 'File', '2019-11-14 15:19:25', '2019-11-14 15:19:25', 'CONVENIO-CAF.pdf', 'CONVENIO CAF', 'assets/archivos-pdf/CONVENIO-CAF.pdf', NULL, 1, 762, 1),
(890, 'File', '2019-11-14 15:20:01', '2019-11-14 15:20:01', 'CONVENIO-DE-COOPERACION-TECNICA-ENTRE-DINAPI-Y-LA-CISAC.pdf', 'CONVENIO DE COOPERACION TECNICA ENTRE DINAPI Y LA CISAC', 'assets/archivos-pdf/CONVENIO-DE-COOPERACION-TECNICA-ENTRE-DINAPI-Y-LA-CISAC.pdf', NULL, 1, 762, 1),
(891, 'File', '2019-11-14 15:20:33', '2019-11-14 15:20:33', 'PROTOCOLO-ACUERDO-DE-COOP.-SIST.-DE-COOP.-EN-PI-PROSUR-PROSUL.pdf', 'PROTOCOLO ACUERDO DE COOP. SIST. DE COOP. EN PI PROSUR PROSUL', 'assets/archivos-pdf/PROTOCOLO-ACUERDO-DE-COOP.-SIST.-DE-COOP.-EN-PI-PROSUR-PROSUL.pdf', NULL, 1, 762, 1),
(892, 'File', '2019-11-14 15:20:54', '2019-11-14 15:20:54', 'CONVENIO-DINAPI-CONATEL.pdf', 'CONVENIO DINAPI CONATEL', 'assets/archivos-pdf/CONVENIO-DINAPI-CONATEL.pdf', NULL, 1, 762, 1),
(893, 'File', '2019-11-14 15:21:18', '2019-11-14 15:21:18', 'MEMORANDUM-DE-ENTENDIMIENTO-OMPI-DINAPI.pdf', 'MEMORANDUM DE ENTENDIMIENTO OMPI DINAPI', 'assets/archivos-pdf/MEMORANDUM-DE-ENTENDIMIENTO-OMPI-DINAPI.pdf', NULL, 1, 762, 1),
(894, 'File', '2019-11-14 15:22:19', '2019-11-14 15:22:19', 'CONVENIO-DINAPI-SENATIC-N1.pdf', 'CONVENIO DINAPI SENATIC N1', 'assets/archivos-pdf/CONVENIO-DINAPI-SENATIC-N1.pdf', NULL, 1, 762, 1),
(895, 'File', '2019-11-14 15:23:47', '2019-11-14 15:23:47', 'CONVENIO-MARCO-IPA.pdf', 'CONVENIO MARCO IPA', 'assets/archivos-pdf/CONVENIO-MARCO-IPA.pdf', NULL, 1, 762, 1),
(896, 'File', '2019-11-14 15:25:16', '2019-11-14 15:25:16', 'CONVENIO-DINAPI-FADA-UNA-02.12.15.pdf', 'CONVENIO DINAPI FADA UNA 02.12.15', 'assets/archivos-pdf/CONVENIO-DINAPI-FADA-UNA-02.12.15.pdf', NULL, 1, 762, 1),
(897, 'File', '2019-11-14 15:25:44', '2019-11-14 15:25:44', 'MEMORANDUM-DE-ENTENDIMIENTO-PROGRAMA-PILOTO-PATENTES-SIST.-COOP.-PROP.-INDUS.-PROSUR-PROSUL.pdf', 'MEMORANDUM DE ENTENDIMIENTO PROGRAMA PILOTO PATENTES SIST. COOP. PROP. INDUS. PROSUR PROSUL', 'assets/archivos-pdf/MEMORANDUM-DE-ENTENDIMIENTO-PROGRAMA-PILOTO-PATENTES-SIST.-COOP.-PROP.-INDUS.-PROSUR-PROSUL.pdf', NULL, 1, 762, 1),
(898, 'File', '2019-11-14 15:28:22', '2019-11-14 15:28:22', 'CONVENIO-MARCO-DINAPI-ESPANA.pdf', 'CONVENIO MARCO DINAPI ESPANA', 'assets/archivos-pdf/CONVENIO-MARCO-DINAPI-ESPANA.pdf', NULL, 1, 762, 1),
(899, 'File', '2019-11-14 15:28:59', '2019-11-14 15:28:59', 'CONVENIO-DINAPI-COREA-MISION.pdf', 'CONVENIO DINAPI COREA MISION', 'assets/archivos-pdf/CONVENIO-DINAPI-COREA-MISION.pdf', NULL, 1, 762, 1),
(900, 'File', '2019-11-14 15:29:30', '2019-11-14 15:29:30', 'RESOLUCION-RG-14-15-DECLARA-DE-INTERES-NACIONAL-PRODUCCION-CINEMATOGRAFICA-MANGORE.pdf', 'RESOLUCION RG 14 15 DECLARA DE INTERES NACIONAL PRODUCCION CINEMATOGRAFICA MANGORE', 'assets/archivos-pdf/RESOLUCION-RG-14-15-DECLARA-DE-INTERES-NACIONAL-PRODUCCION-CINEMATOGRAFICA-MANGORE.pdf', NULL, 1, 762, 1),
(901, 'File', '2019-11-14 15:30:08', '2019-11-14 15:30:08', 'CONVENIO-MARCO-DE-COOPERACION-Y-APOYO-INTERINSTITUCIONAL-ENTRE-EL-CABILDO-Y-LA-DINAPI.pdf', 'CONVENIO MARCO DE COOPERACION Y APOYO INTERINSTITUCIONAL ENTRE EL CABILDO Y LA DINAPI', 'assets/archivos-pdf/CONVENIO-MARCO-DE-COOPERACION-Y-APOYO-INTERINSTITUCIONAL-ENTRE-EL-CABILDO-Y-LA-DINAPI.pdf', NULL, 1, 762, 1),
(902, 'File', '2019-11-14 15:30:31', '2019-11-14 15:30:31', 'CONVENIO-MARCO-SUSCRIPTO-ENTRE-LA-DINAPI-Y-EL-IPA.pdf', 'CONVENIO MARCO SUSCRIPTO ENTRE LA DINAPI Y EL IPA', 'assets/archivos-pdf/CONVENIO-MARCO-SUSCRIPTO-ENTRE-LA-DINAPI-Y-EL-IPA.pdf', NULL, 1, 762, 1),
(903, 'Folder', '2019-11-14 22:19:55', '2019-11-14 22:19:55', 'archivos-institucionales', 'archivos-institucionales', 'assets/archivos-institucionales/', NULL, 1, 0, 1),
(904, 'File', '2019-11-14 22:20:36', '2019-11-14 22:20:36', 'Informe-Gestion.pdf', 'Informe Gestion', 'assets/archivos-institucionales/Informe-Gestion.pdf', NULL, 1, 903, 1),
(905, 'File', '2019-11-14 22:26:56', '2019-11-14 22:26:56', 'PLAN-ESTRATEGICO-INSTITUCIONAL.pdf', 'PLAN ESTRATEGICO INSTITUCIONAL', 'assets/archivos-pdf/PLAN-ESTRATEGICO-INSTITUCIONAL.pdf', NULL, 1, 762, 1),
(906, 'File', '2019-11-15 14:22:19', '2019-11-15 14:22:19', 'ACTA-MECIP-2019.pdf', 'ACTA MECIP 2019', 'assets/archivos-pdf/ACTA-MECIP-2019.pdf', NULL, 1, 762, 1),
(907, 'File', '2019-11-15 14:37:02', '2019-11-15 14:37:02', 'RES-NRO-8.pdf', 'RES NRO 8', 'assets/archivos-pdf/RES-NRO-8.pdf', NULL, 1, 762, 1),
(908, 'File', '2019-11-15 14:37:42', '2019-11-15 14:37:42', 'RES-NRO-07.pdf', 'RES NRO 07', 'assets/archivos-pdf/RES-NRO-07.pdf', NULL, 1, 762, 1),
(909, 'File', '2019-11-15 14:39:24', '2019-11-15 14:39:24', 'Resolucion-de-Aprobacion-del-PEI-2019-2023.pdf', 'Resolucion de Aprobacion del PEI 2019 2023', 'assets/archivos-pdf/Resolucion-de-Aprobacion-del-PEI-2019-2023.pdf', NULL, 1, 762, 1),
(910, 'File', '2019-11-15 14:40:11', '2019-11-15 14:40:11', 'REG-NRO-5.pdf', 'REG NRO 5', 'assets/archivos-pdf/REG-NRO-5.pdf', NULL, 1, 762, 1),
(911, 'File', '2019-11-15 15:19:58', '2019-11-15 15:19:58', 'E-res.-55.2019-equipos-de-trabajo.pdf', 'E res. 55.2019 equipos de trabajo', 'assets/archivos-pdf/E-res.-55.2019-equipos-de-trabajo.pdf', NULL, 1, 762, 1),
(912, 'File', '2019-11-15 15:20:30', '2019-11-15 15:20:30', 'E-res.-54.2019-se-adopta-mecip.pdf', 'E res. 54.2019 se adopta mecip', 'assets/archivos-pdf/E-res.-54.2019-se-adopta-mecip.pdf', NULL, 1, 762, 1),
(913, 'File', '2019-11-15 15:26:28', '2019-11-15 15:26:28', 'E-res-N-99.2019-mesas-de-trabajo.pdf', 'E res N 99.2019 mesas de trabajo', 'assets/archivos-pdf/E-res-N-99.2019-mesas-de-trabajo.pdf', NULL, 1, 762, 1),
(914, 'File', '2019-11-15 15:41:03', '2019-11-15 15:41:03', 'POLITI-GENERAL-DE-GESTION-Y-DESARROLLO-DEL-TALENTO-HUMANO.pdf', 'POLITI GENERAL DE GESTION Y DESARROLLO DEL TALENTO HUMANO', 'assets/archivos-pdf/POLITI-GENERAL-DE-GESTION-Y-DESARROLLO-DEL-TALENTO-HUMANO.pdf', NULL, 1, 762, 1),
(915, 'File', '2019-11-15 15:42:14', '2019-11-15 15:42:14', 'CODIGO-DE-BUEN-GOBIERNO.pdf', 'CODIGO DE BUEN GOBIERNO', 'assets/archivos-pdf/CODIGO-DE-BUEN-GOBIERNO.pdf', NULL, 1, 762, 1),
(916, 'File', '2019-11-15 15:43:16', '2019-11-15 15:43:16', 'res-169-para-publicar.pdf', 'res 169 para publicar', 'assets/archivos-pdf/res-169-para-publicar.pdf', NULL, 1, 762, 1),
(917, 'File', '2019-11-15 15:43:39', '2019-11-15 15:43:39', 'res-169-codigo-de-etica.pdf', 'res 169 codigo de etica', 'assets/archivos-pdf/res-169-codigo-de-etica.pdf', NULL, 1, 762, 1),
(918, 'File', '2019-11-15 15:44:47', '2019-11-15 15:44:47', 'Formato-N9-Plan-de-Trabajo-2019.pdf', 'Formato N9 Plan de Trabajo 2019', 'assets/archivos-pdf/Formato-N9-Plan-de-Trabajo-2019.pdf', NULL, 1, 762, 1),
(919, 'File', '2019-11-15 15:45:14', '2019-11-15 15:45:14', 'Formato-N7-Resultado-de-Diagnostico-del-CI.pdf', 'Formato N7 Resultado de Diagnostico del CI', 'assets/archivos-pdf/Formato-N7-Resultado-de-Diagnostico-del-CI.pdf', NULL, 1, 762, 1),
(920, 'File', '2019-11-15 15:45:45', '2019-11-15 15:45:45', 'Reunion-Mesas-de-Trabajo.pdf', 'Reunion Mesas de Trabajo', 'assets/archivos-pdf/Reunion-Mesas-de-Trabajo.pdf', NULL, 1, 762, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `GeneralPage`
--

CREATE TABLE IF NOT EXISTS `GeneralPage` (
  `ID` int(11) NOT NULL,
  `ImagenID` int(11) NOT NULL DEFAULT '0',
  `TituloPadre` varchar(255) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=352 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `GeneralPage`
--

INSERT INTO `GeneralPage` (`ID`, `ImagenID`, `TituloPadre`) VALUES
(348, 867, 'DERECHO DE AUTOR Y DERECHOS CONEXOS'),
(347, 867, 'DERECHO DE AUTOR Y DERECHOS CONEXOS'),
(350, 880, 'OBSERVANCIA'),
(351, 880, 'OBSERVANCIA'),
(349, 880, 'OBSERVANCIA'),
(325, 799, 'MARCAS'),
(326, 738, 'MARCAS'),
(327, 731, 'DATOS INSTITUCIONALES'),
(328, 800, 'DATOS INSTITUCIONALES'),
(329, 731, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `GeneralPage_Live`
--

CREATE TABLE IF NOT EXISTS `GeneralPage_Live` (
  `ID` int(11) NOT NULL,
  `ImagenID` int(11) NOT NULL DEFAULT '0',
  `TituloPadre` varchar(255) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=352 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `GeneralPage_Live`
--

INSERT INTO `GeneralPage_Live` (`ID`, `ImagenID`, `TituloPadre`) VALUES
(348, 867, 'DERECHO DE AUTOR Y DERECHOS CONEXOS'),
(347, 867, 'DERECHO DE AUTOR Y DERECHOS CONEXOS'),
(351, 880, 'OBSERVANCIA'),
(350, 880, 'OBSERVANCIA'),
(349, 880, 'OBSERVANCIA'),
(325, 799, 'MARCAS'),
(326, 738, 'MARCAS'),
(327, 731, 'DATOS INSTITUCIONALES'),
(328, 800, 'DATOS INSTITUCIONALES'),
(329, 731, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `GeneralPage_versions`
--

CREATE TABLE IF NOT EXISTS `GeneralPage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ImagenID` int(11) NOT NULL DEFAULT '0',
  `TituloPadre` varchar(255) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=222 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `GeneralPage_versions`
--

INSERT INTO `GeneralPage_versions` (`ID`, `RecordID`, `Version`, `ImagenID`, `TituloPadre`) VALUES
(1, 221, 1, 0, NULL),
(2, 221, 2, 667, NULL),
(3, 222, 1, 0, NULL),
(4, 221, 3, 667, NULL),
(5, 239, 1, 0, NULL),
(6, 239, 2, 665, NULL),
(7, 239, 3, 665, NULL),
(8, 239, 4, 665, NULL),
(9, 240, 1, 0, NULL),
(10, 240, 2, 665, NULL),
(11, 241, 1, 0, NULL),
(12, 241, 2, 665, NULL),
(13, 242, 1, 0, NULL),
(14, 242, 2, 665, NULL),
(15, 244, 1, 0, NULL),
(16, 244, 2, 665, NULL),
(17, 244, 3, 665, NULL),
(18, 244, 4, 665, NULL),
(19, 242, 3, 665, NULL),
(20, 242, 4, 665, NULL),
(21, 242, 5, 665, NULL),
(22, 242, 6, 665, NULL),
(23, 248, 1, 665, NULL),
(24, 248, 2, 665, NULL),
(25, 248, 3, 665, NULL),
(26, 248, 4, 665, NULL),
(27, 248, 5, 665, NULL),
(28, 248, 6, 665, NULL),
(29, 248, 7, 665, NULL),
(30, 248, 8, 665, NULL),
(31, 248, 9, 665, NULL),
(32, 248, 10, 665, NULL),
(33, 248, 11, 665, NULL),
(34, 248, 12, 665, NULL),
(35, 249, 1, 665, NULL),
(36, 249, 2, 665, NULL),
(37, 249, 3, 665, NULL),
(38, 249, 4, 665, NULL),
(39, 250, 1, 665, NULL),
(40, 251, 1, 665, NULL),
(41, 252, 1, 665, NULL),
(42, 253, 1, 665, NULL),
(43, 254, 1, 665, NULL),
(44, 250, 2, 665, NULL),
(45, 251, 2, 665, NULL),
(46, 250, 3, 665, NULL),
(47, 252, 2, 665, NULL),
(48, 253, 2, 665, NULL),
(49, 254, 2, 665, NULL),
(50, 250, 4, 665, NULL),
(51, 250, 5, 665, NULL),
(52, 251, 3, 665, NULL),
(53, 251, 4, 665, NULL),
(54, 252, 3, 665, NULL),
(55, 252, 4, 665, NULL),
(56, 253, 3, 665, NULL),
(57, 253, 4, 665, NULL),
(58, 254, 3, 665, NULL),
(59, 254, 4, 665, NULL),
(60, 239, 5, 665, NULL),
(61, 263, 1, 667, NULL),
(62, 263, 2, 667, NULL),
(63, 263, 3, 667, NULL),
(64, 263, 4, 667, NULL),
(65, 264, 1, 667, NULL),
(66, 265, 1, 667, NULL),
(67, 266, 1, 667, NULL),
(68, 267, 1, 667, NULL),
(69, 268, 1, 667, NULL),
(70, 269, 1, 667, NULL),
(71, 270, 1, 667, NULL),
(72, 271, 1, 667, NULL),
(73, 272, 1, 667, NULL),
(74, 273, 1, 667, NULL),
(75, 273, 2, 667, NULL),
(76, 273, 3, 667, NULL),
(77, 273, 4, 667, NULL),
(78, 273, 5, 667, NULL),
(79, 274, 1, 667, NULL),
(80, 263, 5, 667, NULL),
(81, 264, 2, 667, NULL),
(82, 265, 2, 667, NULL),
(83, 266, 2, 667, NULL),
(84, 267, 2, 667, NULL),
(85, 268, 2, 667, NULL),
(86, 269, 2, 667, NULL),
(87, 270, 2, 667, NULL),
(88, 271, 2, 667, NULL),
(89, 272, 2, 667, NULL),
(90, 273, 6, 667, NULL),
(91, 274, 2, 667, NULL),
(92, 275, 1, 667, NULL),
(93, 263, 6, 667, NULL),
(94, 264, 3, 667, NULL),
(95, 265, 3, 667, NULL),
(96, 266, 3, 667, NULL),
(97, 267, 3, 667, NULL),
(98, 268, 3, 667, NULL),
(99, 268, 4, 667, NULL),
(100, 269, 3, 667, NULL),
(101, 270, 3, 667, NULL),
(102, 271, 3, 667, NULL),
(103, 272, 3, 667, NULL),
(104, 273, 7, 667, NULL),
(105, 274, 3, 667, NULL),
(106, 275, 2, 667, NULL),
(107, 275, 3, 667, NULL),
(108, 276, 1, 667, NULL),
(109, 276, 2, 667, NULL),
(110, 276, 3, 667, NULL),
(111, 267, 4, 667, NULL),
(112, 284, 1, 665, NULL),
(113, 284, 2, 665, NULL),
(114, 286, 1, 0, NULL),
(115, 244, 5, 665, NULL),
(116, 286, 2, 667, NULL),
(117, 286, 3, 667, NULL),
(118, 287, 1, 0, NULL),
(119, 288, 1, 665, NULL),
(120, 288, 2, 665, NULL),
(121, 288, 3, 665, NULL),
(122, 287, 2, 0, NULL),
(123, 287, 3, 667, NULL),
(124, 287, 4, 667, NULL),
(125, 289, 1, 667, NULL),
(126, 289, 2, 667, NULL),
(127, 290, 1, 667, NULL),
(128, 290, 2, 667, NULL),
(129, 290, 3, 667, NULL),
(130, 290, 4, 667, NULL),
(131, 290, 5, 667, NULL),
(132, 290, 6, 667, NULL),
(133, 290, 7, 667, NULL),
(134, 291, 1, 667, NULL),
(135, 291, 2, 667, NULL),
(136, 293, 1, 665, NULL),
(137, 295, 1, 665, NULL),
(138, 295, 2, 665, NULL),
(139, 295, 3, 665, NULL),
(140, 244, 6, 665, NULL),
(141, 296, 1, 665, NULL),
(142, 297, 1, 665, NULL),
(143, 296, 2, 665, NULL),
(144, 296, 3, 665, NULL),
(145, 296, 4, 665, NULL),
(146, 296, 5, 665, NULL),
(147, 296, 6, 665, NULL),
(148, 286, 4, 665, NULL),
(149, 287, 5, 665, NULL),
(150, 290, 8, 665, NULL),
(151, 291, 3, 706, NULL),
(152, 244, 7, 665, NULL),
(153, 244, 8, 665, NULL),
(154, 244, 9, 665, NULL),
(155, 244, 10, 665, NULL),
(156, 244, 11, 665, NULL),
(157, 244, 12, 665, NULL),
(158, 244, 13, 665, NULL),
(159, 244, 14, 665, NULL),
(160, 244, 15, 665, NULL),
(161, 244, 16, 665, NULL),
(162, 295, 4, 665, NULL),
(163, 325, 1, 0, NULL),
(164, 325, 2, 799, 'MARCAS'),
(165, 325, 3, 799, 'MARCAS'),
(166, 325, 4, 799, 'MARCAS'),
(167, 325, 5, 799, 'MARCAS'),
(168, 325, 6, 799, 'MARCAS'),
(169, 325, 7, 799, 'MARCAS'),
(170, 325, 8, 799, 'MARCAS'),
(171, 325, 9, 799, 'MARCAS'),
(172, 325, 10, 799, 'MARCAS'),
(173, 325, 11, 799, 'MARCAS'),
(174, 325, 12, 799, 'MARCAS'),
(175, 325, 13, 799, 'MARCAS'),
(176, 325, 14, 799, 'MARCAS'),
(177, 325, 15, 799, 'MARCAS'),
(178, 326, 1, 0, NULL),
(179, 326, 2, 738, 'Marcas'),
(180, 326, 3, 738, 'Marcas'),
(181, 326, 4, 738, 'Marcas'),
(182, 326, 5, 738, 'Marcas'),
(183, 326, 6, 738, 'MARCAS'),
(184, 326, 7, 738, 'MARCAS'),
(185, 325, 16, 799, 'MARCAS'),
(186, 325, 17, 799, 'MARCAS'),
(187, 325, 18, 799, 'MARCAS'),
(188, 325, 19, 799, 'MARCAS'),
(189, 325, 20, 799, 'MARCAS'),
(190, 326, 8, 738, 'MARCAS'),
(191, 327, 1, 0, NULL),
(192, 327, 2, 731, 'DATOS INSTITUCIONALES'),
(193, 327, 3, 731, 'DATOS INSTITUCIONALES'),
(194, 327, 4, 731, 'DATOS INSTITUCIONALES'),
(195, 328, 1, 0, NULL),
(196, 328, 2, 800, 'DATOS INSTITUCIONALES'),
(197, 328, 3, 800, 'DATOS INSTITUCIONALES'),
(198, 328, 4, 800, 'DATOS INSTITUCIONALES'),
(199, 328, 5, 800, 'DATOS INSTITUCIONALES'),
(200, 328, 6, 800, 'DATOS INSTITUCIONALES'),
(201, 329, 1, 0, NULL),
(202, 329, 2, 731, NULL),
(203, 329, 3, 731, NULL),
(204, 329, 4, 731, NULL),
(205, 347, 1, 0, NULL),
(206, 347, 2, 867, 'DERECHO DE AUTOR Y DERECHOS CONEXOS'),
(207, 347, 3, 867, 'DERECHO DE AUTOR Y DERECHOS CONEXOS'),
(208, 348, 1, 0, NULL),
(209, 348, 2, 867, 'DERECHO DE AUTOR Y DERECHOS CONEXOS'),
(210, 348, 3, 867, 'DERECHO DE AUTOR Y DERECHOS CONEXOS'),
(211, 349, 1, 0, NULL),
(212, 349, 2, 880, 'OBSERVANCIA'),
(213, 349, 3, 880, 'OBSERVANCIA'),
(214, 350, 1, 880, 'OBSERVANCIA'),
(215, 350, 2, 880, 'OBSERVANCIA'),
(216, 351, 1, 880, 'OBSERVANCIA'),
(217, 351, 2, 880, 'OBSERVANCIA'),
(218, 351, 3, 880, 'OBSERVANCIA'),
(219, 351, 4, 880, 'OBSERVANCIA'),
(220, 351, 5, 880, 'OBSERVANCIA'),
(221, 350, 3, 880, 'OBSERVANCIA');

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
(1, 'Institucional', '2019-11-08 21:29:16', '2019-11-11 01:00:05', 'Plan Nacional de Propiedad Intelectual', 223, 'assets/archivos-pdf/plan_nacional_2030.pdf.pdf', 301),
(2, 'Institucional', '2019-11-08 21:29:54', '2019-11-11 01:01:51', 'Plan Estratégico Institucional', 224, 'assets/archivos-pdf/PLAN_ESTRATEGICO_INSTITUCIONAL.pdf', 301),
(3, 'Institucional', '2019-11-08 21:30:22', '2019-11-14 22:27:26', 'MECIP', 353, NULL, 301),
(4, 'Institucional', '2019-11-08 21:30:45', '2019-11-11 19:27:28', 'Misión, visión y funciones de la DINAPI', 327, NULL, 301),
(5, 'Institucional', '2019-11-08 21:46:47', '2019-11-11 20:24:06', 'Organigrama', 328, NULL, 301),
(6, 'Institucional', '2019-11-08 21:47:05', '2019-11-11 20:36:25', 'Autoridades', 329, NULL, 301),
(7, 'Institucional', '2019-11-08 21:47:21', '2019-11-12 18:13:17', 'Marco Normativo de la Propiedad Intelectual', 341, NULL, 301),
(8, 'Institucional', '2019-11-08 21:47:47', '2019-11-12 17:28:25', 'Convenios', 338, NULL, 301),
(9, 'Institucional', '2019-11-08 21:48:00', '2019-11-11 21:07:26', 'Programas y Proyectos', 0, 'assets/archivos-pdf/Proyecto_de_Ley.pdf', 301),
(10, 'Institucional', '2019-11-08 21:48:15', '2019-11-13 02:02:32', 'Acceso a la Información Pública', 330, NULL, 301),
(11, 'Institucional', '2019-11-08 21:48:33', '2019-11-11 21:06:06', 'Webmail', 0, 'https://sts.dinapi.gov.py/adfs/ls/?client-request-id=40a975a2-525f-47e5-9e0a-ca12d21db238&username=&wa=wsignin1.0&wtrealm=urn%3afederation%3aMicrosoftOnline&wctx=estsredirect%3d2%26estsrequest%3drQIIAY2RO2_TUACFc-PUagOIqurAUtGBCena19eJr22JigTn1SaliWhIvESx', 301),
(12, 'Institucional', '2019-11-08 21:48:50', '2019-11-12 15:53:42', 'Concursos', 331, NULL, 301);

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
(1, 'Member', '2015-07-21 17:15:08', '2019-11-14 15:03:03', 'Administrador por defecto', NULL, 'admin', '80ab383fd070985db71d5b2129d77410dc0e83c9', '2019-11-17 15:03:03', '$2y$10$684be06a41ff4d4fcdbc9Oz0X.H0r/czaafPEU5AYG6rvCBylBCbK', '$2y$10$684be06a41ff4d4fcdbc9OQ3zMuHpYVZCkwbu1wtJP/LVImzHEgay', 437, '2019-11-15 20:58:19', NULL, NULL, 'blowfish', '10$684be06a41ff4d4fcdbc9c', NULL, NULL, 'es_ES', 0, 'dd/MM/yyyy', 'HH:mm:ss'),
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
  `Telefono` varchar(255) DEFAULT NULL,
  `Apellido` varchar(255) DEFAULT NULL,
  `Tema` varchar(255) DEFAULT NULL,
  `Documento` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `MensajeContacto`
--

INSERT INTO `MensajeContacto` (`ID`, `ClassName`, `Created`, `LastEdited`, `Nombre`, `Email`, `Mensaje`, `Telefono`, `Apellido`, `Tema`, `Documento`) VALUES
(1, 'MensajeContacto', '2019-05-28 23:14:22', '2019-05-28 23:14:22', 'Marcos Peralta', 'mrc_peralta@hotmail.com', 'Prueba', NULL, NULL, NULL, NULL),
(2, 'MensajeContacto', '2019-08-27 00:05:18', '2019-08-27 00:05:18', 'jhony', 'jhonyben.94@gmail.com', '123123123', NULL, NULL, NULL, NULL),
(3, 'MensajeContacto', '2019-08-27 17:35:46', '2019-08-27 17:35:46', '12312', 'jhonyben.94@gmail.com', '12312312 3123123', NULL, NULL, NULL, NULL),
(4, 'MensajeContacto', '2019-08-27 17:38:31', '2019-08-27 17:38:31', '12312', 'jhonyben.94@gmail.com', '12312312 3123123', NULL, NULL, NULL, NULL),
(5, 'MensajeContacto', '2019-08-27 17:38:41', '2019-08-27 17:38:41', '13123', 'jhonyben.94@gmail.com', '123123123', NULL, NULL, NULL, NULL),
(6, 'MensajeContacto', '2019-08-27 17:39:36', '2019-08-27 17:39:36', '131231', 'jhonyben.94@gmail.com', '123123123', NULL, NULL, NULL, NULL),
(7, 'MensajeContacto', '2019-08-27 17:41:08', '2019-08-27 17:41:08', 'Jhony Benitez', 'jhonyben.94@gmail.com', 'adfasdfasdfa', NULL, NULL, NULL, NULL),
(8, 'MensajeContacto', '2019-08-27 17:43:59', '2019-08-27 17:43:59', 'adfasdf', 'jhonyben.94@gmail.com', '123123123', NULL, NULL, NULL, NULL),
(9, 'MensajeContacto', '2019-08-27 17:49:50', '2019-08-27 17:49:50', 'adfad', 'jhonyben.94@gmail.com', 'adsfasdfa', NULL, NULL, NULL, NULL);

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
-- Estructura de tabla para la tabla `MenuDerecho`
--

CREATE TABLE IF NOT EXISTS `MenuDerecho` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('MenuDerecho') DEFAULT 'MenuDerecho',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Titulo` varchar(255) DEFAULT NULL,
  `LinkInterno` int(11) NOT NULL DEFAULT '0',
  `LinkExterno` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `MenuDerecho`
--

INSERT INTO `MenuDerecho` (`ID`, `ClassName`, `Created`, `LastEdited`, `Titulo`, `LinkInterno`, `LinkExterno`) VALUES
(1, 'MenuDerecho', '2019-11-11 00:31:19', '2019-11-13 18:07:18', 'Centro de Noticias', 346, NULL),
(2, 'MenuDerecho', '2019-11-11 00:31:45', '2019-11-11 00:31:45', 'RedPI', 0, 'https://servicios.dinapi.gov.py/red_PI/frontend/revista.php'),
(3, 'MenuDerecho', '2019-11-11 00:32:02', '2019-11-11 00:32:02', 'Servicios', 0, 'https://servicios.dinapi.gov.py/'),
(4, 'MenuDerecho', '2019-11-11 00:32:11', '2019-11-14 17:44:25', 'Contáctenos', 223, NULL),
(5, 'MenuDerecho', '2019-11-11 00:32:31', '2019-11-11 00:32:31', 'Webmail', 0, 'https://sts.dinapi.gov.py/adfs/ls/?client-request-id=40a975a2-525f-47e5-9e0a-ca12d21db238&username=&wa=wsignin1.0&wtrealm=urn%3afederation%3aMicrosoftOnline&wctx=estsredirect%3d2%26estsrequest%3drQIIAY2RO2_TUACFc-PUagOIqurAUtGBCena19eJr22JigTn1SaliWhIvESx');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Noticia`
--

CREATE TABLE IF NOT EXISTS `Noticia` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Noticia') DEFAULT 'Noticia',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Titulo` varchar(255) DEFAULT NULL,
  `Categoria` int(11) NOT NULL DEFAULT '0',
  `Fecha` date DEFAULT NULL,
  `Destacado` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Content` mediumtext,
  `ImagenID` int(11) NOT NULL DEFAULT '0',
  `PaginaID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Noticia`
--

INSERT INTO `Noticia` (`ID`, `ClassName`, `Created`, `LastEdited`, `Titulo`, `Categoria`, `Fecha`, `Destacado`, `Content`, `ImagenID`, `PaginaID`) VALUES
(1, 'Noticia', '2019-11-13 17:47:15', '2019-11-13 19:39:37', 'DINAPI y CULTURA acuerdan trabajo conjunto con miras al Plan 2030', 1, '2019-11-12', 1, '<div style="text-align: justify;">\n<div>La Dirección Nacional de Propiedad Intelectual y la Secretaría Nacional de Cultura firmaron un convenio de cooperación, a través de la cual, se comprometen a fortalecer los lazos institucionales y a trabajar en conjunto, en el marco del desarrollo del Plan 2030, en lo que respecta a Propiedad Intelectual.</div>\n<div></div>\n<div>El convenio establece una duración de cuatro años, tiempo en el que ambas instituciones trabajarán en el desarrollo de las políticas públicas destinadas a promover, coordinar y ejecutar planes, programas, proyectos y lineamientos que colaboren a nivel nacional las iniciativas dentro del contexto del Plan 2030 mencionado más arriba, que fue elaborado en conjunto con la Organización Mundial de Propiedad Intelectual (OMPI).</div>\n<div></div>\n<div>Al respecto, el Dr. Joel Talavera, Director Nacional de la DINAPI, indicó «tenemos la responsabilidad de trabajar con Cultura en los temas de referencia que tenemos en común y en poco tiempo les haremos extensivo el instrumento normativo para que desde su institución, analicen los ítems que tenemos que desarrollar conjuntamente dentro de este plan nacional».</div>\n<div></div>\n<div>En tanto, el Ministro de Cultura, Rubén Capdevila, señaló que valora el esfuerzo de la DINAPI, pues se nota el trabajo en pos del fortalecimiento y promoción de la cultura, la creatividad y los derechos de los autores a nivel nacional, con un enfoque de gestión cultural.</div>\n<div></div>\n<div>En ese contexto, se mencionó además la Fiesta Creativa, cuya segunda edición se realizará en dos semanas más, en la ciudad de Caacupé, Departamento de Cordillera.</div>\n</div>', 876, 346),
(2, 'Noticia', '2019-11-13 17:58:37', '2019-11-13 18:19:21', 'DINAPI y Ministerio Público se incautan de accesorios presumiblemente falsificados', 1, '2019-11-06', 1, '<div style="text-align: justify;">Mediante una denuncia realizada ante la Dirección Nacional de Propiedad Intelectual, se logró identificar indicios de comercialización de mercadería presumiblemente falsificada en el local comercial denominado Manos Pro Racing, ubicado en la Av. Adrián Jara casi Piribebuy, de Ciudad del Este, departamento de Alto Paraná. Ante este hecho la DINAPI procedió a realizar la denuncia al Ministerio Público, concluyendo en el allanamiento e incautación de accesorios presumiblemente falsificados de la marca MONSTER.</div>\n<p></p>\n<div style="text-align: justify;">La Dirección de Lucha contra la Piratería y la Falsificación y la Policía Nacional, acompañaron el procedimiento liderado por la representante del Ministerio Público en el área de Alto Paraná, el agente fiscal Julio Paredes, quien ordenó el decomiso y traslado de los accesorios al depósito del Ministerio Público. </div>\n<p></p>\n<div style="text-align: justify;">Se estima que el valor de estos productos en el mercado, ascendería a un aproximado de U$S 5.000.</div>', 877, 346),
(3, 'Noticia', '2019-11-13 19:38:44', '2019-11-13 19:38:44', 'En taller internacional, debaten sobre gestión colectiva y el rol de las oficinas nacionales', 1, '2019-11-14', 1, '<div class="container" style="text-align: justify;">\n<div class="col-md-12 noticias-parrafos">\n<div>\n<div>La Organización Mundial de Propiedad Intelectual (OMPI), en conjunto con la Dirección Nacional de Propiedad Intelectual (DINAPI), organizaron el Taller sub regional de instrucción especializada en gestión colectiva de derechos, con presencia de renombrados especialistas nacionales e internacionales.</div>\n<div></div>\n<div>EL Sr. Ignacio de Castro, Director de la División en materia de propiedad intelectual y relaciones exteriores, centro de arbitraje y mediación de la OMPI, indicó «esta es una oportunidad excelente de abordar temas complejos y también para compartir experiencias y estrategias de otros países para tratar retos comunes». Señaló igualmente que este taller ha sido concebido dentro del marco de dos recomendaciones acordadas previamente en Santo Domingo, República Dominicana: asumir un rol fresco y creativo para garantizar un eficiente monitoreo a la gestión colectiva y la organización de talleres prácticos de gestión colectiva para funcionarios de la oficina nacional y gestores locales. </div>\n<div></div>\n<div>Por su parte, el Dr. Joel Talavera, Director Nacional de la DINAPI, explicó que en un año de gestión al frente de la institución, se ha asumido un alto grado de compromiso para el apoyo responsable de los trabajos de representación que tienen las sociedades de gestión.  «Sin la intervención de las sociedades de gestión colectiva, los tratados internacionales y las leyes que consagran los derechos de autor, no serían  más que una declaración de buenas intenciones, debido a que, en la práctica, es imposible para un autor, artista o intérprete realizar por su cuenta la administración y la defensa de sus derechos».</div>\n<div></div>\n<div>La apertura de las disertaciones, estuvo a cargo de Juan Fernando Lebrón, de la oficina de DINAPI, quien abordó el tema «Evolución de la estructura del derecho de autor en Paraguay. El desarrollo y fortalecimiento de la dirección de derecho de autor y del marco jurídico». </div>\n<div></div>\n<div>Posteriormente, Ignacio de Castro, de España, nuevamente subió al escenario para hablar sobre el rol del Centro de arbitraje y mediación de la OMPI en materia de derechos de autor, así como el colombiano Fernando Zapata, de Colombia, quien habló sobre el rol de las oficinas de derecho de autor en materia de gestión colectiva.</div>\n<div></div>\n<div>Más adelante, Juan José Marín, de España, ofreció una charla sobre el abc de la gestión colectiva de derechos de autor y los derechos conexos y culminó la primera jornada con el argentino Gabriel Salcedo, quien se refirió a las «cuestiones prácticas de la gestión de los derechos de los productores audiovisuales y su impulso para el desarrollo  cinematográfico y audiovisual en la región de América Latina.</div>\n<div></div>\n<div>Todas las charlas, lograron cumplir las expectativas de los presentes, que participaron con sus preguntas y acotaciones para todos los especialistas. </div>\n<div></div>\n<div>El día dos del taller, comenzó con «Los derechos de los artistas: regulación, remuneración y gestión ‘ventanilla única’», a cargo de Álvaro Hernández-Pinzón, de España y prosiguió con Javier Delupí, de Argentina, quien habló sobre la gestión colectiva de los derechos de los productores fonográficos: aspectos prácticos del sistema de distribución de derechos.</div>\n<div></div>\n<div>La jornada prosiguió con la charla de Fernando Garcete, de DINAPI, quien, con el tema «observancia de los derechos de autor», resaltó la tarea que la institución realiza en conjunto con el ministerio público, policía nacional y aduanas. Más tarde, Rafael Faríñas, de la Cisac, se refirió al estado actual de la gestión colectiva en América Latina y el Caribe y las herramientas para la recaudación, documentación y distribución eficiente de derechos, con especial énfasis en el entorno digital.</div>\n<div></div>\n<div>Además, se realizó un panel conformado por Álvaro Hernández-Pinzón, Javier Delupi y Rafael Fariñas, con Fernando Zapata de orador quienes, en una charla muy dinámica y con abierta participación de los presentes, hablaron sobre «El quid de la cuestión: establecimiento de tarifas; ventanilla única; gastos administrativos y; la gestión individual».</div>\n<div></div>\n<div>El último tema del taller, estuvo a cargo de Juan José Marín, referente a puntos esenciales y enseñanzas de las directivas 2019/790, 2019/789 y 2014/26 del parlamento europeo y consejo.</div>\n<div> </div>\n<div>El director de derechos de autor y derechos conexos de la DINAPI, Dr. Oscar Elizeche, en palabras finales del taller, indicó «aceptamos este desafío sabiendo que existe en nuestro país y en la región una importante avidez en escuchar y aprender  de grandes referentes de la gestión colectiva», al tiempo de resaltar que la creación de un vínculo real entre los actores, tanto de las oficinas de derecho de autor, como de las personas responsables de poner en las manos de los titulares de derechos, la justa retribución por su trabajo.</div>\n<div></div>\n<div>El Taller sub regional de instrucción especializada en gestión colectiva de derechos, culmina este miércoles con una jornada privada entre los representantes de la OMPI y DINAPI.</div>\n<p></p>\n</div>\n</div>\n</div>', 878, 346),
(4, 'Noticia', '2019-11-13 19:39:26', '2019-11-15 20:59:07', 'Magistral exposición de Expertos de la Ompi, acerca del Sistema Internacional de Patentes', 1, '2019-11-09', 0, '<div>La Asociación Interamericana de la Propiedad Intelectual (ASIPI), en conjunto con la Organización Mundial de Propiedad Intelectual (OMPI) y la Dirección Nacional de Propiedad Intelectual (DINAPI), realizaron el Taller itinerante sobre el sistema internacional de patentes: PCT y EPCT, con la participación de expertos nacionales e internacionales que hablaron sobre la evolución de las legislaciones que la amparan y la importancia de ellas para el desarrollo económico de los países. </div>\n<div></div>\n<div>El Dr. Joel Talavera, director nacional de la DINAPI, señaló que el tratado de cooperación en materia de patentes es una realidad en la mayoría de los países que forman parte de la OMPI, por lo que este tipo de talleres ayudan a adquirir mayor conocimiento acerca de su uso, así como la experiencia de otros países en lo que a su implementación respecta. </div>\n<div>Agregó que desde el inicio de su administración al frente de la institución, se han hecho trabajos de fortalecimiento del área, mediante el aumento de examinadores que han tenido mora cero en lo que respecta a los exámenes de forma, con lo que, en un año, se han concedido 26 patentes.  </div>\n<div></div>\n<div>Fabrizio Módica, representante de ASIPI, indicó que es preciso conocer las reglas del PCT y EPCT para que investigadores paraguayos analicen la posibilidad de, incluso, patentar en países del extranjero.</div>\n<div></div>\n<div>El Sr. Carlos Roy Mayoral, representante de la OMPI, indicó que «el sistema de patentes puede desempeñar un papel importante en la promoción del comercio, la transferencia de tecnología y la innovación y creatividad, tanto en el ámbito local como el internacional». Explicó que la OMPI participa activamente en la búsqueda de soluciones para abordar adecuadamente los desafíos mundiales y agradeció a Paraguay por formar parte de esta serie de talleres sobre el tema. </div>\n<div></div>\n<div>El taller itinerante sobre el sistema internacional de patentes se realizará también en Sao Paulo y en Río de Janeiro, Brasil, el 6 y el 8 de noviembre respectivamente.</div>', 879, 346);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `NoticiaPage`
--

CREATE TABLE IF NOT EXISTS `NoticiaPage` (
  `ID` int(11) NOT NULL,
  `Titulo` varchar(255) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=347 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `NoticiaPage`
--

INSERT INTO `NoticiaPage` (`ID`, `Titulo`) VALUES
(346, 'CENTRO DE NOTICIAS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `NoticiaPage_Live`
--

CREATE TABLE IF NOT EXISTS `NoticiaPage_Live` (
  `ID` int(11) NOT NULL,
  `Titulo` varchar(255) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=347 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `NoticiaPage_Live`
--

INSERT INTO `NoticiaPage_Live` (`ID`, `Titulo`) VALUES
(346, 'CENTRO DE NOTICIAS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `NoticiaPage_versions`
--

CREATE TABLE IF NOT EXISTS `NoticiaPage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Titulo` varchar(255) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `NoticiaPage_versions`
--

INSERT INTO `NoticiaPage_versions` (`ID`, `RecordID`, `Version`, `Titulo`) VALUES
(1, 346, 1, NULL),
(2, 346, 2, 'CENTRO DE NOTICIAS'),
(3, 346, 3, 'CENTRO DE NOTICIAS'),
(4, 346, 4, 'CENTRO DE NOTICIAS');

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PreguntasFrecuentesPage_Live`
--

CREATE TABLE IF NOT EXISTS `PreguntasFrecuentesPage_Live` (
  `ID` int(11) NOT NULL,
  `ImagenID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=227 DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM AUTO_INCREMENT=310 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `RedirectorPage`
--

INSERT INTO `RedirectorPage` (`ID`, `RedirectionType`, `ExternalURL`, `LinkToID`) VALUES
(309, 'External', 'https://servicios.dinapi.gov.py/resoluciones/', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `RedirectorPage_Live`
--

CREATE TABLE IF NOT EXISTS `RedirectorPage_Live` (
  `ID` int(11) NOT NULL,
  `RedirectionType` enum('Internal','External') DEFAULT 'Internal',
  `ExternalURL` varchar(2083) DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=310 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `RedirectorPage_Live`
--

INSERT INTO `RedirectorPage_Live` (`ID`, `RedirectionType`, `ExternalURL`, `LinkToID`) VALUES
(309, 'External', 'https://servicios.dinapi.gov.py/resoluciones/', 0);

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
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `RedirectorPage_versions`
--

INSERT INTO `RedirectorPage_versions` (`ID`, `RecordID`, `Version`, `RedirectionType`, `ExternalURL`, `LinkToID`) VALUES
(55, 309, 1, 'Internal', NULL, 0),
(56, 309, 2, 'External', 'https://servicios.dinapi.gov.py/resoluciones/', 0);

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
  `ClassName` enum('SiteTree','Page','ErrorPage','RedirectorPage','VirtualPage','AcordeonPage','ArchivoDesplegablePage','ArchivoPage','BoletinPage','PeriodoBoletinPage','ConcursoItemPage','ConcursosPage','ContactPage','FullHtmlPage','GeneralPage','HomePage','InstitucionalPage','NoticiaPage','PreguntasFrecuentesPage','TarjetaPage','TarjetaSimplePage','UserDefinedForm','BoletinMarcaPage','PeriodoBoletinMarcaPage') DEFAULT 'SiteTree',
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
) ENGINE=MyISAM AUTO_INCREMENT=357 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `SiteTree`
--

INSERT INTO `SiteTree` (`ID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `Version`, `ParentID`) VALUES
(1, 'HomePage', '2015-07-21 17:15:05', '2019-11-07 19:27:01', 'home', 'Inicio', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 12, 0),
(4, 'ErrorPage', '2015-07-21 17:15:06', '2019-09-05 21:06:28', 'pagina-no-encontrada', 'Página no encontrada', NULL, '<p>Lo sentimos, parece que intentaste acceder a una página que no existe.</p><p>Por favor, comprueba que la URL que intentabas acceder está bien escrita e inténtalo de nuevo.</p>', NULL, NULL, 0, 0, 8, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(5, 'ErrorPage', '2015-07-21 17:15:07', '2019-09-05 21:08:56', 'error-de-servidor', 'Error de servidor', NULL, '<p>Lo sentimos, hubo un problema al gestionar tu solicitud.</p>', NULL, NULL, 0, 0, 9, 0, 0, NULL, 'Inherit', 'Inherit', 2, 0),
(345, 'AcordeonPage', '2019-11-13 15:29:02', '2019-11-13 15:52:56', 'registro', 'REGISTRO', NULL, '<h2 class="inicial">¿ES NECESARIO REGISTRAR LA OBRA PARA QUE ESTÉ PROTEGIDA?</h2>\n<p>La obra está protegida desde el momento de su creación conforme lo establece el Convenio de Berna para la Protección de las Obras Literarias y Artísticas, del cual Paraguay es parte.</p>\n<p>Sin embargo, su registro ante la Dirección General de Derecho de Autor y Derechos Conexos tiene a su cargo el Registro Nacional de Derechos de Autor, con el propósito de contar con un principio de prueba cierta de los hechos y actos que consten de él, además de servir de base de datos que aporta a fines estadísticos y a la promoción de la cultura.</p>\n<p>El registro también puede servir como prueba ante un Tribunal de Justicia en el caso de controversias relacionadas con el derecho de autor.</p>\n<p>El símbolo © a menudo se usa para indicar que una obra está protegida por el derecho de autor. A continuación del símbolo se incluye el nombre del propietario de los derechos de autor y el año en el que la obra fue creada. Por ejemplo: “© OMPI, 2007” indicaría una publicación de la OMPI producida en el año 2007. Como el símbolo © no es más que una indicación, no es necesario insertarlo en las obras para que estas estén protegidas. Aunque una obra no lleve el símbolo ©, puede estar protegida por el derecho de autor.</p>\n<p>Fuente: www.ompi.int</p>\n<h2>REQUISITOS PARA REGISTROS EN LAS DISTINTAS CATEGORÍAS DE DERECHO DE AUTOR</h2>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 5, 302),
(223, 'ContactPage', '2019-05-22 22:34:38', '2019-11-14 17:44:12', 'contacto', 'Contacto', NULL, NULL, NULL, NULL, 0, 0, 6, 0, 0, NULL, 'Inherit', 'Inherit', 11, 0),
(301, 'InstitucionalPage', '2019-11-08 21:27:23', '2019-11-10 22:24:21', 'institucional', 'Institucional', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 4, 0),
(302, 'TarjetaPage', '2019-11-10 22:46:02', '2019-11-10 23:06:07', 'derecho-de-autor', 'Derecho de Autor', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 3, 0),
(303, 'Page', '2019-11-10 23:15:28', '2019-11-10 23:16:00', 'propiedad-industrial', 'Propiedad Industrial', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 3, 0),
(304, 'TarjetaPage', '2019-11-10 23:34:14', '2019-11-10 23:35:07', 'marcas', 'Marcas', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 2, 303),
(305, 'TarjetaPage', '2019-11-10 23:43:28', '2019-11-10 23:44:26', 'patentes', 'Patentes', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 2, 303),
(306, 'TarjetaPage', '2019-11-11 00:04:19', '2019-11-11 00:04:47', 'dibujos-y-modelos-industriales', 'Dibujos y Modelos Industriales', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 2, 303),
(307, 'TarjetaPage', '2019-11-11 00:08:03', '2019-11-11 00:11:22', 'igydo', 'IG&DO', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 3, 303),
(308, 'TarjetaPage', '2019-11-11 00:12:26', '2019-11-11 00:12:53', 'gestiones-administrativas', 'Gestiones Administrativas', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 2, 303),
(309, 'RedirectorPage', '2019-11-11 00:16:54', '2019-11-11 00:17:35', 'resoluciones-de-la-dgpi', 'Resoluciones de la DGPI', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 2, 303),
(310, 'TarjetaPage', '2019-11-11 00:18:37', '2019-11-11 00:20:39', 'observancia', 'Observancia', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 3, 0),
(315, 'BoletinMarcaPage', '2019-11-11 04:25:52', '2019-11-11 15:06:22', 'boletines-de-marcas', 'Boletines de Marcas', NULL, NULL, NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 6, 304),
(316, 'PeriodoBoletinMarcaPage', '2019-11-11 04:26:12', '2019-11-11 05:28:16', 'octubre', 'Octubre', NULL, NULL, NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 3, 315),
(317, 'PeriodoBoletinMarcaPage', '2019-11-11 05:20:50', '2019-11-11 05:27:52', 'setiembre', 'Setiembre', NULL, NULL, NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 4, 315),
(318, 'BoletinPage', '2019-11-11 14:04:03', '2019-11-11 15:08:55', 'boletines-de-patentes', 'Boletines de Patentes', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 6, 305),
(319, 'PeriodoBoletinPage', '2019-11-11 14:05:32', '2019-11-11 14:10:09', 'ano-2019', 'Año 2019', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 2, 318),
(320, 'PeriodoBoletinPage', '2019-11-11 14:15:40', '2019-11-11 14:18:26', 'ano-2018', 'Año 2018', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 3, 318),
(321, 'BoletinPage', '2019-11-11 14:31:29', '2019-11-11 15:13:37', 'boletines-de-dibujos-y-modelos-industriales', 'Boletines de Dibujos y Modelos Industriales', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 7, 306),
(322, 'PeriodoBoletinPage', '2019-11-11 14:31:45', '2019-11-11 14:32:05', 'ano-2015', 'Año 2015', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 2, 321),
(323, 'PeriodoBoletinPage', '2019-11-11 14:33:36', '2019-11-11 14:33:47', 'ano-2016', 'Año 2016', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 2, 321),
(325, 'GeneralPage', '2019-11-11 15:35:50', '2019-11-11 19:21:26', 'aprender', 'APRENDER', NULL, '<h2 class="inicial">¿QUÉ ES UNA MARCA?</h2>\n<p>Es todo signo que identifica a un producto o servicio en el mercado. Por lo tanto, una marca puede ser considerada como una herramienta de comunicación usada por el productor o prestador de servicios para atraer al público.</p>\n<h2>¿POR QUÉ ES IMPORTANTE UNA MARCA?</h2>\n<p>La marca juega un papel preponderante y esencial en el proceso competitivo. Hoy día es imposible pensar que un negocio, ya sea grande o pequeño, pueda llegar a trabajar sin propaganda, lo cual es posible llevar a cabo a través de las marcas. Los consumidores relacionan las marcas con ciertos productos y servicios, por lo que el prestigio y la reputación que se asocian a ellas, son trascendentales para la elección de uno u otro producto. Si el producto o servicio tiene buena acogida, la marca se destacará de entre las demás y, por ende, será más conocida, aumentando el valor global del producto o servicio, así como el de otros productos o servicios que lleven la misma marca.</p>\n<h2>¿PARA QUÉ REGISTRAR UNA MARCA?</h2>\n<p>Para obtener el uso de manera exclusiva, con lo cual se podrá impedir que otras personas o empresas comercialicen marcas idénticas o similares para los mismos productos o servicios.</p>\n<h2>VIGENCIA DE LA MARCA</h2>\n<p>La marca tendrá una duración de diez años, a contar desde la fecha de concesión y podrá ser renovada indefinidamente por períodos consecutivos de igual duración.</p>\n<h2>ALCANCE</h2>\n<p>El alcance de los registros marcarios es exclusivamente territorial, es decir, las marcas registradas en Paraguay tienen validez sólo en el territorio de Paraguay. Y si se desea protección en otros países, también se debe obtener el registro en dichos países.</p>\n<h2>¿CÓMO SABER EN QUÉ CLASE REGISTRAR UNA MARCA?</h2>\n<p>Esta se desprende de la Clasificación Internacional de Productos y Servicios, la cual distingue 34 clases de productos y 11 clases de servicios, los cuales, a los efectos del registro de la marca, podrá solicitarse conforme al siguiente nomenclador:</p>\n<p><a class="btn btn-info" href="#">Ver Clasificación de Marcas</a></p>\n<h2>¿PUEDO VENDER DE LA MARCA?</h2>\n<p>En efecto, como cualquier título de propiedad, la marca puede venderse, a título oneroso o cederse a título gratuito, este trámite se realizará mediante escritura pública, la cual posteriormente deberá inscribirse ante la DINAPI.</p>\n<p>También el titular podrá otorgar licencia de uso de la marca previamente inscripta y el contrato de licencia deberá registrarse ante la DINAPI.</p>\n<h2>SIGNOS QUE PUEDEN CONSTITUIR UNA MARCA</h2>\n<p>Un requisito esencial que permite el registro de un signo como marca, es la capacidad distintiva de este, a través de la clara individualización hecha por parte del público consumidor.</p>\n<p>Nuestra Ley de Marcas establece, en el Artículo 1, Ley 1294/1998: “Son marcas todos los signos que sirvan para distinguir productos o servicios. Las marcas podrán consistir en una o más palabras, lemas, emblemas, monogramas, sellos, viñetas, relieves; los nombres, vocablos de fantasía, las letras y números con formas o combinaciones distintas; las combinaciones y disposiciones de colores, etiquetas, envases y envoltorios. Podrán consistir también en la forma, presentación o acondicionamiento de los productos o de sus envases o envolturas, o de los medios o lugar de expendio de los productos o servicios correspondientes. Este listado es meramente enunciativo.”.</p>\n<div class="row">\n<div class="articulos-secondary col-md-12 col-sm-12">\n<div class="articulos-secondary-content">\n<div class="articulos-title">LEGISLACIÓN NACIONAL SOBRE MARCAS</div>\n<div class="articulos-descripcion"><!-- <button type="button" class="btn btn-info"  window.open(''leyes/LEY_1294_98.pdf'',''_blank'')">Ley 1294/98</button>\n                    <button type="button" class="btn btn-info"  window.open(''leyes/Decreto_22365_98.pdf'',''_blank'')">Decreto Reglamentario 22365/98</button> --> <a class="btn btn-info" href="#">Ley 1294/98</a> <a class="btn btn-info" href="#">Decreto Reglamentario 22365/98</a></div>\n</div>\n</div>\n</div>\n<hr>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 20, 304),
(326, 'GeneralPage', '2019-11-11 19:07:46', '2019-11-11 19:22:03', 'gestionar-tramites', 'GESTIONAR TRÁMITES', NULL, '<h2 class="inicial">CLASIFICACIÓN DE REGISTROS DE MARCA</h2>\n<p>Antes de registrar una nueva marca, debemos tener claro en qué categoría estará clasificada.</p>\n<p>La clasificación se realiza a través del Clasificador Internacional de Productos y Servicios, la cual distingue 34 clases de productos y 11 clases de servicios, los cuales, a los efectos del registro de la marca podrá solicitarse conforme al siguiente nomenclador:</p>\n<!-- <button type="button" class="btn btn-info">Ver Clasificación de Marcas</button> -->\n<p><a class="btn btn-info" href="#">Ver Clasificación de Marcas</a></p>\n<h2>PASOS PARA REGISTRAR UNA MARCA</h2>\n<p>Una vez escogida la marca pretendida a registro se deberá realizar una búsqueda vía web o en el sistema informático disponible en el Departamento de Atención al Ciudadano, respecto a la disponibilidad o no de la marca.</p>\n<h4>1.Presentación de Solicitud</h4>\n<p>Las solicitudes de registro de marcas deberán ser presentadas en la Mesa de Entrada de la Dirección Nacional de Propiedad Intelectual DINAPI (sito en Avenida España Nº 323 casi Estados Unidos – Asunción).</p>\n<p>Los interesados o sus agentes deberán completar los formularios expedidos por la Dirección General de la Propiedad Industrial. Formulario de Registro Anexo de Titulares. <br><!-- <button type="button" class="btn btn-info">\n                Formulario de Registro\n              </button>\n              <button type="button" class="btn btn-info">\n                Anexo de Titulares\n              </button> --><a class="btn btn-info" href="#">Formulario de Registro</a> <a class="btn btn-info" href="#">Anexo de Titulares</a></p>\n<h4>2.Publicación de solicitud</h4>\n<p>Abonada la tasa de presentación equivalente a dos jornales mínimos vigente, el interesado o su agente, en un plazo de diez días máximo, podrá retirar la orden de publicación, la que deberá publicarse en la gaceta de la DINAPI o en un diario de gran circulación o en uno especializado, por tres días consecutivos.</p>\n<h4>3.Oposición/es de terceros:</h4>\n<p>Una vez publicada la marca y a partir de la última publicación hecha, se esperan 60 días hábiles para que terceros puedan deducir oposición contra la solicitud, si es que se ven afectados en sus derechos.</p>\n<h4>4.Examen de fondo:</h4>\n<p>Cumplidos los requisitos legales y vencidos los plazos establecidos en la Ley de marcas, se realiza el examen de fondo para ver si la marca cumple con los requisitos establecidos en la mencionada ley e informa al superior.</p>\n<h4>5.Concesión de la marca</h4>\n<p>El director de marcas, de concordar con el informe de fondo respecto a la falta de antecedentes y prohibiciones, emitirá un Dictamen y el expediente pasará a consideración de la Dirección General.</p>\n<p>De esta manera, la Dirección General de la Propiedad Industrial concede el Registro de Marca.</p>\n<h2>DURACIÓN DE LOS TRÁMITES</h2>\n<p>La tramitación para obtener el registro de una marca tiene un plazo aproximado de diez meses a partir de la fecha de presentación.</p>\n<p>La Dirección General de la Propiedad Industrial expide un Certificado de Registro de la marca el cual contiene: fecha de concesión, fecha de vencimiento, denominación de la marca, nombre del titular de la marca y la clase que ampara.</p>\n<h2>¿QUIÉN PUEDE SOLICITAR EL REGISTRO DE LA MARCA?</h2>\n<ul><li><b>Persona física</b>, bajo patrocinio (se requiere copia autenticada de cédula de identidad) o mediante poder.</li>\n<li><b>Persona jurídica</b>, mediante poder</li>\n</ul><p>Ambas por intermedio de una Agente de la DINAPI.</p>\n<p>En los casos que el agente actúe mediante poder, este deberá ser inscripto ante la DINAPI y, de acuerdo con el tipo de sociedad, se requerirá la documentación pertinente, a saber:</p>\n<ol><li>Personas físicas.</li>\n<li>Personas físicas o jurídica extranjera.</li>\n<li>Personas jurídicas nacionales.</li>\n<li>Sociedad de Responsabilidad Limitada.</li>\n<li>Sociedad Anónima.</li>\n<li>Asociaciones civiles.</li>\n<li>Fundaciones.</li>\n<li>Entidades públicas.</li>\n<li>Universidades.</li>\n</ol><div class="row">\n<div class="articulos-secondary col-md-12 col-sm-12">\n<div class="articulos-secondary-content">\n<div class="articulos-title">FORMULARIOS PARA REGISTRO DE MARCAS</div>\n<div class="articulos-descripcion"><!-- <button type="button" class="btn btn-info">\n                      Formulario de Registro\n                    </button>\n                    <button type="button" class="btn btn-info">\n                      Anexo de Titulares\n                    </button> --> <a class="btn btn-info" href="#">Formulario de Registro</a> <a class="btn btn-info" href="#">Anexo de Titulares</a></div>\n</div>\n</div>\n</div>\n<hr>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 8, 325),
(327, 'GeneralPage', '2019-11-11 19:25:49', '2019-11-11 19:28:16', 'mision-vision-funciones', 'MISIÓN, VISIÓN, VALORES Y FUNCIONES DE LA DINAPI', NULL, '<h2 class="inicial">MISIÓN, VISIÓN, VALORES Y FUNCIONES DE LA DINAPI</h2>\n<h4>Misión</h4>\n<p>La misión de DINAPI es diseñar, implementar, fomentar y coordinar las políticas públicas de propiedad intelectual, concediendo la protección de los derechos derivados de esta materia a fin de garantizar la seguridad jurídica a sus titulares.</p>\n<h4>Visión</h4>\n<p>Ser una institución comprometida con la mejora continua en la calidad de su gestión, para contribuir con el desarrollo del país mediante la protección de los derechos de propiedad intelectual.</p>\n<h4>Valores</h4>\n<p><b>Valores de DINAPI:</b> <br> • Calidad.<br> • Confiabilidad.<br> • Eficiencia y Eficacia.<br> • Ética.<br> • Transparencia .<br><br><b>Valores de las personas que conforman DINAPI:</b> <br> • Compromiso.<br> • Integridad.<br> • Pro-actividad.<br> • Profesionalismo.<br> • Trabajo en Equipo.</p>\n<h4>Funciones de la DINAPI</h4>\n<p>• Administrar y disponer el otorgamiento y protección de los derechos de propiedad intelectual como ser: Derecho de Autor y Derechos Conexos, Marcas, Dibujos y Modelos Industriales, Patentes de Invención y Modelos de Utilidad, Transferencia de Tecnología, Indicaciones Geográficas y otras que pudieran legislarse o reglamentarse. <br><br> • Promover y fomentar la creación intelectual tanto en su forma literaria, artística o científica, como en su ámbito de aplicación industrial, y la difusión de los conocimientos tecnológicos dentro de los sectores culturales y productivos. <br><br> • Fomentar la Innovación, la Investigación y el Acceso a la Ciencia, favoreciendo la transferencia de tecnología. <br><br> • Formular las políticas nacionales en todas aquellas materias relacionadas con la protección de la propiedad intelectual, en coordinación con los ministerios y demás órganos competentes para cada caso. <br><br> • Promover iniciativas y desarrollar actividades conducentes al mejor conocimiento y protección de la Propiedad Intelectual, en el orden nacional Promover la Innovación y el Desarrollo Empresarial, a través del fomento de la innovación, desarrollo empresarial e investigación a través de las buenas prácticas.</p>\n<div class="row mt-5"><button class="btn btn-info"> Manual de Funciones </button> <button class="btn btn-info ml-3"> Anexo de la Resolución DINAPI/RP/ Nº 209 </button></div>\n<hr>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 4, 301),
(328, 'GeneralPage', '2019-11-11 20:21:22', '2019-11-11 20:33:26', 'organigrama', 'Organigrama Institucional', NULL, '<h2 class="inicial col-md-10 offset-md-1">Organigrama Institucional</h2>\n<div class="col-md-10 offset-md-1"><img src="themes/dinapi/img/organigrama/general.png" class="img-fluid" alt="" title=""></div>\n<h2 class="inicial col-md-10 offset-md-1">Desglose del Organigrama General</h2>\n<!--div class="col-md-10 offset-md-1">\n              <img src="img/organigrama/desgloce1.png" class="img-fluid">\n            </div>\n\n            <div class="col-md-10 offset-md-1">\n              <img src="img/organigrama/desgloce2.png" class="img-fluid">\n            </div>\n\n            <div class="col-md-10 offset-md-1">\n              <img src="img/organigrama/desgloce3.png" class="img-fluid">\n            </div>\n\n            <div class="col-md-10 offset-md-1">\n              <img src="img/organigrama/desgloce4.png" class="img-fluid">\n            </div>\n\n            <div class="col-md-10 offset-md-1">\n              <img src="img/organigrama/desgloce5.png" class="img-fluid">\n            </div-->\n<div class="row">\n<div class="col-md-6 mt-3"><img src="themes/dinapi/img/organigrama/1.png" class="img-fluid" alt="" title=""></div>\n<div class="col-md-6 mt-3"><img src="themes/dinapi/img/organigrama/3.png" class="img-fluid" alt="" title=""></div>\n</div>\n<div class="row">\n<div class="col-md-6 mt-3"><img src="themes/dinapi/img/organigrama/5.png" class="img-fluid" alt="" title=""></div>\n<div class="col-md-6 mt-3"><img src="themes/dinapi/img/organigrama/7.png" class="img-fluid" alt="" title=""></div>\n</div>\n<div class="row">\n<div class="col-md-6 mt-3"><img src="themes/dinapi/img/organigrama/9.png" class="img-fluid" alt="" title=""></div>\n<div class="col-md-6 mt-3"><img src="themes/dinapi/img/organigrama/11.png" class="img-fluid" alt="" title=""></div>\n</div>\n<div class="row">\n<div class="col-md-6 mt-3"><img src="themes/dinapi/img/organigrama/13.png" class="img-fluid" alt="" title=""></div>\n<div class="col-md-6 mt-3"><img src="themes/dinapi/img/organigrama/15.png" class="img-fluid" alt="" title=""></div>\n</div>\n<hr>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 6, 301),
(329, 'GeneralPage', '2019-11-11 20:34:34', '2019-11-11 20:37:57', 'autoridades', 'AUTORIDADES DE LA DINAPI', NULL, '<h2 class="inicial">AUTORIDADES DE LA DINAPI</h2>\n<div class="row mb-5">\n<div class="card col-md-6 offset-md-3 mt-5 col-12" style="width: 18rem;"><img class="card-img-top" src="themes/dinapi/img/joel_talavera.png" alt="Joel Talavera" title=""><div class="card-body"><center>\n<h2>Joel Talavera</h2>\n<p>Director Nacional de Propiedad Intelectual</p>\n</center></div>\n</div>\n</div>\n<p></p>\n<div class="row">\n<div class="col-md-4"><img class="card-img-top" src="themes/dinapi/img/fernando_garcete.png" alt="Fernando Garcete" title=""><div class="card-body mb-5"><center>\n<h2>Fernando Garcete</h2>\n<p>Director General de Observancia</p>\n</center></div>\n</div>\n<div class="col-md-4"><img class="card-img-top" src="themes/dinapi/img/berta_davalos.png" alt="Berta Dávalos" title=""><div class="card-body mb-5"><center>\n<h2>Berta Dávalos</h2>\n<p>Directora General de Propiedad Industrial</p>\n</center></div>\n</div>\n<div class="col-md-4"><img class="card-img-top" src="themes/dinapi/img/oscar_elizeche.png" alt="Oscar Elizeche Landó" title=""><div class="card-body mb-5"><center>\n<h2>Oscar Elizeche Landó</h2>\n<p>Director General de Derecho de Autor y Derechos Conexos</p>\n</center></div>\n</div>\n</div>\n<hr>', NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 4, 301),
(330, 'TarjetaSimplePage', '2019-11-12 15:04:25', '2019-11-12 15:55:25', 'acceso-a-la-informacion-publica', 'Acceso a la Información Pública', NULL, NULL, NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 4, 301),
(331, 'ConcursosPage', '2019-11-12 15:35:31', '2019-11-12 15:55:32', 'concursos', 'CONCURSOS', NULL, NULL, NULL, NULL, 0, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 3, 301),
(332, 'ConcursoItemPage', '2019-11-12 15:36:47', '2019-11-12 15:59:27', 'profesional-abogado', 'Profesional abogado', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 4, 331),
(333, 'ConcursoItemPage', '2019-11-12 15:36:47', '2019-11-12 15:41:19', 'profesional-de-marcas-senior', 'Profesional de marcas senior', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 1, 331),
(334, 'ConcursoItemPage', '2019-11-12 15:36:47', '2019-11-12 15:59:45', 'profesional-de-propiedad-industrial-3', 'Profesional de propiedad industrial', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 1, 331),
(335, 'PeriodoBoletinMarcaPage', '2019-11-11 04:26:12', '2019-11-12 15:43:30', 'noviembre', 'Noviembre', NULL, NULL, NULL, NULL, 0, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 1, 315),
(336, 'PeriodoBoletinMarcaPage', '2019-11-11 04:26:12', '2019-11-12 15:44:14', 'agosto', 'Agosto', NULL, NULL, NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 2, 315),
(337, 'PeriodoBoletinMarcaPage', '2019-11-11 04:26:12', '2019-11-12 15:44:04', 'julio', 'Julio', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 2, 315),
(338, 'ArchivoPage', '2019-11-12 17:25:28', '2019-11-13 01:44:21', 'convenios', 'Convenios', NULL, NULL, NULL, NULL, 0, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 5, 301),
(340, 'ArchivoPage', '2019-11-12 17:25:28', '2019-11-13 01:51:18', 'convenios-2', 'Convenios', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 3, 341),
(341, 'ArchivoDesplegablePage', '2019-11-12 18:12:04', '2019-11-12 18:17:15', 'marco-normativo', 'MARCO NORMATIVO', NULL, NULL, NULL, NULL, 0, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 4, 301),
(342, 'ArchivoPage', '2019-11-12 17:25:28', '2019-11-13 01:52:24', 'leyes', 'LEYES', NULL, NULL, NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 2, 341),
(343, 'ArchivoPage', '2019-11-12 17:25:28', '2019-11-13 01:53:18', 'constitucion-ley-basica', 'Constitución / Ley básica', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 4, 342),
(344, 'ArchivoPage', '2019-11-12 17:25:28', '2019-11-13 01:53:43', 'principales-leyes-de-pi-adoptadas-por-el-poder-legislativo', 'Principales leyes de PI: adoptadas por el Poder Legislativo', NULL, NULL, NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 2, 342),
(346, 'NoticiaPage', '2019-11-13 17:44:02', '2019-11-14 22:38:15', 'centro-de-noticias', 'CENTRO DE NOTICIAS', NULL, NULL, NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 4, 0),
(347, 'GeneralPage', '2019-11-13 20:42:55', '2019-11-13 20:44:51', 'folklore', 'PROMOCIÓN DEL FOLKLORE', NULL, '<h2 class="inicial">Industrias Creativas</h2>\n<p>La DINAPI a través de la Dirección De Promoción De Industrias Creativas y Folklore, busca fomentar las Industrias Creativas y Folklore Nacional; desarrollando, promocionando, incentivando y protegiendo estas Industrias como fuentes generadoras de empleos, ingresos y desarrollo económico; Asimismo fortaleciendo la identidad cultural nacional a través del capital intelectual y el ingenio; para el combate inteligente a la pobreza a través de la Propiedad Intelectual.</p>\n<p>Siendo las Industrias Creativas uno de los principales ejes de planificación estratégica que define las actividades dentro de la DINAPI.</p>\n<!--h4>Industrias Creativas mas influyentes en el Paraguay</h4>\n\n            <ol>\n              <li>\n                Video Juegos (Software)\n              </li>\n              <li>\n                Música\n              </li>\n              <li> \n                Artesanía\n              </li>\n              <li>\n                Audiovisual\n              </li>\n              <li>\n                Radio\n              </li>\n              <li>\n                Televisión\n              </li>\n              <li>\n                Editorial\n              </li>\n              <li>\n                Turismo\n              </li>\n              <li>\n                Moda y Diseño\n              </li>\n            </ol--><hr><h2 class="inicial">Promoción del Folklore</h2>\n<p>La creación de espacios a los artífices del desarrollo cultural del país dentro de la Dirección Nacional de Propiedad Intelectual, otorgándoles un lugar de exposición para la valoración de sus obras, permitiendo que los mismos puedan percibir una remuneración por parte de quienes las adquieren y lograr así vivir de sus creaciones, además de seguir contribuyendo a nuestra cultura.</p>\n<p>En ese sentido, Dirección General de Derecho de Autor y Derechos Conexos realiza e impulsa la creación de Ferias de Artesanos, ayudando a quienes se acercan de manera conjunta o particular.</p>\n<hr>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 3, 302),
(348, 'GeneralPage', '2019-11-13 20:45:13', '2019-11-13 20:46:06', 'sociedades', 'SOCIEDADES DE GESTIÓN COLECTIVA', NULL, '<h2 class="inicial">Sociedades de Gestión Colectiva</h2>\n<h4>¿Cómo se gestionan el derecho de autor y los derechos conexos?</h4>\n<p>Para utilizar una obra protegida por derecho de autor y/o derechos conexos, es conveniente solicitar a los titulares de los derechos la autorización correspondiente.</p>\n<p>Estas autorizaciones son muy importantes, ya que los autores e intérpretes reciben el pago de sus derechos a través de licencias o cesiones del uso de sus obras; esta gestión de manera individual por parte del artista resulta en la práctica dificultosa a la par que deben seguir creando e interpretando, por lo cual, esta gestión le es confiada usualmente a las Entidades de Gestión Colectiva.</p>\n<p>Estas organizaciones actúan como un enlace entre los titulares de los derechos y los que quieren utilizar sus obras. Conceden autorizaciones, recaudan los pagos de derechos, y detectan, prohíben y buscan compensación por usos no autorizados. Gracias a estas organizaciones, los autores e intérpretes reciben los pagos que merecen cuando sus obras e interpretaciones son utilizadas y los usuarios pueden conseguir permiso para el uso de tales obras e interpretaciones más fácilmente.</p>\n<p>En nuestro país las sociedades de Gestión Colectiva, autorizadas para funcionar y que gestionan actualmente derechos son «Autores Paraguayos Asociados» APA, «Entidad Paraguaya de Artistas Intérpretes o Ejecutantes» AIE Paraguay y la «Sociedad de Gestión de Productores Fonográficos del Paraguay» SGP.</p>\n<hr>', NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 3, 302),
(349, 'GeneralPage', '2019-11-13 20:59:07', '2019-11-13 21:00:35', 'informacion-relevante', 'INFORMACIÓN RELEVANTE', NULL, '<h2 class="inicial">DIRECCION GENERAL DE OBSERVANCIA</h2>\n<p>Es una de las Direcciones Generales de la DINAPI, cuya misión principal es la de velar por el cumplimiento efectivo de las normas especiales de Propiedad Intelectual, tendientes a asegurar el ejercicio de los derechos por sus titulares.</p>\n<p>Dicha tarea se lleva a cabo mediante la implementación de programas de promoción, prevención y sensibilización acerca de la importancia del respeto a la Propiedad Intelectual, así como de la investigación, como órgano coadyuvante de los organismos estatales encargados de la persecución de los hechos punibles perpetrados contra dichos derechos y sus titulares.</p>\n<h4>PROMOCIÓN DE LA PROPIEDAD INTELECTUAL</h4>\n<p>La DGO, a través de sus programas de promoción, busca poner al alcance de distintos sectores de la sociedad los conceptos o elementos integrantes de las figuras de P.I., facilitar la compresión sobre los procedimientos de registros, además de asumir la tarea de transmitir la problemática que conlleva la violación a la PI desde sus distintos aspectos, sociales, económicos y culturales, a fin de hacerlos comprensivos desde un enfoque vivencial y significativo.</p>\n<h4>PREVENCIÓN</h4>\n<p>Otro de los objetivos de la DGO es la de prevenir la comisión de hechos punibles y de faltas que atenten contra el libre ejercicio de los derechos de la PI, llevando a cabo actividades investigativas tendientes a impedir la reproducción comercial de obras protegidas por derecho de autor sin autorización del titular o piratería, así también evitar la comercialización de productos falsificados relacionados a marcas u otros signos distintivos que induzcan al error o confusión al público consumidor, así como otras acciones contempladas en leyes especiales que rigen la materia.</p>\n<p>Con ello la DGO busca, no solo proporcionar herramientas efectivas para la protección de los derechos de sus titulares, sino además, busca proteger al consumidor y al ciudadano en general de su exposición a productos espureos con las consecuencias que ello acarrea.</p>\n<h4>INVESTIGACIÓN</h4>\n<p>Desde su misión investigativa, lleva a cabo de oficio y a instancia de parte, la recolección de información y datos de manera a lograr la intervención de espacios públicos o privados de acceso público, así mismo aplica en base a convenios interinstitucionales, medidas en frontera para el control de mercaderías que ingresan al País, cooperando de este modo con los órganos estatales encargados de la represión de Hechos Punibles contra la PI.</p>\n<hr>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 3, 310),
(350, 'GeneralPage', '2019-11-13 20:59:07', '2019-11-13 21:27:32', 'areas-de-observancia', 'ÁREAS DE OBSERVANCIA', NULL, '<h2 class="inicial">ÁREAS QUE ABARCA LA DIRECCIÓN GENERAL DE OBSERVANCIA</h2>\n<h4>DIRECCIÓN DE LUCHA CONTRA LA PIRATERÍA Y FALSIFICACIÓN</h4>\n<p>Es la encargada de planificar y ejecutar las tareas investigativas de todo hecho que atente contra los derechos de Propiedad Intelectual.</p>\n<p><b>Actividades:</b> intervenciones administrativas en aduanas de todo el país, tareas de investigación vía web y de locales públicos, allanamientos conjuntos con el Ministerio Público y Policía Nacional de locales comerciales y depósitos, controles en vía pública, todo esto en persecución a una posible fabricación, comercialización y/o almacenamiento de productos presumiblemente falsificados y/o pirateados.</p>\n<h4>DIRECCIÓN DE PROMOCIÓN Y PREVENCIÓN</h4>\n<p>Es la encargada de planificar y ejecutar actividades de concienciación, promoción y capacitación sobre los derechos de PI y la importancia de los mismos en la sociedad.</p>\n<p><b>Actividades:</b> Algunas de ellas son:</p>\n<p>A) Realización de Jornadas de capacitación en todo el territorio paraguayo (universidades, colegios, instituciones públicas y privadas.).</p>\n<p>B) Concienciar a la ciudanía en general sobre la importancia de proteger la PI como herramienta fundamental para el desarrollo social y económico del país.</p>\n<p>C) Promover la Difusión y Protección de los Derechos de PI en el Paraguay, a través de actividades de Educación y Capacitación; y,</p>\n<p>D) Fomentar la creación intelectual, en sus formas: literaria, artística y/o científica, así como en su ámbito de aplicación industrial; y la difusión de los conocimientos tecnológicos dentro de los sectores culturales y productivos, en consonancia con la misión de la DINAPI.</p>\n<h4>DIRECCIÓN DE MEDIACIÓN Y CONCILIACIÓN</h4>\n<p>Es la encargada de planificar, ejecutar y controlar todas las actividades inherentes a brindar asistencia a las partes para lograr un acuerdo respecto de una controversia suscitada en estricto apego a las disposiciones legales que regulan la PI en el país.</p>\n<p>Esta unidad, actualmente se encuentra en proceso de reglamentación.</p>\n<h4>UNIDAD DE REGISTRO DE IMPORTADORES</h4>\n<p>La función principal de ésta unidad es mantener un registro de los importadores y un orden de las solicitudes de importaciones presentadas por los Agentes Patrocinantes, para los diferentes trámites realizados en la DINAPI.</p>\n<p><b>Actividades:</b> Recepcionar las solicitudes de registro de importadores, procesar cada solicitud y realizar un examen de forma para establecer si se reúne todos los requisitos para la inscripción o registro, así como la carga del registro en el sistema informático.</p>\n<p>Para la inscripción de un Importador, debe cumplir con los requisitos que podrá encontrar en el siguiente enlace: <br><button class="btn btn-info" window.open="" nuevos_enlaces="" rismompp_dinapi_2018.pdf=""> Requisitos para el Registro de Importadores </button></p>\n<p>Cumplidos con los requisitos, deberá rellenar el formulario correspondiente y presentar, conjuntamente con los documentos, en la DGO, unidad de registro de importadores. <br><button class="btn btn-info" window.open="" nuevos_enlaces="" inscripcion_rismompp_dinapi_2018_formulario_feb2019.doc=""> Formulario de Registro de Importadores </button></p>\n<hr>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 3, 349),
(351, 'GeneralPage', '2019-11-13 20:59:07', '2019-11-13 21:26:34', 'denunciar', 'DENUNCIAR', NULL, '<h2 class="inicial">¿CÓMO REALIZAR UNA DENUNCIA?</h2>\n<p>La Dirección General de Observancia (DGO) recepciona en sus oficinas denuncias sobre supuestas infracciones a los Derechos de Propiedad Intelectual, la cual es diligenciada por la Dirección de Lucha contra la Piratería y Falsificación dependiente de la DGO.</p>\n<p>Actualmente, la denuncia puede ser realizada en forma verbal o escrita, ante la DGO, a través de su secretaría, ubicada en el primer piso de la DINAPI, sito en España N° 323 c/ EEUU.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 5, 349),
(352, 'ArchivoPage', '2019-11-12 17:25:28', '2019-11-14 22:25:58', 'actividades-realizadas', 'ACTIVIDADES REALIZADAS', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 4, 353),
(353, 'ArchivoDesplegablePage', '2019-11-12 18:12:04', '2019-11-14 22:25:50', 'mecip', 'MECIP', NULL, NULL, NULL, NULL, 0, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 1, 301),
(354, 'ArchivoPage', '2019-11-12 17:25:28', '2019-11-15 14:33:32', 'resolucionesrg', 'RESOLUCIONES RG', NULL, NULL, NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 1, 353),
(355, 'ArchivoPage', '2019-11-12 17:25:28', '2019-11-15 15:40:37', 'resoluciones-rp', 'RESOLUCIONES RP', NULL, NULL, NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 1, 353),
(356, 'ArchivoPage', '2019-11-12 17:25:28', '2019-11-15 15:44:17', 'resultados-obtenidos', 'RESULTADOS OBTENIDOS', NULL, NULL, NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 1, 353);

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
) ENGINE=InnoDB AUTO_INCREMENT=1166 DEFAULT CHARSET=utf8;

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
(1165, 290, 715, 'Content');

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
  `ClassName` enum('SiteTree','Page','ErrorPage','RedirectorPage','VirtualPage','AcordeonPage','ArchivoDesplegablePage','ArchivoPage','BoletinPage','PeriodoBoletinPage','ConcursoItemPage','ConcursosPage','ContactPage','FullHtmlPage','GeneralPage','HomePage','InstitucionalPage','NoticiaPage','PreguntasFrecuentesPage','TarjetaPage','TarjetaSimplePage','UserDefinedForm','BoletinMarcaPage','PeriodoBoletinMarcaPage') DEFAULT 'SiteTree',
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
) ENGINE=MyISAM AUTO_INCREMENT=357 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `SiteTree_Live`
--

INSERT INTO `SiteTree_Live` (`ID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `Version`, `ParentID`) VALUES
(1, 'HomePage', '2015-07-21 17:15:05', '2019-11-11 00:57:24', 'home', 'Inicio', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 12, 0),
(4, 'ErrorPage', '2015-07-21 17:15:06', '2019-11-11 00:57:25', 'pagina-no-encontrada', 'Página no encontrada', NULL, '<p>Lo sentimos, parece que intentaste acceder a una página que no existe.</p><p>Por favor, comprueba que la URL que intentabas acceder está bien escrita e inténtalo de nuevo.</p>', NULL, NULL, 0, 0, 8, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(5, 'ErrorPage', '2015-07-21 17:15:07', '2019-11-11 00:57:25', 'error-de-servidor', 'Error de servidor', NULL, '<p>Lo sentimos, hubo un problema al gestionar tu solicitud.</p>', NULL, NULL, 0, 0, 9, 0, 0, NULL, 'Inherit', 'Inherit', 2, 0),
(345, 'AcordeonPage', '2019-11-13 15:29:02', '2019-11-13 15:52:56', 'registro', 'REGISTRO', NULL, '<h2 class="inicial">¿ES NECESARIO REGISTRAR LA OBRA PARA QUE ESTÉ PROTEGIDA?</h2>\n<p>La obra está protegida desde el momento de su creación conforme lo establece el Convenio de Berna para la Protección de las Obras Literarias y Artísticas, del cual Paraguay es parte.</p>\n<p>Sin embargo, su registro ante la Dirección General de Derecho de Autor y Derechos Conexos tiene a su cargo el Registro Nacional de Derechos de Autor, con el propósito de contar con un principio de prueba cierta de los hechos y actos que consten de él, además de servir de base de datos que aporta a fines estadísticos y a la promoción de la cultura.</p>\n<p>El registro también puede servir como prueba ante un Tribunal de Justicia en el caso de controversias relacionadas con el derecho de autor.</p>\n<p>El símbolo © a menudo se usa para indicar que una obra está protegida por el derecho de autor. A continuación del símbolo se incluye el nombre del propietario de los derechos de autor y el año en el que la obra fue creada. Por ejemplo: “© OMPI, 2007” indicaría una publicación de la OMPI producida en el año 2007. Como el símbolo © no es más que una indicación, no es necesario insertarlo en las obras para que estas estén protegidas. Aunque una obra no lleve el símbolo ©, puede estar protegida por el derecho de autor.</p>\n<p>Fuente: www.ompi.int</p>\n<h2>REQUISITOS PARA REGISTROS EN LAS DISTINTAS CATEGORÍAS DE DERECHO DE AUTOR</h2>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 5, 302),
(223, 'ContactPage', '2019-05-22 22:34:38', '2019-11-14 17:44:12', 'contacto', 'Contacto', NULL, NULL, NULL, NULL, 0, 0, 6, 0, 0, NULL, 'Inherit', 'Inherit', 11, 0),
(301, 'InstitucionalPage', '2019-11-08 21:27:23', '2019-11-11 00:57:24', 'institucional', 'Institucional', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 4, 0),
(302, 'TarjetaPage', '2019-11-10 22:46:02', '2019-11-11 00:57:24', 'derecho-de-autor', 'Derecho de Autor', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 3, 0),
(303, 'Page', '2019-11-10 23:15:28', '2019-11-11 00:57:24', 'propiedad-industrial', 'Propiedad Industrial', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 3, 0),
(304, 'TarjetaPage', '2019-11-10 23:34:14', '2019-11-11 00:57:24', 'marcas', 'Marcas', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 2, 303),
(305, 'TarjetaPage', '2019-11-10 23:43:28', '2019-11-11 00:57:24', 'patentes', 'Patentes', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 2, 303),
(306, 'TarjetaPage', '2019-11-11 00:04:19', '2019-11-11 00:57:24', 'dibujos-y-modelos-industriales', 'Dibujos y Modelos Industriales', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 2, 303),
(307, 'TarjetaPage', '2019-11-11 00:08:03', '2019-11-11 00:57:24', 'igydo', 'IG&DO', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 3, 303),
(308, 'TarjetaPage', '2019-11-11 00:12:26', '2019-11-11 00:57:25', 'gestiones-administrativas', 'Gestiones Administrativas', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 2, 303),
(309, 'RedirectorPage', '2019-11-11 00:16:54', '2019-11-11 00:57:25', 'resoluciones-de-la-dgpi', 'Resoluciones de la DGPI', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 2, 303),
(310, 'TarjetaPage', '2019-11-11 00:18:37', '2019-11-11 00:57:25', 'observancia', 'Observancia', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 3, 0),
(316, 'PeriodoBoletinMarcaPage', '2019-11-11 04:26:12', '2019-11-11 05:28:16', 'octubre', 'Octubre', NULL, NULL, NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 3, 315),
(315, 'BoletinMarcaPage', '2019-11-11 04:25:52', '2019-11-11 15:06:22', 'boletines-de-marcas', 'Boletines de Marcas', NULL, NULL, NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 6, 304),
(317, 'PeriodoBoletinMarcaPage', '2019-11-11 05:20:50', '2019-11-11 05:27:52', 'setiembre', 'Setiembre', NULL, NULL, NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 4, 315),
(318, 'BoletinPage', '2019-11-11 14:04:03', '2019-11-11 15:08:55', 'boletines-de-patentes', 'Boletines de Patentes', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 6, 305),
(319, 'PeriodoBoletinPage', '2019-11-11 14:05:32', '2019-11-11 14:10:09', 'ano-2019', 'Año 2019', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 2, 318),
(320, 'PeriodoBoletinPage', '2019-11-11 14:15:40', '2019-11-11 14:18:26', 'ano-2018', 'Año 2018', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 3, 318),
(321, 'BoletinPage', '2019-11-11 14:31:29', '2019-11-11 15:13:37', 'boletines-de-dibujos-y-modelos-industriales', 'Boletines de Dibujos y Modelos Industriales', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 7, 306),
(322, 'PeriodoBoletinPage', '2019-11-11 14:31:45', '2019-11-11 14:32:06', 'ano-2015', 'Año 2015', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 2, 321),
(323, 'PeriodoBoletinPage', '2019-11-11 14:33:36', '2019-11-11 14:33:48', 'ano-2016', 'Año 2016', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 2, 321),
(325, 'GeneralPage', '2019-11-11 15:35:50', '2019-11-11 19:21:26', 'aprender', 'APRENDER', NULL, '<h2 class="inicial">¿QUÉ ES UNA MARCA?</h2>\n<p>Es todo signo que identifica a un producto o servicio en el mercado. Por lo tanto, una marca puede ser considerada como una herramienta de comunicación usada por el productor o prestador de servicios para atraer al público.</p>\n<h2>¿POR QUÉ ES IMPORTANTE UNA MARCA?</h2>\n<p>La marca juega un papel preponderante y esencial en el proceso competitivo. Hoy día es imposible pensar que un negocio, ya sea grande o pequeño, pueda llegar a trabajar sin propaganda, lo cual es posible llevar a cabo a través de las marcas. Los consumidores relacionan las marcas con ciertos productos y servicios, por lo que el prestigio y la reputación que se asocian a ellas, son trascendentales para la elección de uno u otro producto. Si el producto o servicio tiene buena acogida, la marca se destacará de entre las demás y, por ende, será más conocida, aumentando el valor global del producto o servicio, así como el de otros productos o servicios que lleven la misma marca.</p>\n<h2>¿PARA QUÉ REGISTRAR UNA MARCA?</h2>\n<p>Para obtener el uso de manera exclusiva, con lo cual se podrá impedir que otras personas o empresas comercialicen marcas idénticas o similares para los mismos productos o servicios.</p>\n<h2>VIGENCIA DE LA MARCA</h2>\n<p>La marca tendrá una duración de diez años, a contar desde la fecha de concesión y podrá ser renovada indefinidamente por períodos consecutivos de igual duración.</p>\n<h2>ALCANCE</h2>\n<p>El alcance de los registros marcarios es exclusivamente territorial, es decir, las marcas registradas en Paraguay tienen validez sólo en el territorio de Paraguay. Y si se desea protección en otros países, también se debe obtener el registro en dichos países.</p>\n<h2>¿CÓMO SABER EN QUÉ CLASE REGISTRAR UNA MARCA?</h2>\n<p>Esta se desprende de la Clasificación Internacional de Productos y Servicios, la cual distingue 34 clases de productos y 11 clases de servicios, los cuales, a los efectos del registro de la marca, podrá solicitarse conforme al siguiente nomenclador:</p>\n<p><a class="btn btn-info" href="#">Ver Clasificación de Marcas</a></p>\n<h2>¿PUEDO VENDER DE LA MARCA?</h2>\n<p>En efecto, como cualquier título de propiedad, la marca puede venderse, a título oneroso o cederse a título gratuito, este trámite se realizará mediante escritura pública, la cual posteriormente deberá inscribirse ante la DINAPI.</p>\n<p>También el titular podrá otorgar licencia de uso de la marca previamente inscripta y el contrato de licencia deberá registrarse ante la DINAPI.</p>\n<h2>SIGNOS QUE PUEDEN CONSTITUIR UNA MARCA</h2>\n<p>Un requisito esencial que permite el registro de un signo como marca, es la capacidad distintiva de este, a través de la clara individualización hecha por parte del público consumidor.</p>\n<p>Nuestra Ley de Marcas establece, en el Artículo 1, Ley 1294/1998: “Son marcas todos los signos que sirvan para distinguir productos o servicios. Las marcas podrán consistir en una o más palabras, lemas, emblemas, monogramas, sellos, viñetas, relieves; los nombres, vocablos de fantasía, las letras y números con formas o combinaciones distintas; las combinaciones y disposiciones de colores, etiquetas, envases y envoltorios. Podrán consistir también en la forma, presentación o acondicionamiento de los productos o de sus envases o envolturas, o de los medios o lugar de expendio de los productos o servicios correspondientes. Este listado es meramente enunciativo.”.</p>\n<div class="row">\n<div class="articulos-secondary col-md-12 col-sm-12">\n<div class="articulos-secondary-content">\n<div class="articulos-title">LEGISLACIÓN NACIONAL SOBRE MARCAS</div>\n<div class="articulos-descripcion"><!-- <button type="button" class="btn btn-info"  window.open(''leyes/LEY_1294_98.pdf'',''_blank'')">Ley 1294/98</button>\n                    <button type="button" class="btn btn-info"  window.open(''leyes/Decreto_22365_98.pdf'',''_blank'')">Decreto Reglamentario 22365/98</button> --> <a class="btn btn-info" href="#">Ley 1294/98</a> <a class="btn btn-info" href="#">Decreto Reglamentario 22365/98</a></div>\n</div>\n</div>\n</div>\n<hr>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 20, 304),
(326, 'GeneralPage', '2019-11-11 19:07:46', '2019-11-11 19:22:03', 'gestionar-tramites', 'GESTIONAR TRÁMITES', NULL, '<h2 class="inicial">CLASIFICACIÓN DE REGISTROS DE MARCA</h2>\n<p>Antes de registrar una nueva marca, debemos tener claro en qué categoría estará clasificada.</p>\n<p>La clasificación se realiza a través del Clasificador Internacional de Productos y Servicios, la cual distingue 34 clases de productos y 11 clases de servicios, los cuales, a los efectos del registro de la marca podrá solicitarse conforme al siguiente nomenclador:</p>\n<!-- <button type="button" class="btn btn-info">Ver Clasificación de Marcas</button> -->\n<p><a class="btn btn-info" href="#">Ver Clasificación de Marcas</a></p>\n<h2>PASOS PARA REGISTRAR UNA MARCA</h2>\n<p>Una vez escogida la marca pretendida a registro se deberá realizar una búsqueda vía web o en el sistema informático disponible en el Departamento de Atención al Ciudadano, respecto a la disponibilidad o no de la marca.</p>\n<h4>1.Presentación de Solicitud</h4>\n<p>Las solicitudes de registro de marcas deberán ser presentadas en la Mesa de Entrada de la Dirección Nacional de Propiedad Intelectual DINAPI (sito en Avenida España Nº 323 casi Estados Unidos – Asunción).</p>\n<p>Los interesados o sus agentes deberán completar los formularios expedidos por la Dirección General de la Propiedad Industrial. Formulario de Registro Anexo de Titulares. <br><!-- <button type="button" class="btn btn-info">\n                Formulario de Registro\n              </button>\n              <button type="button" class="btn btn-info">\n                Anexo de Titulares\n              </button> --><a class="btn btn-info" href="#">Formulario de Registro</a> <a class="btn btn-info" href="#">Anexo de Titulares</a></p>\n<h4>2.Publicación de solicitud</h4>\n<p>Abonada la tasa de presentación equivalente a dos jornales mínimos vigente, el interesado o su agente, en un plazo de diez días máximo, podrá retirar la orden de publicación, la que deberá publicarse en la gaceta de la DINAPI o en un diario de gran circulación o en uno especializado, por tres días consecutivos.</p>\n<h4>3.Oposición/es de terceros:</h4>\n<p>Una vez publicada la marca y a partir de la última publicación hecha, se esperan 60 días hábiles para que terceros puedan deducir oposición contra la solicitud, si es que se ven afectados en sus derechos.</p>\n<h4>4.Examen de fondo:</h4>\n<p>Cumplidos los requisitos legales y vencidos los plazos establecidos en la Ley de marcas, se realiza el examen de fondo para ver si la marca cumple con los requisitos establecidos en la mencionada ley e informa al superior.</p>\n<h4>5.Concesión de la marca</h4>\n<p>El director de marcas, de concordar con el informe de fondo respecto a la falta de antecedentes y prohibiciones, emitirá un Dictamen y el expediente pasará a consideración de la Dirección General.</p>\n<p>De esta manera, la Dirección General de la Propiedad Industrial concede el Registro de Marca.</p>\n<h2>DURACIÓN DE LOS TRÁMITES</h2>\n<p>La tramitación para obtener el registro de una marca tiene un plazo aproximado de diez meses a partir de la fecha de presentación.</p>\n<p>La Dirección General de la Propiedad Industrial expide un Certificado de Registro de la marca el cual contiene: fecha de concesión, fecha de vencimiento, denominación de la marca, nombre del titular de la marca y la clase que ampara.</p>\n<h2>¿QUIÉN PUEDE SOLICITAR EL REGISTRO DE LA MARCA?</h2>\n<ul><li><b>Persona física</b>, bajo patrocinio (se requiere copia autenticada de cédula de identidad) o mediante poder.</li>\n<li><b>Persona jurídica</b>, mediante poder</li>\n</ul><p>Ambas por intermedio de una Agente de la DINAPI.</p>\n<p>En los casos que el agente actúe mediante poder, este deberá ser inscripto ante la DINAPI y, de acuerdo con el tipo de sociedad, se requerirá la documentación pertinente, a saber:</p>\n<ol><li>Personas físicas.</li>\n<li>Personas físicas o jurídica extranjera.</li>\n<li>Personas jurídicas nacionales.</li>\n<li>Sociedad de Responsabilidad Limitada.</li>\n<li>Sociedad Anónima.</li>\n<li>Asociaciones civiles.</li>\n<li>Fundaciones.</li>\n<li>Entidades públicas.</li>\n<li>Universidades.</li>\n</ol><div class="row">\n<div class="articulos-secondary col-md-12 col-sm-12">\n<div class="articulos-secondary-content">\n<div class="articulos-title">FORMULARIOS PARA REGISTRO DE MARCAS</div>\n<div class="articulos-descripcion"><!-- <button type="button" class="btn btn-info">\n                      Formulario de Registro\n                    </button>\n                    <button type="button" class="btn btn-info">\n                      Anexo de Titulares\n                    </button> --> <a class="btn btn-info" href="#">Formulario de Registro</a> <a class="btn btn-info" href="#">Anexo de Titulares</a></div>\n</div>\n</div>\n</div>\n<hr>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 8, 325),
(327, 'GeneralPage', '2019-11-11 19:25:49', '2019-11-11 19:28:16', 'mision-vision-funciones', 'MISIÓN, VISIÓN, VALORES Y FUNCIONES DE LA DINAPI', NULL, '<h2 class="inicial">MISIÓN, VISIÓN, VALORES Y FUNCIONES DE LA DINAPI</h2>\n<h4>Misión</h4>\n<p>La misión de DINAPI es diseñar, implementar, fomentar y coordinar las políticas públicas de propiedad intelectual, concediendo la protección de los derechos derivados de esta materia a fin de garantizar la seguridad jurídica a sus titulares.</p>\n<h4>Visión</h4>\n<p>Ser una institución comprometida con la mejora continua en la calidad de su gestión, para contribuir con el desarrollo del país mediante la protección de los derechos de propiedad intelectual.</p>\n<h4>Valores</h4>\n<p><b>Valores de DINAPI:</b> <br> • Calidad.<br> • Confiabilidad.<br> • Eficiencia y Eficacia.<br> • Ética.<br> • Transparencia .<br><br><b>Valores de las personas que conforman DINAPI:</b> <br> • Compromiso.<br> • Integridad.<br> • Pro-actividad.<br> • Profesionalismo.<br> • Trabajo en Equipo.</p>\n<h4>Funciones de la DINAPI</h4>\n<p>• Administrar y disponer el otorgamiento y protección de los derechos de propiedad intelectual como ser: Derecho de Autor y Derechos Conexos, Marcas, Dibujos y Modelos Industriales, Patentes de Invención y Modelos de Utilidad, Transferencia de Tecnología, Indicaciones Geográficas y otras que pudieran legislarse o reglamentarse. <br><br> • Promover y fomentar la creación intelectual tanto en su forma literaria, artística o científica, como en su ámbito de aplicación industrial, y la difusión de los conocimientos tecnológicos dentro de los sectores culturales y productivos. <br><br> • Fomentar la Innovación, la Investigación y el Acceso a la Ciencia, favoreciendo la transferencia de tecnología. <br><br> • Formular las políticas nacionales en todas aquellas materias relacionadas con la protección de la propiedad intelectual, en coordinación con los ministerios y demás órganos competentes para cada caso. <br><br> • Promover iniciativas y desarrollar actividades conducentes al mejor conocimiento y protección de la Propiedad Intelectual, en el orden nacional Promover la Innovación y el Desarrollo Empresarial, a través del fomento de la innovación, desarrollo empresarial e investigación a través de las buenas prácticas.</p>\n<div class="row mt-5"><button class="btn btn-info"> Manual de Funciones </button> <button class="btn btn-info ml-3"> Anexo de la Resolución DINAPI/RP/ Nº 209 </button></div>\n<hr>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 4, 301),
(328, 'GeneralPage', '2019-11-11 20:21:22', '2019-11-11 20:33:27', 'organigrama', 'Organigrama Institucional', NULL, '<h2 class="inicial col-md-10 offset-md-1">Organigrama Institucional</h2>\n<div class="col-md-10 offset-md-1"><img src="themes/dinapi/img/organigrama/general.png" class="img-fluid" alt="" title=""></div>\n<h2 class="inicial col-md-10 offset-md-1">Desglose del Organigrama General</h2>\n<!--div class="col-md-10 offset-md-1">\n              <img src="img/organigrama/desgloce1.png" class="img-fluid">\n            </div>\n\n            <div class="col-md-10 offset-md-1">\n              <img src="img/organigrama/desgloce2.png" class="img-fluid">\n            </div>\n\n            <div class="col-md-10 offset-md-1">\n              <img src="img/organigrama/desgloce3.png" class="img-fluid">\n            </div>\n\n            <div class="col-md-10 offset-md-1">\n              <img src="img/organigrama/desgloce4.png" class="img-fluid">\n            </div>\n\n            <div class="col-md-10 offset-md-1">\n              <img src="img/organigrama/desgloce5.png" class="img-fluid">\n            </div-->\n<div class="row">\n<div class="col-md-6 mt-3"><img src="themes/dinapi/img/organigrama/1.png" class="img-fluid" alt="" title=""></div>\n<div class="col-md-6 mt-3"><img src="themes/dinapi/img/organigrama/3.png" class="img-fluid" alt="" title=""></div>\n</div>\n<div class="row">\n<div class="col-md-6 mt-3"><img src="themes/dinapi/img/organigrama/5.png" class="img-fluid" alt="" title=""></div>\n<div class="col-md-6 mt-3"><img src="themes/dinapi/img/organigrama/7.png" class="img-fluid" alt="" title=""></div>\n</div>\n<div class="row">\n<div class="col-md-6 mt-3"><img src="themes/dinapi/img/organigrama/9.png" class="img-fluid" alt="" title=""></div>\n<div class="col-md-6 mt-3"><img src="themes/dinapi/img/organigrama/11.png" class="img-fluid" alt="" title=""></div>\n</div>\n<div class="row">\n<div class="col-md-6 mt-3"><img src="themes/dinapi/img/organigrama/13.png" class="img-fluid" alt="" title=""></div>\n<div class="col-md-6 mt-3"><img src="themes/dinapi/img/organigrama/15.png" class="img-fluid" alt="" title=""></div>\n</div>\n<hr>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 6, 301),
(329, 'GeneralPage', '2019-11-11 20:34:34', '2019-11-11 20:37:57', 'autoridades', 'AUTORIDADES DE LA DINAPI', NULL, '<h2 class="inicial">AUTORIDADES DE LA DINAPI</h2>\n<div class="row mb-5">\n<div class="card col-md-6 offset-md-3 mt-5 col-12" style="width: 18rem;"><img class="card-img-top" src="themes/dinapi/img/joel_talavera.png" alt="Joel Talavera" title=""><div class="card-body"><center>\n<h2>Joel Talavera</h2>\n<p>Director Nacional de Propiedad Intelectual</p>\n</center></div>\n</div>\n</div>\n<p></p>\n<div class="row">\n<div class="col-md-4"><img class="card-img-top" src="themes/dinapi/img/fernando_garcete.png" alt="Fernando Garcete" title=""><div class="card-body mb-5"><center>\n<h2>Fernando Garcete</h2>\n<p>Director General de Observancia</p>\n</center></div>\n</div>\n<div class="col-md-4"><img class="card-img-top" src="themes/dinapi/img/berta_davalos.png" alt="Berta Dávalos" title=""><div class="card-body mb-5"><center>\n<h2>Berta Dávalos</h2>\n<p>Directora General de Propiedad Industrial</p>\n</center></div>\n</div>\n<div class="col-md-4"><img class="card-img-top" src="themes/dinapi/img/oscar_elizeche.png" alt="Oscar Elizeche Landó" title=""><div class="card-body mb-5"><center>\n<h2>Oscar Elizeche Landó</h2>\n<p>Director General de Derecho de Autor y Derechos Conexos</p>\n</center></div>\n</div>\n</div>\n<hr>', NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 4, 301),
(330, 'TarjetaSimplePage', '2019-11-12 15:04:25', '2019-11-12 15:55:25', 'acceso-a-la-informacion-publica', 'Acceso a la Información Pública', NULL, NULL, NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 4, 301),
(331, 'ConcursosPage', '2019-11-12 15:35:31', '2019-11-12 15:55:32', 'concursos', 'CONCURSOS', NULL, NULL, NULL, NULL, 0, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 3, 301),
(332, 'ConcursoItemPage', '2019-11-12 15:36:47', '2019-11-12 15:59:27', 'profesional-abogado', 'Profesional abogado', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 4, 331),
(333, 'ConcursoItemPage', '2019-11-12 15:36:47', '2019-11-12 15:41:19', 'profesional-de-marcas-senior', 'Profesional de marcas senior', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 1, 331),
(334, 'ConcursoItemPage', '2019-11-12 15:36:47', '2019-11-12 15:59:45', 'profesional-de-propiedad-industrial-3', 'Profesional de propiedad industrial', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 1, 331),
(335, 'PeriodoBoletinMarcaPage', '2019-11-11 04:26:12', '2019-11-12 15:43:30', 'noviembre', 'Noviembre', NULL, NULL, NULL, NULL, 0, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 1, 315),
(337, 'PeriodoBoletinMarcaPage', '2019-11-11 04:26:12', '2019-11-12 15:44:04', 'julio', 'Julio', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 2, 315),
(336, 'PeriodoBoletinMarcaPage', '2019-11-11 04:26:12', '2019-11-12 15:44:14', 'agosto', 'Agosto', NULL, NULL, NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 2, 315),
(338, 'ArchivoPage', '2019-11-12 17:25:28', '2019-11-13 01:44:21', 'convenios', 'Convenios', NULL, NULL, NULL, NULL, 0, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 5, 301),
(340, 'ArchivoPage', '2019-11-12 17:25:28', '2019-11-13 01:51:18', 'convenios-2', 'Convenios', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 3, 341),
(341, 'ArchivoDesplegablePage', '2019-11-12 18:12:04', '2019-11-12 18:17:15', 'marco-normativo', 'MARCO NORMATIVO', NULL, NULL, NULL, NULL, 0, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 4, 301),
(342, 'ArchivoPage', '2019-11-12 17:25:28', '2019-11-13 01:52:25', 'leyes', 'LEYES', NULL, NULL, NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 2, 341),
(343, 'ArchivoPage', '2019-11-12 17:25:28', '2019-11-13 01:53:18', 'constitucion-ley-basica', 'Constitución / Ley básica', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 4, 342),
(344, 'ArchivoPage', '2019-11-12 17:25:28', '2019-11-13 01:53:43', 'principales-leyes-de-pi-adoptadas-por-el-poder-legislativo', 'Principales leyes de PI: adoptadas por el Poder Legislativo', NULL, NULL, NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 2, 342),
(346, 'NoticiaPage', '2019-11-13 17:44:02', '2019-11-14 22:38:15', 'centro-de-noticias', 'CENTRO DE NOTICIAS', NULL, NULL, NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 4, 0),
(347, 'GeneralPage', '2019-11-13 20:42:55', '2019-11-13 20:44:51', 'folklore', 'PROMOCIÓN DEL FOLKLORE', NULL, '<h2 class="inicial">Industrias Creativas</h2>\n<p>La DINAPI a través de la Dirección De Promoción De Industrias Creativas y Folklore, busca fomentar las Industrias Creativas y Folklore Nacional; desarrollando, promocionando, incentivando y protegiendo estas Industrias como fuentes generadoras de empleos, ingresos y desarrollo económico; Asimismo fortaleciendo la identidad cultural nacional a través del capital intelectual y el ingenio; para el combate inteligente a la pobreza a través de la Propiedad Intelectual.</p>\n<p>Siendo las Industrias Creativas uno de los principales ejes de planificación estratégica que define las actividades dentro de la DINAPI.</p>\n<!--h4>Industrias Creativas mas influyentes en el Paraguay</h4>\n\n            <ol>\n              <li>\n                Video Juegos (Software)\n              </li>\n              <li>\n                Música\n              </li>\n              <li> \n                Artesanía\n              </li>\n              <li>\n                Audiovisual\n              </li>\n              <li>\n                Radio\n              </li>\n              <li>\n                Televisión\n              </li>\n              <li>\n                Editorial\n              </li>\n              <li>\n                Turismo\n              </li>\n              <li>\n                Moda y Diseño\n              </li>\n            </ol--><hr><h2 class="inicial">Promoción del Folklore</h2>\n<p>La creación de espacios a los artífices del desarrollo cultural del país dentro de la Dirección Nacional de Propiedad Intelectual, otorgándoles un lugar de exposición para la valoración de sus obras, permitiendo que los mismos puedan percibir una remuneración por parte de quienes las adquieren y lograr así vivir de sus creaciones, además de seguir contribuyendo a nuestra cultura.</p>\n<p>En ese sentido, Dirección General de Derecho de Autor y Derechos Conexos realiza e impulsa la creación de Ferias de Artesanos, ayudando a quienes se acercan de manera conjunta o particular.</p>\n<hr>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 3, 302),
(348, 'GeneralPage', '2019-11-13 20:45:13', '2019-11-13 20:46:06', 'sociedades', 'SOCIEDADES DE GESTIÓN COLECTIVA', NULL, '<h2 class="inicial">Sociedades de Gestión Colectiva</h2>\n<h4>¿Cómo se gestionan el derecho de autor y los derechos conexos?</h4>\n<p>Para utilizar una obra protegida por derecho de autor y/o derechos conexos, es conveniente solicitar a los titulares de los derechos la autorización correspondiente.</p>\n<p>Estas autorizaciones son muy importantes, ya que los autores e intérpretes reciben el pago de sus derechos a través de licencias o cesiones del uso de sus obras; esta gestión de manera individual por parte del artista resulta en la práctica dificultosa a la par que deben seguir creando e interpretando, por lo cual, esta gestión le es confiada usualmente a las Entidades de Gestión Colectiva.</p>\n<p>Estas organizaciones actúan como un enlace entre los titulares de los derechos y los que quieren utilizar sus obras. Conceden autorizaciones, recaudan los pagos de derechos, y detectan, prohíben y buscan compensación por usos no autorizados. Gracias a estas organizaciones, los autores e intérpretes reciben los pagos que merecen cuando sus obras e interpretaciones son utilizadas y los usuarios pueden conseguir permiso para el uso de tales obras e interpretaciones más fácilmente.</p>\n<p>En nuestro país las sociedades de Gestión Colectiva, autorizadas para funcionar y que gestionan actualmente derechos son «Autores Paraguayos Asociados» APA, «Entidad Paraguaya de Artistas Intérpretes o Ejecutantes» AIE Paraguay y la «Sociedad de Gestión de Productores Fonográficos del Paraguay» SGP.</p>\n<hr>', NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 3, 302),
(349, 'GeneralPage', '2019-11-13 20:59:07', '2019-11-13 21:00:35', 'informacion-relevante', 'INFORMACIÓN RELEVANTE', NULL, '<h2 class="inicial">DIRECCION GENERAL DE OBSERVANCIA</h2>\n<p>Es una de las Direcciones Generales de la DINAPI, cuya misión principal es la de velar por el cumplimiento efectivo de las normas especiales de Propiedad Intelectual, tendientes a asegurar el ejercicio de los derechos por sus titulares.</p>\n<p>Dicha tarea se lleva a cabo mediante la implementación de programas de promoción, prevención y sensibilización acerca de la importancia del respeto a la Propiedad Intelectual, así como de la investigación, como órgano coadyuvante de los organismos estatales encargados de la persecución de los hechos punibles perpetrados contra dichos derechos y sus titulares.</p>\n<h4>PROMOCIÓN DE LA PROPIEDAD INTELECTUAL</h4>\n<p>La DGO, a través de sus programas de promoción, busca poner al alcance de distintos sectores de la sociedad los conceptos o elementos integrantes de las figuras de P.I., facilitar la compresión sobre los procedimientos de registros, además de asumir la tarea de transmitir la problemática que conlleva la violación a la PI desde sus distintos aspectos, sociales, económicos y culturales, a fin de hacerlos comprensivos desde un enfoque vivencial y significativo.</p>\n<h4>PREVENCIÓN</h4>\n<p>Otro de los objetivos de la DGO es la de prevenir la comisión de hechos punibles y de faltas que atenten contra el libre ejercicio de los derechos de la PI, llevando a cabo actividades investigativas tendientes a impedir la reproducción comercial de obras protegidas por derecho de autor sin autorización del titular o piratería, así también evitar la comercialización de productos falsificados relacionados a marcas u otros signos distintivos que induzcan al error o confusión al público consumidor, así como otras acciones contempladas en leyes especiales que rigen la materia.</p>\n<p>Con ello la DGO busca, no solo proporcionar herramientas efectivas para la protección de los derechos de sus titulares, sino además, busca proteger al consumidor y al ciudadano en general de su exposición a productos espureos con las consecuencias que ello acarrea.</p>\n<h4>INVESTIGACIÓN</h4>\n<p>Desde su misión investigativa, lleva a cabo de oficio y a instancia de parte, la recolección de información y datos de manera a lograr la intervención de espacios públicos o privados de acceso público, así mismo aplica en base a convenios interinstitucionales, medidas en frontera para el control de mercaderías que ingresan al País, cooperando de este modo con los órganos estatales encargados de la represión de Hechos Punibles contra la PI.</p>\n<hr>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 3, 310),
(351, 'GeneralPage', '2019-11-13 20:59:07', '2019-11-13 21:26:34', 'denunciar', 'DENUNCIAR', NULL, '<h2 class="inicial">¿CÓMO REALIZAR UNA DENUNCIA?</h2>\n<p>La Dirección General de Observancia (DGO) recepciona en sus oficinas denuncias sobre supuestas infracciones a los Derechos de Propiedad Intelectual, la cual es diligenciada por la Dirección de Lucha contra la Piratería y Falsificación dependiente de la DGO.</p>\n<p>Actualmente, la denuncia puede ser realizada en forma verbal o escrita, ante la DGO, a través de su secretaría, ubicada en el primer piso de la DINAPI, sito en España N° 323 c/ EEUU.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 5, 349),
(350, 'GeneralPage', '2019-11-13 20:59:07', '2019-11-13 21:27:32', 'areas-de-observancia', 'ÁREAS DE OBSERVANCIA', NULL, '<h2 class="inicial">ÁREAS QUE ABARCA LA DIRECCIÓN GENERAL DE OBSERVANCIA</h2>\n<h4>DIRECCIÓN DE LUCHA CONTRA LA PIRATERÍA Y FALSIFICACIÓN</h4>\n<p>Es la encargada de planificar y ejecutar las tareas investigativas de todo hecho que atente contra los derechos de Propiedad Intelectual.</p>\n<p><b>Actividades:</b> intervenciones administrativas en aduanas de todo el país, tareas de investigación vía web y de locales públicos, allanamientos conjuntos con el Ministerio Público y Policía Nacional de locales comerciales y depósitos, controles en vía pública, todo esto en persecución a una posible fabricación, comercialización y/o almacenamiento de productos presumiblemente falsificados y/o pirateados.</p>\n<h4>DIRECCIÓN DE PROMOCIÓN Y PREVENCIÓN</h4>\n<p>Es la encargada de planificar y ejecutar actividades de concienciación, promoción y capacitación sobre los derechos de PI y la importancia de los mismos en la sociedad.</p>\n<p><b>Actividades:</b> Algunas de ellas son:</p>\n<p>A) Realización de Jornadas de capacitación en todo el territorio paraguayo (universidades, colegios, instituciones públicas y privadas.).</p>\n<p>B) Concienciar a la ciudanía en general sobre la importancia de proteger la PI como herramienta fundamental para el desarrollo social y económico del país.</p>\n<p>C) Promover la Difusión y Protección de los Derechos de PI en el Paraguay, a través de actividades de Educación y Capacitación; y,</p>\n<p>D) Fomentar la creación intelectual, en sus formas: literaria, artística y/o científica, así como en su ámbito de aplicación industrial; y la difusión de los conocimientos tecnológicos dentro de los sectores culturales y productivos, en consonancia con la misión de la DINAPI.</p>\n<h4>DIRECCIÓN DE MEDIACIÓN Y CONCILIACIÓN</h4>\n<p>Es la encargada de planificar, ejecutar y controlar todas las actividades inherentes a brindar asistencia a las partes para lograr un acuerdo respecto de una controversia suscitada en estricto apego a las disposiciones legales que regulan la PI en el país.</p>\n<p>Esta unidad, actualmente se encuentra en proceso de reglamentación.</p>\n<h4>UNIDAD DE REGISTRO DE IMPORTADORES</h4>\n<p>La función principal de ésta unidad es mantener un registro de los importadores y un orden de las solicitudes de importaciones presentadas por los Agentes Patrocinantes, para los diferentes trámites realizados en la DINAPI.</p>\n<p><b>Actividades:</b> Recepcionar las solicitudes de registro de importadores, procesar cada solicitud y realizar un examen de forma para establecer si se reúne todos los requisitos para la inscripción o registro, así como la carga del registro en el sistema informático.</p>\n<p>Para la inscripción de un Importador, debe cumplir con los requisitos que podrá encontrar en el siguiente enlace: <br><button class="btn btn-info" window.open="" nuevos_enlaces="" rismompp_dinapi_2018.pdf=""> Requisitos para el Registro de Importadores </button></p>\n<p>Cumplidos con los requisitos, deberá rellenar el formulario correspondiente y presentar, conjuntamente con los documentos, en la DGO, unidad de registro de importadores. <br><button class="btn btn-info" window.open="" nuevos_enlaces="" inscripcion_rismompp_dinapi_2018_formulario_feb2019.doc=""> Formulario de Registro de Importadores </button></p>\n<hr>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 3, 349),
(352, 'ArchivoPage', '2019-11-12 17:25:28', '2019-11-14 22:25:58', 'actividades-realizadas', 'ACTIVIDADES REALIZADAS', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 4, 353),
(353, 'ArchivoDesplegablePage', '2019-11-12 18:12:04', '2019-11-14 22:25:50', 'mecip', 'MECIP', NULL, NULL, NULL, NULL, 0, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 1, 301),
(354, 'ArchivoPage', '2019-11-12 17:25:28', '2019-11-15 14:33:32', 'resolucionesrg', 'RESOLUCIONES RG', NULL, NULL, NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 1, 353),
(355, 'ArchivoPage', '2019-11-12 17:25:28', '2019-11-15 15:40:37', 'resoluciones-rp', 'RESOLUCIONES RP', NULL, NULL, NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 1, 353),
(356, 'ArchivoPage', '2019-11-12 17:25:28', '2019-11-15 15:44:17', 'resultados-obtenidos', 'RESULTADOS OBTENIDOS', NULL, NULL, NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 1, 353);

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
  `ClassName` enum('SiteTree','Page','ErrorPage','RedirectorPage','VirtualPage','AcordeonPage','ArchivoDesplegablePage','ArchivoPage','BoletinPage','PeriodoBoletinPage','ConcursoItemPage','ConcursosPage','ContactPage','FullHtmlPage','GeneralPage','HomePage','InstitucionalPage','NoticiaPage','PreguntasFrecuentesPage','TarjetaPage','TarjetaSimplePage','UserDefinedForm','BoletinMarcaPage','PeriodoBoletinMarcaPage') DEFAULT 'SiteTree',
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
) ENGINE=MyISAM AUTO_INCREMENT=2219 DEFAULT CHARSET=utf8;

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
(2036, 305, 2, 1, 1, 1, 'TarjetaPage', '2019-11-10 23:43:28', '2019-11-10 23:44:26', 'patentes', 'Patentes', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 303),
(2037, 306, 1, 0, 1, 0, 'TarjetaPage', '2019-11-11 00:04:19', '2019-11-11 00:04:19', 'nuevo-pagina-de-tarjeta', 'Nuevo Página de tarjeta', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 303),
(2038, 306, 2, 1, 1, 1, 'TarjetaPage', '2019-11-11 00:04:19', '2019-11-11 00:04:47', 'dibujos-y-modelos-industriales', 'Dibujos y Modelos Industriales', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 303),
(2039, 307, 1, 0, 1, 0, 'TarjetaPage', '2019-11-11 00:08:03', '2019-11-11 00:08:03', 'nuevo-pagina-de-tarjeta', 'Nuevo Página de tarjeta', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 303),
(2040, 307, 2, 1, 1, 1, 'TarjetaPage', '2019-11-11 00:08:03', '2019-11-11 00:08:55', 'ig-and-do', 'IG&DO', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 303),
(2041, 307, 3, 1, 1, 1, 'TarjetaPage', '2019-11-11 00:08:03', '2019-11-11 00:11:22', 'igydo', 'IG&DO', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 303),
(2042, 308, 1, 0, 1, 0, 'TarjetaPage', '2019-11-11 00:12:26', '2019-11-11 00:12:26', 'nuevo-pagina-de-tarjeta', 'Nuevo Página de tarjeta', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 303),
(2043, 308, 2, 1, 1, 1, 'TarjetaPage', '2019-11-11 00:12:26', '2019-11-11 00:12:53', 'gestiones-administrativas', 'Gestiones Administrativas', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 303),
(2044, 309, 1, 0, 1, 0, 'RedirectorPage', '2019-11-11 00:16:54', '2019-11-11 00:16:54', 'nuevo-pagina-de-redireccion-apuntando-a-una-pagina-que-no-existe', 'Nuevo Página de redirección apuntando a una página que no existe', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 1, NULL, 'Inherit', 'Inherit', 303),
(2045, 309, 2, 1, 1, 1, 'RedirectorPage', '2019-11-11 00:16:54', '2019-11-11 00:17:35', 'resoluciones-de-la-dgpi', 'Resoluciones de la DGPI', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 303),
(2046, 310, 1, 0, 1, 0, 'TarjetaPage', '2019-11-11 00:18:37', '2019-11-11 00:18:37', 'nuevo-pagina-de-tarjeta', 'Nuevo Página de tarjeta', NULL, NULL, NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2047, 310, 2, 1, 1, 1, 'TarjetaPage', '2019-11-11 00:18:37', '2019-11-11 00:19:21', 'observancia', 'Observancia', NULL, NULL, NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2048, 310, 3, 1, 1, 1, 'TarjetaPage', '2019-11-11 00:18:37', '2019-11-11 00:20:36', 'observancia', 'Observancia', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2049, 244, 16, 1, 1, 1, 'GeneralPage', '2019-05-23 21:55:54', '2019-11-11 00:21:26', 'quienes-somos', 'Quiénes somos', NULL, NULL, NULL, NULL, 0, 1, 6, 0, 0, NULL, 'OnlyTheseUsers', 'OnlyTheseUsers', 0),
(2050, 295, 4, 1, 1, 1, 'GeneralPage', '2019-05-23 21:55:54', '2019-11-11 00:21:50', 'nuestros-servicios', 'Nuestros Servicios', NULL, '<div class="row"><i class="fa fa-check" style="padding-right: 10px;"></i> Asesoramiento bursátil</div>\n<div class="row"><i class="fa fa-check" style="padding-right: 10px;"></i> Diseño y estructuración de nuevas emisiones</div>\n<div class="row"><i class="fa fa-check" style="padding-right: 10px;"></i> Administración de portafolio de inversiones</div>\n<div class="row"><i class="fa fa-check" style="padding-right: 10px;"></i> Acceso a mercado de capitales de renta fija y variable.</div>\n<div class="row"><i class="fa fa-check" style="padding-right: 10px;"></i> Asesoramiento para cotizar en bolsa</div>\n<div class="row"><i class="fa fa-check" style="padding-right: 10px;"></i> Elaboración de planes de negocios</div>\n<div class="row"><i class="fa fa-check" style="padding-right: 10px;"></i> Atención personalizada conforme al perfil del inversor.</div>', NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2072, 317, 4, 1, 1, 1, 'PeriodoBoletinMarcaPage', '2019-11-11 05:20:50', '2019-11-11 05:27:52', 'setiembre', 'Setiembre', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 315),
(2073, 316, 3, 1, 1, 1, 'PeriodoBoletinMarcaPage', '2019-11-11 04:26:12', '2019-11-11 05:28:16', 'octubre', 'Octubre', NULL, NULL, NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 315),
(2070, 317, 2, 1, 1, 1, 'PeriodoBoletinMarcaPage', '2019-11-11 05:20:50', '2019-11-11 05:21:07', 'setiembre', 'Setiembre', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 315),
(2071, 317, 3, 1, 1, 1, 'PeriodoBoletinMarcaPage', '2019-11-11 05:20:50', '2019-11-11 05:24:13', 'setiembre', 'Setiembre', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 315),
(2076, 315, 5, 1, 1, 1, 'BoletinMarcaPage', '2019-11-11 04:25:52', '2019-11-11 05:29:25', 'boletines-de-marcas', 'Boletines de Marcas', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 304),
(2075, 315, 4, 0, 1, 0, 'BoletinMarcaPage', '2019-11-11 04:25:52', '2019-11-11 05:29:25', 'boletines-de-marcas', 'Boletines de Marcas', NULL, NULL, NULL, NULL, 0, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 304),
(2074, 315, 3, 1, 1, 1, 'BoletinMarcaPage', '2019-11-11 04:25:52', '2019-11-11 05:28:39', 'boletines-de-marcas', 'Boletines de Marcas', NULL, NULL, NULL, NULL, 0, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2069, 317, 1, 0, 1, 0, 'PeriodoBoletinMarcaPage', '2019-11-11 05:20:50', '2019-11-11 05:20:50', 'nuevo-periodo-de-los-boletines-de-marcas', 'Nuevo Periodo de los boletines de marcas', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 315),
(2068, 316, 2, 1, 1, 1, 'PeriodoBoletinMarcaPage', '2019-11-11 04:26:12', '2019-11-11 04:27:06', 'octubre', 'Octubre', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 315),
(2065, 315, 1, 0, 1, 0, 'BoletinMarcaPage', '2019-11-11 04:25:52', '2019-11-11 04:25:52', 'nuevo-pagina-de-boletines-de-marcas', 'Nuevo Página de boletines de marcas', NULL, NULL, NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2066, 315, 2, 1, 1, 1, 'BoletinMarcaPage', '2019-11-11 04:25:52', '2019-11-11 04:26:05', 'boletines-de-marcas', 'Boletines de Marcas', NULL, NULL, NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2067, 316, 1, 0, 1, 0, 'PeriodoBoletinMarcaPage', '2019-11-11 04:26:12', '2019-11-11 04:26:12', 'nuevo-periodo-de-los-boletines-de-marcas', 'Nuevo Periodo de los boletines de marcas', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 315),
(2077, 318, 1, 0, 1, 0, 'BoletinPage', '2019-11-11 14:04:03', '2019-11-11 14:04:03', 'nuevo-pagina-de-boletines', 'Nuevo Página de boletines', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 305),
(2078, 318, 2, 1, 1, 1, 'BoletinPage', '2019-11-11 14:04:03', '2019-11-11 14:04:35', 'boletines-de-patentes', 'Boletines de Patentes', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 305),
(2079, 319, 1, 0, 1, 0, 'PeriodoBoletinPage', '2019-11-11 14:05:32', '2019-11-11 14:05:32', 'nuevo-periodo-de-los-boletines', 'Nuevo Periodo de los boletines', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 318),
(2080, 318, 3, 1, 1, 1, 'BoletinPage', '2019-11-11 14:04:03', '2019-11-11 14:07:59', 'ano-2019', 'Año 2019', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 305),
(2081, 318, 4, 1, 1, 1, 'BoletinPage', '2019-11-11 14:04:03', '2019-11-11 14:08:45', 'boletines-de-patentes', 'Boletines de Patentes', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 305),
(2082, 319, 2, 1, 1, 1, 'PeriodoBoletinPage', '2019-11-11 14:05:32', '2019-11-11 14:10:09', 'ano-2019', 'Año 2019', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 318),
(2083, 320, 1, 0, 1, 0, 'PeriodoBoletinPage', '2019-11-11 14:15:40', '2019-11-11 14:15:40', 'nuevo-periodo-de-los-boletines', 'Nuevo Periodo de los boletines', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 318),
(2084, 320, 2, 1, 1, 1, 'PeriodoBoletinPage', '2019-11-11 14:15:40', '2019-11-11 14:15:49', 'ano-2018', 'Año 2018', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 318),
(2085, 318, 5, 1, 1, 1, 'BoletinPage', '2019-11-11 14:04:03', '2019-11-11 14:17:32', 'boletines-de-patentes', 'Boletines de Patentes', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 305),
(2086, 320, 3, 1, 1, 1, 'PeriodoBoletinPage', '2019-11-11 14:15:40', '2019-11-11 14:18:20', 'ano-2018', 'Año 2018', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 318),
(2087, 321, 1, 0, 1, 0, 'BoletinPage', '2019-11-11 14:31:29', '2019-11-11 14:31:29', 'nuevo-pagina-de-boletines', 'Nuevo Página de boletines', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 306),
(2088, 321, 2, 1, 1, 1, 'BoletinPage', '2019-11-11 14:31:29', '2019-11-11 14:31:38', 'boletines-de-dibujos-y-modelos-industriales', 'BOLETINES DE DIBUJOS Y MODELOS INDUSTRIALES', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 306),
(2089, 322, 1, 0, 1, 0, 'PeriodoBoletinPage', '2019-11-11 14:31:45', '2019-11-11 14:31:45', 'nuevo-periodo-de-los-boletines', 'Nuevo Periodo de los boletines', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 321),
(2090, 322, 2, 1, 1, 1, 'PeriodoBoletinPage', '2019-11-11 14:31:45', '2019-11-11 14:32:05', 'ano-2015', 'Año 2015', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 321),
(2091, 323, 1, 0, 1, 0, 'PeriodoBoletinPage', '2019-11-11 14:33:36', '2019-11-11 14:33:36', 'nuevo-periodo-de-los-boletines', 'Nuevo Periodo de los boletines', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 321),
(2092, 323, 2, 1, 1, 1, 'PeriodoBoletinPage', '2019-11-11 14:33:36', '2019-11-11 14:33:47', 'ano-2016', 'Año 2016', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 321),
(2093, 321, 3, 1, 1, 1, 'BoletinPage', '2019-11-11 14:31:29', '2019-11-11 14:40:16', 'boletines-de-dibujos-y-modelos-industriales', 'Boletines de Dibujos y Modelos Industriales', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 306),
(2094, 321, 4, 1, 1, 1, 'BoletinPage', '2019-11-11 14:31:29', '2019-11-11 14:46:09', 'boletines-de-dibujos-y-modelos-industriales', 'Boletines de Dibujos y Modelos Industriales', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 306),
(2095, 315, 6, 1, 1, 1, 'BoletinMarcaPage', '2019-11-11 04:25:52', '2019-11-11 15:06:22', 'boletines-de-marcas', 'Boletines de Marcas', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 304),
(2096, 318, 6, 1, 1, 1, 'BoletinPage', '2019-11-11 14:04:03', '2019-11-11 15:08:55', 'boletines-de-patentes', 'Boletines de Patentes', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 305),
(2097, 321, 5, 1, 1, 1, 'BoletinPage', '2019-11-11 14:31:29', '2019-11-11 15:11:54', 'boletines-de-dibujos-y-modelos-industriales', 'Boletines de Dibujos y Modelos Industriales', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 306),
(2098, 321, 6, 1, 1, 1, 'BoletinPage', '2019-11-11 14:31:29', '2019-11-11 15:13:01', 'boletines-de-dibujos-y-modelos-industriales', 'Boletines de Dibujos y Modelos Industriales', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 306),
(2099, 321, 7, 1, 1, 1, 'BoletinPage', '2019-11-11 14:31:29', '2019-11-11 15:13:37', 'boletines-de-dibujos-y-modelos-industriales', 'Boletines de Dibujos y Modelos Industriales', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 306),
(2100, 324, 1, 0, 1, 0, 'FullHtmlPage', '2019-11-11 15:18:22', '2019-11-11 15:18:22', 'nuevo-paginas-con-contenido-completamente-en-html', 'Nuevo Páginas con contenido completamente en html', NULL, NULL, NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2101, 324, 2, 1, 1, 1, 'FullHtmlPage', '2019-11-11 15:18:22', '2019-11-11 15:18:37', 'mision', 'mision', NULL, '<p>La misión de DINAPI es diseñar, implementar, fomentar y coordinar las políticas públicas de propiedad intelectual, concediendo la protección de los derechos derivados de esta materia a fin de garantizar la seguridad jurídica a sus titulares.</p>\n<h4>Visión</h4>\n<p>Ser una institución comprometida con la mejora continua en la calidad de su gestión, para contribuir con el desarrollo del país mediante la protección de los derechos de propiedad intelectual.</p>\n<h4>Valores</h4>\n<p><b>Valores de DINAPI:</b> <br> • Calidad.<br> • Confiabilidad.<br> • Eficiencia y Eficacia.<br> • Ética.<br> • Transparencia .<br><br><b>Valores de las personas que conforman DINAPI:</b> <br> • Compromiso.<br> • Integridad.<br> • Pro-actividad.<br> • Profesionalismo.<br> • Trabajo en Equipo.</p>\n<h4>Funciones de la DINAPI</h4>\n<p>• Administrar y disponer el otorgamiento y protección de los derechos de propiedad intelectual como ser: Derechos de Autor y Derechos Conexos, Marcas, Dibujos y Modelos Industriales, Patentes de Invención y Modelos de Utilidad, Transferencia de Tecnología, Indicaciones Geográficas y otras que pudieran legislarse o reglamentarse. <br><br> • Promover y fomentar la creación intelectual tanto en su forma literaria, artística o científica, como en su ámbito de aplicación industrial, y la difusión de los conocimientos tecnológicos dentro de los sectores culturales y productivos. <br><br> • Fomentar la Innovación, la Investigación y el Acceso a la Ciencia, favoreciendo la transferencia de tecnología. <br><br> • Formular las políticas nacionales en todas aquellas materias relacionadas con la protección de la propiedad intelectual, en coordinación con los ministerios y demás órganos competentes para cada caso. <br><br> • Promover iniciativas y desarrollar actividades conducentes al mejor conocimiento y protección de la Propiedad Intelectual, en el orden nacional Promover la Innovación y el Desarrollo Empresarial, a través del fomento de la innovación, desarrollo empresarial e investigación a través de las buenas prácticas.</p>\n<div class="row mt-5"><button type="button" class="btn btn-info"> Manual de Funciones </button> <button type="button" class="btn btn-info ml-3"> Anexo de la Resolución DINAPI/RP/ Nº 209 </button></div>\n<hr>', NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2102, 325, 1, 0, 1, 0, 'GeneralPage', '2019-11-11 15:35:50', '2019-11-11 15:35:50', 'nuevo-pagina-general-para-todas-las-paginas', 'Nuevo Página General para todas las paginas', NULL, NULL, NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2103, 325, 2, 1, 1, 1, 'GeneralPage', '2019-11-11 15:35:50', '2019-11-11 15:40:55', 'aprender', 'APRENDER', NULL, NULL, NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2104, 325, 3, 1, 1, 1, 'GeneralPage', '2019-11-11 15:35:50', '2019-11-11 17:53:01', 'aprender', 'APRENDER', NULL, '<h2>¿QUÉ ES UNA MARCA?</h2>\n<p>Es todo signo que identifica a un producto o servicio en el mercado. Por lo tanto, una marca puede ser considerada como una herramienta de comunicación usada por el productor o prestador de servicios para atraer al público.</p>\n<h2>¿POR QUÉ ES IMPORTANTE UNA MARCA?</h2>\n<p>La marca juega un papel preponderante y esencial en el proceso competitivo. Hoy día es imposible pensar que un negocio, ya sea grande o pequeño, pueda llegar a trabajar sin propaganda, lo cual es posible llevar a cabo a través de las marcas. Los consumidores relacionan las marcas con ciertos productos y servicios, por lo que el prestigio y la reputación que se asocian a ellas, son trascendentales para la elección de uno u otro producto. Si el producto o servicio tiene buena acogida, la marca se destacará de entre las demás y, por ende, será más conocida, aumentando el valor global del producto o servicio, así como el de otros productos o servicios que lleven la misma marca.</p>\n<h2>¿PARA QUÉ REGISTRAR UNA MARCA?</h2>\n<p>Para obtener el uso de manera exclusiva, con lo cual se podrá impedir que otras personas o empresas comercialicen marcas idénticas o similares para los mismos productos o servicios.</p>\n<h2>VIGENCIA DE LA MARCA</h2>\n<p>La marca tendrá una duración de diez años, a contar desde la fecha de concesión y podrá ser renovada indefinidamente por períodos consecutivos de igual duración.</p>\n<h2>ALCANCE</h2>\n<p>El alcance de los registros marcarios es exclusivamente territorial, es decir, las marcas registradas en Paraguay tienen validez sólo en el territorio de Paraguay. Y si se desea protección en otros países, también se debe obtener el registro en dichos países.</p>\n<h2>¿CÓMO SABER EN QUÉ CLASE REGISTRAR UNA MARCA?</h2>\n<p>Esta se desprende de la Clasificación Internacional de Productos y Servicios, la cual distingue 34 clases de productos y 11 clases de servicios, los cuales, a los efectos del registro de la marca, podrá solicitarse conforme al siguiente nomenclador:</p>\n<p><button type="button" class="btn btn-info">Ver Clasificación de Marcas</button></p>\n<h2>¿PUEDO VENDER DE LA MARCA?</h2>\n<p>En efecto, como cualquier título de propiedad, la marca puede venderse, a título oneroso o cederse a título gratuito, este trámite se realizará mediante escritura pública, la cual posteriormente deberá inscribirse ante la DINAPI.</p>\n<p>También el titular podrá otorgar licencia de uso de la marca previamente inscripta y el contrato de licencia deberá registrarse ante la DINAPI.</p>\n<h2>SIGNOS QUE PUEDEN CONSTITUIR UNA MARCA</h2>\n<p>Un requisito esencial que permite el registro de un signo como marca, es la capacidad distintiva de este, a través de la clara individualización hecha por parte del público consumidor.</p>\n<p>Nuestra Ley de Marcas establece, en el Artículo 1, Ley 1294/1998: “Son marcas todos los signos que sirvan para distinguir productos o servicios. Las marcas podrán consistir en una o más palabras, lemas, emblemas, monogramas, sellos, viñetas, relieves; los nombres, vocablos de fantasía, las letras y números con formas o combinaciones distintas; las combinaciones y disposiciones de colores, etiquetas, envases y envoltorios. Podrán consistir también en la forma, presentación o acondicionamiento de los productos o de sus envases o envolturas, o de los medios o lugar de expendio de los productos o servicios correspondientes. Este listado es meramente enunciativo.”.</p>\n<div class="row">\n<div class="articulos-secondary col-md-12 col-sm-12">\n<div class="articulos-secondary-content">\n<div class="articulos-title">LEGISLACIÓN NACIONAL SOBRE MARCAS</div>\n<div class="articulos-descripcion"><button type="button" class="btn btn-info" window.open="" ley_1294_98.pdf="">Ley 1294/98</button> <button type="button" class="btn btn-info" window.open="" decreto_22365_98.pdf="">Decreto Reglamentario 22365/98</button></div>\n</div>\n</div>\n</div>\n<hr>', NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2105, 325, 4, 1, 1, 1, 'GeneralPage', '2019-11-11 15:35:50', '2019-11-11 17:53:25', 'aprender', 'APRENDER', NULL, '<h2>¿QUÉ ES UNA MARCasdfasfA?</h2>\n<p>Es todo signo que identifica a un producto o servicio en el mercado. Por lo tanto, una marca puede ser considerada como una herramienta de comunicación usada por el productor o prestador de servicios para atraer al público.</p>\n<h2>¿POR QUÉ ES IMPORTANTE UNA MARCA?</h2>\n<p>La marca juega un papel preponderante y esencial en el proceso competitivo. Hoy día es imposible pensar que un negocio, ya sea grande o pequeño, pueda llegar a trabajar sin propaganda, lo cual es posible llevar a cabo a través de las marcas. Los consumidores relacionan las marcas con ciertos productos y servicios, por lo que el prestigio y la reputación que se asocian a ellas, son trascendentales para la elección de uno u otro producto. Si el producto o servicio tiene buena acogida, la marca se destacará de entre las demás y, por ende, será más conocida, aumentando el valor global del producto o servicio, así como el de otros productos o servicios que lleven la misma marca.</p>\n<h2>¿PARA QUÉ REGISTRAR UNA MARCA?</h2>\n<p>Para obtener el uso de manera exclusiva, con lo cual se podrá impedir que otras personas o empresas comercialicen marcas idénticas o similares para los mismos productos o servicios.</p>\n<h2>VIGENCIA DE LA MARCA</h2>\n<p>La marca tendrá una duración de diez años, a contar desde la fecha de concesión y podrá ser renovada indefinidamente por períodos consecutivos de igual duración.</p>\n<h2>ALCANCE</h2>\n<p>El alcance de los registros marcarios es exclusivamente territorial, es decir, las marcas registradas en Paraguay tienen validez sólo en el territorio de Paraguay. Y si se desea protección en otros países, también se debe obtener el registro en dichos países.</p>\n<h2>¿CÓMO SABER EN QUÉ CLASE REGISTRAR UNA MARCA?</h2>\n<p>Esta se desprende de la Clasificación Internacional de Productos y Servicios, la cual distingue 34 clases de productos y 11 clases de servicios, los cuales, a los efectos del registro de la marca, podrá solicitarse conforme al siguiente nomenclador:</p>\n<p><button type="button" class="btn btn-info">Ver Clasificación de Marcas</button></p>\n<h2>¿PUEDO VENDER DE LA MARCA?</h2>\n<p>En efecto, como cualquier título de propiedad, la marca puede venderse, a título oneroso o cederse a título gratuito, este trámite se realizará mediante escritura pública, la cual posteriormente deberá inscribirse ante la DINAPI.</p>\n<p>También el titular podrá otorgar licencia de uso de la marca previamente inscripta y el contrato de licencia deberá registrarse ante la DINAPI.</p>\n<h2>SIGNOS QUE PUEDEN CONSTITUIR UNA MARCA</h2>\n<p>Un requisito esencial que permite el registro de un signo como marca, es la capacidad distintiva de este, a través de la clara individualización hecha por parte del público consumidor.</p>\n<p>Nuestra Ley de Marcas establece, en el Artículo 1, Ley 1294/1998: “Son marcas todos los signos que sirvan para distinguir productos o servicios. Las marcas podrán consistir en una o más palabras, lemas, emblemas, monogramas, sellos, viñetas, relieves; los nombres, vocablos de fantasía, las letras y números con formas o combinaciones distintas; las combinaciones y disposiciones de colores, etiquetas, envases y envoltorios. Podrán consistir también en la forma, presentación o acondicionamiento de los productos o de sus envases o envolturas, o de los medios o lugar de expendio de los productos o servicios correspondientes. Este listado es meramente enunciativo.”.</p>\n<div class="row">\n<div class="articulos-secondary col-md-12 col-sm-12">\n<div class="articulos-secondary-content">\n<div class="articulos-title">LEGISLACIÓN NACIONAL SOBRE MARCAS</div>\n<div class="articulos-descripcion"><button type="button" class="btn btn-info" window="" open="" ley_1294_98="" pdf="">Ley 1294/98</button> <button type="button" class="btn btn-info" window="" open="" decreto_22365_98="" pdf="">Decreto Reglamentario 22365/98</button></div>\n</div>\n</div>\n</div>\n<hr>', NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2106, 325, 5, 1, 1, 1, 'GeneralPage', '2019-11-11 15:35:50', '2019-11-11 17:56:34', 'aprender', 'APRENDER', NULL, '<h2>¿QUÉ ES UNA MARCA?</h2>\n<p>Es todo signo que identifica a un producto o servicio en el mercado. Por lo tanto, una marca puede ser considerada como una herramienta de comunicación usada por el productor o prestador de servicios para atraer al público.</p>\n<h2>¿POR QUÉ ES IMPORTANTE UNA MARCA?</h2>\n<p>La marca juega un papel preponderante y esencial en el proceso competitivo. Hoy día es imposible pensar que un negocio, ya sea grande o pequeño, pueda llegar a trabajar sin propaganda, lo cual es posible llevar a cabo a través de las marcas. Los consumidores relacionan las marcas con ciertos productos y servicios, por lo que el prestigio y la reputación que se asocian a ellas, son trascendentales para la elección de uno u otro producto. Si el producto o servicio tiene buena acogida, la marca se destacará de entre las demás y, por ende, será más conocida, aumentando el valor global del producto o servicio, así como el de otros productos o servicios que lleven la misma marca.</p>\n<h2>¿PARA QUÉ REGISTRAR UNA MARCA?</h2>\n<p>Para obtener el uso de manera exclusiva, con lo cual se podrá impedir que otras personas o empresas comercialicen marcas idénticas o similares para los mismos productos o servicios.</p>\n<h2>VIGENCIA DE LA MARCA</h2>\n<p>La marca tendrá una duración de diez años, a contar desde la fecha de concesión y podrá ser renovada indefinidamente por períodos consecutivos de igual duración.</p>\n<h2>ALCANCE</h2>\n<p>El alcance de los registros marcarios es exclusivamente territorial, es decir, las marcas registradas en Paraguay tienen validez sólo en el territorio de Paraguay. Y si se desea protección en otros países, también se debe obtener el registro en dichos países.</p>\n<h2>¿CÓMO SABER EN QUÉ CLASE REGISTRAR UNA MARCA?</h2>\n<p>Esta se desprende de la Clasificación Internacional de Productos y Servicios, la cual distingue 34 clases de productos y 11 clases de servicios, los cuales, a los efectos del registro de la marca, podrá solicitarse conforme al siguiente nomenclador:</p>\n<p><button type="button" class="btn btn-info">Ver Clasificación de Marcas</button></p>\n<h2>¿PUEDO VENDER DE LA MARCA?</h2>\n<p>En efecto, como cualquier título de propiedad, la marca puede venderse, a título oneroso o cederse a título gratuito, este trámite se realizará mediante escritura pública, la cual posteriormente deberá inscribirse ante la DINAPI.</p>\n<p>También el titular podrá otorgar licencia de uso de la marca previamente inscripta y el contrato de licencia deberá registrarse ante la DINAPI.</p>\n<h2>SIGNOS QUE PUEDEN CONSTITUIR UNA MARCA</h2>\n<p>Un requisito esencial que permite el registro de un signo como marca, es la capacidad distintiva de este, a través de la clara individualización hecha por parte del público consumidor.</p>\n<p>Nuestra Ley de Marcas establece, en el Artículo 1, Ley 1294/1998: “Son marcas todos los signos que sirvan para distinguir productos o servicios. Las marcas podrán consistir en una o más palabras, lemas, emblemas, monogramas, sellos, viñetas, relieves; los nombres, vocablos de fantasía, las letras y números con formas o combinaciones distintas; las combinaciones y disposiciones de colores, etiquetas, envases y envoltorios. Podrán consistir también en la forma, presentación o acondicionamiento de los productos o de sus envases o envolturas, o de los medios o lugar de expendio de los productos o servicios correspondientes. Este listado es meramente enunciativo.”.</p>\n<div class="row">\n<div class="articulos-secondary col-md-12 col-sm-12">\n<div class="articulos-secondary-content">\n<div class="articulos-title">LEGISLACIÓN NACIONAL SOBRE MARCAS</div>\n<div class="articulos-descripcion"><button type="button" class="btn btn-info" window="" open="" ley_1294_98="" pdf="">Ley 1294/98</button> <button type="button" class="btn btn-info" window="" open="" decreto_22365_98="" pdf="">Decreto Reglamentario 22365/98</button></div>\n</div>\n</div>\n</div>\n<hr>', NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 0);
INSERT INTO `SiteTree_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `ParentID`) VALUES
(2107, 325, 6, 1, 1, 1, 'GeneralPage', '2019-11-11 15:35:50', '2019-11-11 18:18:19', 'aprender', 'APRENDER', NULL, '<h2 id="ADSFA">¿QUÉ ES UNA MARCA?</h2>\n<p>Es todo signo que identifica a un producto o servicio en el mercado. Por lo tanto, una marca puede ser considerada como una herramienta de comunicación usada por el productor o prestador de servicios para atraer al público.</p>\n<h2>¿POR QUÉ ES IMPORTANTE UNA MARCA?</h2>\n<p>La marca juega un papel preponderante y esencial en el proceso competitivo. Hoy día es imposible pensar que un negocio, ya sea grande o pequeño, pueda llegar a trabajar sin propaganda, lo cual es posible llevar a cabo a través de las marcas. Los consumidores relacionan las marcas con ciertos productos y servicios, por lo que el prestigio y la reputación que se asocian a ellas, son trascendentales para la elección de uno u otro producto. Si el producto o servicio tiene buena acogida, la marca se destacará de entre las demás y, por ende, será más conocida, aumentando el valor global del producto o servicio, así como el de otros productos o servicios que lleven la misma marca.</p>\n<h2>¿PARA QUÉ REGISTRAR UNA MARCA?</h2>\n<p>Para obtener el uso de manera exclusiva, con lo cual se podrá impedir que otras personas o empresas comercialicen marcas idénticas o similares para los mismos productos o servicios.</p>\n<h2>VIGENCIA DE LA MARCA</h2>\n<p>La marca tendrá una duración de diez años, a contar desde la fecha de concesión y podrá ser renovada indefinidamente por períodos consecutivos de igual duración.</p>\n<h2>ALCANCE</h2>\n<p>El alcance de los registros marcarios es exclusivamente territorial, es decir, las marcas registradas en Paraguay tienen validez sólo en el territorio de Paraguay. Y si se desea protección en otros países, también se debe obtener el registro en dichos países.</p>\n<h2>¿CÓMO SABER EN QUÉ CLASE REGISTRAR UNA MARCA?</h2>\n<p>Esta se desprende de la Clasificación Internacional de Productos y Servicios, la cual distingue 34 clases de productos y 11 clases de servicios, los cuales, a los efectos del registro de la marca, podrá solicitarse conforme al siguiente nomenclador:</p>\n<p>Ver Clasificación de Marcas</p>\n<h2>¿PUEDO VENDER DE LA MARCA?</h2>\n<p>En efecto, como cualquier título de propiedad, la marca puede venderse, a título oneroso o cederse a título gratuito, este trámite se realizará mediante escritura pública, la cual posteriormente deberá inscribirse ante la DINAPI.</p>\n<p>También el titular podrá otorgar licencia de uso de la marca previamente inscripta y el contrato de licencia deberá registrarse ante la DINAPI.</p>\n<h2>SIGNOS QUE PUEDEN CONSTITUIR UNA MARCA</h2>\n<p>Un requisito esencial que permite el registro de un signo como marca, es la capacidad distintiva de este, a través de la clara individualización hecha por parte del público consumidor.</p>\n<p>Nuestra Ley de Marcas establece, en el Artículo 1, Ley 1294/1998: “Son marcas todos los signos que sirvan para distinguir productos o servicios. Las marcas podrán consistir en una o más palabras, lemas, emblemas, monogramas, sellos, viñetas, relieves; los nombres, vocablos de fantasía, las letras y números con formas o combinaciones distintas; las combinaciones y disposiciones de colores, etiquetas, envases y envoltorios. Podrán consistir también en la forma, presentación o acondicionamiento de los productos o de sus envases o envolturas, o de los medios o lugar de expendio de los productos o servicios correspondientes. Este listado es meramente enunciativo.”.</p>\n<div class="row">\n<div class="articulos-secondary col-md-12 col-sm-12">\n<div class="articulos-secondary-content">\n<div class="articulos-title">LEGISLACIÓN NACIONAL SOBRE MARCAS</div>\n<div class="articulos-descripcion">Ley 1294/98Decreto Reglamentario 22365/98</div>\n</div>\n</div>\n</div>\n<hr>', NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2108, 325, 7, 1, 1, 1, 'GeneralPage', '2019-11-11 15:35:50', '2019-11-11 18:18:58', 'aprender', 'APRENDER', NULL, '<h2 class="inicial">¿QUÉ ES UNA MARCA?</h2>\n<p>Es todo signo que identifica a un producto o servicio en el mercado. Por lo tanto, una marca puede ser considerada como una herramienta de comunicación usada por el productor o prestador de servicios para atraer al público.</p>\n<h2>¿POR QUÉ ES IMPORTANTE UNA MARCA?</h2>\n<p>La marca juega un papel preponderante y esencial en el proceso competitivo. Hoy día es imposible pensar que un negocio, ya sea grande o pequeño, pueda llegar a trabajar sin propaganda, lo cual es posible llevar a cabo a través de las marcas. Los consumidores relacionan las marcas con ciertos productos y servicios, por lo que el prestigio y la reputación que se asocian a ellas, son trascendentales para la elección de uno u otro producto. Si el producto o servicio tiene buena acogida, la marca se destacará de entre las demás y, por ende, será más conocida, aumentando el valor global del producto o servicio, así como el de otros productos o servicios que lleven la misma marca.</p>\n<h2>¿PARA QUÉ REGISTRAR UNA MARCA?</h2>\n<p>Para obtener el uso de manera exclusiva, con lo cual se podrá impedir que otras personas o empresas comercialicen marcas idénticas o similares para los mismos productos o servicios.</p>\n<h2>VIGENCIA DE LA MARCA</h2>\n<p>La marca tendrá una duración de diez años, a contar desde la fecha de concesión y podrá ser renovada indefinidamente por períodos consecutivos de igual duración.</p>\n<h2>ALCANCE</h2>\n<p>El alcance de los registros marcarios es exclusivamente territorial, es decir, las marcas registradas en Paraguay tienen validez sólo en el territorio de Paraguay. Y si se desea protección en otros países, también se debe obtener el registro en dichos países.</p>\n<h2>¿CÓMO SABER EN QUÉ CLASE REGISTRAR UNA MARCA?</h2>\n<p>Esta se desprende de la Clasificación Internacional de Productos y Servicios, la cual distingue 34 clases de productos y 11 clases de servicios, los cuales, a los efectos del registro de la marca, podrá solicitarse conforme al siguiente nomenclador:</p>\n<p>Ver Clasificación de Marcas</p>\n<h2>¿PUEDO VENDER DE LA MARCA?</h2>\n<p>En efecto, como cualquier título de propiedad, la marca puede venderse, a título oneroso o cederse a título gratuito, este trámite se realizará mediante escritura pública, la cual posteriormente deberá inscribirse ante la DINAPI.</p>\n<p>También el titular podrá otorgar licencia de uso de la marca previamente inscripta y el contrato de licencia deberá registrarse ante la DINAPI.</p>\n<h2>SIGNOS QUE PUEDEN CONSTITUIR UNA MARCA</h2>\n<p>Un requisito esencial que permite el registro de un signo como marca, es la capacidad distintiva de este, a través de la clara individualización hecha por parte del público consumidor.</p>\n<p>Nuestra Ley de Marcas establece, en el Artículo 1, Ley 1294/1998: “Son marcas todos los signos que sirvan para distinguir productos o servicios. Las marcas podrán consistir en una o más palabras, lemas, emblemas, monogramas, sellos, viñetas, relieves; los nombres, vocablos de fantasía, las letras y números con formas o combinaciones distintas; las combinaciones y disposiciones de colores, etiquetas, envases y envoltorios. Podrán consistir también en la forma, presentación o acondicionamiento de los productos o de sus envases o envolturas, o de los medios o lugar de expendio de los productos o servicios correspondientes. Este listado es meramente enunciativo.”.</p>\n<div class="row">\n<div class="articulos-secondary col-md-12 col-sm-12">\n<div class="articulos-secondary-content">\n<div class="articulos-title">LEGISLACIÓN NACIONAL SOBRE MARCAS</div>\n<div class="articulos-descripcion">Ley 1294/98Decreto Reglamentario 22365/98</div>\n</div>\n</div>\n</div>\n<hr>', NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2109, 325, 8, 1, 1, 1, 'GeneralPage', '2019-11-11 15:35:50', '2019-11-11 18:29:36', 'aprender', 'APRENDER', NULL, '<h2 class="inicial">¿QUÉ ES UNA MARCA?</h2>\n<p>Es todo signo que identifica a un producto o servicio en el mercado. Por lo tanto, una marca puede ser considerada como una herramienta de comunicación usada por el productor o prestador de servicios para atraer al público.</p>\n<h2>¿POR QUÉ ES IMPORTANTE UNA MARCA?</h2>\n<p>La marca juega un papel preponderante y esencial en el proceso competitivo. Hoy día es imposible pensar que un negocio, ya sea grande o pequeño, pueda llegar a trabajar sin propaganda, lo cual es posible llevar a cabo a través de las marcas. Los consumidores relacionan las marcas con ciertos productos y servicios, por lo que el prestigio y la reputación que se asocian a ellas, son trascendentales para la elección de uno u otro producto. Si el producto o servicio tiene buena acogida, la marca se destacará de entre las demás y, por ende, será más conocida, aumentando el valor global del producto o servicio, así como el de otros productos o servicios que lleven la misma marca.</p>\n<h2>¿PARA QUÉ REGISTRAR UNA MARCA?</h2>\n<p>Para obtener el uso de manera exclusiva, con lo cual se podrá impedir que otras personas o empresas comercialicen marcas idénticas o similares para los mismos productos o servicios.</p>\n<h2>VIGENCIA DE LA MARCA</h2>\n<p>La marca tendrá una duración de diez años, a contar desde la fecha de concesión y podrá ser renovada indefinidamente por períodos consecutivos de igual duración.</p>\n<h2>ALCANCE</h2>\n<p>El alcance de los registros marcarios es exclusivamente territorial, es decir, las marcas registradas en Paraguay tienen validez sólo en el territorio de Paraguay. Y si se desea protección en otros países, también se debe obtener el registro en dichos países.</p>\n<h2>¿CÓMO SABER EN QUÉ CLASE REGISTRAR UNA MARCA?</h2>\n<p>Esta se desprende de la Clasificación Internacional de Productos y Servicios, la cual distingue 34 clases de productos y 11 clases de servicios, los cuales, a los efectos del registro de la marca, podrá solicitarse conforme al siguiente nomenclador:</p>\n<p><button class="btn btn-info" type="button">Ver Clasificación de Marcas</button></p>\n<h2>¿PUEDO VENDER DE LA MARCA?</h2>\n<p>En efecto, como cualquier título de propiedad, la marca puede venderse, a título oneroso o cederse a título gratuito, este trámite se realizará mediante escritura pública, la cual posteriormente deberá inscribirse ante la DINAPI.</p>\n<p>También el titular podrá otorgar licencia de uso de la marca previamente inscripta y el contrato de licencia deberá registrarse ante la DINAPI.</p>\n<h2>SIGNOS QUE PUEDEN CONSTITUIR UNA MARCA</h2>\n<p>Un requisito esencial que permite el registro de un signo como marca, es la capacidad distintiva de este, a través de la clara individualización hecha por parte del público consumidor.</p>\n<p>Nuestra Ley de Marcas establece, en el Artículo 1, Ley 1294/1998: “Son marcas todos los signos que sirvan para distinguir productos o servicios. Las marcas podrán consistir en una o más palabras, lemas, emblemas, monogramas, sellos, viñetas, relieves; los nombres, vocablos de fantasía, las letras y números con formas o combinaciones distintas; las combinaciones y disposiciones de colores, etiquetas, envases y envoltorios. Podrán consistir también en la forma, presentación o acondicionamiento de los productos o de sus envases o envolturas, o de los medios o lugar de expendio de los productos o servicios correspondientes. Este listado es meramente enunciativo.”.</p>\n<div class="row">\n<div class="articulos-secondary col-md-12 col-sm-12">\n<div class="articulos-secondary-content">\n<div class="articulos-title">LEGISLACIÓN NACIONAL SOBRE MARCAS</div>\n<div class="articulos-descripcion"><button class="btn btn-info" type="button" window.open="" ley_1294_98.pdf="">Ley 1294/98</button> <button class="btn btn-info" type="button" window.open="" decreto_22365_98.pdf="">Decreto Reglamentario 22365/98</button></div>\n</div>\n</div>\n</div>\n<hr>', NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2110, 325, 9, 1, 1, 1, 'GeneralPage', '2019-11-11 15:35:50', '2019-11-11 18:34:38', 'aprender', 'APRENDER', NULL, '<h2>¿QUÉ ES UNA MARCA?</h2>\n<p>Es todo signo que identifica a un producto o servicio en el mercado. Por lo tanto, una marca puede ser considerada como una herramienta de comunicación usada por el productor o prestador de servicios para atraer al público.</p>\n<h2>¿POR QUÉ ES IMPORTANTE UNA MARCA?</h2>\n<p>La marca juega un papel preponderante y esencial en el proceso competitivo. Hoy día es imposible pensar que un negocio, ya sea grande o pequeño, pueda llegar a trabajar sin propaganda, lo cual es posible llevar a cabo a través de las marcas. Los consumidores relacionan las marcas con ciertos productos y servicios, por lo que el prestigio y la reputación que se asocian a ellas, son trascendentales para la elección de uno u otro producto. Si el producto o servicio tiene buena acogida, la marca se destacará de entre las demás y, por ende, será más conocida, aumentando el valor global del producto o servicio, así como el de otros productos o servicios que lleven la misma marca.</p>\n<h2>¿PARA QUÉ REGISTRAR UNA MARCA?</h2>\n<p>Para obtener el uso de manera exclusiva, con lo cual se podrá impedir que otras personas o empresas comercialicen marcas idénticas o similares para los mismos productos o servicios.</p>\n<h2>VIGENCIA DE LA MARCA</h2>\n<p>La marca tendrá una duración de diez años, a contar desde la fecha de concesión y podrá ser renovada indefinidamente por períodos consecutivos de igual duración.</p>\n<h2>ALCANCE</h2>\n<p>El alcance de los registros marcarios es exclusivamente territorial, es decir, las marcas registradas en Paraguay tienen validez sólo en el territorio de Paraguay. Y si se desea protección en otros países, también se debe obtener el registro en dichos países.</p>\n<h2>¿CÓMO SABER EN QUÉ CLASE REGISTRAR UNA MARCA?</h2>\n<p>Esta se desprende de la Clasificación Internacional de Productos y Servicios, la cual distingue 34 clases de productos y 11 clases de servicios, los cuales, a los efectos del registro de la marca, podrá solicitarse conforme al siguiente nomenclador:</p>\n<p><button type="button" class="btn btn-info">Ver Clasificación de Marcas</button></p>\n<h2>¿PUEDO VENDER DE LA MARCA?</h2>\n<p>En efecto, como cualquier título de propiedad, la marca puede venderse, a título oneroso o cederse a título gratuito, este trámite se realizará mediante escritura pública, la cual posteriormente deberá inscribirse ante la DINAPI.</p>\n<p>También el titular podrá otorgar licencia de uso de la marca previamente inscripta y el contrato de licencia deberá registrarse ante la DINAPI.</p>\n<h2>SIGNOS QUE PUEDEN CONSTITUIR UNA MARCA</h2>\n<p>Un requisito esencial que permite el registro de un signo como marca, es la capacidad distintiva de este, a través de la clara individualización hecha por parte del público consumidor.</p>\n<p>Nuestra Ley de Marcas establece, en el Artículo 1, Ley 1294/1998: “Son marcas todos los signos que sirvan para distinguir productos o servicios. Las marcas podrán consistir en una o más palabras, lemas, emblemas, monogramas, sellos, viñetas, relieves; los nombres, vocablos de fantasía, las letras y números con formas o combinaciones distintas; las combinaciones y disposiciones de colores, etiquetas, envases y envoltorios. Podrán consistir también en la forma, presentación o acondicionamiento de los productos o de sus envases o envolturas, o de los medios o lugar de expendio de los productos o servicios correspondientes. Este listado es meramente enunciativo.”.</p>\n<div class="row">\n<div class="articulos-secondary col-md-12 col-sm-12">\n<div class="articulos-secondary-content">\n<div class="articulos-title">LEGISLACIÓN NACIONAL SOBRE MARCAS</div>\n<div class="articulos-descripcion"><button type="button" class="btn btn-info">Ley 1294/98</button> <button type="button" class="btn btn-info">Decreto Reglamentario 22365/98</button></div>\n</div>\n</div>\n</div>\n<hr>', NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2111, 325, 10, 1, 1, 1, 'GeneralPage', '2019-11-11 15:35:50', '2019-11-11 18:41:12', 'aprender', 'APRENDER', NULL, '<h2 class="inicial">¿QUÉ ES UNA MARCA?</h2>\n<p>Es todo signo que identifica a un producto o servicio en el mercado. Por lo tanto, una marca puede ser considerada como una herramienta de comunicación usada por el productor o prestador de servicios para atraer al público.</p>\n<h2>¿POR QUÉ ES IMPORTANTE UNA MARCA?</h2>\n<p>La marca juega un papel preponderante y esencial en el proceso competitivo. Hoy día es imposible pensar que un negocio, ya sea grande o pequeño, pueda llegar a trabajar sin propaganda, lo cual es posible llevar a cabo a través de las marcas. Los consumidores relacionan las marcas con ciertos productos y servicios, por lo que el prestigio y la reputación que se asocian a ellas, son trascendentales para la elección de uno u otro producto. Si el producto o servicio tiene buena acogida, la marca se destacará de entre las demás y, por ende, será más conocida, aumentando el valor global del producto o servicio, así como el de otros productos o servicios que lleven la misma marca.</p>\n<h2>¿PARA QUÉ REGISTRAR UNA MARCA?</h2>\n<p>Para obtener el uso de manera exclusiva, con lo cual se podrá impedir que otras personas o empresas comercialicen marcas idénticas o similares para los mismos productos o servicios.</p>\n<h2>VIGENCIA DE LA MARCA</h2>\n<p>La marca tendrá una duración de diez años, a contar desde la fecha de concesión y podrá ser renovada indefinidamente por períodos consecutivos de igual duración.</p>\n<h2>ALCANCE</h2>\n<p>El alcance de los registros marcarios es exclusivamente territorial, es decir, las marcas registradas en Paraguay tienen validez sólo en el territorio de Paraguay. Y si se desea protección en otros países, también se debe obtener el registro en dichos países.</p>\n<h2>¿CÓMO SABER EN QUÉ CLASE REGISTRAR UNA MARCA?</h2>\n<p>Esta se desprende de la Clasificación Internacional de Productos y Servicios, la cual distingue 34 clases de productos y 11 clases de servicios, los cuales, a los efectos del registro de la marca, podrá solicitarse conforme al siguiente nomenclador:</p>\n<p><button type="button" class="btn btn-info">Ver Clasificación de Marcas</button></p>\n<h2>¿PUEDO VENDER DE LA MARCA?</h2>\n<p>En efecto, como cualquier título de propiedad, la marca puede venderse, a título oneroso o cederse a título gratuito, este trámite se realizará mediante escritura pública, la cual posteriormente deberá inscribirse ante la DINAPI.</p>\n<p>También el titular podrá otorgar licencia de uso de la marca previamente inscripta y el contrato de licencia deberá registrarse ante la DINAPI.</p>\n<h2>SIGNOS QUE PUEDEN CONSTITUIR UNA MARCA</h2>\n<p>Un requisito esencial que permite el registro de un signo como marca, es la capacidad distintiva de este, a través de la clara individualización hecha por parte del público consumidor.</p>\n<p>Nuestra Ley de Marcas establece, en el Artículo 1, Ley 1294/1998: “Son marcas todos los signos que sirvan para distinguir productos o servicios. Las marcas podrán consistir en una o más palabras, lemas, emblemas, monogramas, sellos, viñetas, relieves; los nombres, vocablos de fantasía, las letras y números con formas o combinaciones distintas; las combinaciones y disposiciones de colores, etiquetas, envases y envoltorios. Podrán consistir también en la forma, presentación o acondicionamiento de los productos o de sus envases o envolturas, o de los medios o lugar de expendio de los productos o servicios correspondientes. Este listado es meramente enunciativo.”.</p>\n<div class="row">\n<div class="articulos-secondary col-md-12 col-sm-12">\n<div class="articulos-secondary-content">\n<div class="articulos-title">LEGISLACIÓN NACIONAL SOBRE MARCAS</div>\n<div class="articulos-descripcion"><button type="button" class="btn btn-info" window="" open="" leyes="" ley_1294_98="" pdf="" _blank="">Ley 1294/98</button> <button type="button" class="btn btn-info" window="" open="" leyes="" decreto_22365_98="" pdf="" _blank="">Decreto Reglamentario 22365/98</button></div>\n</div>\n</div>\n</div>\n<hr>', NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2112, 325, 11, 1, 1, 1, 'GeneralPage', '2019-11-11 15:35:50', '2019-11-11 18:42:39', 'aprender', 'APRENDER', NULL, '<h2 class="inicial">¿QUÉ ES UNA MARCA?</h2>\n<p>Es todo signo que identifica a un producto o servicio en el mercado. Por lo tanto, una marca puede ser considerada como una herramienta de comunicación usada por el productor o prestador de servicios para atraer al público.</p>\n<h2>¿POR QUÉ ES IMPORTANTE UNA MARCA?</h2>\n<p>La marca juega un papel preponderante y esencial en el proceso competitivo. Hoy día es imposible pensar que un negocio, ya sea grande o pequeño, pueda llegar a trabajar sin propaganda, lo cual es posible llevar a cabo a través de las marcas. Los consumidores relacionan las marcas con ciertos productos y servicios, por lo que el prestigio y la reputación que se asocian a ellas, son trascendentales para la elección de uno u otro producto. Si el producto o servicio tiene buena acogida, la marca se destacará de entre las demás y, por ende, será más conocida, aumentando el valor global del producto o servicio, así como el de otros productos o servicios que lleven la misma marca.</p>\n<h2>¿PARA QUÉ REGISTRAR UNA MARCA?</h2>\n<p>Para obtener el uso de manera exclusiva, con lo cual se podrá impedir que otras personas o empresas comercialicen marcas idénticas o similares para los mismos productos o servicios.</p>\n<h2>VIGENCIA DE LA MARCA</h2>\n<p>La marca tendrá una duración de diez años, a contar desde la fecha de concesión y podrá ser renovada indefinidamente por períodos consecutivos de igual duración.</p>\n<h2>ALCANCE</h2>\n<p>El alcance de los registros marcarios es exclusivamente territorial, es decir, las marcas registradas en Paraguay tienen validez sólo en el territorio de Paraguay. Y si se desea protección en otros países, también se debe obtener el registro en dichos países.</p>\n<h2>¿CÓMO SABER EN QUÉ CLASE REGISTRAR UNA MARCA?</h2>\n<p>Esta se desprende de la Clasificación Internacional de Productos y Servicios, la cual distingue 34 clases de productos y 11 clases de servicios, los cuales, a los efectos del registro de la marca, podrá solicitarse conforme al siguiente nomenclador:</p>\n<p><button>Ver Clasificación de Marcas</button></p>\n<h2>¿PUEDO VENDER DE LA MARCA?</h2>\n<p>En efecto, como cualquier título de propiedad, la marca puede venderse, a título oneroso o cederse a título gratuito, este trámite se realizará mediante escritura pública, la cual posteriormente deberá inscribirse ante la DINAPI.</p>\n<p>También el titular podrá otorgar licencia de uso de la marca previamente inscripta y el contrato de licencia deberá registrarse ante la DINAPI.</p>\n<h2>SIGNOS QUE PUEDEN CONSTITUIR UNA MARCA</h2>\n<p>Un requisito esencial que permite el registro de un signo como marca, es la capacidad distintiva de este, a través de la clara individualización hecha por parte del público consumidor.</p>\n<p>Nuestra Ley de Marcas establece, en el Artículo 1, Ley 1294/1998: “Son marcas todos los signos que sirvan para distinguir productos o servicios. Las marcas podrán consistir en una o más palabras, lemas, emblemas, monogramas, sellos, viñetas, relieves; los nombres, vocablos de fantasía, las letras y números con formas o combinaciones distintas; las combinaciones y disposiciones de colores, etiquetas, envases y envoltorios. Podrán consistir también en la forma, presentación o acondicionamiento de los productos o de sus envases o envolturas, o de los medios o lugar de expendio de los productos o servicios correspondientes. Este listado es meramente enunciativo.”.</p>\n<div class="row">\n<div class="articulos-secondary col-md-12 col-sm-12">\n<div class="articulos-secondary-content">\n<div class="articulos-title">LEGISLACIÓN NACIONAL SOBRE MARCAS</div>\n<div class="articulos-descripcion"><button window.open="" ley_1294_98.pdf="">Ley 1294/98</button> <button window.open="" decreto_22365_98.pdf="">Decreto Reglamentario 22365/98</button></div>\n</div>\n</div>\n</div>\n<hr>', NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2113, 325, 12, 1, 1, 1, 'GeneralPage', '2019-11-11 15:35:50', '2019-11-11 18:44:04', 'aprender', 'APRENDER', NULL, '<h2 class="inicial">¿QUÉ ES UNA MARCA?</h2>\n<p>Es todo signo que identifica a un producto o servicio en el mercado. Por lo tanto, una marca puede ser considerada como una herramienta de comunicación usada por el productor o prestador de servicios para atraer al público.</p>\n<h2>¿POR QUÉ ES IMPORTANTE UNA MARCA?</h2>\n<p>La marca juega un papel preponderante y esencial en el proceso competitivo. Hoy día es imposible pensar que un negocio, ya sea grande o pequeño, pueda llegar a trabajar sin propaganda, lo cual es posible llevar a cabo a través de las marcas. Los consumidores relacionan las marcas con ciertos productos y servicios, por lo que el prestigio y la reputación que se asocian a ellas, son trascendentales para la elección de uno u otro producto. Si el producto o servicio tiene buena acogida, la marca se destacará de entre las demás y, por ende, será más conocida, aumentando el valor global del producto o servicio, así como el de otros productos o servicios que lleven la misma marca.</p>\n<h2>¿PARA QUÉ REGISTRAR UNA MARCA?</h2>\n<p>Para obtener el uso de manera exclusiva, con lo cual se podrá impedir que otras personas o empresas comercialicen marcas idénticas o similares para los mismos productos o servicios.</p>\n<h2>VIGENCIA DE LA MARCA</h2>\n<p>La marca tendrá una duración de diez años, a contar desde la fecha de concesión y podrá ser renovada indefinidamente por períodos consecutivos de igual duración.</p>\n<h2>ALCANCE</h2>\n<p>El alcance de los registros marcarios es exclusivamente territorial, es decir, las marcas registradas en Paraguay tienen validez sólo en el territorio de Paraguay. Y si se desea protección en otros países, también se debe obtener el registro en dichos países.</p>\n<h2>¿CÓMO SABER EN QUÉ CLASE REGISTRAR UNA MARCA?</h2>\n<p>Esta se desprende de la Clasificación Internacional de Productos y Servicios, la cual distingue 34 clases de productos y 11 clases de servicios, los cuales, a los efectos del registro de la marca, podrá solicitarse conforme al siguiente nomenclador:</p>\n<p><button class="btn btn-info">Ver Clasificación de Marcas</button></p>\n<h2>¿PUEDO VENDER DE LA MARCA?</h2>\n<p>En efecto, como cualquier título de propiedad, la marca puede venderse, a título oneroso o cederse a título gratuito, este trámite se realizará mediante escritura pública, la cual posteriormente deberá inscribirse ante la DINAPI.</p>\n<p>También el titular podrá otorgar licencia de uso de la marca previamente inscripta y el contrato de licencia deberá registrarse ante la DINAPI.</p>\n<h2>SIGNOS QUE PUEDEN CONSTITUIR UNA MARCA</h2>\n<p>Un requisito esencial que permite el registro de un signo como marca, es la capacidad distintiva de este, a través de la clara individualización hecha por parte del público consumidor.</p>\n<p>Nuestra Ley de Marcas establece, en el Artículo 1, Ley 1294/1998: “Son marcas todos los signos que sirvan para distinguir productos o servicios. Las marcas podrán consistir en una o más palabras, lemas, emblemas, monogramas, sellos, viñetas, relieves; los nombres, vocablos de fantasía, las letras y números con formas o combinaciones distintas; las combinaciones y disposiciones de colores, etiquetas, envases y envoltorios. Podrán consistir también en la forma, presentación o acondicionamiento de los productos o de sus envases o envolturas, o de los medios o lugar de expendio de los productos o servicios correspondientes. Este listado es meramente enunciativo.”.</p>\n<div class="row">\n<div class="articulos-secondary col-md-12 col-sm-12">\n<div class="articulos-secondary-content">\n<div class="articulos-title">LEGISLACIÓN NACIONAL SOBRE MARCAS</div>\n<div class="articulos-descripcion"><button class="btn btn-info" window.open="" ley_1294_98.pdf="">Ley 1294/98</button> <button class="btn btn-info" window.open="" decreto_22365_98.pdf="">Decreto Reglamentario 22365/98</button></div>\n</div>\n</div>\n</div>\n<hr>', NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2114, 325, 13, 1, 1, 1, 'GeneralPage', '2019-11-11 15:35:50', '2019-11-11 18:47:45', 'aprender', 'APRENDER', NULL, '<h2 class="inicial">¿QUÉ ES UNA MARCA?</h2>\n<p>Es todo signo que identifica a un producto o servicio en el mercado. Por lo tanto, una marca puede ser considerada como una herramienta de comunicación usada por el productor o prestador de servicios para atraer al público.</p>\n<h2>¿POR QUÉ ES IMPORTANTE UNA MARCA?</h2>\n<p>La marca juega un papel preponderante y esencial en el proceso competitivo. Hoy día es imposible pensar que un negocio, ya sea grande o pequeño, pueda llegar a trabajar sin propaganda, lo cual es posible llevar a cabo a través de las marcas. Los consumidores relacionan las marcas con ciertos productos y servicios, por lo que el prestigio y la reputación que se asocian a ellas, son trascendentales para la elección de uno u otro producto. Si el producto o servicio tiene buena acogida, la marca se destacará de entre las demás y, por ende, será más conocida, aumentando el valor global del producto o servicio, así como el de otros productos o servicios que lleven la misma marca.</p>\n<h2>¿PARA QUÉ REGISTRAR UNA MARCA?</h2>\n<p>Para obtener el uso de manera exclusiva, con lo cual se podrá impedir que otras personas o empresas comercialicen marcas idénticas o similares para los mismos productos o servicios.</p>\n<h2>VIGENCIA DE LA MARCA</h2>\n<p>La marca tendrá una duración de diez años, a contar desde la fecha de concesión y podrá ser renovada indefinidamente por períodos consecutivos de igual duración.</p>\n<h2>ALCANCE</h2>\n<p>El alcance de los registros marcarios es exclusivamente territorial, es decir, las marcas registradas en Paraguay tienen validez sólo en el territorio de Paraguay. Y si se desea protección en otros países, también se debe obtener el registro en dichos países.</p>\n<h2>¿CÓMO SABER EN QUÉ CLASE REGISTRAR UNA MARCA?</h2>\n<p>Esta se desprende de la Clasificación Internacional de Productos y Servicios, la cual distingue 34 clases de productos y 11 clases de servicios, los cuales, a los efectos del registro de la marca, podrá solicitarse conforme al siguiente nomenclador:</p>\n<p><button class="btn btn-info">Ver Clasificación de Marcas</button></p>\n<h2>¿PUEDO VENDER DE LA MARCA?</h2>\n<p>En efecto, como cualquier título de propiedad, la marca puede venderse, a título oneroso o cederse a título gratuito, este trámite se realizará mediante escritura pública, la cual posteriormente deberá inscribirse ante la DINAPI.</p>\n<p>También el titular podrá otorgar licencia de uso de la marca previamente inscripta y el contrato de licencia deberá registrarse ante la DINAPI.</p>\n<h2>SIGNOS QUE PUEDEN CONSTITUIR UNA MARCA</h2>\n<p>Un requisito esencial que permite el registro de un signo como marca, es la capacidad distintiva de este, a través de la clara individualización hecha por parte del público consumidor.</p>\n<p>Nuestra Ley de Marcas establece, en el Artículo 1, Ley 1294/1998: “Son marcas todos los signos que sirvan para distinguir productos o servicios. Las marcas podrán consistir en una o más palabras, lemas, emblemas, monogramas, sellos, viñetas, relieves; los nombres, vocablos de fantasía, las letras y números con formas o combinaciones distintas; las combinaciones y disposiciones de colores, etiquetas, envases y envoltorios. Podrán consistir también en la forma, presentación o acondicionamiento de los productos o de sus envases o envolturas, o de los medios o lugar de expendio de los productos o servicios correspondientes. Este listado es meramente enunciativo.”.</p>\n<div class="row">\n<div class="articulos-secondary col-md-12 col-sm-12">\n<div class="articulos-secondary-content">\n<div class="articulos-title">LEGISLACIÓN NACIONAL SOBRE MARCAS</div>\n<div class="articulos-descripcion"><button class="btn btn-info">Ley 1294/98</button> <button class="btn btn-info">Decreto Reglamentario 22365/98</button></div>\n</div>\n</div>\n</div>\n<hr>', NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2115, 325, 14, 1, 1, 1, 'GeneralPage', '2019-11-11 15:35:50', '2019-11-11 18:59:52', 'aprender', 'APRENDER', NULL, '<h2 class="inicial">¿QUÉ ES UNA MARCA?</h2>\n<p>Es todo signo que identifica a un producto o servicio en el mercado. Por lo tanto, una marca puede ser considerada como una herramienta de comunicación usada por el productor o prestador de servicios para atraer al público.</p>\n<h2>¿POR QUÉ ES IMPORTANTE UNA MARCA?</h2>\n<p>La marca juega un papel preponderante y esencial en el proceso competitivo. Hoy día es imposible pensar que un negocio, ya sea grande o pequeño, pueda llegar a trabajar sin propaganda, lo cual es posible llevar a cabo a través de las marcas. Los consumidores relacionan las marcas con ciertos productos y servicios, por lo que el prestigio y la reputación que se asocian a ellas, son trascendentales para la elección de uno u otro producto. Si el producto o servicio tiene buena acogida, la marca se destacará de entre las demás y, por ende, será más conocida, aumentando el valor global del producto o servicio, así como el de otros productos o servicios que lleven la misma marca.</p>\n<h2>¿PARA QUÉ REGISTRAR UNA MARCA?</h2>\n<p>Para obtener el uso de manera exclusiva, con lo cual se podrá impedir que otras personas o empresas comercialicen marcas idénticas o similares para los mismos productos o servicios.</p>\n<h2>VIGENCIA DE LA MARCA</h2>\n<p>La marca tendrá una duración de diez años, a contar desde la fecha de concesión y podrá ser renovada indefinidamente por períodos consecutivos de igual duración.</p>\n<h2>ALCANCE</h2>\n<p>El alcance de los registros marcarios es exclusivamente territorial, es decir, las marcas registradas en Paraguay tienen validez sólo en el territorio de Paraguay. Y si se desea protección en otros países, también se debe obtener el registro en dichos países.</p>\n<h2>¿CÓMO SABER EN QUÉ CLASE REGISTRAR UNA MARCA?</h2>\n<p>Esta se desprende de la Clasificación Internacional de Productos y Servicios, la cual distingue 34 clases de productos y 11 clases de servicios, los cuales, a los efectos del registro de la marca, podrá solicitarse conforme al siguiente nomenclador:</p>\n<p><button class="btn btn-info">Ver Clasificación de Marcas</button></p>\n<h2>¿PUEDO VENDER DE LA MARCA?</h2>\n<p>En efecto, como cualquier título de propiedad, la marca puede venderse, a título oneroso o cederse a título gratuito, este trámite se realizará mediante escritura pública, la cual posteriormente deberá inscribirse ante la DINAPI.</p>\n<p>También el titular podrá otorgar licencia de uso de la marca previamente inscripta y el contrato de licencia deberá registrarse ante la DINAPI.</p>\n<h2>SIGNOS QUE PUEDEN CONSTITUIR UNA MARCA</h2>\n<p>Un requisito esencial que permite el registro de un signo como marca, es la capacidad distintiva de este, a través de la clara individualización hecha por parte del público consumidor.</p>\n<p>Nuestra Ley de Marcas establece, en el Artículo 1, Ley 1294/1998: “Son marcas todos los signos que sirvan para distinguir productos o servicios. Las marcas podrán consistir en una o más palabras, lemas, emblemas, monogramas, sellos, viñetas, relieves; los nombres, vocablos de fantasía, las letras y números con formas o combinaciones distintas; las combinaciones y disposiciones de colores, etiquetas, envases y envoltorios. Podrán consistir también en la forma, presentación o acondicionamiento de los productos o de sus envases o envolturas, o de los medios o lugar de expendio de los productos o servicios correspondientes. Este listado es meramente enunciativo.”.</p>\n<div class="row">\n<div class="articulos-secondary col-md-12 col-sm-12">\n<div class="articulos-secondary-content">\n<div class="articulos-title">LEGISLACIÓN NACIONAL SOBRE MARCAS</div>\n<div class="articulos-title"></div>\n<div class="articulos-title"></div>\n<div class="articulos-descripcion"><button class="btn btn-info">Ley 1294/98</button> <button class="btn btn-info">Decreto Reglamentario 22365/98</button> <a class="btn btn-success" href="#">¿Soy un botón o un enlace?</a></div>\n</div>\n</div>\n</div>\n<hr>', NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2116, 325, 15, 1, 1, 1, 'GeneralPage', '2019-11-11 15:35:50', '2019-11-11 19:04:03', 'aprender', 'APRENDER', NULL, '<h2 class="inicial">¿QUÉ ES UNA MARCA?</h2>\n<p>Es todo signo que identifica a un producto o servicio en el mercado. Por lo tanto, una marca puede ser considerada como una herramienta de comunicación usada por el productor o prestador de servicios para atraer al público.</p>\n<h2>¿POR QUÉ ES IMPORTANTE UNA MARCA?</h2>\n<p>La marca juega un papel preponderante y esencial en el proceso competitivo. Hoy día es imposible pensar que un negocio, ya sea grande o pequeño, pueda llegar a trabajar sin propaganda, lo cual es posible llevar a cabo a través de las marcas. Los consumidores relacionan las marcas con ciertos productos y servicios, por lo que el prestigio y la reputación que se asocian a ellas, son trascendentales para la elección de uno u otro producto. Si el producto o servicio tiene buena acogida, la marca se destacará de entre las demás y, por ende, será más conocida, aumentando el valor global del producto o servicio, así como el de otros productos o servicios que lleven la misma marca.</p>\n<h2>¿PARA QUÉ REGISTRAR UNA MARCA?</h2>\n<p>Para obtener el uso de manera exclusiva, con lo cual se podrá impedir que otras personas o empresas comercialicen marcas idénticas o similares para los mismos productos o servicios.</p>\n<h2>VIGENCIA DE LA MARCA</h2>\n<p>La marca tendrá una duración de diez años, a contar desde la fecha de concesión y podrá ser renovada indefinidamente por períodos consecutivos de igual duración.</p>\n<h2>ALCANCE</h2>\n<p>El alcance de los registros marcarios es exclusivamente territorial, es decir, las marcas registradas en Paraguay tienen validez sólo en el territorio de Paraguay. Y si se desea protección en otros países, también se debe obtener el registro en dichos países.</p>\n<h2>¿CÓMO SABER EN QUÉ CLASE REGISTRAR UNA MARCA?</h2>\n<p>Esta se desprende de la Clasificación Internacional de Productos y Servicios, la cual distingue 34 clases de productos y 11 clases de servicios, los cuales, a los efectos del registro de la marca, podrá solicitarse conforme al siguiente nomenclador:</p>\n<p><a class="btn btn-info" href="#">Ver Clasificación de Marcas</a></p>\n<h2>¿PUEDO VENDER DE LA MARCA?</h2>\n<p>En efecto, como cualquier título de propiedad, la marca puede venderse, a título oneroso o cederse a título gratuito, este trámite se realizará mediante escritura pública, la cual posteriormente deberá inscribirse ante la DINAPI.</p>\n<p>También el titular podrá otorgar licencia de uso de la marca previamente inscripta y el contrato de licencia deberá registrarse ante la DINAPI.</p>\n<h2>SIGNOS QUE PUEDEN CONSTITUIR UNA MARCA</h2>\n<p>Un requisito esencial que permite el registro de un signo como marca, es la capacidad distintiva de este, a través de la clara individualización hecha por parte del público consumidor.</p>\n<p>Nuestra Ley de Marcas establece, en el Artículo 1, Ley 1294/1998: “Son marcas todos los signos que sirvan para distinguir productos o servicios. Las marcas podrán consistir en una o más palabras, lemas, emblemas, monogramas, sellos, viñetas, relieves; los nombres, vocablos de fantasía, las letras y números con formas o combinaciones distintas; las combinaciones y disposiciones de colores, etiquetas, envases y envoltorios. Podrán consistir también en la forma, presentación o acondicionamiento de los productos o de sus envases o envolturas, o de los medios o lugar de expendio de los productos o servicios correspondientes. Este listado es meramente enunciativo.”.</p>\n<div class="row">\n<div class="articulos-secondary col-md-12 col-sm-12">\n<div class="articulos-secondary-content">\n<div class="articulos-title">LEGISLACIÓN NACIONAL SOBRE MARCAS</div>\n<div class="articulos-descripcion"><!-- <button type="button" class="btn btn-info"  window.open(''leyes/LEY_1294_98.pdf'',''_blank'')">Ley 1294/98</button>\n                    <button type="button" class="btn btn-info"  window.open(''leyes/Decreto_22365_98.pdf'',''_blank'')">Decreto Reglamentario 22365/98</button> --> <a class="btn btn-info" href="#">Ley 1294/98</a> <a class="btn btn-info" href="#">Decreto Reglamentario 22365/98</a></div>\n</div>\n</div>\n</div>\n<hr>', NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2117, 326, 1, 0, 1, 0, 'GeneralPage', '2019-11-11 19:07:46', '2019-11-11 19:07:46', 'nuevo-pagina-general-para-todas-las-paginas', 'Nuevo Página General para todas las paginas', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 325),
(2118, 326, 2, 1, 1, 1, 'GeneralPage', '2019-11-11 19:07:46', '2019-11-11 19:10:19', 'nuevo-pagina-general-para-todas-las-paginas', 'GESTIONAR TRÁMITES', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 325),
(2119, 326, 3, 1, 1, 1, 'GeneralPage', '2019-11-11 19:07:46', '2019-11-11 19:10:27', 'nuevo-pagina-general-para-todas-las-paginas', 'GESTIONAR TRÁMITES', NULL, '<h2 class="inicial">CLASIFICACIÓN DE REGISTROS DE MARCA</h2>\n<p>Antes de registrar una nueva marca, debemos tener claro en qué categoría estará clasificada.</p>\n<p>La clasificación se realiza a través del Clasificador Internacional de Productos y Servicios, la cual distingue 34 clases de productos y 11 clases de servicios, los cuales, a los efectos del registro de la marca podrá solicitarse conforme al siguiente nomenclador:</p>\n<!-- <button type="button" class="btn btn-info">Ver Clasificación de Marcas</button> -->\n<p><a class="btn btn-info" href="#">Ver Clasificación de Marcas</a></p>\n<h2>PASOS PARA REGISTRAR UNA MARCA</h2>\n<p>Una vez escogida la marca pretendida a registro se deberá realizar una búsqueda vía web o en el sistema informático disponible en el Departamento de Atención al Ciudadano, respecto a la disponibilidad o no de la marca.</p>\n<h4>1.Presentación de Solicitud</h4>\n<p>Las solicitudes de registro de marcas deberán ser presentadas en la Mesa de Entrada de la Dirección Nacional de Propiedad Intelectual DINAPI (sito en Avenida España Nº 323 casi Estados Unidos – Asunción).</p>\n<p>Los interesados o sus agentes deberán completar los formularios expedidos por la Dirección General de la Propiedad Industrial. Formulario de Registro Anexo de Titulares. <br><!-- <button type="button" class="btn btn-info">\n                Formulario de Registro\n              </button>\n              <button type="button" class="btn btn-info">\n                Anexo de Titulares\n              </button> --><a class="btn btn-info" href="#">Formulario de Registro</a> <a class="btn btn-info" href="#">Anexo de Titulares</a></p>\n<h4>2.Publicación de solicitud</h4>\n<p>Abonada la tasa de presentación equivalente a dos jornales mínimos vigente, el interesado o su agente, en un plazo de diez días máximo, podrá retirar la orden de publicación, la que deberá publicarse en la gaceta de la DINAPI o en un diario de gran circulación o en uno especializado, por tres días consecutivos.</p>\n<h4>3.Oposición/es de terceros:</h4>\n<p>Una vez publicada la marca y a partir de la última publicación hecha, se esperan 60 días hábiles para que terceros puedan deducir oposición contra la solicitud, si es que se ven afectados en sus derechos.</p>\n<h4>4.Examen de fondo:</h4>\n<p>Cumplidos los requisitos legales y vencidos los plazos establecidos en la Ley de marcas, se realiza el examen de fondo para ver si la marca cumple con los requisitos establecidos en la mencionada ley e informa al superior.</p>\n<h4>5.Concesión de la marca</h4>\n<p>El director de marcas, de concordar con el informe de fondo respecto a la falta de antecedentes y prohibiciones, emitirá un Dictamen y el expediente pasará a consideración de la Dirección General.</p>\n<p>De esta manera, la Dirección General de la Propiedad Industrial concede el Registro de Marca.</p>\n<h2>DURACIÓN DE LOS TRÁMITES</h2>\n<p>La tramitación para obtener el registro de una marca tiene un plazo aproximado de diez meses a partir de la fecha de presentación.</p>\n<p>La Dirección General de la Propiedad Industrial expide un Certificado de Registro de la marca el cual contiene: fecha de concesión, fecha de vencimiento, denominación de la marca, nombre del titular de la marca y la clase que ampara.</p>\n<h2>¿QUIÉN PUEDE SOLICITAR EL REGISTRO DE LA MARCA?</h2>\n<ul><li><b>Persona física</b>, bajo patrocinio (se requiere copia autenticada de cédula de identidad) o mediante poder.</li>\n<li><b>Persona jurídica</b>, mediante poder</li>\n</ul><p>Ambas por intermedio de una Agente de la DINAPI.</p>\n<p>En los casos que el agente actúe mediante poder, este deberá ser inscripto ante la DINAPI y, de acuerdo con el tipo de sociedad, se requerirá la documentación pertinente, a saber:</p>\n<ol><li>Personas físicas.</li>\n<li>Personas físicas o jurídica extranjera.</li>\n<li>Personas jurídicas nacionales.</li>\n<li>Sociedad de Responsabilidad Limitada.</li>\n<li>Sociedad Anónima.</li>\n<li>Asociaciones civiles.</li>\n<li>Fundaciones.</li>\n<li>Entidades públicas.</li>\n<li>Universidades.</li>\n</ol><div class="row">\n<div class="articulos-secondary col-md-12 col-sm-12">\n<div class="articulos-secondary-content">\n<div class="articulos-title">FORMULARIOS PARA REGISTRO DE MARCAS</div>\n<div class="articulos-descripcion"><!-- <button type="button" class="btn btn-info">\n                      Formulario de Registro\n                    </button>\n                    <button type="button" class="btn btn-info">\n                      Anexo de Titulares\n                    </button> --> <a class="btn btn-info" href="#">Formulario de Registro</a> <a class="btn btn-info" href="#">Anexo de Titulares</a></div>\n</div>\n</div>\n</div>\n<hr>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 325);
INSERT INTO `SiteTree_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `ParentID`) VALUES
(2120, 326, 4, 1, 1, 1, 'GeneralPage', '2019-11-11 19:07:46', '2019-11-11 19:10:37', 'nuevo-pagina-general-para-todas-las-paginas', 'GESTIONAR TRÁMITES', NULL, '<h2 class="inicial">CLASIFICACIÓN DE REGISTROS DE MARCA</h2>\n<p>Antes de registrar una nueva marca, debemos tener claro en qué categoría estará clasificada.</p>\n<p>La clasificación se realiza a través del Clasificador Internacional de Productos y Servicios, la cual distingue 34 clases de productos y 11 clases de servicios, los cuales, a los efectos del registro de la marca podrá solicitarse conforme al siguiente nomenclador:</p>\n<!-- <button type="button" class="btn btn-info">Ver Clasificación de Marcas</button> -->\n<p><a class="btn btn-info" href="#">Ver Clasificación de Marcas</a></p>\n<h2>PASOS PARA REGISTRAR UNA MARCA</h2>\n<p>Una vez escogida la marca pretendida a registro se deberá realizar una búsqueda vía web o en el sistema informático disponible en el Departamento de Atención al Ciudadano, respecto a la disponibilidad o no de la marca.</p>\n<h4>1.Presentación de Solicitud</h4>\n<p>Las solicitudes de registro de marcas deberán ser presentadas en la Mesa de Entrada de la Dirección Nacional de Propiedad Intelectual DINAPI (sito en Avenida España Nº 323 casi Estados Unidos – Asunción).</p>\n<p>Los interesados o sus agentes deberán completar los formularios expedidos por la Dirección General de la Propiedad Industrial. Formulario de Registro Anexo de Titulares. <br><!-- <button type="button" class="btn btn-info">\n                Formulario de Registro\n              </button>\n              <button type="button" class="btn btn-info">\n                Anexo de Titulares\n              </button> --><a class="btn btn-info" href="#">Formulario de Registro</a> <a class="btn btn-info" href="#">Anexo de Titulares</a></p>\n<h4>2.Publicación de solicitud</h4>\n<p>Abonada la tasa de presentación equivalente a dos jornales mínimos vigente, el interesado o su agente, en un plazo de diez días máximo, podrá retirar la orden de publicación, la que deberá publicarse en la gaceta de la DINAPI o en un diario de gran circulación o en uno especializado, por tres días consecutivos.</p>\n<h4>3.Oposición/es de terceros:</h4>\n<p>Una vez publicada la marca y a partir de la última publicación hecha, se esperan 60 días hábiles para que terceros puedan deducir oposición contra la solicitud, si es que se ven afectados en sus derechos.</p>\n<h4>4.Examen de fondo:</h4>\n<p>Cumplidos los requisitos legales y vencidos los plazos establecidos en la Ley de marcas, se realiza el examen de fondo para ver si la marca cumple con los requisitos establecidos en la mencionada ley e informa al superior.</p>\n<h4>5.Concesión de la marca</h4>\n<p>El director de marcas, de concordar con el informe de fondo respecto a la falta de antecedentes y prohibiciones, emitirá un Dictamen y el expediente pasará a consideración de la Dirección General.</p>\n<p>De esta manera, la Dirección General de la Propiedad Industrial concede el Registro de Marca.</p>\n<h2>DURACIÓN DE LOS TRÁMITES</h2>\n<p>La tramitación para obtener el registro de una marca tiene un plazo aproximado de diez meses a partir de la fecha de presentación.</p>\n<p>La Dirección General de la Propiedad Industrial expide un Certificado de Registro de la marca el cual contiene: fecha de concesión, fecha de vencimiento, denominación de la marca, nombre del titular de la marca y la clase que ampara.</p>\n<h2>¿QUIÉN PUEDE SOLICITAR EL REGISTRO DE LA MARCA?</h2>\n<ul><li><b>Persona física</b>, bajo patrocinio (se requiere copia autenticada de cédula de identidad) o mediante poder.</li>\n<li><b>Persona jurídica</b>, mediante poder</li>\n</ul><p>Ambas por intermedio de una Agente de la DINAPI.</p>\n<p>En los casos que el agente actúe mediante poder, este deberá ser inscripto ante la DINAPI y, de acuerdo con el tipo de sociedad, se requerirá la documentación pertinente, a saber:</p>\n<ol><li>Personas físicas.</li>\n<li>Personas físicas o jurídica extranjera.</li>\n<li>Personas jurídicas nacionales.</li>\n<li>Sociedad de Responsabilidad Limitada.</li>\n<li>Sociedad Anónima.</li>\n<li>Asociaciones civiles.</li>\n<li>Fundaciones.</li>\n<li>Entidades públicas.</li>\n<li>Universidades.</li>\n</ol><div class="row">\n<div class="articulos-secondary col-md-12 col-sm-12">\n<div class="articulos-secondary-content">\n<div class="articulos-title">FORMULARIOS PARA REGISTRO DE MARCAS</div>\n<div class="articulos-descripcion"><!-- <button type="button" class="btn btn-info">\n                      Formulario de Registro\n                    </button>\n                    <button type="button" class="btn btn-info">\n                      Anexo de Titulares\n                    </button> --> <a class="btn btn-info" href="#">Formulario de Registro</a> <a class="btn btn-info" href="#">Anexo de Titulares</a></div>\n</div>\n</div>\n</div>\n<hr>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 325),
(2121, 326, 5, 1, 1, 1, 'GeneralPage', '2019-11-11 19:07:46', '2019-11-11 19:10:45', 'nuevo-pagina-general-para-todas-las-paginas', 'GESTIONAR TRÁMITES', NULL, '<h2 class="inicial">CLASIFICACIÓN DE REGISTROS DE MARCA</h2>\n<p>Antes de registrar una nueva marca, debemos tener claro en qué categoría estará clasificada.</p>\n<p>La clasificación se realiza a través del Clasificador Internacional de Productos y Servicios, la cual distingue 34 clases de productos y 11 clases de servicios, los cuales, a los efectos del registro de la marca podrá solicitarse conforme al siguiente nomenclador:</p>\n<!-- <button type="button" class="btn btn-info">Ver Clasificación de Marcas</button> -->\n<p><a class="btn btn-info" href="#">Ver Clasificación de Marcas</a></p>\n<h2>PASOS PARA REGISTRAR UNA MARCA</h2>\n<p>Una vez escogida la marca pretendida a registro se deberá realizar una búsqueda vía web o en el sistema informático disponible en el Departamento de Atención al Ciudadano, respecto a la disponibilidad o no de la marca.</p>\n<h4>1.Presentación de Solicitud</h4>\n<p>Las solicitudes de registro de marcas deberán ser presentadas en la Mesa de Entrada de la Dirección Nacional de Propiedad Intelectual DINAPI (sito en Avenida España Nº 323 casi Estados Unidos – Asunción).</p>\n<p>Los interesados o sus agentes deberán completar los formularios expedidos por la Dirección General de la Propiedad Industrial. Formulario de Registro Anexo de Titulares. <br><!-- <button type="button" class="btn btn-info">\n                Formulario de Registro\n              </button>\n              <button type="button" class="btn btn-info">\n                Anexo de Titulares\n              </button> --><a class="btn btn-info" href="#">Formulario de Registro</a> <a class="btn btn-info" href="#">Anexo de Titulares</a></p>\n<h4>2.Publicación de solicitud</h4>\n<p>Abonada la tasa de presentación equivalente a dos jornales mínimos vigente, el interesado o su agente, en un plazo de diez días máximo, podrá retirar la orden de publicación, la que deberá publicarse en la gaceta de la DINAPI o en un diario de gran circulación o en uno especializado, por tres días consecutivos.</p>\n<h4>3.Oposición/es de terceros:</h4>\n<p>Una vez publicada la marca y a partir de la última publicación hecha, se esperan 60 días hábiles para que terceros puedan deducir oposición contra la solicitud, si es que se ven afectados en sus derechos.</p>\n<h4>4.Examen de fondo:</h4>\n<p>Cumplidos los requisitos legales y vencidos los plazos establecidos en la Ley de marcas, se realiza el examen de fondo para ver si la marca cumple con los requisitos establecidos en la mencionada ley e informa al superior.</p>\n<h4>5.Concesión de la marca</h4>\n<p>El director de marcas, de concordar con el informe de fondo respecto a la falta de antecedentes y prohibiciones, emitirá un Dictamen y el expediente pasará a consideración de la Dirección General.</p>\n<p>De esta manera, la Dirección General de la Propiedad Industrial concede el Registro de Marca.</p>\n<h2>DURACIÓN DE LOS TRÁMITES</h2>\n<p>La tramitación para obtener el registro de una marca tiene un plazo aproximado de diez meses a partir de la fecha de presentación.</p>\n<p>La Dirección General de la Propiedad Industrial expide un Certificado de Registro de la marca el cual contiene: fecha de concesión, fecha de vencimiento, denominación de la marca, nombre del titular de la marca y la clase que ampara.</p>\n<h2>¿QUIÉN PUEDE SOLICITAR EL REGISTRO DE LA MARCA?</h2>\n<ul><li><b>Persona física</b>, bajo patrocinio (se requiere copia autenticada de cédula de identidad) o mediante poder.</li>\n<li><b>Persona jurídica</b>, mediante poder</li>\n</ul><p>Ambas por intermedio de una Agente de la DINAPI.</p>\n<p>En los casos que el agente actúe mediante poder, este deberá ser inscripto ante la DINAPI y, de acuerdo con el tipo de sociedad, se requerirá la documentación pertinente, a saber:</p>\n<ol><li>Personas físicas.</li>\n<li>Personas físicas o jurídica extranjera.</li>\n<li>Personas jurídicas nacionales.</li>\n<li>Sociedad de Responsabilidad Limitada.</li>\n<li>Sociedad Anónima.</li>\n<li>Asociaciones civiles.</li>\n<li>Fundaciones.</li>\n<li>Entidades públicas.</li>\n<li>Universidades.</li>\n</ol><div class="row">\n<div class="articulos-secondary col-md-12 col-sm-12">\n<div class="articulos-secondary-content">\n<div class="articulos-title">FORMULARIOS PARA REGISTRO DE MARCAS</div>\n<div class="articulos-descripcion"><!-- <button type="button" class="btn btn-info">\n                      Formulario de Registro\n                    </button>\n                    <button type="button" class="btn btn-info">\n                      Anexo de Titulares\n                    </button> --> <a class="btn btn-info" href="#">Formulario de Registro</a> <a class="btn btn-info" href="#">Anexo de Titulares</a></div>\n</div>\n</div>\n</div>\n<hr>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 325),
(2122, 326, 6, 1, 1, 1, 'GeneralPage', '2019-11-11 19:07:46', '2019-11-11 19:17:53', 'nuevo-pagina-general-para-todas-las-paginas', 'GESTIONAR TRÁMITES', NULL, '<h2 class="inicial">CLASIFICACIÓN DE REGISTROS DE MARCA</h2>\n<p>Antes de registrar una nueva marca, debemos tener claro en qué categoría estará clasificada.</p>\n<p>La clasificación se realiza a través del Clasificador Internacional de Productos y Servicios, la cual distingue 34 clases de productos y 11 clases de servicios, los cuales, a los efectos del registro de la marca podrá solicitarse conforme al siguiente nomenclador:</p>\n<!-- <button type="button" class="btn btn-info">Ver Clasificación de Marcas</button> -->\n<p><a class="btn btn-info" href="#">Ver Clasificación de Marcas</a></p>\n<h2>PASOS PARA REGISTRAR UNA MARCA</h2>\n<p>Una vez escogida la marca pretendida a registro se deberá realizar una búsqueda vía web o en el sistema informático disponible en el Departamento de Atención al Ciudadano, respecto a la disponibilidad o no de la marca.</p>\n<h4>1.Presentación de Solicitud</h4>\n<p>Las solicitudes de registro de marcas deberán ser presentadas en la Mesa de Entrada de la Dirección Nacional de Propiedad Intelectual DINAPI (sito en Avenida España Nº 323 casi Estados Unidos – Asunción).</p>\n<p>Los interesados o sus agentes deberán completar los formularios expedidos por la Dirección General de la Propiedad Industrial. Formulario de Registro Anexo de Titulares. <br><!-- <button type="button" class="btn btn-info">\n                Formulario de Registro\n              </button>\n              <button type="button" class="btn btn-info">\n                Anexo de Titulares\n              </button> --><a class="btn btn-info" href="#">Formulario de Registro</a> <a class="btn btn-info" href="#">Anexo de Titulares</a></p>\n<h4>2.Publicación de solicitud</h4>\n<p>Abonada la tasa de presentación equivalente a dos jornales mínimos vigente, el interesado o su agente, en un plazo de diez días máximo, podrá retirar la orden de publicación, la que deberá publicarse en la gaceta de la DINAPI o en un diario de gran circulación o en uno especializado, por tres días consecutivos.</p>\n<h4>3.Oposición/es de terceros:</h4>\n<p>Una vez publicada la marca y a partir de la última publicación hecha, se esperan 60 días hábiles para que terceros puedan deducir oposición contra la solicitud, si es que se ven afectados en sus derechos.</p>\n<h4>4.Examen de fondo:</h4>\n<p>Cumplidos los requisitos legales y vencidos los plazos establecidos en la Ley de marcas, se realiza el examen de fondo para ver si la marca cumple con los requisitos establecidos en la mencionada ley e informa al superior.</p>\n<h4>5.Concesión de la marca</h4>\n<p>El director de marcas, de concordar con el informe de fondo respecto a la falta de antecedentes y prohibiciones, emitirá un Dictamen y el expediente pasará a consideración de la Dirección General.</p>\n<p>De esta manera, la Dirección General de la Propiedad Industrial concede el Registro de Marca.</p>\n<h2>DURACIÓN DE LOS TRÁMITES</h2>\n<p>La tramitación para obtener el registro de una marca tiene un plazo aproximado de diez meses a partir de la fecha de presentación.</p>\n<p>La Dirección General de la Propiedad Industrial expide un Certificado de Registro de la marca el cual contiene: fecha de concesión, fecha de vencimiento, denominación de la marca, nombre del titular de la marca y la clase que ampara.</p>\n<h2>¿QUIÉN PUEDE SOLICITAR EL REGISTRO DE LA MARCA?</h2>\n<ul><li><b>Persona física</b>, bajo patrocinio (se requiere copia autenticada de cédula de identidad) o mediante poder.</li>\n<li><b>Persona jurídica</b>, mediante poder</li>\n</ul><p>Ambas por intermedio de una Agente de la DINAPI.</p>\n<p>En los casos que el agente actúe mediante poder, este deberá ser inscripto ante la DINAPI y, de acuerdo con el tipo de sociedad, se requerirá la documentación pertinente, a saber:</p>\n<ol><li>Personas físicas.</li>\n<li>Personas físicas o jurídica extranjera.</li>\n<li>Personas jurídicas nacionales.</li>\n<li>Sociedad de Responsabilidad Limitada.</li>\n<li>Sociedad Anónima.</li>\n<li>Asociaciones civiles.</li>\n<li>Fundaciones.</li>\n<li>Entidades públicas.</li>\n<li>Universidades.</li>\n</ol><div class="row">\n<div class="articulos-secondary col-md-12 col-sm-12">\n<div class="articulos-secondary-content">\n<div class="articulos-title">FORMULARIOS PARA REGISTRO DE MARCAS</div>\n<div class="articulos-descripcion"><!-- <button type="button" class="btn btn-info">\n                      Formulario de Registro\n                    </button>\n                    <button type="button" class="btn btn-info">\n                      Anexo de Titulares\n                    </button> --> <a class="btn btn-info" href="#">Formulario de Registro</a> <a class="btn btn-info" href="#">Anexo de Titulares</a></div>\n</div>\n</div>\n</div>\n<hr>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 325),
(2123, 326, 7, 1, 1, 1, 'GeneralPage', '2019-11-11 19:07:46', '2019-11-11 19:18:08', 'gestionar-tramites', 'GESTIONAR TRÁMITES', NULL, '<h2 class="inicial">CLASIFICACIÓN DE REGISTROS DE MARCA</h2>\n<p>Antes de registrar una nueva marca, debemos tener claro en qué categoría estará clasificada.</p>\n<p>La clasificación se realiza a través del Clasificador Internacional de Productos y Servicios, la cual distingue 34 clases de productos y 11 clases de servicios, los cuales, a los efectos del registro de la marca podrá solicitarse conforme al siguiente nomenclador:</p>\n<!-- <button type="button" class="btn btn-info">Ver Clasificación de Marcas</button> -->\n<p><a class="btn btn-info" href="#">Ver Clasificación de Marcas</a></p>\n<h2>PASOS PARA REGISTRAR UNA MARCA</h2>\n<p>Una vez escogida la marca pretendida a registro se deberá realizar una búsqueda vía web o en el sistema informático disponible en el Departamento de Atención al Ciudadano, respecto a la disponibilidad o no de la marca.</p>\n<h4>1.Presentación de Solicitud</h4>\n<p>Las solicitudes de registro de marcas deberán ser presentadas en la Mesa de Entrada de la Dirección Nacional de Propiedad Intelectual DINAPI (sito en Avenida España Nº 323 casi Estados Unidos – Asunción).</p>\n<p>Los interesados o sus agentes deberán completar los formularios expedidos por la Dirección General de la Propiedad Industrial. Formulario de Registro Anexo de Titulares. <br><!-- <button type="button" class="btn btn-info">\n                Formulario de Registro\n              </button>\n              <button type="button" class="btn btn-info">\n                Anexo de Titulares\n              </button> --><a class="btn btn-info" href="#">Formulario de Registro</a> <a class="btn btn-info" href="#">Anexo de Titulares</a></p>\n<h4>2.Publicación de solicitud</h4>\n<p>Abonada la tasa de presentación equivalente a dos jornales mínimos vigente, el interesado o su agente, en un plazo de diez días máximo, podrá retirar la orden de publicación, la que deberá publicarse en la gaceta de la DINAPI o en un diario de gran circulación o en uno especializado, por tres días consecutivos.</p>\n<h4>3.Oposición/es de terceros:</h4>\n<p>Una vez publicada la marca y a partir de la última publicación hecha, se esperan 60 días hábiles para que terceros puedan deducir oposición contra la solicitud, si es que se ven afectados en sus derechos.</p>\n<h4>4.Examen de fondo:</h4>\n<p>Cumplidos los requisitos legales y vencidos los plazos establecidos en la Ley de marcas, se realiza el examen de fondo para ver si la marca cumple con los requisitos establecidos en la mencionada ley e informa al superior.</p>\n<h4>5.Concesión de la marca</h4>\n<p>El director de marcas, de concordar con el informe de fondo respecto a la falta de antecedentes y prohibiciones, emitirá un Dictamen y el expediente pasará a consideración de la Dirección General.</p>\n<p>De esta manera, la Dirección General de la Propiedad Industrial concede el Registro de Marca.</p>\n<h2>DURACIÓN DE LOS TRÁMITES</h2>\n<p>La tramitación para obtener el registro de una marca tiene un plazo aproximado de diez meses a partir de la fecha de presentación.</p>\n<p>La Dirección General de la Propiedad Industrial expide un Certificado de Registro de la marca el cual contiene: fecha de concesión, fecha de vencimiento, denominación de la marca, nombre del titular de la marca y la clase que ampara.</p>\n<h2>¿QUIÉN PUEDE SOLICITAR EL REGISTRO DE LA MARCA?</h2>\n<ul><li><b>Persona física</b>, bajo patrocinio (se requiere copia autenticada de cédula de identidad) o mediante poder.</li>\n<li><b>Persona jurídica</b>, mediante poder</li>\n</ul><p>Ambas por intermedio de una Agente de la DINAPI.</p>\n<p>En los casos que el agente actúe mediante poder, este deberá ser inscripto ante la DINAPI y, de acuerdo con el tipo de sociedad, se requerirá la documentación pertinente, a saber:</p>\n<ol><li>Personas físicas.</li>\n<li>Personas físicas o jurídica extranjera.</li>\n<li>Personas jurídicas nacionales.</li>\n<li>Sociedad de Responsabilidad Limitada.</li>\n<li>Sociedad Anónima.</li>\n<li>Asociaciones civiles.</li>\n<li>Fundaciones.</li>\n<li>Entidades públicas.</li>\n<li>Universidades.</li>\n</ol><div class="row">\n<div class="articulos-secondary col-md-12 col-sm-12">\n<div class="articulos-secondary-content">\n<div class="articulos-title">FORMULARIOS PARA REGISTRO DE MARCAS</div>\n<div class="articulos-descripcion"><!-- <button type="button" class="btn btn-info">\n                      Formulario de Registro\n                    </button>\n                    <button type="button" class="btn btn-info">\n                      Anexo de Titulares\n                    </button> --> <a class="btn btn-info" href="#">Formulario de Registro</a> <a class="btn btn-info" href="#">Anexo de Titulares</a></div>\n</div>\n</div>\n</div>\n<hr>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 325),
(2124, 325, 16, 0, 1, 0, 'GeneralPage', '2019-11-11 15:35:50', '2019-11-11 19:18:23', 'aprender', 'APRENDER', NULL, '<h2 class="inicial">¿QUÉ ES UNA MARCA?</h2>\n<p>Es todo signo que identifica a un producto o servicio en el mercado. Por lo tanto, una marca puede ser considerada como una herramienta de comunicación usada por el productor o prestador de servicios para atraer al público.</p>\n<h2>¿POR QUÉ ES IMPORTANTE UNA MARCA?</h2>\n<p>La marca juega un papel preponderante y esencial en el proceso competitivo. Hoy día es imposible pensar que un negocio, ya sea grande o pequeño, pueda llegar a trabajar sin propaganda, lo cual es posible llevar a cabo a través de las marcas. Los consumidores relacionan las marcas con ciertos productos y servicios, por lo que el prestigio y la reputación que se asocian a ellas, son trascendentales para la elección de uno u otro producto. Si el producto o servicio tiene buena acogida, la marca se destacará de entre las demás y, por ende, será más conocida, aumentando el valor global del producto o servicio, así como el de otros productos o servicios que lleven la misma marca.</p>\n<h2>¿PARA QUÉ REGISTRAR UNA MARCA?</h2>\n<p>Para obtener el uso de manera exclusiva, con lo cual se podrá impedir que otras personas o empresas comercialicen marcas idénticas o similares para los mismos productos o servicios.</p>\n<h2>VIGENCIA DE LA MARCA</h2>\n<p>La marca tendrá una duración de diez años, a contar desde la fecha de concesión y podrá ser renovada indefinidamente por períodos consecutivos de igual duración.</p>\n<h2>ALCANCE</h2>\n<p>El alcance de los registros marcarios es exclusivamente territorial, es decir, las marcas registradas en Paraguay tienen validez sólo en el territorio de Paraguay. Y si se desea protección en otros países, también se debe obtener el registro en dichos países.</p>\n<h2>¿CÓMO SABER EN QUÉ CLASE REGISTRAR UNA MARCA?</h2>\n<p>Esta se desprende de la Clasificación Internacional de Productos y Servicios, la cual distingue 34 clases de productos y 11 clases de servicios, los cuales, a los efectos del registro de la marca, podrá solicitarse conforme al siguiente nomenclador:</p>\n<p><a class="btn btn-info" href="#">Ver Clasificación de Marcas</a></p>\n<h2>¿PUEDO VENDER DE LA MARCA?</h2>\n<p>En efecto, como cualquier título de propiedad, la marca puede venderse, a título oneroso o cederse a título gratuito, este trámite se realizará mediante escritura pública, la cual posteriormente deberá inscribirse ante la DINAPI.</p>\n<p>También el titular podrá otorgar licencia de uso de la marca previamente inscripta y el contrato de licencia deberá registrarse ante la DINAPI.</p>\n<h2>SIGNOS QUE PUEDEN CONSTITUIR UNA MARCA</h2>\n<p>Un requisito esencial que permite el registro de un signo como marca, es la capacidad distintiva de este, a través de la clara individualización hecha por parte del público consumidor.</p>\n<p>Nuestra Ley de Marcas establece, en el Artículo 1, Ley 1294/1998: “Son marcas todos los signos que sirvan para distinguir productos o servicios. Las marcas podrán consistir en una o más palabras, lemas, emblemas, monogramas, sellos, viñetas, relieves; los nombres, vocablos de fantasía, las letras y números con formas o combinaciones distintas; las combinaciones y disposiciones de colores, etiquetas, envases y envoltorios. Podrán consistir también en la forma, presentación o acondicionamiento de los productos o de sus envases o envolturas, o de los medios o lugar de expendio de los productos o servicios correspondientes. Este listado es meramente enunciativo.”.</p>\n<div class="row">\n<div class="articulos-secondary col-md-12 col-sm-12">\n<div class="articulos-secondary-content">\n<div class="articulos-title">LEGISLACIÓN NACIONAL SOBRE MARCAS</div>\n<div class="articulos-descripcion"><!-- <button type="button" class="btn btn-info"  window.open(''leyes/LEY_1294_98.pdf'',''_blank'')">Ley 1294/98</button>\n                    <button type="button" class="btn btn-info"  window.open(''leyes/Decreto_22365_98.pdf'',''_blank'')">Decreto Reglamentario 22365/98</button> --> <a class="btn btn-info" href="#">Ley 1294/98</a> <a class="btn btn-info" href="#">Decreto Reglamentario 22365/98</a></div>\n</div>\n</div>\n</div>\n<hr>', NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 304),
(2125, 325, 17, 1, 1, 1, 'GeneralPage', '2019-11-11 15:35:50', '2019-11-11 19:18:23', 'aprender', 'APRENDER', NULL, '<h2 class="inicial">¿QUÉ ES UNA MARCA?</h2>\n<p>Es todo signo que identifica a un producto o servicio en el mercado. Por lo tanto, una marca puede ser considerada como una herramienta de comunicación usada por el productor o prestador de servicios para atraer al público.</p>\n<h2>¿POR QUÉ ES IMPORTANTE UNA MARCA?</h2>\n<p>La marca juega un papel preponderante y esencial en el proceso competitivo. Hoy día es imposible pensar que un negocio, ya sea grande o pequeño, pueda llegar a trabajar sin propaganda, lo cual es posible llevar a cabo a través de las marcas. Los consumidores relacionan las marcas con ciertos productos y servicios, por lo que el prestigio y la reputación que se asocian a ellas, son trascendentales para la elección de uno u otro producto. Si el producto o servicio tiene buena acogida, la marca se destacará de entre las demás y, por ende, será más conocida, aumentando el valor global del producto o servicio, así como el de otros productos o servicios que lleven la misma marca.</p>\n<h2>¿PARA QUÉ REGISTRAR UNA MARCA?</h2>\n<p>Para obtener el uso de manera exclusiva, con lo cual se podrá impedir que otras personas o empresas comercialicen marcas idénticas o similares para los mismos productos o servicios.</p>\n<h2>VIGENCIA DE LA MARCA</h2>\n<p>La marca tendrá una duración de diez años, a contar desde la fecha de concesión y podrá ser renovada indefinidamente por períodos consecutivos de igual duración.</p>\n<h2>ALCANCE</h2>\n<p>El alcance de los registros marcarios es exclusivamente territorial, es decir, las marcas registradas en Paraguay tienen validez sólo en el territorio de Paraguay. Y si se desea protección en otros países, también se debe obtener el registro en dichos países.</p>\n<h2>¿CÓMO SABER EN QUÉ CLASE REGISTRAR UNA MARCA?</h2>\n<p>Esta se desprende de la Clasificación Internacional de Productos y Servicios, la cual distingue 34 clases de productos y 11 clases de servicios, los cuales, a los efectos del registro de la marca, podrá solicitarse conforme al siguiente nomenclador:</p>\n<p><a class="btn btn-info" href="#">Ver Clasificación de Marcas</a></p>\n<h2>¿PUEDO VENDER DE LA MARCA?</h2>\n<p>En efecto, como cualquier título de propiedad, la marca puede venderse, a título oneroso o cederse a título gratuito, este trámite se realizará mediante escritura pública, la cual posteriormente deberá inscribirse ante la DINAPI.</p>\n<p>También el titular podrá otorgar licencia de uso de la marca previamente inscripta y el contrato de licencia deberá registrarse ante la DINAPI.</p>\n<h2>SIGNOS QUE PUEDEN CONSTITUIR UNA MARCA</h2>\n<p>Un requisito esencial que permite el registro de un signo como marca, es la capacidad distintiva de este, a través de la clara individualización hecha por parte del público consumidor.</p>\n<p>Nuestra Ley de Marcas establece, en el Artículo 1, Ley 1294/1998: “Son marcas todos los signos que sirvan para distinguir productos o servicios. Las marcas podrán consistir en una o más palabras, lemas, emblemas, monogramas, sellos, viñetas, relieves; los nombres, vocablos de fantasía, las letras y números con formas o combinaciones distintas; las combinaciones y disposiciones de colores, etiquetas, envases y envoltorios. Podrán consistir también en la forma, presentación o acondicionamiento de los productos o de sus envases o envolturas, o de los medios o lugar de expendio de los productos o servicios correspondientes. Este listado es meramente enunciativo.”.</p>\n<div class="row">\n<div class="articulos-secondary col-md-12 col-sm-12">\n<div class="articulos-secondary-content">\n<div class="articulos-title">LEGISLACIÓN NACIONAL SOBRE MARCAS</div>\n<div class="articulos-descripcion"><!-- <button type="button" class="btn btn-info"  window.open(''leyes/LEY_1294_98.pdf'',''_blank'')">Ley 1294/98</button>\n                    <button type="button" class="btn btn-info"  window.open(''leyes/Decreto_22365_98.pdf'',''_blank'')">Decreto Reglamentario 22365/98</button> --> <a class="btn btn-info" href="#">Ley 1294/98</a> <a class="btn btn-info" href="#">Decreto Reglamentario 22365/98</a></div>\n</div>\n</div>\n</div>\n<hr>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 304),
(2126, 325, 18, 1, 1, 1, 'GeneralPage', '2019-11-11 15:35:50', '2019-11-11 19:18:34', 'aprender', 'APRENDER', NULL, '<h2 class="inicial">¿QUÉ ES UNA MARCA?</h2>\n<p>Es todo signo que identifica a un producto o servicio en el mercado. Por lo tanto, una marca puede ser considerada como una herramienta de comunicación usada por el productor o prestador de servicios para atraer al público.</p>\n<h2>¿POR QUÉ ES IMPORTANTE UNA MARCA?</h2>\n<p>La marca juega un papel preponderante y esencial en el proceso competitivo. Hoy día es imposible pensar que un negocio, ya sea grande o pequeño, pueda llegar a trabajar sin propaganda, lo cual es posible llevar a cabo a través de las marcas. Los consumidores relacionan las marcas con ciertos productos y servicios, por lo que el prestigio y la reputación que se asocian a ellas, son trascendentales para la elección de uno u otro producto. Si el producto o servicio tiene buena acogida, la marca se destacará de entre las demás y, por ende, será más conocida, aumentando el valor global del producto o servicio, así como el de otros productos o servicios que lleven la misma marca.</p>\n<h2>¿PARA QUÉ REGISTRAR UNA MARCA?</h2>\n<p>Para obtener el uso de manera exclusiva, con lo cual se podrá impedir que otras personas o empresas comercialicen marcas idénticas o similares para los mismos productos o servicios.</p>\n<h2>VIGENCIA DE LA MARCA</h2>\n<p>La marca tendrá una duración de diez años, a contar desde la fecha de concesión y podrá ser renovada indefinidamente por períodos consecutivos de igual duración.</p>\n<h2>ALCANCE</h2>\n<p>El alcance de los registros marcarios es exclusivamente territorial, es decir, las marcas registradas en Paraguay tienen validez sólo en el territorio de Paraguay. Y si se desea protección en otros países, también se debe obtener el registro en dichos países.</p>\n<h2>¿CÓMO SABER EN QUÉ CLASE REGISTRAR UNA MARCA?</h2>\n<p>Esta se desprende de la Clasificación Internacional de Productos y Servicios, la cual distingue 34 clases de productos y 11 clases de servicios, los cuales, a los efectos del registro de la marca, podrá solicitarse conforme al siguiente nomenclador:</p>\n<p><a class="btn btn-info" href="#">Ver Clasificación de Marcas</a></p>\n<h2>¿PUEDO VENDER DE LA MARCA?</h2>\n<p>En efecto, como cualquier título de propiedad, la marca puede venderse, a título oneroso o cederse a título gratuito, este trámite se realizará mediante escritura pública, la cual posteriormente deberá inscribirse ante la DINAPI.</p>\n<p>También el titular podrá otorgar licencia de uso de la marca previamente inscripta y el contrato de licencia deberá registrarse ante la DINAPI.</p>\n<h2>SIGNOS QUE PUEDEN CONSTITUIR UNA MARCA</h2>\n<p>Un requisito esencial que permite el registro de un signo como marca, es la capacidad distintiva de este, a través de la clara individualización hecha por parte del público consumidor.</p>\n<p>Nuestra Ley de Marcas establece, en el Artículo 1, Ley 1294/1998: “Son marcas todos los signos que sirvan para distinguir productos o servicios. Las marcas podrán consistir en una o más palabras, lemas, emblemas, monogramas, sellos, viñetas, relieves; los nombres, vocablos de fantasía, las letras y números con formas o combinaciones distintas; las combinaciones y disposiciones de colores, etiquetas, envases y envoltorios. Podrán consistir también en la forma, presentación o acondicionamiento de los productos o de sus envases o envolturas, o de los medios o lugar de expendio de los productos o servicios correspondientes. Este listado es meramente enunciativo.”.</p>\n<div class="row">\n<div class="articulos-secondary col-md-12 col-sm-12">\n<div class="articulos-secondary-content">\n<div class="articulos-title">LEGISLACIÓN NACIONAL SOBRE MARCAS</div>\n<div class="articulos-descripcion"><!-- <button type="button" class="btn btn-info"  window.open(''leyes/LEY_1294_98.pdf'',''_blank'')">Ley 1294/98</button>\n                    <button type="button" class="btn btn-info"  window.open(''leyes/Decreto_22365_98.pdf'',''_blank'')">Decreto Reglamentario 22365/98</button> --> <a class="btn btn-info" href="#">Ley 1294/98</a> <a class="btn btn-info" href="#">Decreto Reglamentario 22365/98</a></div>\n</div>\n</div>\n</div>\n<hr>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 304),
(2127, 325, 19, 1, 1, 1, 'GeneralPage', '2019-11-11 15:35:50', '2019-11-11 19:20:46', 'aprender', 'APRENDER', NULL, '<h2 class="inicial">¿QUÉ ES UNA MARCA?</h2>\n<p>Es todo signo que identifica a un producto o servicio en el mercado. Por lo tanto, una marca puede ser considerada como una herramienta de comunicación usada por el productor o prestador de servicios para atraer al público.</p>\n<h2>¿POR QUÉ ES IMPORTANTE UNA MARCA?</h2>\n<p>La marca juega un papel preponderante y esencial en el proceso competitivo. Hoy día es imposible pensar que un negocio, ya sea grande o pequeño, pueda llegar a trabajar sin propaganda, lo cual es posible llevar a cabo a través de las marcas. Los consumidores relacionan las marcas con ciertos productos y servicios, por lo que el prestigio y la reputación que se asocian a ellas, son trascendentales para la elección de uno u otro producto. Si el producto o servicio tiene buena acogida, la marca se destacará de entre las demás y, por ende, será más conocida, aumentando el valor global del producto o servicio, así como el de otros productos o servicios que lleven la misma marca.</p>\n<h2>¿PARA QUÉ REGISTRAR UNA MARCA?</h2>\n<p>Para obtener el uso de manera exclusiva, con lo cual se podrá impedir que otras personas o empresas comercialicen marcas idénticas o similares para los mismos productos o servicios.</p>\n<h2>VIGENCIA DE LA MARCA</h2>\n<p>La marca tendrá una duración de diez años, a contar desde la fecha de concesión y podrá ser renovada indefinidamente por períodos consecutivos de igual duración.</p>\n<h2>ALCANCE</h2>\n<p>El alcance de los registros marcarios es exclusivamente territorial, es decir, las marcas registradas en Paraguay tienen validez sólo en el territorio de Paraguay. Y si se desea protección en otros países, también se debe obtener el registro en dichos países.</p>\n<h2>¿CÓMO SABER EN QUÉ CLASE REGISTRAR UNA MARCA?</h2>\n<p>Esta se desprende de la Clasificación Internacional de Productos y Servicios, la cual distingue 34 clases de productos y 11 clases de servicios, los cuales, a los efectos del registro de la marca, podrá solicitarse conforme al siguiente nomenclador:</p>\n<p><a class="btn btn-info" href="#">Ver Clasificación de Marcas</a></p>\n<h2>¿PUEDO VENDER DE LA MARCA?</h2>\n<p>En efecto, como cualquier título de propiedad, la marca puede venderse, a título oneroso o cederse a título gratuito, este trámite se realizará mediante escritura pública, la cual posteriormente deberá inscribirse ante la DINAPI.</p>\n<p>También el titular podrá otorgar licencia de uso de la marca previamente inscripta y el contrato de licencia deberá registrarse ante la DINAPI.</p>\n<h2>SIGNOS QUE PUEDEN CONSTITUIR UNA MARCA</h2>\n<p>Un requisito esencial que permite el registro de un signo como marca, es la capacidad distintiva de este, a través de la clara individualización hecha por parte del público consumidor.</p>\n<p>Nuestra Ley de Marcas establece, en el Artículo 1, Ley 1294/1998: “Son marcas todos los signos que sirvan para distinguir productos o servicios. Las marcas podrán consistir en una o más palabras, lemas, emblemas, monogramas, sellos, viñetas, relieves; los nombres, vocablos de fantasía, las letras y números con formas o combinaciones distintas; las combinaciones y disposiciones de colores, etiquetas, envases y envoltorios. Podrán consistir también en la forma, presentación o acondicionamiento de los productos o de sus envases o envolturas, o de los medios o lugar de expendio de los productos o servicios correspondientes. Este listado es meramente enunciativo.”.</p>\n<div class="row">\n<div class="articulos-secondary col-md-12 col-sm-12">\n<div class="articulos-secondary-content">\n<div class="articulos-title">LEGISLACIÓN NACIONAL SOBRE MARCAS</div>\n<div class="articulos-descripcion"><!-- <button type="button" class="btn btn-info"  window.open(''leyes/LEY_1294_98.pdf'',''_blank'')">Ley 1294/98</button>\n                    <button type="button" class="btn btn-info"  window.open(''leyes/Decreto_22365_98.pdf'',''_blank'')">Decreto Reglamentario 22365/98</button> --> <a class="btn btn-info" href="#">Ley 1294/98</a> <a class="btn btn-info" href="#">Decreto Reglamentario 22365/98</a></div>\n</div>\n</div>\n</div>\n<hr>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 304),
(2128, 325, 20, 1, 1, 1, 'GeneralPage', '2019-11-11 15:35:50', '2019-11-11 19:21:26', 'aprender', 'APRENDER', NULL, '<h2 class="inicial">¿QUÉ ES UNA MARCA?</h2>\n<p>Es todo signo que identifica a un producto o servicio en el mercado. Por lo tanto, una marca puede ser considerada como una herramienta de comunicación usada por el productor o prestador de servicios para atraer al público.</p>\n<h2>¿POR QUÉ ES IMPORTANTE UNA MARCA?</h2>\n<p>La marca juega un papel preponderante y esencial en el proceso competitivo. Hoy día es imposible pensar que un negocio, ya sea grande o pequeño, pueda llegar a trabajar sin propaganda, lo cual es posible llevar a cabo a través de las marcas. Los consumidores relacionan las marcas con ciertos productos y servicios, por lo que el prestigio y la reputación que se asocian a ellas, son trascendentales para la elección de uno u otro producto. Si el producto o servicio tiene buena acogida, la marca se destacará de entre las demás y, por ende, será más conocida, aumentando el valor global del producto o servicio, así como el de otros productos o servicios que lleven la misma marca.</p>\n<h2>¿PARA QUÉ REGISTRAR UNA MARCA?</h2>\n<p>Para obtener el uso de manera exclusiva, con lo cual se podrá impedir que otras personas o empresas comercialicen marcas idénticas o similares para los mismos productos o servicios.</p>\n<h2>VIGENCIA DE LA MARCA</h2>\n<p>La marca tendrá una duración de diez años, a contar desde la fecha de concesión y podrá ser renovada indefinidamente por períodos consecutivos de igual duración.</p>\n<h2>ALCANCE</h2>\n<p>El alcance de los registros marcarios es exclusivamente territorial, es decir, las marcas registradas en Paraguay tienen validez sólo en el territorio de Paraguay. Y si se desea protección en otros países, también se debe obtener el registro en dichos países.</p>\n<h2>¿CÓMO SABER EN QUÉ CLASE REGISTRAR UNA MARCA?</h2>\n<p>Esta se desprende de la Clasificación Internacional de Productos y Servicios, la cual distingue 34 clases de productos y 11 clases de servicios, los cuales, a los efectos del registro de la marca, podrá solicitarse conforme al siguiente nomenclador:</p>\n<p><a class="btn btn-info" href="#">Ver Clasificación de Marcas</a></p>\n<h2>¿PUEDO VENDER DE LA MARCA?</h2>\n<p>En efecto, como cualquier título de propiedad, la marca puede venderse, a título oneroso o cederse a título gratuito, este trámite se realizará mediante escritura pública, la cual posteriormente deberá inscribirse ante la DINAPI.</p>\n<p>También el titular podrá otorgar licencia de uso de la marca previamente inscripta y el contrato de licencia deberá registrarse ante la DINAPI.</p>\n<h2>SIGNOS QUE PUEDEN CONSTITUIR UNA MARCA</h2>\n<p>Un requisito esencial que permite el registro de un signo como marca, es la capacidad distintiva de este, a través de la clara individualización hecha por parte del público consumidor.</p>\n<p>Nuestra Ley de Marcas establece, en el Artículo 1, Ley 1294/1998: “Son marcas todos los signos que sirvan para distinguir productos o servicios. Las marcas podrán consistir en una o más palabras, lemas, emblemas, monogramas, sellos, viñetas, relieves; los nombres, vocablos de fantasía, las letras y números con formas o combinaciones distintas; las combinaciones y disposiciones de colores, etiquetas, envases y envoltorios. Podrán consistir también en la forma, presentación o acondicionamiento de los productos o de sus envases o envolturas, o de los medios o lugar de expendio de los productos o servicios correspondientes. Este listado es meramente enunciativo.”.</p>\n<div class="row">\n<div class="articulos-secondary col-md-12 col-sm-12">\n<div class="articulos-secondary-content">\n<div class="articulos-title">LEGISLACIÓN NACIONAL SOBRE MARCAS</div>\n<div class="articulos-descripcion"><!-- <button type="button" class="btn btn-info"  window.open(''leyes/LEY_1294_98.pdf'',''_blank'')">Ley 1294/98</button>\n                    <button type="button" class="btn btn-info"  window.open(''leyes/Decreto_22365_98.pdf'',''_blank'')">Decreto Reglamentario 22365/98</button> --> <a class="btn btn-info" href="#">Ley 1294/98</a> <a class="btn btn-info" href="#">Decreto Reglamentario 22365/98</a></div>\n</div>\n</div>\n</div>\n<hr>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 304),
(2129, 326, 8, 1, 1, 1, 'GeneralPage', '2019-11-11 19:07:46', '2019-11-11 19:21:58', 'gestionar-tramites', 'GESTIONAR TRÁMITES', NULL, '<h2 class="inicial">CLASIFICACIÓN DE REGISTROS DE MARCA</h2>\n<p>Antes de registrar una nueva marca, debemos tener claro en qué categoría estará clasificada.</p>\n<p>La clasificación se realiza a través del Clasificador Internacional de Productos y Servicios, la cual distingue 34 clases de productos y 11 clases de servicios, los cuales, a los efectos del registro de la marca podrá solicitarse conforme al siguiente nomenclador:</p>\n<!-- <button type="button" class="btn btn-info">Ver Clasificación de Marcas</button> -->\n<p><a class="btn btn-info" href="#">Ver Clasificación de Marcas</a></p>\n<h2>PASOS PARA REGISTRAR UNA MARCA</h2>\n<p>Una vez escogida la marca pretendida a registro se deberá realizar una búsqueda vía web o en el sistema informático disponible en el Departamento de Atención al Ciudadano, respecto a la disponibilidad o no de la marca.</p>\n<h4>1.Presentación de Solicitud</h4>\n<p>Las solicitudes de registro de marcas deberán ser presentadas en la Mesa de Entrada de la Dirección Nacional de Propiedad Intelectual DINAPI (sito en Avenida España Nº 323 casi Estados Unidos – Asunción).</p>\n<p>Los interesados o sus agentes deberán completar los formularios expedidos por la Dirección General de la Propiedad Industrial. Formulario de Registro Anexo de Titulares. <br><!-- <button type="button" class="btn btn-info">\n                Formulario de Registro\n              </button>\n              <button type="button" class="btn btn-info">\n                Anexo de Titulares\n              </button> --><a class="btn btn-info" href="#">Formulario de Registro</a> <a class="btn btn-info" href="#">Anexo de Titulares</a></p>\n<h4>2.Publicación de solicitud</h4>\n<p>Abonada la tasa de presentación equivalente a dos jornales mínimos vigente, el interesado o su agente, en un plazo de diez días máximo, podrá retirar la orden de publicación, la que deberá publicarse en la gaceta de la DINAPI o en un diario de gran circulación o en uno especializado, por tres días consecutivos.</p>\n<h4>3.Oposición/es de terceros:</h4>\n<p>Una vez publicada la marca y a partir de la última publicación hecha, se esperan 60 días hábiles para que terceros puedan deducir oposición contra la solicitud, si es que se ven afectados en sus derechos.</p>\n<h4>4.Examen de fondo:</h4>\n<p>Cumplidos los requisitos legales y vencidos los plazos establecidos en la Ley de marcas, se realiza el examen de fondo para ver si la marca cumple con los requisitos establecidos en la mencionada ley e informa al superior.</p>\n<h4>5.Concesión de la marca</h4>\n<p>El director de marcas, de concordar con el informe de fondo respecto a la falta de antecedentes y prohibiciones, emitirá un Dictamen y el expediente pasará a consideración de la Dirección General.</p>\n<p>De esta manera, la Dirección General de la Propiedad Industrial concede el Registro de Marca.</p>\n<h2>DURACIÓN DE LOS TRÁMITES</h2>\n<p>La tramitación para obtener el registro de una marca tiene un plazo aproximado de diez meses a partir de la fecha de presentación.</p>\n<p>La Dirección General de la Propiedad Industrial expide un Certificado de Registro de la marca el cual contiene: fecha de concesión, fecha de vencimiento, denominación de la marca, nombre del titular de la marca y la clase que ampara.</p>\n<h2>¿QUIÉN PUEDE SOLICITAR EL REGISTRO DE LA MARCA?</h2>\n<ul><li><b>Persona física</b>, bajo patrocinio (se requiere copia autenticada de cédula de identidad) o mediante poder.</li>\n<li><b>Persona jurídica</b>, mediante poder</li>\n</ul><p>Ambas por intermedio de una Agente de la DINAPI.</p>\n<p>En los casos que el agente actúe mediante poder, este deberá ser inscripto ante la DINAPI y, de acuerdo con el tipo de sociedad, se requerirá la documentación pertinente, a saber:</p>\n<ol><li>Personas físicas.</li>\n<li>Personas físicas o jurídica extranjera.</li>\n<li>Personas jurídicas nacionales.</li>\n<li>Sociedad de Responsabilidad Limitada.</li>\n<li>Sociedad Anónima.</li>\n<li>Asociaciones civiles.</li>\n<li>Fundaciones.</li>\n<li>Entidades públicas.</li>\n<li>Universidades.</li>\n</ol><div class="row">\n<div class="articulos-secondary col-md-12 col-sm-12">\n<div class="articulos-secondary-content">\n<div class="articulos-title">FORMULARIOS PARA REGISTRO DE MARCAS</div>\n<div class="articulos-descripcion"><!-- <button type="button" class="btn btn-info">\n                      Formulario de Registro\n                    </button>\n                    <button type="button" class="btn btn-info">\n                      Anexo de Titulares\n                    </button> --> <a class="btn btn-info" href="#">Formulario de Registro</a> <a class="btn btn-info" href="#">Anexo de Titulares</a></div>\n</div>\n</div>\n</div>\n<hr>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 325),
(2130, 327, 1, 0, 1, 0, 'GeneralPage', '2019-11-11 19:25:49', '2019-11-11 19:25:49', 'nuevo-pagina-general-para-todas-las-paginas', 'Nuevo Página General para todas las paginas', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 301),
(2131, 327, 2, 1, 1, 1, 'GeneralPage', '2019-11-11 19:25:49', '2019-11-11 19:27:07', 'mision-vision-funciones', 'MISIÓN, VISIÓN, VALORES Y FUNCIONES DE LA DINAPI', NULL, '<div class="col-md-12 clear-section float-left pt-5 " id="information-container">\n<div class="clearfix"></div>\n<div class="col-md-12 bread">\n<div><a href="index.php">Inicio</a> / Misión, Visión, Valores y Funciones de la DINAPI</div>\n</div>\n<div class="row">\n<div class="col-md-3 sidebar-links">\n<h1>Datos Institucionales</h1>\n<div class="lista"></div>\n</div>\n<div class="col-md-8 mt-5 information-texto">\n<h2 class="inicial">MISIÓN, VISIÓN, VALORES Y FUNCIONES DE LA DINAPI</h2>\n<h4>Misión</h4>\n<p>La misión de DINAPI es diseñar, implementar, fomentar y coordinar las políticas públicas de propiedad intelectual, concediendo la protección de los derechos derivados de esta materia a fin de garantizar la seguridad jurídica a sus titulares.</p>\n<h4>Visión</h4>\n<p>Ser una institución comprometida con la mejora continua en la calidad de su gestión, para contribuir con el desarrollo del país mediante la protección de los derechos de propiedad intelectual.</p>\n<h4>Valores</h4>\n<p><b>Valores de DINAPI:</b> <br> • Calidad.<br> • Confiabilidad.<br> • Eficiencia y Eficacia.<br> • Ética.<br> • Transparencia .<br><br><b>Valores de las personas que conforman DINAPI:</b> <br> • Compromiso.<br> • Integridad.<br> • Pro-actividad.<br> • Profesionalismo.<br> • Trabajo en Equipo.</p>\n<h4>Funciones de la DINAPI</h4>\n<p>• Administrar y disponer el otorgamiento y protección de los derechos de propiedad intelectual como ser: Derecho de Autor y Derechos Conexos, Marcas, Dibujos y Modelos Industriales, Patentes de Invención y Modelos de Utilidad, Transferencia de Tecnología, Indicaciones Geográficas y otras que pudieran legislarse o reglamentarse. <br><br> • Promover y fomentar la creación intelectual tanto en su forma literaria, artística o científica, como en su ámbito de aplicación industrial, y la difusión de los conocimientos tecnológicos dentro de los sectores culturales y productivos. <br><br> • Fomentar la Innovación, la Investigación y el Acceso a la Ciencia, favoreciendo la transferencia de tecnología. <br><br> • Formular las políticas nacionales en todas aquellas materias relacionadas con la protección de la propiedad intelectual, en coordinación con los ministerios y demás órganos competentes para cada caso. <br><br> • Promover iniciativas y desarrollar actividades conducentes al mejor conocimiento y protección de la Propiedad Intelectual, en el orden nacional Promover la Innovación y el Desarrollo Empresarial, a través del fomento de la innovación, desarrollo empresarial e investigación a través de las buenas prácticas.</p>\n<div class="row mt-5"><button class="btn btn-info"> Manual de Funciones </button> <button class="btn btn-info ml-3"> Anexo de la Resolución DINAPI/RP/ Nº 209 </button></div>\n<hr></div>\n</div>\n</div>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 301);
INSERT INTO `SiteTree_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `ParentID`) VALUES
(2132, 327, 3, 1, 1, 1, 'GeneralPage', '2019-11-11 19:25:49', '2019-11-11 19:27:14', 'mision-vision-funciones', 'MISIÓN, VISIÓN, VALORES Y FUNCIONES DE LA DINAPI', NULL, '<div class="col-md-12 clear-section float-left pt-5 " id="information-container">\n<div class="clearfix"></div>\n<div class="col-md-12 bread">\n<div><a href="index.php">Inicio</a> / Misión, Visión, Valores y Funciones de la DINAPI</div>\n</div>\n<div class="row">\n<div class="col-md-3 sidebar-links">\n<h1>Datos Institucionales</h1>\n<div class="lista"></div>\n</div>\n<div class="col-md-8 mt-5 information-texto">\n<h2 class="inicial">MISIÓN, VISIÓN, VALORES Y FUNCIONES DE LA DINAPI</h2>\n<h4>Misión</h4>\n<p>La misión de DINAPI es diseñar, implementar, fomentar y coordinar las políticas públicas de propiedad intelectual, concediendo la protección de los derechos derivados de esta materia a fin de garantizar la seguridad jurídica a sus titulares.</p>\n<h4>Visión</h4>\n<p>Ser una institución comprometida con la mejora continua en la calidad de su gestión, para contribuir con el desarrollo del país mediante la protección de los derechos de propiedad intelectual.</p>\n<h4>Valores</h4>\n<p><b>Valores de DINAPI:</b> <br> • Calidad.<br> • Confiabilidad.<br> • Eficiencia y Eficacia.<br> • Ética.<br> • Transparencia .<br><br><b>Valores de las personas que conforman DINAPI:</b> <br> • Compromiso.<br> • Integridad.<br> • Pro-actividad.<br> • Profesionalismo.<br> • Trabajo en Equipo.</p>\n<h4>Funciones de la DINAPI</h4>\n<p>• Administrar y disponer el otorgamiento y protección de los derechos de propiedad intelectual como ser: Derecho de Autor y Derechos Conexos, Marcas, Dibujos y Modelos Industriales, Patentes de Invención y Modelos de Utilidad, Transferencia de Tecnología, Indicaciones Geográficas y otras que pudieran legislarse o reglamentarse. <br><br> • Promover y fomentar la creación intelectual tanto en su forma literaria, artística o científica, como en su ámbito de aplicación industrial, y la difusión de los conocimientos tecnológicos dentro de los sectores culturales y productivos. <br><br> • Fomentar la Innovación, la Investigación y el Acceso a la Ciencia, favoreciendo la transferencia de tecnología. <br><br> • Formular las políticas nacionales en todas aquellas materias relacionadas con la protección de la propiedad intelectual, en coordinación con los ministerios y demás órganos competentes para cada caso. <br><br> • Promover iniciativas y desarrollar actividades conducentes al mejor conocimiento y protección de la Propiedad Intelectual, en el orden nacional Promover la Innovación y el Desarrollo Empresarial, a través del fomento de la innovación, desarrollo empresarial e investigación a través de las buenas prácticas.</p>\n<div class="row mt-5"><button class="btn btn-info"> Manual de Funciones </button> <button class="btn btn-info ml-3"> Anexo de la Resolución DINAPI/RP/ Nº 209 </button></div>\n<hr></div>\n</div>\n</div>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 301),
(2133, 327, 4, 1, 1, 1, 'GeneralPage', '2019-11-11 19:25:49', '2019-11-11 19:28:16', 'mision-vision-funciones', 'MISIÓN, VISIÓN, VALORES Y FUNCIONES DE LA DINAPI', NULL, '<h2 class="inicial">MISIÓN, VISIÓN, VALORES Y FUNCIONES DE LA DINAPI</h2>\n<h4>Misión</h4>\n<p>La misión de DINAPI es diseñar, implementar, fomentar y coordinar las políticas públicas de propiedad intelectual, concediendo la protección de los derechos derivados de esta materia a fin de garantizar la seguridad jurídica a sus titulares.</p>\n<h4>Visión</h4>\n<p>Ser una institución comprometida con la mejora continua en la calidad de su gestión, para contribuir con el desarrollo del país mediante la protección de los derechos de propiedad intelectual.</p>\n<h4>Valores</h4>\n<p><b>Valores de DINAPI:</b> <br> • Calidad.<br> • Confiabilidad.<br> • Eficiencia y Eficacia.<br> • Ética.<br> • Transparencia .<br><br><b>Valores de las personas que conforman DINAPI:</b> <br> • Compromiso.<br> • Integridad.<br> • Pro-actividad.<br> • Profesionalismo.<br> • Trabajo en Equipo.</p>\n<h4>Funciones de la DINAPI</h4>\n<p>• Administrar y disponer el otorgamiento y protección de los derechos de propiedad intelectual como ser: Derecho de Autor y Derechos Conexos, Marcas, Dibujos y Modelos Industriales, Patentes de Invención y Modelos de Utilidad, Transferencia de Tecnología, Indicaciones Geográficas y otras que pudieran legislarse o reglamentarse. <br><br> • Promover y fomentar la creación intelectual tanto en su forma literaria, artística o científica, como en su ámbito de aplicación industrial, y la difusión de los conocimientos tecnológicos dentro de los sectores culturales y productivos. <br><br> • Fomentar la Innovación, la Investigación y el Acceso a la Ciencia, favoreciendo la transferencia de tecnología. <br><br> • Formular las políticas nacionales en todas aquellas materias relacionadas con la protección de la propiedad intelectual, en coordinación con los ministerios y demás órganos competentes para cada caso. <br><br> • Promover iniciativas y desarrollar actividades conducentes al mejor conocimiento y protección de la Propiedad Intelectual, en el orden nacional Promover la Innovación y el Desarrollo Empresarial, a través del fomento de la innovación, desarrollo empresarial e investigación a través de las buenas prácticas.</p>\n<div class="row mt-5"><button class="btn btn-info"> Manual de Funciones </button> <button class="btn btn-info ml-3"> Anexo de la Resolución DINAPI/RP/ Nº 209 </button></div>\n<hr>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 301),
(2134, 328, 1, 0, 1, 0, 'GeneralPage', '2019-11-11 20:21:22', '2019-11-11 20:21:22', 'nuevo-pagina-general-para-todas-las-paginas', 'Nuevo Página General para todas las paginas', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 301),
(2135, 328, 2, 1, 1, 1, 'GeneralPage', '2019-11-11 20:21:22', '2019-11-11 20:23:40', 'organigrama', 'Organigrama Institucional', NULL, '<h2 class="inicial col-md-10 offset-md-1">Organigrama Institucional</h2>\n<div class="col-md-10 offset-md-1"><img src="$ThemeDir/img/organigrama/general.png" class="img-fluid" alt="" title=""></div>\n<h2 class="inicial col-md-10 offset-md-1">Desglose del Organigrama General</h2>\n<!--div class="col-md-10 offset-md-1">\n              <img src="img/organigrama/desgloce1.png" class="img-fluid">\n            </div>\n\n            <div class="col-md-10 offset-md-1">\n              <img src="img/organigrama/desgloce2.png" class="img-fluid">\n            </div>\n\n            <div class="col-md-10 offset-md-1">\n              <img src="img/organigrama/desgloce3.png" class="img-fluid">\n            </div>\n\n            <div class="col-md-10 offset-md-1">\n              <img src="img/organigrama/desgloce4.png" class="img-fluid">\n            </div>\n\n            <div class="col-md-10 offset-md-1">\n              <img src="img/organigrama/desgloce5.png" class="img-fluid">\n            </div-->\n<div class="row">\n<div class="col-md-6 mt-3"><img src="$ThemeDir/img/organigrama/1.png" class="img-fluid" alt="" title=""></div>\n<div class="col-md-6 mt-3"><img src="$ThemeDir/img/organigrama/3.png" class="img-fluid" alt="" title=""></div>\n</div>\n<div class="row">\n<div class="col-md-6 mt-3"><img src="$ThemeDir/img/organigrama/5.png" class="img-fluid" alt="" title=""></div>\n<div class="col-md-6 mt-3"><img src="$ThemeDir/img/organigrama/7.png" class="img-fluid" alt="" title=""></div>\n</div>\n<div class="row">\n<div class="col-md-6 mt-3"><img src="$ThemeDir/img/organigrama/9.png" class="img-fluid" alt="" title=""></div>\n<div class="col-md-6 mt-3"><img src="$ThemeDir/img/organigrama/11.png" class="img-fluid" alt="" title=""></div>\n</div>\n<div class="row">\n<div class="col-md-6 mt-3"><img src="$ThemeDir/img/organigrama/13.png" class="img-fluid" alt="" title=""></div>\n<div class="col-md-6 mt-3"><img src="$ThemeDir/img/organigrama/15.png" class="img-fluid" alt="" title=""></div>\n</div>\n<hr>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 301),
(2136, 328, 3, 1, 1, 1, 'GeneralPage', '2019-11-11 20:21:22', '2019-11-11 20:23:50', 'organigrama', 'Organigrama Institucional', NULL, '<h2 class="inicial col-md-10 offset-md-1">Organigrama Institucional</h2>\n<div class="col-md-10 offset-md-1"><img src="$ThemeDir/img/organigrama/general.png" class="img-fluid" alt="" title=""></div>\n<h2 class="inicial col-md-10 offset-md-1">Desglose del Organigrama General</h2>\n<!--div class="col-md-10 offset-md-1">\n              <img src="img/organigrama/desgloce1.png" class="img-fluid">\n            </div>\n\n            <div class="col-md-10 offset-md-1">\n              <img src="img/organigrama/desgloce2.png" class="img-fluid">\n            </div>\n\n            <div class="col-md-10 offset-md-1">\n              <img src="img/organigrama/desgloce3.png" class="img-fluid">\n            </div>\n\n            <div class="col-md-10 offset-md-1">\n              <img src="img/organigrama/desgloce4.png" class="img-fluid">\n            </div>\n\n            <div class="col-md-10 offset-md-1">\n              <img src="img/organigrama/desgloce5.png" class="img-fluid">\n            </div-->\n<div class="row">\n<div class="col-md-6 mt-3"><img src="$ThemeDir/img/organigrama/1.png" class="img-fluid" alt="" title=""></div>\n<div class="col-md-6 mt-3"><img src="$ThemeDir/img/organigrama/3.png" class="img-fluid" alt="" title=""></div>\n</div>\n<div class="row">\n<div class="col-md-6 mt-3"><img src="$ThemeDir/img/organigrama/5.png" class="img-fluid" alt="" title=""></div>\n<div class="col-md-6 mt-3"><img src="$ThemeDir/img/organigrama/7.png" class="img-fluid" alt="" title=""></div>\n</div>\n<div class="row">\n<div class="col-md-6 mt-3"><img src="$ThemeDir/img/organigrama/9.png" class="img-fluid" alt="" title=""></div>\n<div class="col-md-6 mt-3"><img src="$ThemeDir/img/organigrama/11.png" class="img-fluid" alt="" title=""></div>\n</div>\n<div class="row">\n<div class="col-md-6 mt-3"><img src="$ThemeDir/img/organigrama/13.png" class="img-fluid" alt="" title=""></div>\n<div class="col-md-6 mt-3"><img src="$ThemeDir/img/organigrama/15.png" class="img-fluid" alt="" title=""></div>\n</div>\n<hr>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 301),
(2137, 328, 4, 1, 1, 1, 'GeneralPage', '2019-11-11 20:21:22', '2019-11-11 20:27:50', 'organigrama', 'Organigrama Institucional', NULL, '<h2 class="inicial col-md-10 offset-md-1">Organigrama Institucional</h2>\n<div class="col-md-10 offset-md-1"><img src="img/organigrama/general.png" class="img-fluid" alt="" title=""></div>\n<h2 class="inicial col-md-10 offset-md-1">Desglose del Organigrama General</h2>\n<!--div class="col-md-10 offset-md-1">\n              <img src="img/organigrama/desgloce1.png" class="img-fluid">\n            </div>\n\n            <div class="col-md-10 offset-md-1">\n              <img src="img/organigrama/desgloce2.png" class="img-fluid">\n            </div>\n\n            <div class="col-md-10 offset-md-1">\n              <img src="img/organigrama/desgloce3.png" class="img-fluid">\n            </div>\n\n            <div class="col-md-10 offset-md-1">\n              <img src="img/organigrama/desgloce4.png" class="img-fluid">\n            </div>\n\n            <div class="col-md-10 offset-md-1">\n              <img src="img/organigrama/desgloce5.png" class="img-fluid">\n            </div-->\n<div class="row">\n<div class="col-md-6 mt-3"><img src="img/organigrama/1.png" class="img-fluid" alt="" title=""></div>\n<div class="col-md-6 mt-3"><img src="img/organigrama/3.png" class="img-fluid" alt="" title=""></div>\n</div>\n<div class="row">\n<div class="col-md-6 mt-3"><img src="img/organigrama/5.png" class="img-fluid" alt="" title=""></div>\n<div class="col-md-6 mt-3"><img src="img/organigrama/7.png" class="img-fluid" alt="" title=""></div>\n</div>\n<div class="row">\n<div class="col-md-6 mt-3"><img src="img/organigrama/9.png" class="img-fluid" alt="" title=""></div>\n<div class="col-md-6 mt-3"><img src="img/organigrama/11.png" class="img-fluid" alt="" title=""></div>\n</div>\n<div class="row">\n<div class="col-md-6 mt-3"><img src="img/organigrama/13.png" class="img-fluid" alt="" title=""></div>\n<div class="col-md-6 mt-3"><img src="img/organigrama/15.png" class="img-fluid" alt="" title=""></div>\n</div>\n<hr>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 301),
(2138, 328, 5, 1, 1, 1, 'GeneralPage', '2019-11-11 20:21:22', '2019-11-11 20:31:38', 'organigrama', 'Organigrama Institucional', NULL, '<h2 class="inicial col-md-10 offset-md-1">Organigrama Institucional</h2>\n<div class="col-md-10 offset-md-1"><img src="$ThemeDir/&quot;img/organigrama/general.png&quot;" class="img-fluid" alt="" title=""></div>\n<h2 class="inicial col-md-10 offset-md-1">Desglose del Organigrama General</h2>\n<!--div class="col-md-10 offset-md-1">\n              <img src="$ThemeDir/img/organigrama/desgloce1.png" class="img-fluid">\n            </div>\n\n            <div class="col-md-10 offset-md-1">\n              <img src="img/organigrama/desgloce2.png" class="img-fluid">\n            </div>\n\n            <div class="col-md-10 offset-md-1">\n              <img src="img/organigrama/desgloce3.png" class="img-fluid">\n            </div>\n\n            <div class="col-md-10 offset-md-1">\n              <img src="img/organigrama/desgloce4.png" class="img-fluid">\n            </div>\n\n            <div class="col-md-10 offset-md-1">\n              <img src="img/organigrama/desgloce5.png" class="img-fluid">\n            </div-->\n<div class="row">\n<div class="col-md-6 mt-3"><img src="$ThemeDir/img/organigrama/1.png" class="img-fluid" alt="" title=""></div>\n<div class="col-md-6 mt-3"><img src="img/organigrama/3.png" class="img-fluid" alt="" title=""></div>\n</div>\n<div class="row">\n<div class="col-md-6 mt-3"><img src="img/organigrama/5.png" class="img-fluid" alt="" title=""></div>\n<div class="col-md-6 mt-3"><img src="img/organigrama/7.png" class="img-fluid" alt="" title=""></div>\n</div>\n<div class="row">\n<div class="col-md-6 mt-3"><img src="img/organigrama/9.png" class="img-fluid" alt="" title=""></div>\n<div class="col-md-6 mt-3"><img src="img/organigrama/11.png" class="img-fluid" alt="" title=""></div>\n</div>\n<div class="row">\n<div class="col-md-6 mt-3"><img src="img/organigrama/13.png" class="img-fluid" alt="" title=""></div>\n<div class="col-md-6 mt-3"><img src="img/organigrama/15.png" class="img-fluid" alt="" title=""></div>\n</div>\n<hr>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 301),
(2139, 328, 6, 1, 1, 1, 'GeneralPage', '2019-11-11 20:21:22', '2019-11-11 20:33:26', 'organigrama', 'Organigrama Institucional', NULL, '<h2 class="inicial col-md-10 offset-md-1">Organigrama Institucional</h2>\n<div class="col-md-10 offset-md-1"><img src="themes/dinapi/img/organigrama/general.png" class="img-fluid" alt="" title=""></div>\n<h2 class="inicial col-md-10 offset-md-1">Desglose del Organigrama General</h2>\n<!--div class="col-md-10 offset-md-1">\n              <img src="img/organigrama/desgloce1.png" class="img-fluid">\n            </div>\n\n            <div class="col-md-10 offset-md-1">\n              <img src="img/organigrama/desgloce2.png" class="img-fluid">\n            </div>\n\n            <div class="col-md-10 offset-md-1">\n              <img src="img/organigrama/desgloce3.png" class="img-fluid">\n            </div>\n\n            <div class="col-md-10 offset-md-1">\n              <img src="img/organigrama/desgloce4.png" class="img-fluid">\n            </div>\n\n            <div class="col-md-10 offset-md-1">\n              <img src="img/organigrama/desgloce5.png" class="img-fluid">\n            </div-->\n<div class="row">\n<div class="col-md-6 mt-3"><img src="themes/dinapi/img/organigrama/1.png" class="img-fluid" alt="" title=""></div>\n<div class="col-md-6 mt-3"><img src="themes/dinapi/img/organigrama/3.png" class="img-fluid" alt="" title=""></div>\n</div>\n<div class="row">\n<div class="col-md-6 mt-3"><img src="themes/dinapi/img/organigrama/5.png" class="img-fluid" alt="" title=""></div>\n<div class="col-md-6 mt-3"><img src="themes/dinapi/img/organigrama/7.png" class="img-fluid" alt="" title=""></div>\n</div>\n<div class="row">\n<div class="col-md-6 mt-3"><img src="themes/dinapi/img/organigrama/9.png" class="img-fluid" alt="" title=""></div>\n<div class="col-md-6 mt-3"><img src="themes/dinapi/img/organigrama/11.png" class="img-fluid" alt="" title=""></div>\n</div>\n<div class="row">\n<div class="col-md-6 mt-3"><img src="themes/dinapi/img/organigrama/13.png" class="img-fluid" alt="" title=""></div>\n<div class="col-md-6 mt-3"><img src="themes/dinapi/img/organigrama/15.png" class="img-fluid" alt="" title=""></div>\n</div>\n<hr>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 301),
(2140, 329, 1, 0, 1, 0, 'GeneralPage', '2019-11-11 20:34:34', '2019-11-11 20:34:34', 'nuevo-pagina-general-para-todas-las-paginas', 'Nuevo Página General para todas las paginas', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 301),
(2141, 329, 2, 1, 1, 1, 'GeneralPage', '2019-11-11 20:34:34', '2019-11-11 20:36:03', 'autoridades', 'AUTORIDADES DE LA DINAPI', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 301),
(2142, 329, 3, 1, 1, 1, 'GeneralPage', '2019-11-11 20:34:34', '2019-11-11 20:36:12', 'autoridades', 'AUTORIDADES DE LA DINAPI', NULL, NULL, NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 301),
(2143, 329, 4, 1, 1, 1, 'GeneralPage', '2019-11-11 20:34:34', '2019-11-11 20:37:57', 'autoridades', 'AUTORIDADES DE LA DINAPI', NULL, '<h2 class="inicial">AUTORIDADES DE LA DINAPI</h2>\n<div class="row mb-5">\n<div class="card col-md-6 offset-md-3 mt-5 col-12" style="width: 18rem;"><img class="card-img-top" src="themes/dinapi/img/joel_talavera.png" alt="Joel Talavera" title=""><div class="card-body"><center>\n<h2>Joel Talavera</h2>\n<p>Director Nacional de Propiedad Intelectual</p>\n</center></div>\n</div>\n</div>\n<p></p>\n<div class="row">\n<div class="col-md-4"><img class="card-img-top" src="themes/dinapi/img/fernando_garcete.png" alt="Fernando Garcete" title=""><div class="card-body mb-5"><center>\n<h2>Fernando Garcete</h2>\n<p>Director General de Observancia</p>\n</center></div>\n</div>\n<div class="col-md-4"><img class="card-img-top" src="themes/dinapi/img/berta_davalos.png" alt="Berta Dávalos" title=""><div class="card-body mb-5"><center>\n<h2>Berta Dávalos</h2>\n<p>Directora General de Propiedad Industrial</p>\n</center></div>\n</div>\n<div class="col-md-4"><img class="card-img-top" src="themes/dinapi/img/oscar_elizeche.png" alt="Oscar Elizeche Landó" title=""><div class="card-body mb-5"><center>\n<h2>Oscar Elizeche Landó</h2>\n<p>Director General de Derecho de Autor y Derechos Conexos</p>\n</center></div>\n</div>\n</div>\n<hr>', NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 301),
(2144, 330, 1, 0, 1, 0, 'TarjetaSimplePage', '2019-11-12 15:04:25', '2019-11-12 15:04:25', 'nuevo-pagina-de-tarjeta-simple', 'Nuevo Página de tarjeta simple', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 301),
(2145, 330, 2, 1, 1, 1, 'TarjetaSimplePage', '2019-11-12 15:04:25', '2019-11-12 15:09:34', 'nuevo-pagina-de-tarjeta-simple', 'Acceso a la Información Pública', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 301),
(2146, 330, 3, 1, 1, 1, 'TarjetaSimplePage', '2019-11-12 15:04:25', '2019-11-12 15:09:47', 'acceso-a-la-informacion-publica', 'Acceso a la Información Pública', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 301),
(2147, 331, 1, 0, 1, 0, 'ConcursosPage', '2019-11-12 15:35:31', '2019-11-12 15:35:31', 'nuevo-pagina-de-concurso', 'Nuevo Página de concurso', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 301),
(2148, 331, 2, 1, 1, 1, 'ConcursosPage', '2019-11-12 15:35:31', '2019-11-12 15:36:17', 'concursos', 'CONCURSOS', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 301),
(2149, 332, 1, 0, 1, 0, 'ConcursoItemPage', '2019-11-12 15:36:47', '2019-11-12 15:36:47', 'nuevo-pagina-de-concurso-individual', 'Nuevo Página de concurso individual', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 331),
(2150, 332, 2, 1, 1, 1, 'ConcursoItemPage', '2019-11-12 15:36:47', '2019-11-12 15:38:50', 'profesional-de-propiedad-industrial', 'Profesional de propiedad industrial', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 331),
(2151, 332, 3, 1, 1, 1, 'ConcursoItemPage', '2019-11-12 15:36:47', '2019-11-12 15:40:48', 'profesional-abogado', 'Profesional abogado', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 331),
(2152, 333, 1, 1, 1, 1, 'ConcursoItemPage', '2019-11-12 15:36:47', '2019-11-12 15:41:19', 'profesional-de-marcas-senior', 'Profesional de marcas senior', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 331),
(2153, 335, 1, 1, 1, 1, 'PeriodoBoletinMarcaPage', '2019-11-11 04:26:12', '2019-11-12 15:43:30', 'noviembre', 'Noviembre', NULL, NULL, NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 315),
(2154, 336, 1, 0, 1, 0, 'PeriodoBoletinMarcaPage', '2019-11-11 04:26:12', '2019-11-12 15:43:34', 'octubre-3', 'Octubre', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 315),
(2155, 337, 1, 0, 1, 0, 'PeriodoBoletinMarcaPage', '2019-11-11 04:26:12', '2019-11-12 15:43:44', 'octubre-4', 'Octubre', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 315),
(2156, 337, 2, 1, 1, 1, 'PeriodoBoletinMarcaPage', '2019-11-11 04:26:12', '2019-11-12 15:44:04', 'julio', 'Julio', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 315),
(2157, 336, 2, 1, 1, 1, 'PeriodoBoletinMarcaPage', '2019-11-11 04:26:12', '2019-11-12 15:44:14', 'agosto', 'Agosto', NULL, NULL, NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 315),
(2158, 330, 4, 1, 1, 1, 'TarjetaSimplePage', '2019-11-12 15:04:25', '2019-11-12 15:55:25', 'acceso-a-la-informacion-publica', 'Acceso a la Información Pública', NULL, NULL, NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 301),
(2159, 331, 3, 1, 1, 1, 'ConcursosPage', '2019-11-12 15:35:31', '2019-11-12 15:55:32', 'concursos', 'CONCURSOS', NULL, NULL, NULL, NULL, 0, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 301),
(2160, 332, 4, 1, 1, 1, 'ConcursoItemPage', '2019-11-12 15:36:47', '2019-11-12 15:59:27', 'profesional-abogado', 'Profesional abogado', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 331),
(2161, 334, 1, 1, 1, 1, 'ConcursoItemPage', '2019-11-12 15:36:47', '2019-11-12 15:59:45', 'profesional-de-propiedad-industrial-3', 'Profesional de propiedad industrial', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 331),
(2162, 338, 1, 0, 1, 0, '', '2019-11-12 17:25:28', '2019-11-12 17:25:28', 'nuevo-pagina-de-convenios', 'Nuevo Página de convenios', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 301),
(2163, 338, 2, 1, 1, 1, '', '2019-11-12 17:25:28', '2019-11-12 17:26:13', 'convenios', 'Convenios', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 301),
(2164, 338, 3, 1, 1, 1, '', '2019-11-12 17:25:28', '2019-11-12 17:28:08', 'convenios', 'Convenios', NULL, NULL, NULL, NULL, 0, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 301),
(2165, 339, 1, 0, 1, 0, 'ArchivoDesplegablePage', '2019-11-12 18:11:02', '2019-11-12 18:11:02', 'nuevo-pagina-de-archivos-desplegables', 'Nuevo Página de archivos desplegables', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 301),
(2166, 339, 2, 1, 1, 1, 'ArchivoDesplegablePage', '2019-11-12 18:11:02', '2019-11-12 18:11:29', 'nuevo-pagina-de-archivos-desplegables', 'Nuevo Página de archivos desplegables', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 301),
(2167, 341, 1, 0, 1, 0, 'ArchivoDesplegablePage', '2019-11-12 18:12:04', '2019-11-12 18:12:04', 'nuevo-pagina-de-archivos-desplegables', 'Nuevo Página de archivos desplegables', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 301),
(2168, 341, 2, 1, 1, 1, 'ArchivoDesplegablePage', '2019-11-12 18:12:04', '2019-11-12 18:12:41', 'marco-normativo', 'MARCO NORMATIVO', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 301),
(2169, 340, 1, 0, 1, 0, '', '2019-11-12 17:25:28', '2019-11-12 18:12:47', 'convenios-2', 'Convenios', NULL, NULL, NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 341),
(2170, 340, 2, 1, 1, 1, '', '2019-11-12 17:25:28', '2019-11-12 18:12:47', 'convenios-2', 'Convenios', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 341),
(2171, 341, 3, 1, 1, 1, 'ArchivoDesplegablePage', '2019-11-12 18:12:04', '2019-11-12 18:13:00', 'marco-normativo', 'MARCO NORMATIVO', NULL, NULL, NULL, NULL, 0, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 301),
(2172, 341, 4, 1, 1, 1, 'ArchivoDesplegablePage', '2019-11-12 18:12:04', '2019-11-12 18:17:15', 'marco-normativo', 'MARCO NORMATIVO', NULL, NULL, NULL, NULL, 0, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 301),
(2173, 342, 1, 1, 1, 1, '', '2019-11-12 17:25:28', '2019-11-13 01:16:26', 'leyes', 'LEYES', NULL, NULL, NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 341),
(2174, 343, 1, 1, 1, 1, '', '2019-11-12 17:25:28', '2019-11-13 01:17:14', 'constitucion-ley-basica', 'Constitución / Ley básica', NULL, NULL, NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 341),
(2175, 343, 2, 0, 1, 0, '', '2019-11-12 17:25:28', '2019-11-13 01:17:18', 'constitucion-ley-basica', 'Constitución / Ley básica', NULL, NULL, NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 342),
(2176, 343, 3, 1, 1, 1, '', '2019-11-12 17:25:28', '2019-11-13 01:17:18', 'constitucion-ley-basica', 'Constitución / Ley básica', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 342),
(2177, 344, 1, 1, 1, 1, '', '2019-11-12 17:25:28', '2019-11-13 01:17:57', 'principales-leyes-de-pi-adoptadas-por-el-poder-legislativo', 'Principales leyes de PI: adoptadas por el Poder Legislativo', NULL, NULL, NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 342),
(2178, 338, 4, 1, 1, 1, 'ArchivoPage', '2019-11-12 17:25:28', '2019-11-13 01:42:26', 'convenios', 'Convenios', NULL, NULL, NULL, NULL, 0, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 301),
(2179, 338, 5, 1, 1, 1, 'ArchivoPage', '2019-11-12 17:25:28', '2019-11-13 01:44:21', 'convenios', 'Convenios', NULL, NULL, NULL, NULL, 0, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 301),
(2180, 340, 3, 1, 1, 1, 'ArchivoPage', '2019-11-12 17:25:28', '2019-11-13 01:51:18', 'convenios-2', 'Convenios', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 341),
(2181, 342, 2, 1, 1, 1, 'ArchivoPage', '2019-11-12 17:25:28', '2019-11-13 01:52:24', 'leyes', 'LEYES', NULL, NULL, NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 341),
(2182, 343, 4, 1, 1, 1, 'ArchivoPage', '2019-11-12 17:25:28', '2019-11-13 01:53:18', 'constitucion-ley-basica', 'Constitución / Ley básica', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 342),
(2183, 344, 2, 1, 1, 1, 'ArchivoPage', '2019-11-12 17:25:28', '2019-11-13 01:53:42', 'principales-leyes-de-pi-adoptadas-por-el-poder-legislativo', 'Principales leyes de PI: adoptadas por el Poder Legislativo', NULL, NULL, NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 342),
(2184, 345, 1, 0, 1, 0, 'AcordeonPage', '2019-11-13 15:29:02', '2019-11-13 15:29:02', 'nuevo-pagina-con-acordeon', 'Nuevo Página con acordeón', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 302),
(2185, 345, 2, 1, 1, 1, 'AcordeonPage', '2019-11-13 15:29:02', '2019-11-13 15:45:31', 'registro', 'REGISTRO', NULL, '<h2 class="inicial">¿ES NECESARIO REGISTRAR LA OBRA PARA QUE ESTÉ PROTEGIDA?</h2>\n<p>La obra está protegida desde el momento de su creación conforme lo establece el Convenio de Berna para la Protección de las Obras Literarias y Artísticas, del cual Paraguay es parte.</p>\n<p>Sin embargo, su registro ante la Dirección General de Derecho de Autor y Derechos Conexos tiene a su cargo el Registro Nacional de Derechos de Autor, con el propósito de contar con un principio de prueba cierta de los hechos y actos que consten de él, además de servir de base de datos que aporta a fines estadísticos y a la promoción de la cultura.</p>\n<p>El registro también puede servir como prueba ante un Tribunal de Justicia en el caso de controversias relacionadas con el derecho de autor.</p>\n<p>El símbolo © a menudo se usa para indicar que una obra está protegida por el derecho de autor. A continuación del símbolo se incluye el nombre del propietario de los derechos de autor y el año en el que la obra fue creada. Por ejemplo: “© OMPI, 2007” indicaría una publicación de la OMPI producida en el año 2007. Como el símbolo © no es más que una indicación, no es necesario insertarlo en las obras para que estas estén protegidas. Aunque una obra no lleve el símbolo ©, puede estar protegida por el derecho de autor.</p>\n<p>Fuente: www.ompi.int</p>\n<h2>REQUISITOS PARA REGISTROS EN LAS DISTINTAS CATEGORÍAS DE DERECHO DE AUTOR</h2>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 302),
(2186, 345, 3, 1, 1, 1, 'AcordeonPage', '2019-11-13 15:29:02', '2019-11-13 15:46:12', 'registro', 'REGISTRO', NULL, '<h2 class="inicial">¿ES NECESARIO REGISTRAR LA OBRA PARA QUE ESTÉ PROTEGIDA?</h2>\n<p>La obra está protegida desde el momento de su creación conforme lo establece el Convenio de Berna para la Protección de las Obras Literarias y Artísticas, del cual Paraguay es parte.</p>\n<p>Sin embargo, su registro ante la Dirección General de Derecho de Autor y Derechos Conexos tiene a su cargo el Registro Nacional de Derechos de Autor, con el propósito de contar con un principio de prueba cierta de los hechos y actos que consten de él, además de servir de base de datos que aporta a fines estadísticos y a la promoción de la cultura.</p>\n<p>El registro también puede servir como prueba ante un Tribunal de Justicia en el caso de controversias relacionadas con el derecho de autor.</p>\n<p>El símbolo © a menudo se usa para indicar que una obra está protegida por el derecho de autor. A continuación del símbolo se incluye el nombre del propietario de los derechos de autor y el año en el que la obra fue creada. Por ejemplo: “© OMPI, 2007” indicaría una publicación de la OMPI producida en el año 2007. Como el símbolo © no es más que una indicación, no es necesario insertarlo en las obras para que estas estén protegidas. Aunque una obra no lleve el símbolo ©, puede estar protegida por el derecho de autor.</p>\n<p>Fuente: www.ompi.int</p>\n<h2>REQUISITOS PARA REGISTROS EN LAS DISTINTAS CATEGORÍAS DE DERECHO DE AUTOR</h2>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 302),
(2187, 345, 4, 1, 1, 1, 'AcordeonPage', '2019-11-13 15:29:02', '2019-11-13 15:46:21', 'registro', 'REGISTRO', NULL, '<h2 class="inicial">¿ES NECESARIO REGISTRAR LA OBRA PARA QUE ESTÉ PROTEGIDA?</h2>\n<p>La obra está protegida desde el momento de su creación conforme lo establece el Convenio de Berna para la Protección de las Obras Literarias y Artísticas, del cual Paraguay es parte.</p>\n<p>Sin embargo, su registro ante la Dirección General de Derecho de Autor y Derechos Conexos tiene a su cargo el Registro Nacional de Derechos de Autor, con el propósito de contar con un principio de prueba cierta de los hechos y actos que consten de él, además de servir de base de datos que aporta a fines estadísticos y a la promoción de la cultura.</p>\n<p>El registro también puede servir como prueba ante un Tribunal de Justicia en el caso de controversias relacionadas con el derecho de autor.</p>\n<p>El símbolo © a menudo se usa para indicar que una obra está protegida por el derecho de autor. A continuación del símbolo se incluye el nombre del propietario de los derechos de autor y el año en el que la obra fue creada. Por ejemplo: “© OMPI, 2007” indicaría una publicación de la OMPI producida en el año 2007. Como el símbolo © no es más que una indicación, no es necesario insertarlo en las obras para que estas estén protegidas. Aunque una obra no lleve el símbolo ©, puede estar protegida por el derecho de autor.</p>\n<p>Fuente: www.ompi.int</p>\n<h2>REQUISITOS PARA REGISTROS EN LAS DISTINTAS CATEGORÍAS DE DERECHO DE AUTOR</h2>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 302),
(2188, 345, 5, 1, 1, 1, 'AcordeonPage', '2019-11-13 15:29:02', '2019-11-13 15:52:56', 'registro', 'REGISTRO', NULL, '<h2 class="inicial">¿ES NECESARIO REGISTRAR LA OBRA PARA QUE ESTÉ PROTEGIDA?</h2>\n<p>La obra está protegida desde el momento de su creación conforme lo establece el Convenio de Berna para la Protección de las Obras Literarias y Artísticas, del cual Paraguay es parte.</p>\n<p>Sin embargo, su registro ante la Dirección General de Derecho de Autor y Derechos Conexos tiene a su cargo el Registro Nacional de Derechos de Autor, con el propósito de contar con un principio de prueba cierta de los hechos y actos que consten de él, además de servir de base de datos que aporta a fines estadísticos y a la promoción de la cultura.</p>\n<p>El registro también puede servir como prueba ante un Tribunal de Justicia en el caso de controversias relacionadas con el derecho de autor.</p>\n<p>El símbolo © a menudo se usa para indicar que una obra está protegida por el derecho de autor. A continuación del símbolo se incluye el nombre del propietario de los derechos de autor y el año en el que la obra fue creada. Por ejemplo: “© OMPI, 2007” indicaría una publicación de la OMPI producida en el año 2007. Como el símbolo © no es más que una indicación, no es necesario insertarlo en las obras para que estas estén protegidas. Aunque una obra no lleve el símbolo ©, puede estar protegida por el derecho de autor.</p>\n<p>Fuente: www.ompi.int</p>\n<h2>REQUISITOS PARA REGISTROS EN LAS DISTINTAS CATEGORÍAS DE DERECHO DE AUTOR</h2>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 302),
(2189, 346, 1, 0, 1, 0, 'NoticiaPage', '2019-11-13 17:44:02', '2019-11-13 17:44:02', 'nuevo-pagina-de-noticias', 'Nuevo Página de noticias', NULL, NULL, NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2190, 346, 2, 1, 1, 1, 'NoticiaPage', '2019-11-13 17:44:02', '2019-11-13 17:44:21', 'centro-de-noticias', 'CENTRO DE NOTICIAS', NULL, NULL, NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2191, 347, 1, 0, 1, 0, 'GeneralPage', '2019-11-13 20:42:55', '2019-11-13 20:42:55', 'nuevo-pagina-general-para-todas-las-paginas', 'Nuevo Página General para todas las paginas', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 302),
(2192, 347, 2, 1, 1, 1, 'GeneralPage', '2019-11-13 20:42:55', '2019-11-13 20:44:38', 'folklore', 'PROMOCIÓN DEL FOLKLORE', NULL, '<h2 class="inicial">Industrias Creativas</h2>\n<p>La DINAPI a través de la Dirección De Promoción De Industrias Creativas y Folklore, busca fomentar las Industrias Creativas y Folklore Nacional; desarrollando, promocionando, incentivando y protegiendo estas Industrias como fuentes generadoras de empleos, ingresos y desarrollo económico; Asimismo fortaleciendo la identidad cultural nacional a través del capital intelectual y el ingenio; para el combate inteligente a la pobreza a través de la Propiedad Intelectual.</p>\n<p>Siendo las Industrias Creativas uno de los principales ejes de planificación estratégica que define las actividades dentro de la DINAPI.</p>\n<!--h4>Industrias Creativas mas influyentes en el Paraguay</h4>\n\n            <ol>\n              <li>\n                Video Juegos (Software)\n              </li>\n              <li>\n                Música\n              </li>\n              <li> \n                Artesanía\n              </li>\n              <li>\n                Audiovisual\n              </li>\n              <li>\n                Radio\n              </li>\n              <li>\n                Televisión\n              </li>\n              <li>\n                Editorial\n              </li>\n              <li>\n                Turismo\n              </li>\n              <li>\n                Moda y Diseño\n              </li>\n            </ol--><hr><h2 class="inicial">Promoción del Folklore</h2>\n<p>La creación de espacios a los artífices del desarrollo cultural del país dentro de la Dirección Nacional de Propiedad Intelectual, otorgándoles un lugar de exposición para la valoración de sus obras, permitiendo que los mismos puedan percibir una remuneración por parte de quienes las adquieren y lograr así vivir de sus creaciones, además de seguir contribuyendo a nuestra cultura.</p>\n<p>En ese sentido, Dirección General de Derecho de Autor y Derechos Conexos realiza e impulsa la creación de Ferias de Artesanos, ayudando a quienes se acercan de manera conjunta o particular.</p>\n<hr>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 302),
(2193, 347, 3, 1, 1, 1, 'GeneralPage', '2019-11-13 20:42:55', '2019-11-13 20:44:51', 'folklore', 'PROMOCIÓN DEL FOLKLORE', NULL, '<h2 class="inicial">Industrias Creativas</h2>\n<p>La DINAPI a través de la Dirección De Promoción De Industrias Creativas y Folklore, busca fomentar las Industrias Creativas y Folklore Nacional; desarrollando, promocionando, incentivando y protegiendo estas Industrias como fuentes generadoras de empleos, ingresos y desarrollo económico; Asimismo fortaleciendo la identidad cultural nacional a través del capital intelectual y el ingenio; para el combate inteligente a la pobreza a través de la Propiedad Intelectual.</p>\n<p>Siendo las Industrias Creativas uno de los principales ejes de planificación estratégica que define las actividades dentro de la DINAPI.</p>\n<!--h4>Industrias Creativas mas influyentes en el Paraguay</h4>\n\n            <ol>\n              <li>\n                Video Juegos (Software)\n              </li>\n              <li>\n                Música\n              </li>\n              <li> \n                Artesanía\n              </li>\n              <li>\n                Audiovisual\n              </li>\n              <li>\n                Radio\n              </li>\n              <li>\n                Televisión\n              </li>\n              <li>\n                Editorial\n              </li>\n              <li>\n                Turismo\n              </li>\n              <li>\n                Moda y Diseño\n              </li>\n            </ol--><hr><h2 class="inicial">Promoción del Folklore</h2>\n<p>La creación de espacios a los artífices del desarrollo cultural del país dentro de la Dirección Nacional de Propiedad Intelectual, otorgándoles un lugar de exposición para la valoración de sus obras, permitiendo que los mismos puedan percibir una remuneración por parte de quienes las adquieren y lograr así vivir de sus creaciones, además de seguir contribuyendo a nuestra cultura.</p>\n<p>En ese sentido, Dirección General de Derecho de Autor y Derechos Conexos realiza e impulsa la creación de Ferias de Artesanos, ayudando a quienes se acercan de manera conjunta o particular.</p>\n<hr>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 302),
(2194, 348, 1, 0, 1, 0, 'GeneralPage', '2019-11-13 20:45:13', '2019-11-13 20:45:13', 'nuevo-pagina-general-para-todas-las-paginas', 'Nuevo Página General para todas las paginas', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 302),
(2195, 348, 2, 1, 1, 1, 'GeneralPage', '2019-11-13 20:45:13', '2019-11-13 20:46:01', 'sociedades', 'SOCIEDADES DE GESTIÓN COLECTIVA', NULL, '<h2 class="inicial">Sociedades de Gestión Colectiva</h2>\n<h4>¿Cómo se gestionan el derecho de autor y los derechos conexos?</h4>\n<p>Para utilizar una obra protegida por derecho de autor y/o derechos conexos, es conveniente solicitar a los titulares de los derechos la autorización correspondiente.</p>\n<p>Estas autorizaciones son muy importantes, ya que los autores e intérpretes reciben el pago de sus derechos a través de licencias o cesiones del uso de sus obras; esta gestión de manera individual por parte del artista resulta en la práctica dificultosa a la par que deben seguir creando e interpretando, por lo cual, esta gestión le es confiada usualmente a las Entidades de Gestión Colectiva.</p>\n<p>Estas organizaciones actúan como un enlace entre los titulares de los derechos y los que quieren utilizar sus obras. Conceden autorizaciones, recaudan los pagos de derechos, y detectan, prohíben y buscan compensación por usos no autorizados. Gracias a estas organizaciones, los autores e intérpretes reciben los pagos que merecen cuando sus obras e interpretaciones son utilizadas y los usuarios pueden conseguir permiso para el uso de tales obras e interpretaciones más fácilmente.</p>\n<p>En nuestro país las sociedades de Gestión Colectiva, autorizadas para funcionar y que gestionan actualmente derechos son «Autores Paraguayos Asociados» APA, «Entidad Paraguaya de Artistas Intérpretes o Ejecutantes» AIE Paraguay y la «Sociedad de Gestión de Productores Fonográficos del Paraguay» SGP.</p>\n<hr>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 302),
(2196, 348, 3, 1, 1, 1, 'GeneralPage', '2019-11-13 20:45:13', '2019-11-13 20:46:06', 'sociedades', 'SOCIEDADES DE GESTIÓN COLECTIVA', NULL, '<h2 class="inicial">Sociedades de Gestión Colectiva</h2>\n<h4>¿Cómo se gestionan el derecho de autor y los derechos conexos?</h4>\n<p>Para utilizar una obra protegida por derecho de autor y/o derechos conexos, es conveniente solicitar a los titulares de los derechos la autorización correspondiente.</p>\n<p>Estas autorizaciones son muy importantes, ya que los autores e intérpretes reciben el pago de sus derechos a través de licencias o cesiones del uso de sus obras; esta gestión de manera individual por parte del artista resulta en la práctica dificultosa a la par que deben seguir creando e interpretando, por lo cual, esta gestión le es confiada usualmente a las Entidades de Gestión Colectiva.</p>\n<p>Estas organizaciones actúan como un enlace entre los titulares de los derechos y los que quieren utilizar sus obras. Conceden autorizaciones, recaudan los pagos de derechos, y detectan, prohíben y buscan compensación por usos no autorizados. Gracias a estas organizaciones, los autores e intérpretes reciben los pagos que merecen cuando sus obras e interpretaciones son utilizadas y los usuarios pueden conseguir permiso para el uso de tales obras e interpretaciones más fácilmente.</p>\n<p>En nuestro país las sociedades de Gestión Colectiva, autorizadas para funcionar y que gestionan actualmente derechos son «Autores Paraguayos Asociados» APA, «Entidad Paraguaya de Artistas Intérpretes o Ejecutantes» AIE Paraguay y la «Sociedad de Gestión de Productores Fonográficos del Paraguay» SGP.</p>\n<hr>', NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 302),
(2197, 346, 3, 1, 1, 1, 'NoticiaPage', '2019-11-13 17:44:02', '2019-11-13 20:51:53', 'centro-de-noticias', 'CENTRO DE NOTICIAS', NULL, NULL, NULL, NULL, 0, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2198, 349, 1, 0, 1, 0, 'GeneralPage', '2019-11-13 20:59:07', '2019-11-13 20:59:07', 'nuevo-pagina-general-para-todas-las-paginas', 'Nuevo Página General para todas las paginas', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 310),
(2199, 349, 2, 1, 1, 1, 'GeneralPage', '2019-11-13 20:59:07', '2019-11-13 21:00:27', 'informacion-relevante', 'INFORMACIÓN RELEVANTE', NULL, '<h2 class="inicial">DIRECCION GENERAL DE OBSERVANCIA</h2>\n<p>Es una de las Direcciones Generales de la DINAPI, cuya misión principal es la de velar por el cumplimiento efectivo de las normas especiales de Propiedad Intelectual, tendientes a asegurar el ejercicio de los derechos por sus titulares.</p>\n<p>Dicha tarea se lleva a cabo mediante la implementación de programas de promoción, prevención y sensibilización acerca de la importancia del respeto a la Propiedad Intelectual, así como de la investigación, como órgano coadyuvante de los organismos estatales encargados de la persecución de los hechos punibles perpetrados contra dichos derechos y sus titulares.</p>\n<h4>PROMOCIÓN DE LA PROPIEDAD INTELECTUAL</h4>\n<p>La DGO, a través de sus programas de promoción, busca poner al alcance de distintos sectores de la sociedad los conceptos o elementos integrantes de las figuras de P.I., facilitar la compresión sobre los procedimientos de registros, además de asumir la tarea de transmitir la problemática que conlleva la violación a la PI desde sus distintos aspectos, sociales, económicos y culturales, a fin de hacerlos comprensivos desde un enfoque vivencial y significativo.</p>\n<h4>PREVENCIÓN</h4>\n<p>Otro de los objetivos de la DGO es la de prevenir la comisión de hechos punibles y de faltas que atenten contra el libre ejercicio de los derechos de la PI, llevando a cabo actividades investigativas tendientes a impedir la reproducción comercial de obras protegidas por derecho de autor sin autorización del titular o piratería, así también evitar la comercialización de productos falsificados relacionados a marcas u otros signos distintivos que induzcan al error o confusión al público consumidor, así como otras acciones contempladas en leyes especiales que rigen la materia.</p>\n<p>Con ello la DGO busca, no solo proporcionar herramientas efectivas para la protección de los derechos de sus titulares, sino además, busca proteger al consumidor y al ciudadano en general de su exposición a productos espureos con las consecuencias que ello acarrea.</p>\n<h4>INVESTIGACIÓN</h4>\n<p>Desde su misión investigativa, lleva a cabo de oficio y a instancia de parte, la recolección de información y datos de manera a lograr la intervención de espacios públicos o privados de acceso público, así mismo aplica en base a convenios interinstitucionales, medidas en frontera para el control de mercaderías que ingresan al País, cooperando de este modo con los órganos estatales encargados de la represión de Hechos Punibles contra la PI.</p>\n<hr>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 310),
(2200, 349, 3, 1, 1, 1, 'GeneralPage', '2019-11-13 20:59:07', '2019-11-13 21:00:35', 'informacion-relevante', 'INFORMACIÓN RELEVANTE', NULL, '<h2 class="inicial">DIRECCION GENERAL DE OBSERVANCIA</h2>\n<p>Es una de las Direcciones Generales de la DINAPI, cuya misión principal es la de velar por el cumplimiento efectivo de las normas especiales de Propiedad Intelectual, tendientes a asegurar el ejercicio de los derechos por sus titulares.</p>\n<p>Dicha tarea se lleva a cabo mediante la implementación de programas de promoción, prevención y sensibilización acerca de la importancia del respeto a la Propiedad Intelectual, así como de la investigación, como órgano coadyuvante de los organismos estatales encargados de la persecución de los hechos punibles perpetrados contra dichos derechos y sus titulares.</p>\n<h4>PROMOCIÓN DE LA PROPIEDAD INTELECTUAL</h4>\n<p>La DGO, a través de sus programas de promoción, busca poner al alcance de distintos sectores de la sociedad los conceptos o elementos integrantes de las figuras de P.I., facilitar la compresión sobre los procedimientos de registros, además de asumir la tarea de transmitir la problemática que conlleva la violación a la PI desde sus distintos aspectos, sociales, económicos y culturales, a fin de hacerlos comprensivos desde un enfoque vivencial y significativo.</p>\n<h4>PREVENCIÓN</h4>\n<p>Otro de los objetivos de la DGO es la de prevenir la comisión de hechos punibles y de faltas que atenten contra el libre ejercicio de los derechos de la PI, llevando a cabo actividades investigativas tendientes a impedir la reproducción comercial de obras protegidas por derecho de autor sin autorización del titular o piratería, así también evitar la comercialización de productos falsificados relacionados a marcas u otros signos distintivos que induzcan al error o confusión al público consumidor, así como otras acciones contempladas en leyes especiales que rigen la materia.</p>\n<p>Con ello la DGO busca, no solo proporcionar herramientas efectivas para la protección de los derechos de sus titulares, sino además, busca proteger al consumidor y al ciudadano en general de su exposición a productos espureos con las consecuencias que ello acarrea.</p>\n<h4>INVESTIGACIÓN</h4>\n<p>Desde su misión investigativa, lleva a cabo de oficio y a instancia de parte, la recolección de información y datos de manera a lograr la intervención de espacios públicos o privados de acceso público, así mismo aplica en base a convenios interinstitucionales, medidas en frontera para el control de mercaderías que ingresan al País, cooperando de este modo con los órganos estatales encargados de la represión de Hechos Punibles contra la PI.</p>\n<hr>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 310);
INSERT INTO `SiteTree_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `ParentID`) VALUES
(2201, 350, 1, 0, 1, 0, 'GeneralPage', '2019-11-13 20:59:07', '2019-11-13 21:24:31', 'informacion-relevante-2', 'INFORMACIÓN RELEVANTE', NULL, '<h2 class="inicial">DIRECCION GENERAL DE OBSERVANCIA</h2>\n<p>Es una de las Direcciones Generales de la DINAPI, cuya misión principal es la de velar por el cumplimiento efectivo de las normas especiales de Propiedad Intelectual, tendientes a asegurar el ejercicio de los derechos por sus titulares.</p>\n<p>Dicha tarea se lleva a cabo mediante la implementación de programas de promoción, prevención y sensibilización acerca de la importancia del respeto a la Propiedad Intelectual, así como de la investigación, como órgano coadyuvante de los organismos estatales encargados de la persecución de los hechos punibles perpetrados contra dichos derechos y sus titulares.</p>\n<h4>PROMOCIÓN DE LA PROPIEDAD INTELECTUAL</h4>\n<p>La DGO, a través de sus programas de promoción, busca poner al alcance de distintos sectores de la sociedad los conceptos o elementos integrantes de las figuras de P.I., facilitar la compresión sobre los procedimientos de registros, además de asumir la tarea de transmitir la problemática que conlleva la violación a la PI desde sus distintos aspectos, sociales, económicos y culturales, a fin de hacerlos comprensivos desde un enfoque vivencial y significativo.</p>\n<h4>PREVENCIÓN</h4>\n<p>Otro de los objetivos de la DGO es la de prevenir la comisión de hechos punibles y de faltas que atenten contra el libre ejercicio de los derechos de la PI, llevando a cabo actividades investigativas tendientes a impedir la reproducción comercial de obras protegidas por derecho de autor sin autorización del titular o piratería, así también evitar la comercialización de productos falsificados relacionados a marcas u otros signos distintivos que induzcan al error o confusión al público consumidor, así como otras acciones contempladas en leyes especiales que rigen la materia.</p>\n<p>Con ello la DGO busca, no solo proporcionar herramientas efectivas para la protección de los derechos de sus titulares, sino además, busca proteger al consumidor y al ciudadano en general de su exposición a productos espureos con las consecuencias que ello acarrea.</p>\n<h4>INVESTIGACIÓN</h4>\n<p>Desde su misión investigativa, lleva a cabo de oficio y a instancia de parte, la recolección de información y datos de manera a lograr la intervención de espacios públicos o privados de acceso público, así mismo aplica en base a convenios interinstitucionales, medidas en frontera para el control de mercaderías que ingresan al País, cooperando de este modo con los órganos estatales encargados de la represión de Hechos Punibles contra la PI.</p>\n<hr>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 349),
(2202, 350, 2, 0, 1, 0, 'GeneralPage', '2019-11-13 20:59:07', '2019-11-13 21:24:31', 'informacion-relevante-2', 'INFORMACIÓN RELEVANTE', NULL, '<h2 class="inicial">DIRECCION GENERAL DE OBSERVANCIA</h2>\n<p>Es una de las Direcciones Generales de la DINAPI, cuya misión principal es la de velar por el cumplimiento efectivo de las normas especiales de Propiedad Intelectual, tendientes a asegurar el ejercicio de los derechos por sus titulares.</p>\n<p>Dicha tarea se lleva a cabo mediante la implementación de programas de promoción, prevención y sensibilización acerca de la importancia del respeto a la Propiedad Intelectual, así como de la investigación, como órgano coadyuvante de los organismos estatales encargados de la persecución de los hechos punibles perpetrados contra dichos derechos y sus titulares.</p>\n<h4>PROMOCIÓN DE LA PROPIEDAD INTELECTUAL</h4>\n<p>La DGO, a través de sus programas de promoción, busca poner al alcance de distintos sectores de la sociedad los conceptos o elementos integrantes de las figuras de P.I., facilitar la compresión sobre los procedimientos de registros, además de asumir la tarea de transmitir la problemática que conlleva la violación a la PI desde sus distintos aspectos, sociales, económicos y culturales, a fin de hacerlos comprensivos desde un enfoque vivencial y significativo.</p>\n<h4>PREVENCIÓN</h4>\n<p>Otro de los objetivos de la DGO es la de prevenir la comisión de hechos punibles y de faltas que atenten contra el libre ejercicio de los derechos de la PI, llevando a cabo actividades investigativas tendientes a impedir la reproducción comercial de obras protegidas por derecho de autor sin autorización del titular o piratería, así también evitar la comercialización de productos falsificados relacionados a marcas u otros signos distintivos que induzcan al error o confusión al público consumidor, así como otras acciones contempladas en leyes especiales que rigen la materia.</p>\n<p>Con ello la DGO busca, no solo proporcionar herramientas efectivas para la protección de los derechos de sus titulares, sino además, busca proteger al consumidor y al ciudadano en general de su exposición a productos espureos con las consecuencias que ello acarrea.</p>\n<h4>INVESTIGACIÓN</h4>\n<p>Desde su misión investigativa, lleva a cabo de oficio y a instancia de parte, la recolección de información y datos de manera a lograr la intervención de espacios públicos o privados de acceso público, así mismo aplica en base a convenios interinstitucionales, medidas en frontera para el control de mercaderías que ingresan al País, cooperando de este modo con los órganos estatales encargados de la represión de Hechos Punibles contra la PI.</p>\n<hr>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 349),
(2203, 351, 1, 0, 1, 0, 'GeneralPage', '2019-11-13 20:59:07', '2019-11-13 21:24:34', 'informacion-relevante-3', 'INFORMACIÓN RELEVANTE', NULL, '<h2 class="inicial">DIRECCION GENERAL DE OBSERVANCIA</h2>\n<p>Es una de las Direcciones Generales de la DINAPI, cuya misión principal es la de velar por el cumplimiento efectivo de las normas especiales de Propiedad Intelectual, tendientes a asegurar el ejercicio de los derechos por sus titulares.</p>\n<p>Dicha tarea se lleva a cabo mediante la implementación de programas de promoción, prevención y sensibilización acerca de la importancia del respeto a la Propiedad Intelectual, así como de la investigación, como órgano coadyuvante de los organismos estatales encargados de la persecución de los hechos punibles perpetrados contra dichos derechos y sus titulares.</p>\n<h4>PROMOCIÓN DE LA PROPIEDAD INTELECTUAL</h4>\n<p>La DGO, a través de sus programas de promoción, busca poner al alcance de distintos sectores de la sociedad los conceptos o elementos integrantes de las figuras de P.I., facilitar la compresión sobre los procedimientos de registros, además de asumir la tarea de transmitir la problemática que conlleva la violación a la PI desde sus distintos aspectos, sociales, económicos y culturales, a fin de hacerlos comprensivos desde un enfoque vivencial y significativo.</p>\n<h4>PREVENCIÓN</h4>\n<p>Otro de los objetivos de la DGO es la de prevenir la comisión de hechos punibles y de faltas que atenten contra el libre ejercicio de los derechos de la PI, llevando a cabo actividades investigativas tendientes a impedir la reproducción comercial de obras protegidas por derecho de autor sin autorización del titular o piratería, así también evitar la comercialización de productos falsificados relacionados a marcas u otros signos distintivos que induzcan al error o confusión al público consumidor, así como otras acciones contempladas en leyes especiales que rigen la materia.</p>\n<p>Con ello la DGO busca, no solo proporcionar herramientas efectivas para la protección de los derechos de sus titulares, sino además, busca proteger al consumidor y al ciudadano en general de su exposición a productos espureos con las consecuencias que ello acarrea.</p>\n<h4>INVESTIGACIÓN</h4>\n<p>Desde su misión investigativa, lleva a cabo de oficio y a instancia de parte, la recolección de información y datos de manera a lograr la intervención de espacios públicos o privados de acceso público, así mismo aplica en base a convenios interinstitucionales, medidas en frontera para el control de mercaderías que ingresan al País, cooperando de este modo con los órganos estatales encargados de la represión de Hechos Punibles contra la PI.</p>\n<hr>', NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 349),
(2204, 351, 2, 0, 1, 0, 'GeneralPage', '2019-11-13 20:59:07', '2019-11-13 21:24:34', 'informacion-relevante-3', 'INFORMACIÓN RELEVANTE', NULL, '<h2 class="inicial">DIRECCION GENERAL DE OBSERVANCIA</h2>\n<p>Es una de las Direcciones Generales de la DINAPI, cuya misión principal es la de velar por el cumplimiento efectivo de las normas especiales de Propiedad Intelectual, tendientes a asegurar el ejercicio de los derechos por sus titulares.</p>\n<p>Dicha tarea se lleva a cabo mediante la implementación de programas de promoción, prevención y sensibilización acerca de la importancia del respeto a la Propiedad Intelectual, así como de la investigación, como órgano coadyuvante de los organismos estatales encargados de la persecución de los hechos punibles perpetrados contra dichos derechos y sus titulares.</p>\n<h4>PROMOCIÓN DE LA PROPIEDAD INTELECTUAL</h4>\n<p>La DGO, a través de sus programas de promoción, busca poner al alcance de distintos sectores de la sociedad los conceptos o elementos integrantes de las figuras de P.I., facilitar la compresión sobre los procedimientos de registros, además de asumir la tarea de transmitir la problemática que conlleva la violación a la PI desde sus distintos aspectos, sociales, económicos y culturales, a fin de hacerlos comprensivos desde un enfoque vivencial y significativo.</p>\n<h4>PREVENCIÓN</h4>\n<p>Otro de los objetivos de la DGO es la de prevenir la comisión de hechos punibles y de faltas que atenten contra el libre ejercicio de los derechos de la PI, llevando a cabo actividades investigativas tendientes a impedir la reproducción comercial de obras protegidas por derecho de autor sin autorización del titular o piratería, así también evitar la comercialización de productos falsificados relacionados a marcas u otros signos distintivos que induzcan al error o confusión al público consumidor, así como otras acciones contempladas en leyes especiales que rigen la materia.</p>\n<p>Con ello la DGO busca, no solo proporcionar herramientas efectivas para la protección de los derechos de sus titulares, sino además, busca proteger al consumidor y al ciudadano en general de su exposición a productos espureos con las consecuencias que ello acarrea.</p>\n<h4>INVESTIGACIÓN</h4>\n<p>Desde su misión investigativa, lleva a cabo de oficio y a instancia de parte, la recolección de información y datos de manera a lograr la intervención de espacios públicos o privados de acceso público, así mismo aplica en base a convenios interinstitucionales, medidas en frontera para el control de mercaderías que ingresan al País, cooperando de este modo con los órganos estatales encargados de la represión de Hechos Punibles contra la PI.</p>\n<hr>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 349),
(2205, 351, 3, 1, 1, 1, 'GeneralPage', '2019-11-13 20:59:07', '2019-11-13 21:25:29', 'areas', 'ÁREAS DE OBSERVANCIA', NULL, '<h2 class="inicial">ÁREAS QUE ABARCA LA DIRECCIÓN GENERAL DE OBSERVANCIA</h2>\n<h4>DIRECCIÓN DE LUCHA CONTRA LA PIRATERÍA Y FALSIFICACIÓN</h4>\n<p>Es la encargada de planificar y ejecutar las tareas investigativas de todo hecho que atente contra los derechos de Propiedad Intelectual.</p>\n<p><b>Actividades:</b> intervenciones administrativas en aduanas de todo el país, tareas de investigación vía web y de locales públicos, allanamientos conjuntos con el Ministerio Público y Policía Nacional de locales comerciales y depósitos, controles en vía pública, todo esto en persecución a una posible fabricación, comercialización y/o almacenamiento de productos presumiblemente falsificados y/o pirateados.</p>\n<h4>DIRECCIÓN DE PROMOCIÓN Y PREVENCIÓN</h4>\n<p>Es la encargada de planificar y ejecutar actividades de concienciación, promoción y capacitación sobre los derechos de PI y la importancia de los mismos en la sociedad.</p>\n<p><b>Actividades:</b> Algunas de ellas son:</p>\n<p>A) Realización de Jornadas de capacitación en todo el territorio paraguayo (universidades, colegios, instituciones públicas y privadas.).</p>\n<p>B) Concienciar a la ciudanía en general sobre la importancia de proteger la PI como herramienta fundamental para el desarrollo social y económico del país.</p>\n<p>C) Promover la Difusión y Protección de los Derechos de PI en el Paraguay, a través de actividades de Educación y Capacitación; y,</p>\n<p>D) Fomentar la creación intelectual, en sus formas: literaria, artística y/o científica, así como en su ámbito de aplicación industrial; y la difusión de los conocimientos tecnológicos dentro de los sectores culturales y productivos, en consonancia con la misión de la DINAPI.</p>\n<h4>DIRECCIÓN DE MEDIACIÓN Y CONCILIACIÓN</h4>\n<p>Es la encargada de planificar, ejecutar y controlar todas las actividades inherentes a brindar asistencia a las partes para lograr un acuerdo respecto de una controversia suscitada en estricto apego a las disposiciones legales que regulan la PI en el país.</p>\n<p>Esta unidad, actualmente se encuentra en proceso de reglamentación.</p>\n<h4>UNIDAD DE REGISTRO DE IMPORTADORES</h4>\n<p>La función principal de ésta unidad es mantener un registro de los importadores y un orden de las solicitudes de importaciones presentadas por los Agentes Patrocinantes, para los diferentes trámites realizados en la DINAPI.</p>\n<p><b>Actividades:</b> Recepcionar las solicitudes de registro de importadores, procesar cada solicitud y realizar un examen de forma para establecer si se reúne todos los requisitos para la inscripción o registro, así como la carga del registro en el sistema informático.</p>\n<p>Para la inscripción de un Importador, debe cumplir con los requisitos que podrá encontrar en el siguiente enlace: <br><button class="btn btn-info" window.open="" nuevos_enlaces="" rismompp_dinapi_2018.pdf=""> Requisitos para el Registro de Importadores </button></p>\n<p>Cumplidos con los requisitos, deberá rellenar el formulario correspondiente y presentar, conjuntamente con los documentos, en la DGO, unidad de registro de importadores. <br><button class="btn btn-info" window.open="" nuevos_enlaces="" inscripcion_rismompp_dinapi_2018_formulario_feb2019.doc=""> Formulario de Registro de Importadores </button></p>\n<hr>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 349),
(2206, 351, 4, 1, 1, 1, 'GeneralPage', '2019-11-13 20:59:07', '2019-11-13 21:25:56', 'denunciar', 'DENUNCIAR', NULL, '<h2 class="inicial">ÁREAS QUE ABARCA LA DIRECCIÓN GENERAL DE OBSERVANCIA</h2>\n<h4>DIRECCIÓN DE LUCHA CONTRA LA PIRATERÍA Y FALSIFICACIÓN</h4>\n<p>Es la encargada de planificar y ejecutar las tareas investigativas de todo hecho que atente contra los derechos de Propiedad Intelectual.</p>\n<p><b>Actividades:</b> intervenciones administrativas en aduanas de todo el país, tareas de investigación vía web y de locales públicos, allanamientos conjuntos con el Ministerio Público y Policía Nacional de locales comerciales y depósitos, controles en vía pública, todo esto en persecución a una posible fabricación, comercialización y/o almacenamiento de productos presumiblemente falsificados y/o pirateados.</p>\n<h4>DIRECCIÓN DE PROMOCIÓN Y PREVENCIÓN</h4>\n<p>Es la encargada de planificar y ejecutar actividades de concienciación, promoción y capacitación sobre los derechos de PI y la importancia de los mismos en la sociedad.</p>\n<p><b>Actividades:</b> Algunas de ellas son:</p>\n<p>A) Realización de Jornadas de capacitación en todo el territorio paraguayo (universidades, colegios, instituciones públicas y privadas.).</p>\n<p>B) Concienciar a la ciudanía en general sobre la importancia de proteger la PI como herramienta fundamental para el desarrollo social y económico del país.</p>\n<p>C) Promover la Difusión y Protección de los Derechos de PI en el Paraguay, a través de actividades de Educación y Capacitación; y,</p>\n<p>D) Fomentar la creación intelectual, en sus formas: literaria, artística y/o científica, así como en su ámbito de aplicación industrial; y la difusión de los conocimientos tecnológicos dentro de los sectores culturales y productivos, en consonancia con la misión de la DINAPI.</p>\n<h4>DIRECCIÓN DE MEDIACIÓN Y CONCILIACIÓN</h4>\n<p>Es la encargada de planificar, ejecutar y controlar todas las actividades inherentes a brindar asistencia a las partes para lograr un acuerdo respecto de una controversia suscitada en estricto apego a las disposiciones legales que regulan la PI en el país.</p>\n<p>Esta unidad, actualmente se encuentra en proceso de reglamentación.</p>\n<h4>UNIDAD DE REGISTRO DE IMPORTADORES</h4>\n<p>La función principal de ésta unidad es mantener un registro de los importadores y un orden de las solicitudes de importaciones presentadas por los Agentes Patrocinantes, para los diferentes trámites realizados en la DINAPI.</p>\n<p><b>Actividades:</b> Recepcionar las solicitudes de registro de importadores, procesar cada solicitud y realizar un examen de forma para establecer si se reúne todos los requisitos para la inscripción o registro, así como la carga del registro en el sistema informático.</p>\n<p>Para la inscripción de un Importador, debe cumplir con los requisitos que podrá encontrar en el siguiente enlace: <br><button class="btn btn-info"> Requisitos para el Registro de Importadores </button></p>\n<p>Cumplidos con los requisitos, deberá rellenar el formulario correspondiente y presentar, conjuntamente con los documentos, en la DGO, unidad de registro de importadores. <br><button class="btn btn-info"> Formulario de Registro de Importadores </button></p>\n<hr>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 349),
(2207, 351, 5, 1, 1, 1, 'GeneralPage', '2019-11-13 20:59:07', '2019-11-13 21:26:34', 'denunciar', 'DENUNCIAR', NULL, '<h2 class="inicial">¿CÓMO REALIZAR UNA DENUNCIA?</h2>\n<p>La Dirección General de Observancia (DGO) recepciona en sus oficinas denuncias sobre supuestas infracciones a los Derechos de Propiedad Intelectual, la cual es diligenciada por la Dirección de Lucha contra la Piratería y Falsificación dependiente de la DGO.</p>\n<p>Actualmente, la denuncia puede ser realizada en forma verbal o escrita, ante la DGO, a través de su secretaría, ubicada en el primer piso de la DINAPI, sito en España N° 323 c/ EEUU.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 349),
(2208, 350, 3, 1, 1, 1, 'GeneralPage', '2019-11-13 20:59:07', '2019-11-13 21:27:32', 'areas-de-observancia', 'ÁREAS DE OBSERVANCIA', NULL, '<h2 class="inicial">ÁREAS QUE ABARCA LA DIRECCIÓN GENERAL DE OBSERVANCIA</h2>\n<h4>DIRECCIÓN DE LUCHA CONTRA LA PIRATERÍA Y FALSIFICACIÓN</h4>\n<p>Es la encargada de planificar y ejecutar las tareas investigativas de todo hecho que atente contra los derechos de Propiedad Intelectual.</p>\n<p><b>Actividades:</b> intervenciones administrativas en aduanas de todo el país, tareas de investigación vía web y de locales públicos, allanamientos conjuntos con el Ministerio Público y Policía Nacional de locales comerciales y depósitos, controles en vía pública, todo esto en persecución a una posible fabricación, comercialización y/o almacenamiento de productos presumiblemente falsificados y/o pirateados.</p>\n<h4>DIRECCIÓN DE PROMOCIÓN Y PREVENCIÓN</h4>\n<p>Es la encargada de planificar y ejecutar actividades de concienciación, promoción y capacitación sobre los derechos de PI y la importancia de los mismos en la sociedad.</p>\n<p><b>Actividades:</b> Algunas de ellas son:</p>\n<p>A) Realización de Jornadas de capacitación en todo el territorio paraguayo (universidades, colegios, instituciones públicas y privadas.).</p>\n<p>B) Concienciar a la ciudanía en general sobre la importancia de proteger la PI como herramienta fundamental para el desarrollo social y económico del país.</p>\n<p>C) Promover la Difusión y Protección de los Derechos de PI en el Paraguay, a través de actividades de Educación y Capacitación; y,</p>\n<p>D) Fomentar la creación intelectual, en sus formas: literaria, artística y/o científica, así como en su ámbito de aplicación industrial; y la difusión de los conocimientos tecnológicos dentro de los sectores culturales y productivos, en consonancia con la misión de la DINAPI.</p>\n<h4>DIRECCIÓN DE MEDIACIÓN Y CONCILIACIÓN</h4>\n<p>Es la encargada de planificar, ejecutar y controlar todas las actividades inherentes a brindar asistencia a las partes para lograr un acuerdo respecto de una controversia suscitada en estricto apego a las disposiciones legales que regulan la PI en el país.</p>\n<p>Esta unidad, actualmente se encuentra en proceso de reglamentación.</p>\n<h4>UNIDAD DE REGISTRO DE IMPORTADORES</h4>\n<p>La función principal de ésta unidad es mantener un registro de los importadores y un orden de las solicitudes de importaciones presentadas por los Agentes Patrocinantes, para los diferentes trámites realizados en la DINAPI.</p>\n<p><b>Actividades:</b> Recepcionar las solicitudes de registro de importadores, procesar cada solicitud y realizar un examen de forma para establecer si se reúne todos los requisitos para la inscripción o registro, así como la carga del registro en el sistema informático.</p>\n<p>Para la inscripción de un Importador, debe cumplir con los requisitos que podrá encontrar en el siguiente enlace: <br><button class="btn btn-info" window.open="" nuevos_enlaces="" rismompp_dinapi_2018.pdf=""> Requisitos para el Registro de Importadores </button></p>\n<p>Cumplidos con los requisitos, deberá rellenar el formulario correspondiente y presentar, conjuntamente con los documentos, en la DGO, unidad de registro de importadores. <br><button class="btn btn-info" window.open="" nuevos_enlaces="" inscripcion_rismompp_dinapi_2018_formulario_feb2019.doc=""> Formulario de Registro de Importadores </button></p>\n<hr>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 349),
(2209, 223, 11, 1, 1, 1, 'ContactPage', '2019-05-22 22:34:38', '2019-11-14 17:44:12', 'contacto', 'Contacto', NULL, NULL, NULL, NULL, 0, 0, 10, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2210, 352, 1, 1, 1, 1, 'ArchivoPage', '2019-11-12 17:25:28', '2019-11-14 22:24:34', 'mecip', 'MECIP', NULL, NULL, NULL, NULL, 0, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 301),
(2211, 352, 2, 1, 1, 1, 'ArchivoPage', '2019-11-12 17:25:28', '2019-11-14 22:24:57', 'actividades-realizadas', 'ACTIVIDADES REALIZADAS', NULL, NULL, NULL, NULL, 0, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 301),
(2212, 353, 1, 1, 1, 1, 'ArchivoDesplegablePage', '2019-11-12 18:12:04', '2019-11-14 22:25:50', 'mecip', 'MECIP', NULL, NULL, NULL, NULL, 0, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 301),
(2213, 352, 3, 0, 1, 0, 'ArchivoPage', '2019-11-12 17:25:28', '2019-11-14 22:25:53', 'actividades-realizadas', 'ACTIVIDADES REALIZADAS', NULL, NULL, NULL, NULL, 0, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 353),
(2214, 352, 4, 1, 1, 1, 'ArchivoPage', '2019-11-12 17:25:28', '2019-11-14 22:25:53', 'actividades-realizadas', 'ACTIVIDADES REALIZADAS', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 353),
(2215, 346, 4, 1, 1, 1, 'NoticiaPage', '2019-11-13 17:44:02', '2019-11-14 22:38:11', 'centro-de-noticias', 'CENTRO DE NOTICIAS', NULL, NULL, NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2216, 354, 1, 1, 1, 1, 'ArchivoPage', '2019-11-12 17:25:28', '2019-11-15 14:33:32', 'resolucionesrg', 'RESOLUCIONES RG', NULL, NULL, NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 353),
(2217, 355, 1, 1, 1, 1, 'ArchivoPage', '2019-11-12 17:25:28', '2019-11-15 15:40:37', 'resoluciones-rp', 'RESOLUCIONES RP', NULL, NULL, NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 353),
(2218, 356, 1, 1, 1, 1, 'ArchivoPage', '2019-11-12 17:25:28', '2019-11-15 15:44:17', 'resultados-obtenidos', 'RESULTADOS OBTENIDOS', NULL, NULL, NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 353);

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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Tarjeta`
--

INSERT INTO `Tarjeta` (`ID`, `ClassName`, `Created`, `LastEdited`, `Titulo`, `LinkInterno`, `LinkExterno`, `PaginaID`, `ImagenID`, `Subtitulo`) VALUES
(1, 'Tarjeta', '2019-11-10 23:05:50', '2019-11-13 15:46:42', 'Registro de Derecho de Autor y Derechos Conexos', 345, NULL, 302, 734, NULL),
(2, 'Tarjeta', '2019-11-10 23:07:32', '2019-11-13 20:46:55', 'Industrias Creativas y Promoción del Folklore', 347, NULL, 302, 735, NULL),
(3, 'Tarjeta', '2019-11-10 23:08:28', '2019-11-13 20:46:32', 'Sociedades de Gestión Colectiva', 348, NULL, 302, 736, NULL),
(5, 'Tarjeta', '2019-11-10 23:35:38', '2019-11-11 19:18:52', 'Información Relevante', 325, NULL, 304, 739, NULL),
(6, 'Tarjeta', '2019-11-10 23:37:29', '2019-11-10 23:37:29', 'Gestionar Trámites', 301, NULL, 304, 734, NULL),
(7, 'Tarjeta', '2019-11-10 23:38:27', '2019-11-13 21:31:13', 'Consultas y Herramientas', 301, 'https://servicios.dinapi.gov.py/', 304, 740, NULL),
(8, 'Tarjeta', '2019-11-10 23:38:51', '2019-11-10 23:38:51', 'Clasificación NIZA', 301, NULL, 304, 741, NULL),
(9, 'Tarjeta', '2019-11-10 23:39:21', '2019-11-11 13:56:02', 'Boletines de Marcas', 315, NULL, 304, 742, NULL),
(10, 'Tarjeta', '2019-11-10 23:45:47', '2019-11-10 23:45:47', 'Información Relevante', 301, NULL, 305, 739, NULL),
(11, 'Tarjeta', '2019-11-10 23:47:04', '2019-11-10 23:47:04', 'Gestionar Trámites', 0, NULL, 305, 734, NULL),
(12, 'Tarjeta', '2019-11-10 23:47:30', '2019-11-13 21:32:38', 'Consultas y Herramientas', 0, 'https://servicios.dinapi.gov.py/', 305, 740, NULL),
(13, 'Tarjeta', '2019-11-10 23:47:51', '2019-11-11 14:17:12', 'Boletines de Patentes', 318, NULL, 305, 742, NULL),
(14, 'Tarjeta', '2019-11-11 00:05:14', '2019-11-11 00:05:14', 'Información Relevante', 0, NULL, 306, 739, NULL),
(15, 'Tarjeta', '2019-11-11 00:05:35', '2019-11-11 00:05:35', 'Gestionar Trámites', 0, NULL, 306, 734, NULL),
(16, 'Tarjeta', '2019-11-11 00:06:01', '2019-11-13 21:32:52', 'Consultas y Herramientas', 0, 'https://servicios.dinapi.gov.py/', 306, 740, NULL),
(17, 'Tarjeta', '2019-11-11 00:06:21', '2019-11-11 14:35:18', 'Boletines', 321, NULL, 306, 742, NULL),
(18, 'Tarjeta', '2019-11-11 00:09:57', '2019-11-11 00:09:57', 'Información Relevante', 0, NULL, 307, 739, NULL),
(19, 'Tarjeta', '2019-11-11 00:10:21', '2019-11-11 00:10:21', 'Gestionar Trámites', 0, NULL, 307, 734, NULL),
(20, 'Tarjeta', '2019-11-11 00:10:41', '2019-11-13 21:33:26', 'Consultas y Herramientas', 0, 'https://servicios.dinapi.gov.py/', 307, 740, NULL),
(21, 'Tarjeta', '2019-11-11 00:13:21', '2019-11-11 00:13:21', 'Gestión de Matrículas y PIN de Agentes de la Propiedad Industrial', 0, NULL, 308, 755, '¿Cómo hago para registrarme como agente?'),
(22, 'Tarjeta', '2019-11-11 00:14:01', '2019-11-11 00:14:01', 'Agentes de Propiedad Industrial PRO-BONO', 0, NULL, 308, 756, NULL),
(23, 'Tarjeta', '2019-11-11 00:14:19', '2019-11-11 00:15:31', 'Registro de Poderes', 0, NULL, 308, 734, '¿Cómo registrar un poder?'),
(24, 'Tarjeta', '2019-11-11 00:14:37', '2019-11-11 00:14:37', 'Circulares y Decisiones Administrativas', 0, NULL, 308, 737, NULL),
(25, 'Tarjeta', '2019-11-11 00:15:15', '2019-11-11 00:15:15', 'Actos Jurídicos', 0, NULL, 308, 757, '¿Qué comprenden y cómo registrar los actos jurídicos?'),
(26, 'Tarjeta', '2019-11-11 00:16:00', '2019-11-13 21:34:39', 'Lista de Agentes con Matrícula', 0, 'https://servicios.dinapi.gov.py/agentes.php', 308, 758, 'Listado de Abogados con Matrícula'),
(27, 'Tarjeta', '2019-11-11 00:19:45', '2019-11-13 21:24:02', 'Información Relevante', 349, NULL, 310, 739, NULL),
(28, 'Tarjeta', '2019-11-11 00:20:04', '2019-11-13 21:28:21', 'Áreas de Observancia', 350, NULL, 310, 760, NULL),
(29, 'Tarjeta', '2019-11-11 00:20:23', '2019-11-13 21:28:52', 'Denunciar', 351, NULL, 310, 761, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TarjetaPage`
--

CREATE TABLE IF NOT EXISTS `TarjetaPage` (
  `ID` int(11) NOT NULL,
  `Titulo` varchar(255) DEFAULT NULL,
  `ImagenID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=311 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `TarjetaPage`
--

INSERT INTO `TarjetaPage` (`ID`, `Titulo`, `ImagenID`) VALUES
(302, 'Derecho de Autor y Derechos Conexos', 732),
(304, 'Marcas', 738),
(305, 'Patentes', 743),
(306, 'Dibujos y Modelos Industriales', 752),
(307, 'Indicaciones Geográficas y Denominaciones de Origen', 753),
(308, 'Gestiones Administrativas', 754),
(310, 'Observancia', 759);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TarjetaPage_Live`
--

CREATE TABLE IF NOT EXISTS `TarjetaPage_Live` (
  `ID` int(11) NOT NULL,
  `Titulo` varchar(255) DEFAULT NULL,
  `ImagenID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=311 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `TarjetaPage_Live`
--

INSERT INTO `TarjetaPage_Live` (`ID`, `Titulo`, `ImagenID`) VALUES
(302, 'Derecho de Autor y Derechos Conexos', 732),
(304, 'Marcas', 738),
(305, 'Patentes', 743),
(306, 'Dibujos y Modelos Industriales', 752),
(307, 'Indicaciones Geográficas y Denominaciones de Origen', 753),
(308, 'Gestiones Administrativas', 754),
(310, 'Observancia', 759);

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
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

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
(7, 305, 2, 'Patentes', 743),
(8, 306, 1, NULL, 0),
(9, 306, 2, 'Dibujos y Modelos Industriales', 752),
(10, 307, 1, NULL, 0),
(11, 307, 2, 'Indicaciones Geográficas y Denominaciones de Origen', 753),
(12, 307, 3, 'Indicaciones Geográficas y Denominaciones de Origen', 753),
(13, 308, 1, NULL, 0),
(14, 308, 2, 'Gestiones Administrativas', 754),
(15, 310, 1, NULL, 0),
(16, 310, 2, 'Observancia', 759),
(17, 310, 3, 'Observancia', 759);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TarjetaSimple`
--

CREATE TABLE IF NOT EXISTS `TarjetaSimple` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('TarjetaSimple') DEFAULT 'TarjetaSimple',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Titulo` varchar(255) DEFAULT NULL,
  `LinkInterno` int(11) NOT NULL DEFAULT '0',
  `LinkExterno` varchar(255) DEFAULT NULL,
  `PaginaID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `TarjetaSimple`
--

INSERT INTO `TarjetaSimple` (`ID`, `ClassName`, `Created`, `LastEdited`, `Titulo`, `LinkInterno`, `LinkExterno`, `PaginaID`) VALUES
(1, 'TarjetaSimple', '2019-11-12 15:10:57', '2019-11-12 15:10:57', 'Ley N° 5.282/2014 de Libre Acceso Ciudadano a la Información Pública y Transparencia Gubernamental', 0, 'https://informacionpublica.paraguay.gov.py/public/ley_5282.pdf', 330),
(2, 'TarjetaSimple', '2019-11-12 15:11:56', '2019-11-12 15:11:56', 'LEY 5189/2014 de Provisión de Información en el Uso de los Recursos Públicos', 0, NULL, 330),
(3, 'TarjetaSimple', '2019-11-12 15:12:19', '2019-11-12 15:12:19', 'Nómina de Funcionarios 2019', 0, NULL, 330),
(4, 'TarjetaSimple', '2019-11-12 15:12:37', '2019-11-12 15:12:37', 'Ejecución Presupuestaria', 0, NULL, 330),
(5, 'TarjetaSimple', '2019-11-12 15:12:48', '2019-11-12 15:12:48', 'Planilla de Viáticos', 0, NULL, 330),
(6, 'TarjetaSimple', '2019-11-12 15:13:02', '2019-11-12 15:13:02', 'Inventario de Bienes de Uso', 0, NULL, 330),
(7, 'TarjetaSimple', '2019-11-12 15:13:15', '2019-11-12 15:13:15', 'Anexo del Personal 2019', 0, NULL, 330),
(8, 'TarjetaSimple', '2019-11-12 15:13:25', '2019-11-12 15:13:25', 'Planilla de Ingresos 2019', 0, NULL, 330),
(9, 'TarjetaSimple', '2019-11-12 15:13:35', '2019-11-12 15:13:35', 'Planilla de Gastos', 0, NULL, 330),
(10, 'TarjetaSimple', '2019-11-12 15:13:49', '2019-11-12 15:13:49', 'Resumen Anual 2018', 0, NULL, 330);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TarjetaSimplePage`
--

CREATE TABLE IF NOT EXISTS `TarjetaSimplePage` (
  `ID` int(11) NOT NULL,
  `Titulo` varchar(255) DEFAULT NULL,
  `ImagenID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=331 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `TarjetaSimplePage`
--

INSERT INTO `TarjetaSimplePage` (`ID`, `Titulo`, `ImagenID`) VALUES
(330, 'Acceso a la Información Pública', 800);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TarjetaSimplePage_Live`
--

CREATE TABLE IF NOT EXISTS `TarjetaSimplePage_Live` (
  `ID` int(11) NOT NULL,
  `Titulo` varchar(255) DEFAULT NULL,
  `ImagenID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=331 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `TarjetaSimplePage_Live`
--

INSERT INTO `TarjetaSimplePage_Live` (`ID`, `Titulo`, `ImagenID`) VALUES
(330, 'Acceso a la Información Pública', 800);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TarjetaSimplePage_versions`
--

CREATE TABLE IF NOT EXISTS `TarjetaSimplePage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Titulo` varchar(255) DEFAULT NULL,
  `ImagenID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `TarjetaSimplePage_versions`
--

INSERT INTO `TarjetaSimplePage_versions` (`ID`, `RecordID`, `Version`, `Titulo`, `ImagenID`) VALUES
(1, 330, 1, NULL, 0),
(2, 330, 2, 'Acceso a la Información Pública', 800),
(3, 330, 3, 'Acceso a la Información Pública', 800),
(4, 330, 4, 'Acceso a la Información Pública', 800);

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
(1, 'TemaEje', '2019-11-07 19:40:25', '2019-11-12 14:30:19', 'Marcas', 304, '1'),
(2, 'TemaEje', '2019-11-07 19:42:31', '2019-11-12 14:30:31', 'Patentes', 305, '1'),
(3, 'TemaEje', '2019-11-07 19:42:49', '2019-11-12 14:30:42', 'IG/DO', 307, '1'),
(4, 'TemaEje', '2019-11-07 19:43:06', '2019-11-13 20:40:17', 'Dibujos y Modelos Industriales', 306, '1'),
(5, 'TemaEje', '2019-11-07 19:43:17', '2019-11-13 20:40:33', 'Gestiones Administrativas', 308, '1'),
(6, 'TemaEje', '2019-11-07 19:43:53', '2019-11-13 20:42:18', 'Derecho de Autor y Derechos Conexos', 345, '2'),
(7, 'TemaEje', '2019-11-07 19:44:05', '2019-11-13 20:50:21', 'Industrias Creativas y Folklore', 347, '2'),
(8, 'TemaEje', '2019-11-07 19:44:19', '2019-11-13 20:50:40', 'Sociedades de Gestión Colectiva', 348, '2'),
(9, 'TemaEje', '2019-11-07 19:44:48', '2019-11-14 22:16:09', 'Información Relevante DGO', 349, '3'),
(10, 'TemaEje', '2019-11-07 19:44:59', '2019-11-14 22:16:25', 'Áreas de Observancia', 350, '3'),
(11, 'TemaEje', '2019-11-07 19:45:13', '2019-11-14 22:16:37', 'Denuncias Ciudadanas', 351, '3');

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `_obsolete_PeriodoBoletinMarcaPage`
--

CREATE TABLE IF NOT EXISTS `_obsolete_PeriodoBoletinMarcaPage` (
  `ID` int(11) NOT NULL,
  `Periodo` varchar(255) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=312 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `_obsolete_PeriodoBoletinMarcaPage`
--

INSERT INTO `_obsolete_PeriodoBoletinMarcaPage` (`ID`, `Periodo`) VALUES
(311, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `_obsolete_PeriodoBoletinMarcaPage_Live`
--

CREATE TABLE IF NOT EXISTS `_obsolete_PeriodoBoletinMarcaPage_Live` (
  `ID` int(11) NOT NULL,
  `Periodo` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `_obsolete_PeriodoBoletinMarcaPage_versions`
--

CREATE TABLE IF NOT EXISTS `_obsolete_PeriodoBoletinMarcaPage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Periodo` varchar(255) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `_obsolete_PeriodoBoletinMarcaPage_versions`
--

INSERT INTO `_obsolete_PeriodoBoletinMarcaPage_versions` (`ID`, `RecordID`, `Version`, `Periodo`) VALUES
(1, 311, 1, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Acordeon`
--
ALTER TABLE `Acordeon`
  ADD PRIMARY KEY (`ID`), ADD KEY `AdjuntoID` (`AdjuntoID`), ADD KEY `ClassName` (`ClassName`), ADD KEY `PaginaID` (`PaginaID`);

--
-- Indices de la tabla `AcordeonPage`
--
ALTER TABLE `AcordeonPage`
  ADD PRIMARY KEY (`ID`), ADD KEY `ImagenID` (`ImagenID`), ADD KEY `AnexoID` (`AnexoID`);

--
-- Indices de la tabla `AcordeonPage_Live`
--
ALTER TABLE `AcordeonPage_Live`
  ADD PRIMARY KEY (`ID`), ADD KEY `ImagenID` (`ImagenID`), ADD KEY `AnexoID` (`AnexoID`);

--
-- Indices de la tabla `AcordeonPage_versions`
--
ALTER TABLE `AcordeonPage_versions`
  ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`), ADD KEY `ImagenID` (`ImagenID`), ADD KEY `AnexoID` (`AnexoID`);

--
-- Indices de la tabla `Anuncio`
--
ALTER TABLE `Anuncio`
  ADD PRIMARY KEY (`ID`), ADD KEY `ImagenID` (`ImagenID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indices de la tabla `Archivo`
--
ALTER TABLE `Archivo`
  ADD PRIMARY KEY (`ID`), ADD KEY `PdfID` (`PdfID`), ADD KEY `PaginaID` (`PaginaID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indices de la tabla `ArchivoDesplegablePage`
--
ALTER TABLE `ArchivoDesplegablePage`
  ADD PRIMARY KEY (`ID`), ADD KEY `ImagenID` (`ImagenID`);

--
-- Indices de la tabla `ArchivoDesplegablePage_Live`
--
ALTER TABLE `ArchivoDesplegablePage_Live`
  ADD PRIMARY KEY (`ID`), ADD KEY `ImagenID` (`ImagenID`);

--
-- Indices de la tabla `ArchivoDesplegablePage_versions`
--
ALTER TABLE `ArchivoDesplegablePage_versions`
  ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`), ADD KEY `ImagenID` (`ImagenID`);

--
-- Indices de la tabla `ArchivoPage`
--
ALTER TABLE `ArchivoPage`
  ADD PRIMARY KEY (`ID`), ADD KEY `ImagenID` (`ImagenID`);

--
-- Indices de la tabla `ArchivoPage_Live`
--
ALTER TABLE `ArchivoPage_Live`
  ADD PRIMARY KEY (`ID`), ADD KEY `ImagenID` (`ImagenID`);

--
-- Indices de la tabla `ArchivoPage_versions`
--
ALTER TABLE `ArchivoPage_versions`
  ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`), ADD KEY `ImagenID` (`ImagenID`);

--
-- Indices de la tabla `Banner`
--
ALTER TABLE `Banner`
  ADD PRIMARY KEY (`ID`), ADD KEY `ImagenID` (`ImagenID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indices de la tabla `BoletinGeneral`
--
ALTER TABLE `BoletinGeneral`
  ADD PRIMARY KEY (`ID`), ADD KEY `PdfID` (`PdfID`), ADD KEY `ImagenID` (`ImagenID`), ADD KEY `PaginaID` (`PaginaID`), ADD KEY `ClassName` (`ClassName`), ADD KEY `PaginaBoletinesID` (`PaginaBoletinesID`);

--
-- Indices de la tabla `BoletinLogotiposMarcas`
--
ALTER TABLE `BoletinLogotiposMarcas`
  ADD PRIMARY KEY (`ID`), ADD KEY `PdfID` (`PdfID`), ADD KEY `ImagenID` (`ImagenID`), ADD KEY `PaginaID` (`PaginaID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indices de la tabla `BoletinMarcaPage`
--
ALTER TABLE `BoletinMarcaPage`
  ADD PRIMARY KEY (`ID`), ADD KEY `ImagenID` (`ImagenID`);

--
-- Indices de la tabla `BoletinMarcaPage_Live`
--
ALTER TABLE `BoletinMarcaPage_Live`
  ADD PRIMARY KEY (`ID`), ADD KEY `ImagenID` (`ImagenID`);

--
-- Indices de la tabla `BoletinMarcaPage_versions`
--
ALTER TABLE `BoletinMarcaPage_versions`
  ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`), ADD KEY `ImagenID` (`ImagenID`);

--
-- Indices de la tabla `BoletinMarcasDocumentos`
--
ALTER TABLE `BoletinMarcasDocumentos`
  ADD PRIMARY KEY (`ID`), ADD KEY `PdfID` (`PdfID`), ADD KEY `ImagenID` (`ImagenID`), ADD KEY `PaginaID` (`PaginaID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indices de la tabla `BoletinMovimientosAdministrativos`
--
ALTER TABLE `BoletinMovimientosAdministrativos`
  ADD PRIMARY KEY (`ID`), ADD KEY `PdfID` (`PdfID`), ADD KEY `ImagenID` (`ImagenID`), ADD KEY `PaginaID` (`PaginaID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indices de la tabla `BoletinPage`
--
ALTER TABLE `BoletinPage`
  ADD PRIMARY KEY (`ID`), ADD KEY `ImagenID` (`ImagenID`);

--
-- Indices de la tabla `BoletinPage_Live`
--
ALTER TABLE `BoletinPage_Live`
  ADD PRIMARY KEY (`ID`), ADD KEY `ImagenID` (`ImagenID`);

--
-- Indices de la tabla `BoletinPage_versions`
--
ALTER TABLE `BoletinPage_versions`
  ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`), ADD KEY `ImagenID` (`ImagenID`);

--
-- Indices de la tabla `Carousel`
--
ALTER TABLE `Carousel`
  ADD PRIMARY KEY (`ID`), ADD KEY `ImagenID` (`ImagenID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indices de la tabla `CategoriaNoticia`
--
ALTER TABLE `CategoriaNoticia`
  ADD PRIMARY KEY (`ID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indices de la tabla `ConcursoItemPage`
--
ALTER TABLE `ConcursoItemPage`
  ADD PRIMARY KEY (`ID`), ADD KEY `ImagenCortaID` (`ImagenCortaID`), ADD KEY `ImagenCompletaID` (`ImagenCompletaID`);

--
-- Indices de la tabla `ConcursoItemPage_Live`
--
ALTER TABLE `ConcursoItemPage_Live`
  ADD PRIMARY KEY (`ID`), ADD KEY `ImagenCortaID` (`ImagenCortaID`), ADD KEY `ImagenCompletaID` (`ImagenCompletaID`);

--
-- Indices de la tabla `ConcursoItemPage_versions`
--
ALTER TABLE `ConcursoItemPage_versions`
  ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`), ADD KEY `ImagenCortaID` (`ImagenCortaID`), ADD KEY `ImagenCompletaID` (`ImagenCompletaID`);

--
-- Indices de la tabla `ConcursosPage`
--
ALTER TABLE `ConcursosPage`
  ADD PRIMARY KEY (`ID`), ADD KEY `ImagenID` (`ImagenID`);

--
-- Indices de la tabla `ConcursosPage_Live`
--
ALTER TABLE `ConcursosPage_Live`
  ADD PRIMARY KEY (`ID`), ADD KEY `ImagenID` (`ImagenID`);

--
-- Indices de la tabla `ConcursosPage_versions`
--
ALTER TABLE `ConcursosPage_versions`
  ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`), ADD KEY `ImagenID` (`ImagenID`);

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
-- Indices de la tabla `ConvenioPage`
--
ALTER TABLE `ConvenioPage`
  ADD PRIMARY KEY (`ID`), ADD KEY `ImagenID` (`ImagenID`);

--
-- Indices de la tabla `ConvenioPage_Live`
--
ALTER TABLE `ConvenioPage_Live`
  ADD PRIMARY KEY (`ID`), ADD KEY `ImagenID` (`ImagenID`);

--
-- Indices de la tabla `ConvenioPage_versions`
--
ALTER TABLE `ConvenioPage_versions`
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
-- Indices de la tabla `MenuDerecho`
--
ALTER TABLE `MenuDerecho`
  ADD PRIMARY KEY (`ID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indices de la tabla `Noticia`
--
ALTER TABLE `Noticia`
  ADD PRIMARY KEY (`ID`), ADD KEY `ImagenID` (`ImagenID`), ADD KEY `PaginaID` (`PaginaID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indices de la tabla `NoticiaPage`
--
ALTER TABLE `NoticiaPage`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `NoticiaPage_Live`
--
ALTER TABLE `NoticiaPage_Live`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `NoticiaPage_versions`
--
ALTER TABLE `NoticiaPage_versions`
  ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`);

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
-- Indices de la tabla `TarjetaSimple`
--
ALTER TABLE `TarjetaSimple`
  ADD PRIMARY KEY (`ID`), ADD KEY `PaginaID` (`PaginaID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indices de la tabla `TarjetaSimplePage`
--
ALTER TABLE `TarjetaSimplePage`
  ADD PRIMARY KEY (`ID`), ADD KEY `ImagenID` (`ImagenID`);

--
-- Indices de la tabla `TarjetaSimplePage_Live`
--
ALTER TABLE `TarjetaSimplePage_Live`
  ADD PRIMARY KEY (`ID`), ADD KEY `ImagenID` (`ImagenID`);

--
-- Indices de la tabla `TarjetaSimplePage_versions`
--
ALTER TABLE `TarjetaSimplePage_versions`
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
-- Indices de la tabla `_obsolete_PeriodoBoletinMarcaPage`
--
ALTER TABLE `_obsolete_PeriodoBoletinMarcaPage`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `_obsolete_PeriodoBoletinMarcaPage_Live`
--
ALTER TABLE `_obsolete_PeriodoBoletinMarcaPage_Live`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `_obsolete_PeriodoBoletinMarcaPage_versions`
--
ALTER TABLE `_obsolete_PeriodoBoletinMarcaPage_versions`
  ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Acordeon`
--
ALTER TABLE `Acordeon`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `AcordeonPage`
--
ALTER TABLE `AcordeonPage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=346;
--
-- AUTO_INCREMENT de la tabla `AcordeonPage_Live`
--
ALTER TABLE `AcordeonPage_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=346;
--
-- AUTO_INCREMENT de la tabla `AcordeonPage_versions`
--
ALTER TABLE `AcordeonPage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `Anuncio`
--
ALTER TABLE `Anuncio`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `Archivo`
--
ALTER TABLE `Archivo`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT de la tabla `ArchivoDesplegablePage`
--
ALTER TABLE `ArchivoDesplegablePage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=354;
--
-- AUTO_INCREMENT de la tabla `ArchivoDesplegablePage_Live`
--
ALTER TABLE `ArchivoDesplegablePage_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=354;
--
-- AUTO_INCREMENT de la tabla `ArchivoDesplegablePage_versions`
--
ALTER TABLE `ArchivoDesplegablePage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `ArchivoPage`
--
ALTER TABLE `ArchivoPage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=357;
--
-- AUTO_INCREMENT de la tabla `ArchivoPage_Live`
--
ALTER TABLE `ArchivoPage_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=357;
--
-- AUTO_INCREMENT de la tabla `ArchivoPage_versions`
--
ALTER TABLE `ArchivoPage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `Banner`
--
ALTER TABLE `Banner`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT de la tabla `BoletinGeneral`
--
ALTER TABLE `BoletinGeneral`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT de la tabla `BoletinLogotiposMarcas`
--
ALTER TABLE `BoletinLogotiposMarcas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `BoletinMarcaPage`
--
ALTER TABLE `BoletinMarcaPage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=316;
--
-- AUTO_INCREMENT de la tabla `BoletinMarcaPage_Live`
--
ALTER TABLE `BoletinMarcaPage_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=316;
--
-- AUTO_INCREMENT de la tabla `BoletinMarcaPage_versions`
--
ALTER TABLE `BoletinMarcaPage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `BoletinMarcasDocumentos`
--
ALTER TABLE `BoletinMarcasDocumentos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT de la tabla `BoletinMovimientosAdministrativos`
--
ALTER TABLE `BoletinMovimientosAdministrativos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `BoletinPage`
--
ALTER TABLE `BoletinPage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=322;
--
-- AUTO_INCREMENT de la tabla `BoletinPage_Live`
--
ALTER TABLE `BoletinPage_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=322;
--
-- AUTO_INCREMENT de la tabla `BoletinPage_versions`
--
ALTER TABLE `BoletinPage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `Carousel`
--
ALTER TABLE `Carousel`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `CategoriaNoticia`
--
ALTER TABLE `CategoriaNoticia`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `ConcursoItemPage`
--
ALTER TABLE `ConcursoItemPage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=335;
--
-- AUTO_INCREMENT de la tabla `ConcursoItemPage_Live`
--
ALTER TABLE `ConcursoItemPage_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=335;
--
-- AUTO_INCREMENT de la tabla `ConcursoItemPage_versions`
--
ALTER TABLE `ConcursoItemPage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `ConcursosPage`
--
ALTER TABLE `ConcursosPage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=332;
--
-- AUTO_INCREMENT de la tabla `ConcursosPage_Live`
--
ALTER TABLE `ConcursosPage_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=332;
--
-- AUTO_INCREMENT de la tabla `ConcursosPage_versions`
--
ALTER TABLE `ConcursosPage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `ConvenioPage`
--
ALTER TABLE `ConvenioPage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=345;
--
-- AUTO_INCREMENT de la tabla `ConvenioPage_Live`
--
ALTER TABLE `ConvenioPage_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=345;
--
-- AUTO_INCREMENT de la tabla `ConvenioPage_versions`
--
ALTER TABLE `ConvenioPage_versions`
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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=921;
--
-- AUTO_INCREMENT de la tabla `GeneralPage`
--
ALTER TABLE `GeneralPage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=352;
--
-- AUTO_INCREMENT de la tabla `GeneralPage_Live`
--
ALTER TABLE `GeneralPage_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=352;
--
-- AUTO_INCREMENT de la tabla `GeneralPage_versions`
--
ALTER TABLE `GeneralPage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=222;
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
-- AUTO_INCREMENT de la tabla `MenuDerecho`
--
ALTER TABLE `MenuDerecho`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `Noticia`
--
ALTER TABLE `Noticia`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `NoticiaPage`
--
ALTER TABLE `NoticiaPage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=347;
--
-- AUTO_INCREMENT de la tabla `NoticiaPage_Live`
--
ALTER TABLE `NoticiaPage_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=347;
--
-- AUTO_INCREMENT de la tabla `NoticiaPage_versions`
--
ALTER TABLE `NoticiaPage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=310;
--
-- AUTO_INCREMENT de la tabla `RedirectorPage_Live`
--
ALTER TABLE `RedirectorPage_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=310;
--
-- AUTO_INCREMENT de la tabla `RedirectorPage_versions`
--
ALTER TABLE `RedirectorPage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=57;
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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=357;
--
-- AUTO_INCREMENT de la tabla `SiteTree_EditorGroups`
--
ALTER TABLE `SiteTree_EditorGroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `SiteTree_ImageTracking`
--
ALTER TABLE `SiteTree_ImageTracking`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1166;
--
-- AUTO_INCREMENT de la tabla `SiteTree_LinkTracking`
--
ALTER TABLE `SiteTree_LinkTracking`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `SiteTree_Live`
--
ALTER TABLE `SiteTree_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=357;
--
-- AUTO_INCREMENT de la tabla `SiteTree_versions`
--
ALTER TABLE `SiteTree_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2219;
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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT de la tabla `TarjetaPage`
--
ALTER TABLE `TarjetaPage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=311;
--
-- AUTO_INCREMENT de la tabla `TarjetaPage_Live`
--
ALTER TABLE `TarjetaPage_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=311;
--
-- AUTO_INCREMENT de la tabla `TarjetaPage_versions`
--
ALTER TABLE `TarjetaPage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `TarjetaSimple`
--
ALTER TABLE `TarjetaSimple`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `TarjetaSimplePage`
--
ALTER TABLE `TarjetaSimplePage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=331;
--
-- AUTO_INCREMENT de la tabla `TarjetaSimplePage_Live`
--
ALTER TABLE `TarjetaSimplePage_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=331;
--
-- AUTO_INCREMENT de la tabla `TarjetaSimplePage_versions`
--
ALTER TABLE `TarjetaSimplePage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
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
--
-- AUTO_INCREMENT de la tabla `_obsolete_PeriodoBoletinMarcaPage`
--
ALTER TABLE `_obsolete_PeriodoBoletinMarcaPage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=312;
--
-- AUTO_INCREMENT de la tabla `_obsolete_PeriodoBoletinMarcaPage_Live`
--
ALTER TABLE `_obsolete_PeriodoBoletinMarcaPage_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `_obsolete_PeriodoBoletinMarcaPage_versions`
--
ALTER TABLE `_obsolete_PeriodoBoletinMarcaPage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
