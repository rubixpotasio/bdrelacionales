-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-03-2025 a las 01:29:26
-- Versión del servidor: 10.1.39-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `spotify`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistacanciones`
--

CREATE TABLE `artistacanciones` (
  `id` int(11) NOT NULL,
  `artista_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `artistacanciones`
--

INSERT INTO `artistacanciones` (`id`, `artista_id`, `canciones_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 2, 7),
(8, 2, 8),
(9, 2, 9),
(10, 2, 10),
(11, 2, 11),
(12, 2, 12),
(13, 3, 13),
(14, 3, 14),
(15, 3, 15),
(16, 3, 16),
(17, 3, 17),
(18, 3, 18),
(19, 4, 19),
(20, 4, 20),
(21, 4, 21),
(22, 4, 22),
(23, 4, 23),
(24, 4, 24),
(25, 5, 25),
(26, 5, 26),
(27, 5, 27),
(28, 5, 28),
(29, 5, 29),
(30, 5, 30),
(31, 6, 31),
(32, 6, 32),
(33, 6, 33),
(34, 6, 34),
(35, 6, 35),
(48, 6, 36);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas`
--

CREATE TABLE `artistas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `artistas`
--

INSERT INTO `artistas` (`id`, `nombre`, `descripcion`) VALUES
(1, 'my bloody valentine', 'banda de shoegaze losamo'),
(2, 'charli xcx', 'es mas hyperpop pero ok entra en electronica'),
(3, 'the smiths', 'mmmmmmmmmm'),
(4, 'aphex twin', 'wknckejnvrek'),
(5, 'lady gaga', 'ayud'),
(6, 'bladee', 'ayudatengosue');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `genero_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `fecha` date NOT NULL,
  `activo` tinyint(4) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`id`, `nombre`, `genero_id`, `duracion`, `fecha`, `activo`, `foto`) VALUES
