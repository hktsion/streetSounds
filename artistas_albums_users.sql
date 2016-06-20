-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-02-2016 a las 05:04:08
-- Versión del servidor: 5.6.24
-- Versión de PHP: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `streetsounds`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `albums`
--

CREATE TABLE IF NOT EXISTS `albums` (
  `id` int(10) NOT NULL,
  `artista_id` int(10) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `discografica` varchar(100) DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `portada` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `albums`
--

INSERT INTO `albums` (`id`, `artista_id`, `titulo`, `discografica`, `year`, `modified`, `portada`) VALUES
(1, 2, 'Aladdin Sane', 'RCA Records', 1973, '2016-02-06 15:15:15', '221973'),
(2, 2, 'Space Oddity', 'Philips', 1969, '2016-02-03 14:38:05', NULL),
(6, 4, 'Band of Gypsys', 'Capitol Records', 1970, '2016-02-04 02:00:08', '641970'),
(7, 4, 'The cry of love', 'Reprise Records', 1971, '2016-02-04 02:07:49', '741971'),
(8, 4, 'Kiss the sky', 'Reprise Records', 1984, NULL, NULL),
(14, 7, 'Concerto in B. Goode', 'RCA Records', 1961, '2016-02-04 02:31:42', '1471961'),
(15, 7, 'Rock Rock Rock', 'Green Line srl', 1956, NULL, NULL),
(16, 1, 'Black and blue', 'Rolling Stones Records', 1976, '2016-02-04 02:27:16', '3981970'),
(17, 1, 'Tattoo you', 'Capitol Records', 1981, '2016-02-04 02:08:34', '1711981'),
(18, 1, 'Voodoo Lounge', 'Capitol Records', 1994, NULL, NULL),
(23, 3, 'Alchemy', 'Warner Bros. Records', 1984, '2016-02-04 02:38:55', '2331984'),
(24, 3, 's/t', 'Warner Bros. Records', 1978, NULL, NULL),
(28, 5, 'At Folsom Prison', 'Columbia Records', 1968, '2016-02-04 02:43:35', '2851968'),
(29, 5, 'The man who comes around', 'American Recordings', 2002, '2016-02-04 02:45:38', '2952002'),
(30, 6, 'The complete Hank Williams', 'Mercury Records', 1998, '2016-02-04 02:46:32', '3061998'),
(31, 7, 'Rockin at the Hops', 'Chess Records', 1960, NULL, NULL),
(32, 7, 'Chuck Berry is on top', 'Chess Records', 1959, NULL, NULL),
(38, 8, 'Let it be', 'Apple Records', 1969, '2016-02-04 02:42:50', '3881969'),
(39, 8, 'Abbey Road', 'Apple Records', 1970, '2016-02-04 02:37:34', '3981970'),
(40, 8, 'Sgt. Peppers Lonely Hearts...', 'Capitol  Records', 1967, '2016-02-04 02:39:57', '4081967'),
(41, 8, 'Love', 'Atlantic Records', 2006, '2016-02-04 02:40:42', '4182006'),
(44, 9, 'From Memphis To Vegas...', 'Atlantic Records', 1969, '2016-02-04 02:48:35', '4491969'),
(45, 9, 'Elvis Christmas Album', 'Apple Records', 1957, NULL, NULL),
(46, 9, 'Something for Everybody', 'Warner Bros. Records', 1961, '2016-02-04 02:47:46', '4691961'),
(47, 9, 'Elvis Is Back!', 'Capitol Records', 1960, '2016-02-04 02:44:27', '4791960'),
(48, 10, 'In the Court of the Crimson King', 'Atlantic Records', 1969, '2016-02-04 02:42:21', '48101969'),
(50, 11, 'Street Survivors', 'MCA Records', 1977, NULL, NULL),
(51, 11, 'All Time Greatest Hits', 'MCA Records', 2000, NULL, NULL),
(52, 11, 'Skynyrds First and... Lasts', 'Capitol Records', 1978, NULL, NULL),
(53, 11, 'Lynyrd Skynyrd', 'Capitol Records', 1991, NULL, NULL),
(56, 18, 'Más madera', 'Zafiro', 1980, '2016-02-07 13:57:48', '56181980'),
(57, 21, 'Maxi single', 'Discos Victoria', 1982, '2016-02-07 23:07:12', '57211982'),
(58, 21, 'Lucha contra el techno', 'Bazofia Records', 1982, '2016-02-07 23:13:48', '58211982');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas`
--

CREATE TABLE IF NOT EXISTS `artistas` (
  `id` int(10) unsigned NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `ciudad` varchar(255) DEFAULT NULL,
  `pais` varchar(255) DEFAULT NULL,
  `genero` varchar(100) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `bio` text
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `artistas`
--

INSERT INTO `artistas` (`id`, `nombre`, `ciudad`, `pais`, `genero`, `modified`, `bio`) VALUES
(1, 'The Rolling Stones', 'Londres', 'UK', 'Rock', '2016-02-07 16:03:25', 'The Rolling Stones es una banda británica de rock originaria de Londres. La banda se fundó en abril de 1962 por Brian Jones, Mick Jagger, Keith Richards, Bill Wyman, Ian Stewart y Charlie Watts. Brian Jones fue despedido en 1969, falleciendo al poco tiempo, siendo reemplazado por el guitarrista Mick Taylor, que dejaría el grupo en 1975 y sería a su vez reemplazado por Ron Wood. Con el retiro de Bill Wyman en 1993 se incluyó al bajista Darryl Jones que, aunque toca con la banda desde la grabación del álbum Voodoo Lounge en 1994, no es un miembro oficial.'),
(2, 'David Bowie', 'New York', 'EEUU', 'Rock', '2016-02-04 05:30:14', 'David Robert Jones (Londres, 8 de enero de 1947-Nueva York, 10 de enero de 2016), más conocido por su nombre artístico David Bowie, fue un músico y compositor británico, quien ejerció a su vez de actor, productor discográfico y arreglista. Figura importante de la música popular durante más de cinco décadas, Bowie es considerado un innovador, en particular por sus trabajos de la década de 1970 y por su peculiar voz, además de la profundidad intelectual de su obra.'),
(3, 'Dire Straits', 'Londres', 'UK', 'Rock', '2016-02-02 12:15:48', 'Dire Straits fue una banda de rock británica, fundada en 1977 por Mark Knopfler (guitarra y voz), David Knopfler (guitarra), John Illsley (bajo) y Pick Withers (batería), con Ed Bicknell como director. Se disolvió en 1995.'),
(4, 'Jimmy Hendrix', 'Seattle', 'EEUU', 'Rock', '2016-02-02 13:22:43', 'James Marshall «Jimi» Hendrix (nacido Johnny Allen Hendrix; Seattle, Estados Unidos, 27 de noviembre de 1942-Londres, Reino Unido, 18 de septiembre de 1970) fue un músico y cantautor estadounidense. Hendrix es considerado uno de los mejores y más influyentes guitarristas eléctricos de la historia de la música popular, y uno de los músicos más importantes del siglo XX. '),
(5, 'Jhonny Cash', 'Arkansas', 'EEUU', 'Country', '2016-02-02 18:13:23', 'Johnny ''''J.R'''' Cash (Kingsland, Arkansas, 26 de febrero de 1932 - Nashville, Tennessee, 12 de septiembre de 2003) fue cantante, compositor, guitarrista, actor y autor estadounidense y es considerado como uno de los músicos más influyentes del siglo XX. Cantautor de country, gospel, rock and roll y rockabilly, fue y es uno de los máximos representantes de la música country, aunque creó su propio subgénero musical. The man who sold the world.'),
(6, 'Hank Williams', 'Alabama', 'EEUU', 'Country', '2016-02-06 02:03:34', 'Hank Williams (Mount Olive (Alabama), 17 de septiembre de 1923 - Oak Hill (Virginia Occidental), 1 de enero de 1953) fue un cantautor estadounidense, que se convirtió en un icono de la música country y en uno de los más influyentes músicos del siglo XX. Destacado intérprete de la música Honky tonk, grabó numerosos éxitos que, junto a sus carismáticas interpretaciones y composiciones, le proporcionaron una gran fama.'),
(7, 'Chuck Berry', 'Misouri', 'EEUU', 'Rock and Roll', '2016-02-03 19:27:23', 'Charles Edward Anderson Berry (Saint Louis, Misuri, 18 de octubre de 1926), conocido artísticamente como Chuck Berry, es un compositor, intérprete y guitarrista estadounidense. Es considerado uno de los músicos más influyentes en la historia del rock and roll, siendo uno de los pioneros de dicho género musical. Gracias a canciones como "Maybellene" (1955), "Roll Over Beethoven" (1956), "Rock and Roll Music" (1957) y "Johnny B. Goode" (1958), Berry redefinió los elementos del rhythm and blues, creando las bases del rock and roll.'),
(8, 'The Beatles', 'Liverpool', 'UK', 'Pop', '2016-02-06 04:26:54', 'The Beatles fueron una banda de rock inglesa activa durante la década de 1960, y reconocida como la más exitosa comercialmente y críticamente aclamada en la historia de la música popular.Formada en Liverpool, estuvo constituida desde 1962 por John Lennon (guitarra rítmica, vocalista), Paul McCartney (bajo, vocalista), George Harrison (guitarra solista, vocalista) y Ringo Starr (batería, vocalista). Enraizada en el skiffle y el rock and roll de los años cincuenta, la banda trabajó más tarde con distintos géneros musicales, que iban desde las baladas pop hasta el rock psicodélico, incorporando a menudo elementos clásicos, entre otros, de forma innovadora en sus canciones. '),
(9, 'Elvis Presley', 'Tennessee', 'EEUU', 'Rock and Roll', '2016-02-06 02:04:04', 'Elvis Aaron Presleynota(Tupelo, Misisipi, 8 de enero de 1935 - Memphis, Tennessee, 16 de agosto de 1977) fue un cantante y actor estadounidense y de los más populares del siglo XX, considerado como un icono cultural y conocido ampliamente bajo su nombre de pila, Elvis. Se hace referencia a él frecuentemente como «el Rey del rock and roll» o simplemente «el Rey».'),
(10, 'King Crimson', 'London', 'UK', 'Experimental', '2016-02-04 06:13:54', 'King Crimson es una banda de rock progresivo fundada en Londres en 1969. Es considerado uno de los grupos pioneros del rock progresivo de los años 70, y uno de los pilares del género, más allá de su diversificación sonora y mutaciones estilísticas.'),
(11, 'Lynyrd Skynyrd', 'Jacksonville, Florida', 'EEUU', 'Southern Rock', '2016-02-03 23:02:10', 'Lynyrd Skynyrd es una banda de rock estadounidense formada en 1964 por el vocalista Ronnie Van Zant, los guitarristas Gary Rossington y Allen Collins, el batería Bob Burns y el bajista Larry Junstrom en Jacksonville, Florida. Originalmente, el grupo adoptó distintos nombres antes de decidirse por Lynyrd Skynyrd, en referencia al profesor de gimnasia de algunos de sus miembros.'),
(18, 'Leño', 'Madrid', 'España', 'Rock', '2016-02-07 13:46:42', 'Leño fue un grupo musical de rock urbano madrileño. Fue creado en 1978 por Rosendo Mercado, Ramiro Penas y Chiqui Mariscal, que mediada la grabación del primer disco marchó siendo sustituido por Tony Urbano, y se disolvió en octubre de 1983. Se les considera pioneros del hard rock en España así como de la corriente musical de rock urbano'),
(21, 'La Broma de Ssatán', 'Madrid', 'España', 'Rock and Roll', '2016-02-07 23:09:34', 'La Broma de Ssatán es un grupo de punk procedente de Madrid, España. El nombre del grupo a veces también se escribe, tal vez por error, como «La Broma de Satán» (con una sola ‘S’), y se abrevia (al menos en la contraportada de su primer disco) como «B-SS». Cuentan con una amplia carrera musical, empezando su andadura en 1980, coincidiendo con el estallido del punk y los inicios de la movida madrileña.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `admin` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21223 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created`, `modified`, `admin`) VALUES
(21221, 'dwes_admin', '$2a$10$.YGthkqim7OQN7MIEYwNAePdNtrkU/NrxZHFLISgCglD6Ne3JTU7a', '2016-02-08 05:02:48', '2016-02-08 05:02:48', '1'),
(21222, 'dwes_user', '$2a$10$ab5D.tQDIPzWE.BSob.Ff.ZLd/n4xwLWQRq3D6pBOfM1YSS5zGu4a', '2016-02-08 05:03:22', '2016-02-08 05:03:22', '0');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT de la tabla `artistas`
--
ALTER TABLE `artistas`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21223;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
