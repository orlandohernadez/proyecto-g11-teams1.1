-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-06-2024 a las 17:19:59
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
-- Base de datos: `sistema_inventarios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actualizar_existencias`
--

CREATE TABLE `actualizar_existencias` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `producto` varchar(255) NOT NULL,
  `codigo_producto` varchar(255) NOT NULL,
  `cantidad_actual` int(11) NOT NULL,
  `nueva_cantidad` int(11) NOT NULL,
  `motivo_de_la_actualizacion` text NOT NULL,
  `responsable_de_la_actualizacion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `actualizar_existencias`
--

INSERT INTO `actualizar_existencias` (`id`, `fecha`, `producto`, `codigo_producto`, `cantidad_actual`, `nueva_cantidad`, `motivo_de_la_actualizacion`, `responsable_de_la_actualizacion`) VALUES
(5, '2024-04-02', 'chuleta', '122344', 23, 4, 'muchoss', 'orlando'),
(6, '2024-02-22', 'pollo', '122344', 45, 79, 'pocoss', 'orlando');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `control_stock`
--

CREATE TABLE `control_stock` (
  `id` int(11) NOT NULL,
  `producto` varchar(255) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `control_stock`
--

INSERT INTO `control_stock` (`id`, `producto`, `cantidad`, `tipo`, `fecha`) VALUES
(1, 'pollo', 2, 'entrada', '2024-06-06 19:09:46'),
(2, 'carne', 1000, 'salida', '2024-06-06 19:34:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `destruccion_productos`
--

CREATE TABLE `destruccion_productos` (
  `id` int(11) NOT NULL,
  `producto` varchar(255) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `destruccion_productos`
--

INSERT INTO `destruccion_productos` (`id`, `producto`, `cantidad`, `fecha`) VALUES
(1, 'chuleta', 34, '2024-06-06 18:59:29'),
(2, 'pollo', 25, '2024-06-06 19:33:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `devoluciones_productos`
--

CREATE TABLE `devoluciones_productos` (
  `id` int(11) NOT NULL,
  `producto` varchar(255) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `devoluciones_productos`
--

INSERT INTO `devoluciones_productos` (`id`, `producto`, `cantidad`, `fecha`) VALUES
(1, 'producto1', 23, '2024-06-06 18:55:52'),
(2, 'producto1', 100, '2024-06-06 19:32:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `informes`
--

CREATE TABLE `informes` (
  `id` int(11) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `informes`
--

INSERT INTO `informes` (`id`, `fecha_inicio`, `fecha_fin`) VALUES
(1, '2024-02-02', '2024-03-03'),
(4, '2024-04-03', '2024-09-03'),
(5, '2024-04-03', '2024-09-03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preparacion`
--

CREATE TABLE `preparacion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `stock` int(11) NOT NULL,
  `ubicacion` varchar(255) NOT NULL,
  `cantidad_preparar` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `preparacion`
--

INSERT INTO `preparacion` (`id`, `nombre`, `stock`, `ubicacion`, `cantidad_preparar`, `fecha`) VALUES
(1, 'pollo', 40, 'almacenamiento', 30, '2024-06-05 18:18:35'),
(2, 'zanahoria', 14, 'entrada', 20, '2024-06-06 18:25:43'),
(3, 'zanahoria', 34, 'almacenamiento', 48, '2024-06-06 19:30:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `cantidad`) VALUES
(1, 'pollo', 23),
(6, 'pollo', 23);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `contacto` varchar(100) DEFAULT NULL,
  `notas` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id`, `nombre`, `direccion`, `telefono`, `email`, `contacto`, `notas`) VALUES
(1, 'Jairo antonio Muñoz', 'callle 10', '1234567890', 'holirat531@mkurg.com', 'orlando', 'proveedor nuevo...'),
(4, 'orlando hernandez', 'callle 10', '3124567893', 'Orlando0219@gmail.com', 'julian', 'nuevo proveedor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `saldo_stock`
--

CREATE TABLE `saldo_stock` (
  `id` int(11) NOT NULL,
  `producto` varchar(255) NOT NULL,
  `saldo` int(11) NOT NULL,
  `ubicaciones` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transferencias_productos`
--

CREATE TABLE `transferencias_productos` (
  `id` int(11) NOT NULL,
  `producto` varchar(255) NOT NULL,
  `origen` varchar(255) NOT NULL,
  `destino` varchar(255) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `transferencias_productos`
--

INSERT INTO `transferencias_productos` (`id`, `producto`, `origen`, `destino`, `cantidad`, `fecha`) VALUES
(1, 'producto1', 'almacenamiento', 'entrada', 23, '2024-06-06 18:51:51'),
(2, 'producto3', 'almacenamiento', 'recepcion', 50, '2024-06-06 19:32:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `traslados`
--

CREATE TABLE `traslados` (
  `id` int(11) NOT NULL,
  `producto_nombre` varchar(255) NOT NULL,
  `producto_cantidad` int(11) NOT NULL,
  `origen_nombre` varchar(255) NOT NULL,
  `destino_nombre` varchar(255) NOT NULL,
  `fecha_traslado` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `traslados`
--

INSERT INTO `traslados` (`id`, `producto_nombre`, `producto_cantidad`, `origen_nombre`, `destino_nombre`, `fecha_traslado`) VALUES
(1, 'pollo', 5, 'entrada', 'recepcion', '2024-06-05 18:02:32'),
(2, 'pollo', 47, 'entrada', 'recepcion', '2024-06-06 19:30:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas_productos`
--

CREATE TABLE `ventas_productos` (
  `id` int(11) NOT NULL,
  `origen` varchar(255) NOT NULL,
  `destino` varchar(255) NOT NULL,
  `producto` varchar(255) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas_productos`
--

INSERT INTO `ventas_productos` (`id`, `origen`, `destino`, `producto`, `fecha`) VALUES
(1, 'almacenamiento', 'entrada', 'producto2', '2024-06-06 18:38:00'),
(2, 'almacenamiento', 'entrada', 'producto1', '2024-06-06 19:31:41');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actualizar_existencias`
--
ALTER TABLE `actualizar_existencias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `control_stock`
--
ALTER TABLE `control_stock`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `destruccion_productos`
--
ALTER TABLE `destruccion_productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `devoluciones_productos`
--
ALTER TABLE `devoluciones_productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `informes`
--
ALTER TABLE `informes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `preparacion`
--
ALTER TABLE `preparacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `saldo_stock`
--
ALTER TABLE `saldo_stock`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `transferencias_productos`
--
ALTER TABLE `transferencias_productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `traslados`
--
ALTER TABLE `traslados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas_productos`
--
ALTER TABLE `ventas_productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actualizar_existencias`
--
ALTER TABLE `actualizar_existencias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `control_stock`
--
ALTER TABLE `control_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `destruccion_productos`
--
ALTER TABLE `destruccion_productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `devoluciones_productos`
--
ALTER TABLE `devoluciones_productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `informes`
--
ALTER TABLE `informes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `preparacion`
--
ALTER TABLE `preparacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `saldo_stock`
--
ALTER TABLE `saldo_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `transferencias_productos`
--
ALTER TABLE `transferencias_productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `traslados`
--
ALTER TABLE `traslados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `ventas_productos`
--
ALTER TABLE `ventas_productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