(1, 'only shadow', 3, '00:04:16', '1991-11-04', 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ300apl5YmzmXEiyXE9wbIS0KtQt4IyjJYog&s'),
(2, 'to here knows when', 3, '00:05:31', '1991-11-04', 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ300apl5YmzmXEiyXE9wbIS0KtQt4IyjJYog&s'),
(3, 'when you sleep', 3, '00:04:11', '1991-11-04', 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ300apl5YmzmXEiyXE9wbIS0KtQt4IyjJYog&s'),
(4, 'what you want', 3, '00:05:33', '1991-11-04', 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ300apl5YmzmXEiyXE9wbIS0KtQt4IyjJYog&s'),
(5, 'cupid come', 3, '00:04:29', '1988-11-21', 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSobATexjy_HtX62moJ36ja2U_0iqHWKEE5bw&s'),
(6, 'when you wake', 3, '00:03:18', '1988-11-21', 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSobATexjy_HtX62moJ36ja2U_0iqHWKEE5bw&s'),
(7, 'claws ', 5, '00:02:29', '2020-05-15', 1, 'claws.jpg'),
(8, 'nuclear seasons', 5, '00:04:41', '2013-04-12', 1, 'nuclearseasons.jpg'),
(9, 'take my hand', 5, '00:04:26', '2013-04-12', 1, 'takemyhand.jpg'),
(10, 'grins ', 5, '00:03:52', '2013-04-12', 1, 'grins.jpg'),
(11, 'track 10', 5, '00:05:26', '2017-12-15', 1, 'track10.jpg\r\n'),
(12, 'enemy ', 5, '00:03:42', '2020-05-15', 1, 'enemy.jpg'),
(13, 'i know its over', 1, '00:05:49', '1986-06-16', 1, 'iknowitsover.jpg'),
(14, 'cemetry gates ', 1, '00:02:41', '1986-06-16', 1, 'cemetrygates.jpg'),
(15, 'there is a light that never goes out', 1, '00:04:04', '1986-06-16', 1, 'thereisalightthatnevergoesout.jpg'),
(16, 'ask', 1, '00:03:18', '1987-03-30', 1, 'ask.jpg'),
(17, 'asleep', 1, '00:04:13', '1987-03-30', 1, 'asleep.jpg\r\n'),
(18, 'back to the old house', 1, '00:03:06', '1987-03-30', 1, 'backtotheoldhouse.jpg'),
(19, 'xtal', 4, '00:04:53', '1992-11-06', 1, 'xtal.jpg'),
(20, 'pulsewidth', 4, '00:03:48', '1992-11-06', 1, 'pulsewidth.jpg'),
(21, 'heliosphan', 4, '00:04:53', '1992-11-06', 1, 'heliosphan.jpg'),
(22, '180db_[130]', 4, '00:03:11', '2014-09-19', 1, '180db_[130]'),
(23, 'flim', 4, '00:02:57', '1997-10-06', 1, 'flim.jpg'),
(24, '#3', 4, '00:07:44', '1994-03-07', 1, '#3.jpg'),
(25, 'just dance ', 2, '00:04:01', '2008-08-19', 1, 'justdance.jpg'),
(26, 'paparazzi', 2, '00:03:28', '2008-08-19', 1, 'paparazzi.jpg'),
(27, 'love game ', 2, '00:03:36', '2008-08-19', 1, 'lovegame.jpg'),
(28, 'government hooker ', 2, '00:04:14', '2011-05-20', 1, 'governmenthooker.jpg'),
(29, 'judas', 2, '00:04:09', '2011-05-20', 1, 'judas.jpg'),
(30, 'born this way', 2, '00:04:50', '2013-03-20', 1, 'bornthisway.jpg'),
(31, 'side by side', 6, '00:02:16', '2018-12-29', 1, 'sidebyside.jpg'),
(32, 'waster', 6, '00:02:01', '2018-12-29', 1, 'waster.jpg'),
(33, 'anything', 6, '00:02:37', '2018-12-29', 1, 'anything.jpg'),
(34, 'numb/beverly hills', 6, '00:02:13', '2017-08-07', 1, 'numb/beverlyhills.jpg'),
(35, 'suffocation', 6, '00:02:31', '2017-08-07', 1, 'suffocation.jpg'),
(36, 'dumpster baby ', 6, '00:02:40', '2017-08-07', 1, 'dumpsterbaby.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`id`, `nombre`) VALUES
(1, 'rock alternativo'),
(2, 'pop\r\n'),
(3, 'shoegaze\r\n'),
(4, 'ambient'),
(5, 'electronica'),
(6, 'hip hop ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `membresias`
--

CREATE TABLE `membresias` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `membresias`
--

INSERT INTO `membresias` (`id`, `descripcion`, `precio`) VALUES
(1, 'individual', 129),
(2, 'duo', 169),
(3, 'familiar', 199),
(4, 'estudiante', 69),
(5, 'free', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist`
--

CREATE TABLE `playlist` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `totalcanciones` int(11) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `publico` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `playlist`
--

INSERT INTO `playlist` (`id`, `nombre`, `usuario_id`, `duracion`, `totalcanciones`, `descripcion`, `publico`) VALUES
(1, 'La bodega de frijoles', 2, '08:49:23', 141, 'oooooooossiii frigoles', 1),
(2, 'belikion', 3, '04:23:19', 64, 'sergiohola', 0),
(3, 'el contenedor del arroz', 1, '09:52:22', 196, 'holaaaaaaaaaaaaaaaaaaaaaaaaa', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlistcanciones`
--

CREATE TABLE `playlistcanciones` (
  `id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(300) NOT NULL,
  `membresia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `membresia_id`) VALUES
(1, 'rubi ', 'rubiesmeraldazepedagarcia@gmail.com', 3),
(2, 'fer', 'ferpopo@gmail.com', 3),
(3, 'sergio', ' sergiopotasio@gmail.com', 5),
(4, 'bayron', 'bayrooon@gmail.com', 5),
(5, 'jonaytontin', 'horusskuki@gmail.com', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artistacanciones`
--
ALTER TABLE `artistacanciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artista_id` (`artista_id`),
  ADD KEY `canciones_id` (`canciones_id`);

--
-- Indices de la tabla `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genero_id` (`genero_id`);

--
-- Indices de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `canciones_id` (`canciones_id`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `membresias`
--
ALTER TABLE `membresias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artista_id` (`playlist_id`),
  ADD KEY `canciones_id` (`canciones_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `membresia_id` (`membresia_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `artistacanciones`
--
ALTER TABLE `artistacanciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `artistas`
--
ALTER TABLE `artistas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `membresias`
--
ALTER TABLE `membresias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `artistacanciones`
--
ALTER TABLE `artistacanciones`
  ADD CONSTRAINT `artistacanciones_ibfk_1` FOREIGN KEY (`artista_id`) REFERENCES `artistas` (`id`),
  ADD CONSTRAINT `artistacanciones_ibfk_2` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`);

--
-- Filtros para la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD CONSTRAINT `canciones_ibfk_1` FOREIGN KEY (`genero_id`) REFERENCES `generos` (`id`);

--
-- Filtros para la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `favoritos_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `favoritos_ibfk_2` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`);

--
-- Filtros para la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  ADD CONSTRAINT `playlistcanciones_ibfk_1` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`id`),
  ADD CONSTRAINT `playlistcanciones_ibfk_2` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `playlistcanciones_ibfk_3` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`membresia_id`) REFERENCES `membresias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
