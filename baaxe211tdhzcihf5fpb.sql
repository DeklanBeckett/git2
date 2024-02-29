-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: baaxe211tdhzcihf5fpb-mysql.services.clever-cloud.com:3306
-- Tiempo de generación: 28-02-2024 a las 21:11:16
-- Versión del servidor: 8.0.15-5
-- Versión de PHP: 8.2.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*gato moradp/*

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `baaxe211tdhzcihf5fpb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_del_usuario`
--

CREATE TABLE `datos_del_usuario` (
  `id` int(11) NOT NULL,
  `nombres` varchar(40) DEFAULT NULL,
  `edad` int(3) DEFAULT NULL,
  `tipo_documento` varchar(20) DEFAULT NULL,
  `numero_de_documento` int(20) DEFAULT NULL,
  `numero_de_contacto` int(11) DEFAULT NULL,
  `propietariokey` int(3) DEFAULT NULL,
  `vehiculokey` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `datos_del_usuario`
--

INSERT INTO `datos_del_usuario` (`id`, `nombres`, `edad`, `tipo_documento`, `numero_de_documento`, `numero_de_contacto`, `propietariokey`, `vehiculokey`) VALUES
(1, 'Juan Perez', 30, 'DNI', 12345678, 5551234, NULL, NULL),
(2, 'Maria Garcia', 25, 'Pasaporte', 1234567, 5555678, NULL, NULL),
(3, 'Carlos Lopez', 35, 'Cédula', 87654321, 5559012, NULL, NULL),
(4, 'Ana Rodriguez', 28, 'DNI', 98765432, 5553456, NULL, NULL),
(5, 'Pedro Martinez', 40, 'Cédula', 56789012, 5557890, NULL, NULL),
(6, 'Laura Sanchez', 22, 'Pasaporte', 7654321, 5552345, NULL, NULL),
(7, 'Diego Gomez', 32, 'DNI', 23456789, 5556789, NULL, NULL),
(8, 'Sofia Fernandez', 27, 'Pasaporte', 6543210, 5551235, NULL, NULL),
(9, 'Luis Ramirez', 38, 'Cédula', 34567890, 5556780, NULL, NULL),
(10, 'Gabriela Torres', 29, 'DNI', 45678901, 5552341, NULL, NULL),
(17, 'duvian2', 22, 'cc', 6515, 164616, NULL, 40),
(19, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(21, 'sofia', 20, 'cedula', 2000202, 30303030, NULL, 33);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_del_vehiculo`
--

CREATE TABLE `datos_del_vehiculo` (
  `id` int(11) NOT NULL,
  `placa` varchar(10) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `modelo` varchar(45) DEFAULT NULL,
  `marca` varchar(30) DEFAULT NULL,
  `clase` varchar(50) DEFAULT NULL,
  `usuariokey` int(3) DEFAULT NULL,
  `duenokey` int(3) DEFAULT NULL,
  `plazakey` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `datos_del_vehiculo`
--

INSERT INTO `datos_del_vehiculo` (`id`, `placa`, `color`, `modelo`, `marca`, `clase`, `usuariokey`, `duenokey`, `plazakey`) VALUES
(2, 'DEF456', 'Blanco', '2018', 'Honda', 'SUV', 2, NULL, NULL),
(31, 'A5C123', 'Rojo', '2015', 'Toyota', 'Sedán', 1, NULL, NULL),
(33, 'GHI789', 'Negro', '2019', 'Ford', 'Pickup', 3, NULL, NULL),
(34, 'JKL012', 'Gris', '2017', 'Chevrolet', 'Hatchback', 4, NULL, NULL),
(35, 'MNO345', 'Azul', '2020', 'Nissan', 'Coupé', 5, NULL, NULL),
(36, 'PQR678', 'Plateado', '2016', 'Volkswagen', 'Familiar', 6, NULL, NULL),
(37, 'STU901', 'Verde', '2014', 'BMW', 'Deportivo', 7, NULL, NULL),
(38, 'VWX234', 'Amarillo', '2013', 'Mercedes', 'Convertibe', 8, NULL, NULL),
(39, 'YZA567', 'Morado', '2021', 'Audi', 'Todo terreno', 9, NULL, NULL),
(40, 'BCD890', 'Café', '2012', 'Kia', 'Minivan', 10, NULL, NULL),
(41, 'a3sdc', 'amarillo', '2003', 'renault', 'carrera', 1, 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_de_ingreso`
--

CREATE TABLE `datos_de_ingreso` (
  `id` int(11) NOT NULL,
  `hora_de_entrada` datetime DEFAULT NULL,
  `hora_de_salida` datetime DEFAULT NULL,
  `usuariokey` int(3) DEFAULT NULL,
  `vehiculokey` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dueno_del_vehiculo`
--

CREATE TABLE `dueno_del_vehiculo` (
  `id` int(11) NOT NULL,
  `nombres` varchar(40) DEFAULT NULL,
  `edad` int(3) DEFAULT NULL,
  `tipo_documento` varchar(20) DEFAULT NULL,
  `numero_de_documento` int(20) DEFAULT NULL,
  `numero_de_contacto` int(20) DEFAULT NULL,
  `vehiculokey` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `dueno_del_vehiculo`
--

INSERT INTO `dueno_del_vehiculo` (`id`, `nombres`, `edad`, `tipo_documento`, `numero_de_documento`, `numero_de_contacto`, `vehiculokey`) VALUES
(1, 'kenia', 20, 'cedula', 1001138269, 2123, 31);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plazas`
--

CREATE TABLE `plazas` (
  `id` int(3) NOT NULL,
  `nombre_plaza` varchar(2) DEFAULT NULL,
  `vehiculokey` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `plazas`
--

INSERT INTO `plazas` (`id`, `nombre_plaza`, `vehiculokey`) VALUES
(1, 'A1', NULL),
(2, 'A2', NULL),
(3, 'A3', NULL),
(4, 'A4', NULL),
(5, 'A5', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `datos_del_usuario`
--
ALTER TABLE `datos_del_usuario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehiculokey` (`vehiculokey`),
  ADD KEY `propietariokey` (`propietariokey`);

--
-- Indices de la tabla `datos_del_vehiculo`
--
ALTER TABLE `datos_del_vehiculo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `placa` (`placa`),
  ADD KEY `usuariokey` (`usuariokey`),
  ADD KEY `duenokey` (`duenokey`),
  ADD KEY `plazakey` (`plazakey`);

--
-- Indices de la tabla `datos_de_ingreso`
--
ALTER TABLE `datos_de_ingreso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehiculokey` (`vehiculokey`),
  ADD KEY `usuariokey` (`usuariokey`);

--
-- Indices de la tabla `dueno_del_vehiculo`
--
ALTER TABLE `dueno_del_vehiculo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehiculokey` (`vehiculokey`);

--
-- Indices de la tabla `plazas`
--
ALTER TABLE `plazas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre_plaza` (`nombre_plaza`),
  ADD KEY `vehiculokey` (`vehiculokey`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `datos_del_usuario`
--
ALTER TABLE `datos_del_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `datos_del_vehiculo`
--
ALTER TABLE `datos_del_vehiculo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `datos_de_ingreso`
--
ALTER TABLE `datos_de_ingreso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `dueno_del_vehiculo`
--
ALTER TABLE `dueno_del_vehiculo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `plazas`
--
ALTER TABLE `plazas`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `datos_del_usuario`
--
ALTER TABLE `datos_del_usuario`
  ADD CONSTRAINT `datos_del_usuario_ibfk_1` FOREIGN KEY (`vehiculokey`) REFERENCES `datos_del_vehiculo` (`id`),
  ADD CONSTRAINT `datos_del_usuario_ibfk_2` FOREIGN KEY (`propietariokey`) REFERENCES `dueno_del_vehiculo` (`id`);

--
-- Filtros para la tabla `datos_del_vehiculo`
--
ALTER TABLE `datos_del_vehiculo`
  ADD CONSTRAINT `datos_del_vehiculo_ibfk_1` FOREIGN KEY (`usuariokey`) REFERENCES `datos_del_usuario` (`id`),
  ADD CONSTRAINT `datos_del_vehiculo_ibfk_2` FOREIGN KEY (`duenokey`) REFERENCES `dueno_del_vehiculo` (`id`),
  ADD CONSTRAINT `datos_del_vehiculo_ibfk_3` FOREIGN KEY (`plazakey`) REFERENCES `plazas` (`id`);

--
-- Filtros para la tabla `datos_de_ingreso`
--
ALTER TABLE `datos_de_ingreso`
  ADD CONSTRAINT `datos_de_ingreso_ibfk_1` FOREIGN KEY (`vehiculokey`) REFERENCES `datos_del_vehiculo` (`id`),
  ADD CONSTRAINT `datos_de_ingreso_ibfk_2` FOREIGN KEY (`usuariokey`) REFERENCES `datos_del_usuario` (`id`);

--
-- Filtros para la tabla `dueno_del_vehiculo`
--
ALTER TABLE `dueno_del_vehiculo`
  ADD CONSTRAINT `dueno_del_vehiculo_ibfk_1` FOREIGN KEY (`vehiculokey`) REFERENCES `datos_del_vehiculo` (`id`);

--
-- Filtros para la tabla `plazas`
--
ALTER TABLE `plazas`
  ADD CONSTRAINT `plazas_ibfk_1` FOREIGN KEY (`vehiculokey`) REFERENCES `datos_del_vehiculo` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
