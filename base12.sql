-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-04-2019 a las 03:39:46
-- Versión del servidor: 8.0.15
-- Versión de PHP: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `basenueva123`
--



-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `name`) VALUES
(1, 'Mueble Dormitorio'),
(2, 'Mueble Oficina'),
(3, 'Mueble Sala');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datospersonales`
--

CREATE TABLE `datospersonales` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(60) NOT NULL,
  `direccion` varchar(60) NOT NULL,
  `usuarios_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `datospersonales`
--

INSERT INTO `datospersonales` (`id`, `email`, `direccion`, `usuarios_id`) VALUES
(16, 'samer@gmail.com', 'tgu, villa olimpica', 23),
(17, 'tito@gmail.com', 'tgu, Centro', 24),
(33, 'tito@unah.hn', 'sj', 33),
(34, 'tito@unah.hn', 'sjj', 34),
(35, 'juancarlos@gmail.com', 'comayagua', 35),
(36, 'otaku@gamil.com', 'comayaguela', 36);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido`
--

CREATE TABLE `detalle_pedido` (
  `id_detalle` int(11) NOT NULL,
  `numero_pedido` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `costo` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `detalle_pedido`
--

INSERT INTO `detalle_pedido` (`id_detalle`, `numero_pedido`, `id_producto`, `cantidad`, `costo`) VALUES
(32, 13, 16, 1, 321),
(31, 13, 16, 1, 321),
(33, 13, 16, 1, 321),
(30, 13, 16, 1, 321),
(27, 13, 16, 13, 321),
(29, 13, 16, 1, 321),
(46, 17, 17, 1, 50),
(17, 7, 16, 21, 321),
(28, 13, 17, 1, 50),
(19, 9, 17, 1, 50),
(20, 10, 16, 1, 321),
(21, 11, 17, 21, 50),
(22, 12, 16, 1, 321),
(23, 12, 16, 1, 321),
(24, 12, 17, 1, 50),
(34, 13, 16, 1, 321),
(35, 13, 17, 1, 50),
(36, 13, 16, 1, 321),
(37, 13, 16, 1, 321),
(38, 13, 16, 1, 321),
(39, 14, 17, 1, 50),
(40, 15, 16, 1, 321),
(41, 15, 16, 1, 321),
(42, 15, 16, 1, 321),
(43, 16, 17, 1, 50),
(44, 17, 17, 8, 50),
(45, 17, 16, 5, 321),
(47, 17, 16, 1, 321),
(48, 18, 16, 1, 321);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion`
--

