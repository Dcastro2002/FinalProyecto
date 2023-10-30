-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-10-2023 a las 01:13:37
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `card`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`) VALUES
(1, 'Tecnologia'),
(3, 'Muebles'),
(4, 'Ropas'),
(10, 'zapatos'),
(11, 'Electrodomesticos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `clave` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `email`, `usuario`, `clave`) VALUES
(19, 'Anthoni', 'zetinotony@gmail.com', 'Anthoni', '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),
(21, 'Diego Castro', 'Diego@gmail.com', 'Diego', '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `precio_normal` decimal(10,2) NOT NULL,
  `precio_rebajado` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `imagen` varchar(50) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio_normal`, `precio_rebajado`, `cantidad`, `imagen`, `id_categoria`) VALUES
(9, 'Laptop', 'Laptop HP 14\" Intel Celeron N4120 4GB RAM + 128GB SSD ROM //14', '6000.00', '5500.00', 3, '20231019225846.jpg', 1),
(10, 'Laptop', 'LAPTOP LENOVO S340-13IML 81UM0020US CORE I5-', '7000.00', '7000.00', 4, '20231019230103.jpg', 1),
(11, 'Laptop', 'Laptop intel Core i5-1155G7 HP 17-CN1053CL 17.3\" FHD IPS 12GB 1TB', '6000.00', '6000.00', 4, '20231019230308.jpg', 1),
(12, 'Laptop', 'Laptop HP con Procesador AMD Ryzen 5, memoria RAM de 8GB, 256GB SSD, pantalla de 15.6\",', '7000.00', '7000.00', 4, '20231019230633.jpg', 1),
(13, 'Laptop', 'Laptop HP 15-dy2792wm Core i3-1115G4 8GB RAM + 256GB SSD 15.6\" Win11 Home Azul', '4500.00', '4500.00', 5, '20231019231032.jpg', 1),
(14, 'Laptop', 'LAPTOP DELL INSPIRON 14 5415 (R5,8GB, 512GB) CC8N6', '5000.00', '5000.00', 5, '20231019231319.jpg', 1),
(15, 'Laptop', 'Laptop Dell Inspiron 3515, AMD Ryzen 5, 8GB, 256GB SSD, W11, 15.6\" pulgadas', '6500.00', '6000.00', 5, '20231019231548.jpg', 1),
(16, 'Laptop', 'Newest Flagship HP 14 HD Thin & Light Laptop Computer PC- 14\" Micro-Edge Display 10th', '7000.00', '7000.00', 5, '20231019231811.jpg', 1),
(17, 'Telefono ', 'Samsung Galaxy A14 4GB RAM + 128GB Almacenamiento, Verde - Dual SIM Liberado', '3500.00', '3000.00', 4, '20231019232246.jpg', 1),
(18, 'Telefono', 'Celular Huawei 6.67\" | 8Gb Ram 128Gb Rom color plata', '4000.00', '4000.00', 4, '20231019232440.jpg', 1),
(19, 'Telefono', 'Honor X8 Liberado Plata de 6GB Ram 128GB Rom', '5000.00', '4700.00', 5, '20231019232715.jpg', 1),
(20, 'Telefono', 'iPhone 11 Black 64GB', '8000.00', '7000.00', 6, '20231019233026.jpg', 1),
(21, 'Mueble', 'Sillas y mesas de jardín ', '700.00', '650.00', 2, '20231019233339.jpg', 3),
(22, 'Mueble', 'Escritorio para computadora de madera fina', '500.00', '500.00', 3, '20231019233432.jpg', 3),
(23, 'Mueble', 'Mesa con 4 sillas para interior de sala ', '1200.00', '1000.00', 4, '20231019233532.jpg', 3),
(24, 'Mueble', 'mesa sencilla para interior ', '400.00', '400.00', 4, '20231019233638.jpg', 3),
(25, 'Ropa', 'Conjunto marca Adidas deportivo', '700.00', '650.00', 1, '20231019234317.jpg', 4),
(27, 'Ropa', 'Camisa Casual marca Puma tela fina', '350.00', '350.00', 4, '20231019234459.jpg', 4),
(28, 'Ropa', 'Sudadero marca Nike casual', '800.00', '750.00', 4, '20231019234555.jpg', 4),
(29, 'Ropa', 'Sudadero Marca Nike deportivo ', '700.00', '700.00', 5, '20231019234702.jpg', 4),
(30, 'Ropa', 'Camisa Marca puma deportiva ', '250.00', '250.00', 3, '20231019234847.jpg', 4),
(31, 'Ropa', 'Sudadero Marca Adidas deportivo', '500.00', '500.00', 3, '20231019235107.jpg', 4),
(32, 'Ropa', 'Camisa deportiva Marca Nike tela fina ', '400.00', '400.00', 2, '20231019235834.jpg', 4),
(33, 'Ropa', 'Conjunto deportivo Marca Adidas pans y Sudadero ', '800.00', '800.00', 5, '20231019235922.jpg', 4),
(34, 'Messi', 'eeeh messi', '99999999.99', '95000000.00', 1, '20231025011447.jpg', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `clave` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `nombre`, `clave`) VALUES
(1, 'admin', 'Diego Castro', '21232f297a57a5a743894a0e4a801fc3');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
