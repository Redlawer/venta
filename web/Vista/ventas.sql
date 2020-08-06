-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 06-08-2020 a las 18:25:33
-- Versión del servidor: 8.0.17
-- Versión de PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ventas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accesos`
--

CREATE TABLE `accesos` (
  `idaccesos` int(11) NOT NULL,
  `orden` varchar(25) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `url` varchar(250) NOT NULL,
  `estado` varchar(1) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `accesos`
--

INSERT INTO `accesos` (`idaccesos`, `orden`, `nombre`, `url`, `estado`) VALUES
(1, '1', 'DatosCliente', 'DatosCliente.jsp', 'A'),
(2, '2', 'DatosProducto', 'DatosProducto.jsp', 'A'),
(3, '3', 'DatosUsuario', 'usuario.jsp', 'A'),
(4, '4', 'DatosAccesos', 'acceso.jsp', 'A'),
(5, '5', 'RegistrarVenta', 'DatosVenta.jsp', 'A'),
(6, '6', 'ReporteVentas', 'detalle_venta.jsp', 'A'),
(7, '7', 'Salir', 'menu.jsp', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idcliente` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `apellido` varchar(25) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `dni` varchar(8) NOT NULL,
  `estado` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idcliente`, `nombre`, `apellido`, `direccion`, `dni`, `estado`) VALUES
(1, 'Kolbher', 'Guzmán', 'jr. tarma', '10101010', 'D'),
(2, 'Giannina', 'Bernal', 'jr.ayacucho', '30303030', 'D'),
(3, 'Juan', 'Lopez', 'jr. Iquitos', '40404040', 'A'),
(4, 'Pedro', 'Diaz', 'jr. gutierrez', '50505050', 'A'),
(5, 'Diana', 'Rodriguez', 'jr.ayacucho', '70707070', 'D'),
(6, 'Maria', 'Parodi', 'jr. tarma', '80808080', 'A'),
(8, 'juancho', 'juanto', 'av.peruanosaso', '78978451', 'A'),
(10, 'Sauron', 'Pizzaro', 'av,canada', '12365485', 'A'),
(12, 'rOMEL', 'Laratasa', '13213213', 'aadad', 'A '),
(13, 'Romelia', 'Romelon', 'Av.jiron otaku', '12345678', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta`
--

CREATE TABLE `detalle_venta` (
  `iddetalle_venta` int(11) NOT NULL,
  `idventa` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `precioventa` double(11,0) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `detalle_venta`
--

INSERT INTO `detalle_venta` (`iddetalle_venta`, `idventa`, `idproducto`, `precioventa`, `cantidad`) VALUES
(93, 78, 1, 40, 5),
(94, 78, 6, 3, 8),
(95, 79, 3, 43, 5),
(96, 79, 8, 5234, 5),
(97, 80, 3, 43, 5),
(98, 80, 8, 5234, 4),
(99, 81, 9, 24324, 50),
(100, 81, 4, 54, 6),
(101, 82, 2, 50, 10),
(102, 83, 6, 3, 10),
(103, 83, 7, 600, 4),
(104, 84, 8, 5234, 6),
(105, 84, 1, 40, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idproducto` int(11) NOT NULL,
  `codigo` varchar(10) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `stock` int(11) NOT NULL,
  `precioventa` int(11) NOT NULL,
  `estado` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idproducto`, `codigo`, `nombre`, `stock`, `precioventa`, `estado`) VALUES
(1, '001', 'TV 4k Ultra ', 50, 40, 'A'),
(2, '002', 'Refrigeradora', 50, 50, 'A'),
(3, '003', 'LAPTOP ASUS VIVOBOOK', 100, 43, 'A'),
(4, '004', 'LAPTOP GAMER ASUS TUF', 80, 54, 'A'),
(5, '005', 'SONY PARLANTE BLUETOOTH', 50, 2, 'A'),
(6, '006', 'HUAWEI P30 PRO', 100, 3, 'A'),
(7, '007', 'Xiaomi Redmi  Note 7', 500, 600, 'D'),
(8, '008', 'adadad', 23, 5234, 'A'),
(9, '009', 'dadad', 23, 24324, 'A'),
(10, '010', 'sancho', 23, 2423, 'A'),
(11, '011', 'pantalon Jean t2', 50, 100, 'D');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `usuario` varchar(25) NOT NULL,
  `clave` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `usuario`, `clave`) VALUES
(1, 'nina', '123'),
(2, 'romel', '123'),
(3, 'alvaro', '123'),
(4, 'Kolbher', '123'),
(5, 'untels', '123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `idventa` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `idcliente` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`idventa`, `numero`, `total`, `estado`, `idcliente`, `fecha`) VALUES
(78, 1111, 0, 'D', 1, '2020-03-04 02:34:02'),
(79, 1478, 26385, 'A', 2, '2020-03-04 02:40:27'),
(80, 123654, 21151, 'A', 1, '2020-03-04 02:46:23'),
(81, 1596, 0, 'D', 2, '2020-03-04 02:58:42'),
(82, 196, 0, 'D', 1, '2020-03-04 03:57:02'),
(83, 123587, 0, 'D', 3, '2020-03-04 06:24:58'),
(84, 125478, 31604, 'A', 6, '2020-03-04 06:33:01');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `accesos`
--
ALTER TABLE `accesos`
  ADD PRIMARY KEY (`idaccesos`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idcliente`),
  ADD UNIQUE KEY `dni` (`dni`);

--
-- Indices de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD PRIMARY KEY (`iddetalle_venta`),
  ADD KEY `idventa` (`idventa`),
  ADD KEY `idproducto` (`idproducto`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idproducto`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`idventa`),
  ADD UNIQUE KEY `numero` (`numero`),
  ADD KEY `idcliente` (`idcliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `accesos`
--
ALTER TABLE `accesos`
  MODIFY `idaccesos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  MODIFY `iddetalle_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idproducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `idventa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD CONSTRAINT `detalle_venta_ibfk_1` FOREIGN KEY (`idventa`) REFERENCES `venta` (`idventa`),
  ADD CONSTRAINT `detalle_venta_ibfk_2` FOREIGN KEY (`idproducto`) REFERENCES `producto` (`idproducto`);

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`idcliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
