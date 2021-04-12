-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-01-2019 a las 18:59:15
-- Versión del servidor: 10.1.33-MariaDB
-- Versión de PHP: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `clinicalanalysis`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `analysis`
--

CREATE TABLE `analysis` (
  `idAnalysis` int(10) NOT NULL,
  `title` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `type` int(2) NOT NULL,
  `registrationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sender` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `receiver` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `observations` blob NOT NULL,
  `analysisCode` char(10) COLLATE utf8_spanish_ci NOT NULL,
  `status` int(1) NOT NULL,
  `idCreator` int(10) NOT NULL,
  `idSample` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `analysis`
--

INSERT INTO `analysis` (`idAnalysis`, `title`, `type`, `registrationDate`, `sender`, `receiver`, `observations`, `analysisCode`, `status`, `idCreator`, `idSample`) VALUES
(1, 'Prueba EGO1', 2, '2018-12-31 08:48:05', 'Jose Perez', 'Rufino Osorio', 0x4573746120657320756e6120707275656261, 'G2SC21OB93', 0, 2, 5),
(4, 'Examen bimestral', 1, '2018-12-31 08:57:32', 'Mariano Rivas', 'Rufino Osorio', 0x4573746120657320756e6120707275656261, '6GNQQJWU4B', 0, 2, 1),
(6, 'Examen bimestral', 2, '2018-12-31 09:02:39', 'Mariano Rivas', 'Rufino Osorio', 0x4573746120657320756e6120707275656261, 'T1JY708LDB', 0, 2, 3),
(7, 'Examen de rutina', 2, '2018-12-31 09:22:31', 'Sofia Rojas', 'Rufino Osorio', 0x4573746120657320756e61207072756562610d0a4573746120657320756e61207072756562610d0a4573746120657320756e61207072756562610d0a4573746120657320756e6120707275656261, 'IDGCOW3PYN', 0, 2, 4),
(8, 'Examen de rutina', 3, '2018-12-31 09:22:31', 'Sofia Rojas', 'Rufino Osorio', 0x4573746120657320756e61207072756562610d0a4573746120657320756e61207072756562610d0a4573746120657320756e61207072756562610d0a4573746120657320756e6120707275656261, 'GZRCJSM1R0', 0, 2, 4),
(9, 'Citologia para ejemplar', 2, '2018-12-31 09:33:35', 'Pablo Fernandez', 'Rufino Osorio', 0x4369746f6c6f67696120696d70726f6e74610d0a4573746120657320756e6120707275656261, '2YOWSYGGD6', 0, 2, 2),
(10, 'Citologia para ejemplar', 4, '2019-01-06 18:28:41', 'Pablo Fernandez', 'Rufino Osorio', 0x4369746f6c6f67696120696d70726f6e74610d0a4573746120657320756e6120707275656261, '57B7G8EAQS', 1, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `result`
--

CREATE TABLE `result` (
  `idResult` int(10) NOT NULL,
  `process` blob NOT NULL,
  `clinicalFindigns` blob NOT NULL,
  `registrationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `idCreator` int(10) NOT NULL,
  `idAnalysis` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `result`
--

INSERT INTO `result` (`idResult`, `process`, `clinicalFindigns`, `registrationDate`, `idCreator`, `idAnalysis`) VALUES
(1, 0x312e2d2054696e63696f6e20636f6e2068656d6f636f6c6f72616e74652072c3a17069646f, 0x526573756c7461646f20657370657261646f206465206163756572646f2061206c6f732073c3ad6e746f6d61732070726573656e7461646f732e, '2019-01-06 13:28:41', 2, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sample`
--

CREATE TABLE `sample` (
  `idSample` int(10) NOT NULL,
  `sampleNumber` int(10) NOT NULL,
  `year` int(4) NOT NULL,
  `sampleCode` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `status` int(1) NOT NULL,
  `idCreator` int(10) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `idSpecimen` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `sample`
--

INSERT INTO `sample` (`idSample`, `sampleNumber`, `year`, `sampleCode`, `status`, `idCreator`, `creationDate`, `idSpecimen`) VALUES
(1, 1, 2018, 'M012018', 1, 2, '2018-12-31 01:57:32', 1),
(2, 2, 2018, 'M022018', 1, 2, '2018-12-31 14:33:36', 2),
(3, 3, 2018, 'R032018', 1, 2, '2018-12-31 02:02:39', 3),
(4, 4, 2018, 'R042018', 1, 2, '2018-12-31 14:22:31', 3),
(5, 5, 2018, 'R052018', 1, 2, '2018-12-31 01:48:06', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `specimen`
--

CREATE TABLE `specimen` (
  `idSpecimen` int(10) NOT NULL,
  `name` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `specimenClass` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `alias` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `gender` int(2) NOT NULL,
  `kind` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `age` int(3) NOT NULL,
  `specimenCode` char(10) COLLATE utf8_spanish_ci NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `idCreator` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `specimen`
--

INSERT INTO `specimen` (`idSpecimen`, `name`, `specimenClass`, `alias`, `gender`, `kind`, `age`, `specimenCode`, `creationDate`, `idCreator`) VALUES
(1, 'Oso negro', 'M', 'Bison el grande', 1, 'Mamifero carnivoro', 28, 'DUVGX88JN1', '2019-01-06 22:11:58', 2),
(2, 'Lobo marino', 'M', 'lobby', 1, 'Otaria flavescens', 23, 'JSXMIA922S', '2019-01-06 22:12:20', 2),
(3, 'iguana negra cria', 'R', 'nuevo', 2, 'Iguana ', 1, 'HXYS725SCX', '2019-01-06 22:12:56', 2),
(4, 'Leon', 'M', 'Zimba', 1, 'Mamifero carnivoro', 8, 'PJUI0QARVO', '2019-01-07 08:57:50', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `idUser` int(11) NOT NULL,
  `userName` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `registrationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`idUser`, `userName`, `name`, `email`, `password`, `registrationDate`, `type`) VALUES
(1, 'test', 'test', 'ejemplo@gmail.com', 'test', '2018-10-18 04:54:49', 0),
(2, 'admin', 'admin', 'admin@gmail.com', '$2y$10$m4x.3hvNzzV1z95m62QqvOmxmyYZUQswp0BiZoI5Wqfdc5qwC4Uw2', '2018-12-10 17:08:31', 0),
(3, 'karenDD', 'Karen Alegre', 'karen_alegre@gmail.com', '$2y$10$RWri2sXwvKDYJCx0LESIHO7GqzYvyvKLm3u19Wga4xNOE2FVht.kK', '2018-12-10 17:08:09', 1),
(4, 'josePP', 'Jose Perez', 'jose_perez@gmail.com', '$2y$10$u8kzl2u7DLuNLL2utcmAAe/n.TjQpn9pr9BinFn./2plsbqSocsvy', '2018-12-10 17:08:19', 2),
(6, 'razo', 'Mariano Razo', 'razo@gmail.com', '$2y$10$uPne/.8w6qGpb0awUPvwY.ByoJyo1WHkkmV9BC51nSTfnqvKsW532', '2018-10-25 12:33:05', 0),
(7, 'macl44', 'Maria Cruz Lorenzo', 'margo_12@gmail.com', '$2y$10$ph1y8C4Bl7LvCkalpJWT0e914WryzVtNhVsiTmd1rgdMFpMD2Nuae', '2018-11-06 13:05:50', 2),
(8, 'maria22', 'Maria Ca', 'ma_s@mail.com', '$2y$10$S57r9qtPOFzYOkZHMxCd0eYSBp1H1jfBm6rxjCvJ3fy816BT3PghS', '2018-12-10 13:24:23', 1),
(9, 'rami11', 'Ramiro Mendez', 'ra_ss@gmail.com', '$2y$10$62Eu2xSCajAqHUfITPKDN.EnxEi4xVAgU5.UP9NfZWwBr7EvayPme', '2018-12-10 13:26:51', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `analysis`
--
ALTER TABLE `analysis`
  ADD PRIMARY KEY (`idAnalysis`),
  ADD UNIQUE KEY `analysisCode` (`analysisCode`),
  ADD KEY `sampleFK` (`idSample`);

--
-- Indices de la tabla `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`idResult`),
  ADD KEY `analysisFK` (`idAnalysis`);

--
-- Indices de la tabla `sample`
--
ALTER TABLE `sample`
  ADD PRIMARY KEY (`idSample`),
  ADD KEY `specimenFK` (`idSpecimen`);

--
-- Indices de la tabla `specimen`
--
ALTER TABLE `specimen`
  ADD PRIMARY KEY (`idSpecimen`),
  ADD UNIQUE KEY `specimenCode` (`specimenCode`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idUser`),
  ADD UNIQUE KEY `userName` (`userName`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `analysis`
--
ALTER TABLE `analysis`
  MODIFY `idAnalysis` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `result`
--
ALTER TABLE `result`
  MODIFY `idResult` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `sample`
--
ALTER TABLE `sample`
  MODIFY `idSample` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `specimen`
--
ALTER TABLE `specimen`
  MODIFY `idSpecimen` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `analysis`
--
ALTER TABLE `analysis`
  ADD CONSTRAINT `sampleFK` FOREIGN KEY (`idSample`) REFERENCES `sample` (`idSample`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `result`
--
ALTER TABLE `result`
  ADD CONSTRAINT `analysisFK` FOREIGN KEY (`idAnalysis`) REFERENCES `analysis` (`idAnalysis`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `sample`
--
ALTER TABLE `sample`
  ADD CONSTRAINT `specimenFK` FOREIGN KEY (`idSpecimen`) REFERENCES `specimen` (`idSpecimen`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
