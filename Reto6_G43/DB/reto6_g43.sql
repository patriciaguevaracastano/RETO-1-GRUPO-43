-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-08-2021 a las 16:30:18
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `reto6_g43`
--
CREATE DATABASE IF NOT EXISTS `reto6_g43` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `reto6_g43`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_doctor`
--

DROP TABLE IF EXISTS `tb_doctor`;
CREATE TABLE IF NOT EXISTS `tb_doctor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doctor` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `document_type` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `document` int(20) NOT NULL,
  `id_hospital` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_hospital` (`id_hospital`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- RELACIONES PARA LA TABLA `tb_doctor`:
--   `id_hospital`
--       `tb_hospital` -> `id`
--

--
-- Volcado de datos para la tabla `tb_doctor`
--

INSERT INTO `tb_doctor` (`id`, `doctor`, `document_type`, `document`, `id_hospital`) VALUES
(1, 'Dr. Felipe', 'C.C.', 10538181, 1),
(2, 'Dr. Alejandro', 'C.C.', 10539292, 2),
(3, 'Dr. Esteban', 'C.C.', 10537373, 1),
(7, 'Kelly muñoz', 'C.E.', 10536464, 3),
(8, 'Kelly muñoz', 'C.E.', 105364647, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_hospital`
--

DROP TABLE IF EXISTS `tb_hospital`;
CREATE TABLE IF NOT EXISTS `tb_hospital` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `address` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- RELACIONES PARA LA TABLA `tb_hospital`:
--

--
-- Volcado de datos para la tabla `tb_hospital`
--

INSERT INTO `tb_hospital` (`id`, `name`, `address`) VALUES
(1, 'San Miguel', 'Calle 5A'),
(2, 'Mascoticas', 'Calle 6B - 25 A '),
(3, 'Mascotas DogtorCat', 'Avenida circunvalar'),
(4, 'pets r', 'Calle 6B - 25 A 3'),
(9, 'Lucky-Pets Felices p', 'Calle 5A-14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_pet`
--

DROP TABLE IF EXISTS `tb_pet`;
CREATE TABLE IF NOT EXISTS `tb_pet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `pet_type` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `id_owner_pet` int(20) NOT NULL,
  `id_pet_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_owner_pet` (`id_owner_pet`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- RELACIONES PARA LA TABLA `tb_pet`:
--   `id_owner_pet`
--       `tb_pet_owners` -> `id`
--

--
-- Volcado de datos para la tabla `tb_pet`
--

INSERT INTO `tb_pet` (`id`, `name`, `pet_type`, `id_owner_pet`, `id_pet_type`) VALUES
(1, 'Hades', 'Perro', 1, 1),
(2, 'Dante p', 'Perro', 3, 1),
(3, 'Juano', 'gato', 1, 2),
(4, 'Chokor', 'Perro', 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_pet_hospital`
--

DROP TABLE IF EXISTS `tb_pet_hospital`;
CREATE TABLE IF NOT EXISTS `tb_pet_hospital` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_pet` int(11) NOT NULL,
  `id_hospital` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_pet` (`id_pet`),
  KEY `id_hospital` (`id_hospital`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- RELACIONES PARA LA TABLA `tb_pet_hospital`:
--   `id_pet`
--       `tb_pet` -> `id`
--   `id_hospital`
--       `tb_hospital` -> `id`
--

--
-- Volcado de datos para la tabla `tb_pet_hospital`
--

INSERT INTO `tb_pet_hospital` (`id`, `id_pet`, `id_hospital`) VALUES
(1, 3, 2),
(3, 2, 1),
(4, 4, 2),
(5, 1, 2),
(6, 2, 2),
(7, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_pet_owners`
--

DROP TABLE IF EXISTS `tb_pet_owners`;
CREATE TABLE IF NOT EXISTS `tb_pet_owners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `document_type` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `document` int(20) NOT NULL,
  `contact` bigint(30) NOT NULL,
  `gender` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- RELACIONES PARA LA TABLA `tb_pet_owners`:
--

--
-- Volcado de datos para la tabla `tb_pet_owners`
--

INSERT INTO `tb_pet_owners` (`id`, `owner`, `document_type`, `document`, `contact`, `gender`) VALUES
(1, 'Juan', 'C.C.', 10538181, 3045458490, 'Masculino'),
(2, 'Manuel', 'C.C.', 10539292, 3045458490, 'Masculino'),
(3, 'Valeria', 'C.E.', 10537373, 3045458490, 'Femenino'),
(4, 'Federico', 'Pasaporte', 105364645, 3045458490, 'Masculino'),
(5, 'patri', 'C.C.', 123345646, 32353648784, 'Femenino'),
(6, 'pato', 'C.C.', 456465461, 465465465, 'Femenino'),
(7, 'ivan', 'C.C.', 89001055, 3232315439, 'Masculino');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tb_doctor`
--
ALTER TABLE `tb_doctor`
  ADD CONSTRAINT `tb_doctor_ibfk_1` FOREIGN KEY (`id_hospital`) REFERENCES `tb_hospital` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_pet`
--
ALTER TABLE `tb_pet`
  ADD CONSTRAINT `tb_pet_ibfk_1` FOREIGN KEY (`id_owner_pet`) REFERENCES `tb_pet_owners` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_pet_hospital`
--
ALTER TABLE `tb_pet_hospital`
  ADD CONSTRAINT `tb_pet_hospital_ibfk_1` FOREIGN KEY (`id_pet`) REFERENCES `tb_pet` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_pet_hospital_ibfk_2` FOREIGN KEY (`id_hospital`) REFERENCES `tb_hospital` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
