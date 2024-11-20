-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 20-11-2024 a las 14:33:15
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `metalcof`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `items`
--

CREATE TABLE `items` (
  `item` int(11) NOT NULL COMMENT 'item del item',
  `codigo_item` varchar(10) NOT NULL COMMENT 'codigo de cada item',
  `descripcion_item` varchar(100) NOT NULL COMMENT 'descripción de cada item',
  `materiaprima_pieza` varchar(50) NOT NULL,
  `cantidad_material` float NOT NULL,
  `costo_unitario_jm` float NOT NULL,
  `unidad_medida` varchar(50) NOT NULL,
  `costos_totales` float NOT NULL,
  `cantidad_estufas` float NOT NULL,
  `total_cantidad` float NOT NULL,
  `valor_total_materiaprima` float NOT NULL,
  `asignar_estufa` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `items`
--

INSERT INTO `items` (`item`, `codigo_item`, `descripcion_item`, `materiaprima_pieza`, `cantidad_material`, `costo_unitario_jm`, `unidad_medida`, `costos_totales`, `cantidad_estufas`, `total_cantidad`, `valor_total_materiaprima`, `asignar_estufa`) VALUES
(17, 'E006', 'PINTURA MARTILLADA - GRIS ACORAZADO', '8', 0.25, 60, 'libra', 15, 1, 30, 10000, 'estufa2'),
(18, 'G19', 'PINTURA MARTILLADA - GRIS ACORAZADO', '0.080', 0.25, 60, 'gramos', 15, 3, 10000, 40000, 'estufa3'),
(19, 'E006', 'PINTURA MARTILLADA - GRIS ACORAZADO', '0,080', 0.25, 60, 'gramos', 15, 8, 230, 9000, 'estufa2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nuevaestufa`
--

CREATE TABLE `nuevaestufa` (
  `codigo_estufa` varchar(50) NOT NULL,
  `nombre_estufa` varchar(50) NOT NULL COMMENT 'Nombre de la estufa',
  `valor_mano_obra` float NOT NULL COMMENT 'Valor de mano de obra',
  `valorestufa_noiva` float NOT NULL,
  `iva` int(11) NOT NULL,
  `valor_total_estufa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `nuevaestufa`
--

INSERT INTO `nuevaestufa` (`codigo_estufa`, `nombre_estufa`, `valor_mano_obra`, `valorestufa_noiva`, `iva`, `valor_total_estufa`) VALUES
('A001', 'ECO-HIBRIDA', 980000, 2400000, 456000, 2856000),
('A25', 'PRUEBA', 6.65055, 20, 3, 100),
('asa', 'asas', 1000, 1000, 19, 2380),
('asas', 'as', 1000, 1000, 100, 4000),
('ASDAS', 'ASA', 100, 100, 1000, 2200),
('camilodelicioso12', 'peub69', 799, 99, 87, 1679),
('E001', 'ESTUFA UNO', 1200000, 4500000, 855000, 5355000),
('E0011', 'PRUEBA11', 6.65055, 20, 3, 150),
('E002', 'ECOLOGICA1', 1800000, 6500000, 1235000, 7735000),
('E003', 'PRUEBA', 6.65, 20, 3, 100),
('E005', 'PRUEBA11', 45000, 20, 190, 100),
('E007', 'PRUEBA', 6.65, 20, 3, 100),
('E008', 'HEYA', 1200000, 2800000, 19, 4760000),
('QWQW', 'QW', 20008, 2000, 18, 25969),
('t900', 'jajhashjkas', 400000, 120000, 19, 618800),
('WSASD', 'ASAS', 2000, 2000, 19, 4760),
('YO20', 'HERNAN', 89, 19, 11, 120),
('YO90', 'YECID', 1, 1, 10, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_estufas`
--

CREATE TABLE `tabla_estufas` (
  `codigo_estufa` varchar(20) NOT NULL,
  `codigo_item` varchar(10) NOT NULL,
  `descripcion_item` varchar(100) NOT NULL,
  `cantidad_items` int(11) NOT NULL,
  `costo_total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Tabla con items creados';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item`);

--
-- Indices de la tabla `nuevaestufa`
--
ALTER TABLE `nuevaestufa`
  ADD PRIMARY KEY (`codigo_estufa`);

--
-- Indices de la tabla `tabla_estufas`
--
ALTER TABLE `tabla_estufas`
  ADD PRIMARY KEY (`codigo_estufa`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `items`
--
ALTER TABLE `items`
  MODIFY `item` int(11) NOT NULL AUTO_INCREMENT COMMENT 'item del item', AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
