-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-04-2024 a las 04:56:14
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inmobiliaria  inmobiluxe`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asesor_venta`
--

CREATE TABLE `asesor_venta` (
  `id_asesor` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `identificacion` varchar(50) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `tipo_asesor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `asesor_venta`
--

INSERT INTO `asesor_venta` (`id_asesor`, `nombre`, `apellido`, `identificacion`, `telefono`, `tipo_asesor`) VALUES
(1, 'Pedro', 'González', '1234567890', '987654321', 'Externo'),
(2, 'María', 'López', '2345678901', '876543219', 'Interno'),
(3, 'Juan', 'Martínez', '3456789012', '765432198', 'Externo'),
(4, 'Ana', 'García', '4567890123', '654321987', 'Interno'),
(5, 'Carlos', 'Hernández', '5678901234', '543219876', 'Externo'),
(6, 'Laura', 'Díaz', '6789012345', '432198765', 'Interno'),
(7, 'David', 'Pérez', '7890123456', '321987654', 'Externo'),
(8, 'Sofía', 'Rodríguez', '8901234567', '219876543', 'Interno'),
(9, 'Jorge', 'Sánchez', '9012345678', '198765432', 'Externo'),
(10, 'Fernanda', 'Gómez', '0123456789', '987654321', 'Interno'),
(11, 'Roberto', 'Fernández', '1234567890', '876543219', 'Externo'),
(12, 'Natalia', 'Martínez', '2345678901', '765432198', 'Interno'),
(13, 'Gustavo', 'López', '3456789012', '654321987', 'Externo'),
(14, 'Carolina', 'González', '4567890123', '543219876', 'Interno'),
(15, 'Alejandro', 'Hernández', '5678901234', '432198765', 'Externo'),
(16, 'Valeria', 'Díaz', '6789012345', '321987654', 'Interno'),
(17, 'Daniel', 'Pérez', '7890123456', '219876543', 'Externo'),
(18, 'Lucía', 'Rodríguez', '8901234567', '198765432', 'Interno'),
(19, 'Mario', 'Sánchez', '9012345678', '987654321', 'Externo'),
(20, 'Daniela', 'Gómez', '0123456789', '876543219', 'Interno'),
(21, 'Andrea', 'Fernández', '1234567890', '765432198', 'Externo'),
(22, 'José', 'Martínez', '2345678901', '654321987', 'Interno'),
(23, 'Verónica', 'López', '3456789012', '543219876', 'Externo'),
(24, 'Ricardo', 'González', '4567890123', '432198765', 'Interno'),
(25, 'Marcela', 'Hernández', '5678901234', '321987654', 'Externo'),
(26, 'Camilo', 'Díaz', '6789012345', '219876543', 'Interno'),
(27, 'Ana María', 'Pérez', '7890123456', '198765432', 'Externo'),
(28, 'Catalina', 'Rodríguez', '8901234567', '987654321', 'Interno'),
(29, 'Luis', 'Sánchez', '9012345678', '876543219', 'Externo'),
(30, 'María José', 'Gómez', '0123456789', '987654321', 'Interno'),
(31, 'Santiago', 'Martínez', '1234567890', '876543219', 'Externo'),
(32, 'Juliana', 'López', '2345678901', '765432198', 'Interno'),
(33, 'Andrés', 'González', '3456789012', '654321987', 'Externo'),
(34, 'Laura', 'Rodríguez', '4567890123', '543219876', 'Interno');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propietario`
--

CREATE TABLE `propietario` (
  `id_propietario` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `departamento` varchar(50) NOT NULL,
  `fecha_nacimiento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `propietario`
--

INSERT INTO `propietario` (`id_propietario`, `nombre`, `apellido`, `direccion`, `telefono`, `ciudad`, `departamento`, `fecha_nacimiento`) VALUES
(1, 'Juan', 'Pérez', 'Calle 123', '123456789', 'Ciudad A', 'Departamento X', '1990-05-15'),
(2, 'María', 'Gómez', 'Avenida 456', '987654321', 'Ciudad B', 'Departamento Y', '1985-08-20'),
(3, 'Luis', 'Martínez', 'Carrera 789', '456789123', 'Ciudad C', 'Departamento Z', '1978-12-10'),
(4, 'Ana', 'López', 'Calle 234', '654321987', 'Ciudad A', 'Departamento X', '1993-03-25'),
(5, 'Pedro', 'García', 'Avenida 567', '321654987', 'Ciudad B', 'Departamento Y', '1980-06-30'),
(6, 'Laura', 'Hernández', 'Carrera 890', '789123456', 'Ciudad C', 'Departamento Z', '1997-10-05'),
(7, 'Carlos', 'Díaz', 'Calle 345', '456123789', 'Ciudad A', 'Departamento X', '1982-04-18'),
(8, 'Sofía', 'Rodríguez', 'Avenida 678', '987321654', 'Ciudad B', 'Departamento Y', '1995-07-12'),
(9, 'Javier', 'Sánchez', 'Carrera 901', '654789123', 'Ciudad C', 'Departamento Z', '1976-11-08'),
(10, 'Elena', 'Paz', 'Calle 456', '321987654', 'Ciudad A', 'Departamento X', '1989-09-03'),
(11, 'Miguel', 'Rojas', 'Avenida 789', '123456789', 'Ciudad B', 'Departamento Y', '1984-02-28'),
(12, 'Paula', 'Fernández', 'Carrera 012', '789654321', 'Ciudad C', 'Departamento Z', '1992-01-17'),
(13, 'Diego', 'Luna', 'Calle 567', '987123456', 'Ciudad A', 'Departamento X', '1987-07-22'),
(14, 'Carolina', 'Ortega', 'Avenida 890', '456987321', 'Ciudad B', 'Departamento Y', '1983-05-14'),
(15, 'Andrés', 'Flores', 'Carrera 123', '654321987', 'Ciudad C', 'Departamento Z', '1990-08-19'),
(16, 'Valentina', 'Guzmán', 'Calle 678', '321789654', 'Ciudad A', 'Departamento X', '1986-12-02'),
(17, 'Roberto', 'Núñez', 'Avenida 901', '123987654', 'Ciudad B', 'Departamento Y', '1999-04-27'),
(18, 'Natalia', 'Silva', 'Carrera 234', '789321654', 'Ciudad C', 'Departamento Z', '1979-03-11'),
(19, 'Alejandro', 'Vargas', 'Calle 789', '654987321', 'Ciudad A', 'Departamento X', '1994-06-26'),
(20, 'Isabel', 'Lara', 'Avenida 012', '987654123', 'Ciudad B', 'Departamento Y', '1981-09-09'),
(21, 'Mario', 'Ramírez', 'Carrera 345', '321456789', 'Ciudad C', 'Departamento Z', '1996-11-04'),
(22, 'Lucía', 'Góngora', 'Calle 890', '456321987', 'Ciudad A', 'Departamento X', '1988-02-15'),
(23, 'Hugo', 'Morales', 'Avenida 123', '789654321', 'Ciudad B', 'Departamento Y', '1982-07-29'),
(24, 'Daniela', 'Jiménez', 'Carrera 456', '123987456', 'Ciudad C', 'Departamento Z', '1993-10-23'),
(25, 'Oscar', 'Castro', 'Calle 234', '654321789', 'Ciudad A', 'Departamento X', '1984-04-16'),
(26, 'Adriana', 'Pineda', 'Avenida 567', '987456321', 'Ciudad B', 'Departamento Y', '1991-12-07'),
(27, 'Gustavo', 'Salazar', 'Carrera 789', '321789456', 'Ciudad C', 'Departamento Z', '1980-03-29'),
(28, 'Julia', 'Suárez', 'Calle 345', '456987123', 'Ciudad A', 'Departamento X', '1995-05-18'),
(29, 'Ricardo', 'Montoya', 'Avenida 678', '789123987', 'Ciudad B', 'Departamento Y', '1977-08-31'),
(30, 'Marcela', 'Gutiérrez', 'Calle 901', '123789456', 'Ciudad C', 'Departamento Z', '1989-02-08'),
(31, 'Felipe', 'Moreno', 'Avenida 234', '654987123', 'Ciudad A', 'Departamento X', '1992-06-15'),
(32, 'Camila', 'Díaz', 'Carrera 567', '987123789', 'Ciudad B', 'Departamento Y', '1987-09-20'),
(33, 'Juan Pablo', 'Gómez', 'Calle 678', '321456987', 'Ciudad C', 'Departamento Z', '1994-11-25'),
(34, 'Gabriela', 'Muñoz', 'Avenida 890', '789321456', 'Ciudad A', 'Departamento X', '1985-04-30');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asesor_venta`
--
ALTER TABLE `asesor_venta`
  ADD PRIMARY KEY (`id_asesor`),
  ADD KEY `id_asesor` (`id_asesor`);

--
-- Indices de la tabla `propietario`
--
ALTER TABLE `propietario`
  ADD PRIMARY KEY (`id_propietario`),
  ADD KEY `id_propietario` (`id_propietario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asesor_venta`
--
ALTER TABLE `asesor_venta`
  MODIFY `id_asesor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `propietario`
--
ALTER TABLE `propietario`
  MODIFY `id_propietario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