CREATE TABLE `direccion` (
  `id_direccion` int(11) UNSIGNED NOT NULL,
  `Colonia` varchar(60) NOT NULL,
  `Ciudad` varchar(50) NOT NULL,
  `Bloque` varchar(25) NOT NULL,
  `Num_Casa` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `direccion`
--

INSERT INTO `direccion` (`id_direccion`, `Colonia`, `Ciudad`, `Bloque`, `Num_Casa`) VALUES
(1, 'Trapiche', 'TGU', 'p', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `empresa_id` int(11) NOT NULL,
  `nombre` varchar(250) DEFAULT NULL,
  `RTN` int(11) DEFAULT NULL,
  `id_direccion` int(11) UNSIGNED NOT NULL,
  `telefono` varchar(30) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`empresa_id`, `nombre`, `RTN`, `id_direccion`, `telefono`, `email`) VALUES
(1, 'PROH-FOAM', 8011995, 1, '+504 22758935', 'prohfoam@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo_usuario`
--

CREATE TABLE `grupo_usuario` (
  `id` int(11) NOT NULL,
  `nombre_grupo` varchar(150) NOT NULL,
  `nivel_grupo` int(11) NOT NULL,
  `estado_grupo` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `grupo_usuario`
--

INSERT INTO `grupo_usuario` (`id`, `nombre_grupo`, `nivel_grupo`, `estado_grupo`) VALUES
(1, 'Admin', 1, 1),
(12, 'Vendedor', 2, 1),
(13, 'Clientes', 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `media`
--

CREATE TABLE `media` (
  `id` int(11) UNSIGNED NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `media`
--

INSERT INTO `media` (`id`, `file_name`, `file_type`) VALUES
(7, 'Cama_matrimonial.jpg', 'image/jpeg'),
(8, 'cama_unipersonal.jpg', 'image/jpeg'),
(9, 'mueble_oficina.jpg', 'image/jpeg'),
(10, 'mueble_oficina2.jpg', 'image/jpeg'),
(11, 'Mueble_sala.jpg', 'image/jpeg'),
(12, 'Mueble_sala_caribe.jpg', 'image/jpeg'),
(13, 'Mueble_sala_esquina.jpg', 'image/jpeg'),
(14, 'mueble_sala_esquina2.jpg', 'image/jpeg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id_pedido` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `condiciones` varchar(255) NOT NULL,
  `comentarios` varchar(20) NOT NULL,
  `total_venta` varchar(20) NOT NULL,
  `estado_pedido` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id_pedido`, `numero`, `fecha`, `id_usuario`, `id_vendedor`, `condiciones`, `comentarios`, `total_venta`, `estado_pedido`) VALUES
(20, 15, '2019-04-03 17:19:25', 36, 23, 'Contado', 'aguacaton', '1107.45', 0),
(21, 16, '2019-04-03 17:19:47', 24, 23, 'Contado', '', '57.5', 0),
(18, 13, '2019-04-03 17:17:15', 24, 23, 'Contado', '', '369.15', 0),
(22, 17, '2019-04-03 18:38:10', 24, 23, 'Contado', '', '426.65', 0),
(10, 7, '2019-04-02 16:46:32', 24, 35, 'Contado', '', '7752.15', 1),
(19, 14, '2019-04-03 17:18:20', 36, 35, 'Contado', 'otaku', '57.5', 0),
(12, 9, '2019-04-02 16:52:36', 24, 35, 'Contado', '', '57.5', 1),
(13, 10, '2019-04-02 16:53:07', 24, 35, 'Contado', '', '369.15', 1),
(14, 11, '2019-04-02 16:53:25', 34, 35, 'Contado', '', '1207.5', 1),
(15, 12, '2019-04-03 08:18:50', 33, 23, 'Contado', '', '795.8', 1),
(23, 18, '2019-04-03 18:39:53', 33, 23, 'Contado', '2 almohadas', '369.15', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `id` int(11) NOT NULL,
  `nombre_comercial` varchar(255) NOT NULL,
  `propietario` varchar(255) NOT NULL,
  `telefono` varchar(30) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `email` varchar(64) NOT NULL,
  `iva` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`id`, `nombre_comercial`, `propietario`, `telefono`, `direccion`, `email`, `iva`) VALUES
(1, 'Sistema Web S.A. de C.V.', 'Obed Alvarado', '7058-7688', 'San Miguel, El Salvador', 'info@obedalvarado.pw', 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `cantidad` varchar(50) DEFAULT NULL,
  `precio_compra` decimal(25,2) DEFAULT NULL,
  `precio_venta` decimal(25,2) NOT NULL,
  `categoria_id` int(11) UNSIGNED NOT NULL,
  `media_id` int(11) DEFAULT '0',
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `name`, `cantidad`, `precio_compra`, `precio_venta`, `categoria_id`, `media_id`, `date`) VALUES
(16, 'cama matrimonial', '12', '123.00', '321.00', 1, 7, '2019-04-02 19:39:43'),
(17, 'cama unipersonal', '12', '23.00', '50.00', 1, 8, '2019-04-02 11:52:13'),
(18, 'mueble de esquina', '20', '1200.00', '1500.00', 2, 9, '2019-04-03 17:36:26'),
(20, 'mueble de oficina', '10', '4000.00', '5800.00', 2, 9, '2019-04-03 17:37:22'),
(22, 'cama matrimonial2', '10', '1200.00', '1300.00', 1, 14, '2019-04-03 17:39:13'),
(23, 'mueble de esquina caribe2', '10', '1300.00', '1500.00', 3, 14, '2019-04-03 17:40:06'),
(24, 'mueble de oficina 3', '1', '1000.00', '2000.00', 2, 10, '2019-04-03 18:42:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `proveedores_id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `telefono` varchar(250) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`proveedores_id`, `nombre`, `telefono`, `direccion`) VALUES
(1, 'Maderas y mas', '2222-3455', 'Col. los Pins'),
(2, 'olimpya', '98234543', 'hato de enmedio'),
(6, 'asdfsd', '123123', 'jasdf'),
(7, 'juan', '9889', 'coma'),
(8, 'foam S.A', '98062137', 'tgu'),
(9, 'juan', '98062137', 'comayagua'),
(15, 'Cortitelas', '98567441', 'tgu comayaguela'),
(16, 'la curacao', '989877898', 'comayagua'),
(17, 'alfredito', '97921323', 'olanchito');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores_has_empresa`
--

CREATE TABLE `proveedores_has_empresa` (
  `proveedores_id` int(11) NOT NULL,
  `empresa_id` int(11) NOT NULL,
  `id_direccion` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmp`
--

CREATE TABLE `tmp` (
  `id_tmp` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad_tmp` int(11) NOT NULL,
  `precio_tmp` double(8,2) DEFAULT NULL,
  `session_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `nombre_usuario` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nivel_usuario` int(11) NOT NULL,
  `image` varchar(255) DEFAULT 'no_image.jpg',
  `estado` int(1) NOT NULL,
  `ultimo_acceso` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `name`, `nombre_usuario`, `password`, `nivel_usuario`, `image`, `estado`, `ultimo_acceso`) VALUES
(1, 'Administrador', 'Admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 1, 'qj352b6r1.jpg', 1, '2019-04-03 18:40:17'),
(23, 'Samer', 'Samer', 'd530ef8ba7401d025c6e5b5d791fb1ed03ad7de9', 2, 'hit5z9423.JPG', 1, '2019-04-03 18:35:33'),
(24, 'Tito', 'tito', '1a96f9437697ef43237868412d77b15991964f6e', 3, 'no_image.jpg', 1, NULL),
(33, 'jaun', 'juanito', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 3, 'no_image.jpg', 1, NULL),
(34, 'juan2', 'juanv', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 3, 'no_image.jpg', 1, NULL),
(35, 'juan carlos', 'juancarlos', '51eac6b471a284d3341d8c0c63d0f1a286262a18', 2, 'no_image.jpg', 1, '2019-04-03 17:16:20'),
(36, 'jelsyn', 'otaku', 'fc1200c7a7aa52109d762a9f005b149abef01479', 3, 'no_image.jpg', 1, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `datospersonales`
--
ALTER TABLE `datospersonales`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `usuarios_id` (`usuarios_id`);

--
-- Indices de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `numero_cotizacion` (`numero_pedido`,`id_producto`);

--
-- Indices de la tabla `direccion`
--
ALTER TABLE `direccion`
  ADD PRIMARY KEY (`id_direccion`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`empresa_id`,`id_direccion`),
  ADD KEY `fk_empresa_direccion1_idx` (`id_direccion`);

--
-- Indices de la tabla `grupo_usuario`
--
ALTER TABLE `grupo_usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nivel_grupo` (`nivel_grupo`);

--
-- Indices de la tabla `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id_pedido`),
  ADD UNIQUE KEY `numero_cotizacion` (`numero`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `categoria_id` (`categoria_id`),
  ADD KEY `media_id` (`media_id`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`proveedores_id`);

--
-- Indices de la tabla `proveedores_has_empresa`
--
ALTER TABLE `proveedores_has_empresa`
  ADD PRIMARY KEY (`proveedores_id`,`empresa_id`,`id_direccion`),
  ADD KEY `fk_proveedores_has_empresa_empresa1_idx` (`empresa_id`,`id_direccion`),
  ADD KEY `fk_proveedores_has_empresa_proveedores_idx` (`proveedores_id`);

--
-- Indices de la tabla `tmp`
--
ALTER TABLE `tmp`
  ADD PRIMARY KEY (`id_tmp`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre_usuario` (`nombre_usuario`),
  ADD KEY `nivel_usuario` (`nivel_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `datospersonales`
--
ALTER TABLE `datospersonales`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `direccion`
--
ALTER TABLE `direccion`
  MODIFY `id_direccion` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `empresa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `proveedores_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `tmp`
--
ALTER TABLE `tmp`
  MODIFY `id_tmp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `proveedores_has_empresa`
--
ALTER TABLE `proveedores_has_empresa`
  ADD CONSTRAINT `fk_proveedores_has_empresa_empresa1` FOREIGN KEY (`empresa_id`,`id_direccion`) REFERENCES `empresa` (`empresa_id`, `id_direccion`),
  ADD CONSTRAINT `fk_proveedores_has_empresa_proveedores` FOREIGN KEY (`proveedores_id`) REFERENCES `proveedores` (`proveedores_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
