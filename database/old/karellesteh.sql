-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3307
-- Время создания: Сен 30 2021 г., 18:13
-- Версия сервера: 8.0.19
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `karellesteh`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `idCategory` int NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`idCategory`, `name`) VALUES
(1, 'Харвестер'),
(2, 'Форвардер'),
(3, 'Не указано');

-- --------------------------------------------------------

--
-- Структура таблицы `categoryparts`
--

DROP TABLE IF EXISTS `categoryparts`;
CREATE TABLE `categoryparts` (
  `idCategoryPart` int NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `categoryparts`
--

INSERT INTO `categoryparts` (`idCategoryPart`, `name`) VALUES
(1, 'Гидравлическая система'),
(2, 'Трансмиссия'),
(3, 'Манипулятор'),
(4, 'Электронный блок'),
(5, 'Части Кузова, Подвески, Полурамы'),
(6, 'Двигатель'),
(7, 'Кабины и интерьер'),
(8, 'Тормозная система'),
(9, 'Подшипники'),
(10, 'Колеса и диски'),
(11, 'Голова'),
(12, 'Другое');

-- --------------------------------------------------------

--
-- Структура таблицы `conditions`
--

DROP TABLE IF EXISTS `conditions`;
CREATE TABLE `conditions` (
  `idCondition` int NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `conditions`
--

INSERT INTO `conditions` (`idCondition`, `name`) VALUES
(1, 'Новое'),
(2, 'Б/У'),
(3, 'Не указано'),
(4, 'Отличное'),
(5, 'Хорошее');

-- --------------------------------------------------------

--
-- Структура таблицы `locations`
--

DROP TABLE IF EXISTS `locations`;
CREATE TABLE `locations` (
  `idLocation` int NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `locations`
--

INSERT INTO `locations` (`idLocation`, `name`) VALUES
(1, 'Республика Карелия, Петрозаводск, район Томицы');

-- --------------------------------------------------------

--
-- Структура таблицы `manufacturers`
--

DROP TABLE IF EXISTS `manufacturers`;
CREATE TABLE `manufacturers` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `manufacturers`
--

INSERT INTO `manufacturers` (`id`, `name`) VALUES
(1, 'Не указан'),
(2, 'Sauer Danfoss'),
(3, 'NAF'),
(4, 'CLARK');

-- --------------------------------------------------------

--
-- Структура таблицы `marks`
--

DROP TABLE IF EXISTS `marks`;
CREATE TABLE `marks` (
  `idMark` int NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `marks`
--

INSERT INTO `marks` (`idMark`, `name`) VALUES
(1, 'Ponsse'),
(2, 'John Deere'),
(3, 'Valmet'),
(4, 'Timberjack'),
(5, 'Komatsu'),
(6, 'Не указано');

-- --------------------------------------------------------

--
-- Структура таблицы `models`
--

DROP TABLE IF EXISTS `models`;
CREATE TABLE `models` (
  `idModel` int NOT NULL,
  `markId` int NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `models`
--

INSERT INTO `models` (`idModel`, `markId`, `name`) VALUES
(1, 1, 'Не указано PN'),
(4, 2, 'Не указано JD'),
(5, 3, '860.1'),
(6, 3, '860.2'),
(7, 3, '860.3'),
(8, 3, '840.1'),
(9, 3, '840.2'),
(10, 3, '840.3'),
(11, 1, 'Ergo'),
(12, 1, 'Buffalo'),
(13, 2, '1270D'),
(14, 2, '1110D'),
(15, 3, 'Не указано Vt'),
(16, 4, 'Не указано Tb'),
(17, 2, '1270E'),
(18, 4, '1270B'),
(19, 2, '1410D'),
(20, 6, 'Не указано'),
(21, 2, '1510E'),
(22, 2, '1210E'),
(23, 2, '1510G'),
(24, 2, '1010D'),
(25, 5, 'Не указано Kt');

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `modelsview`
-- (См. Ниже фактическое представление)
--
DROP VIEW IF EXISTS `modelsview`;
CREATE TABLE `modelsview` (
`idModel` int
,`markName` varchar(255)
,`modelName` varchar(255)
);

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `idNew` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mainImg` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `additionImg` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`idNew`, `title`, `text`, `date`, `mainImg`, `additionImg`) VALUES
(1, 'Приобрели Ponsse Ergo на разборку', 'Все вопросы по состоянию, наличию и ценам узнавать по телефонам:\r\n<p>Максим +7 (921) 454-24-04</p>\r\nОлег +7 (921) 466-56-74', '2020-08-24 13:24:32', 'img\\News\\news1\\news1.jpg', 'img\\News\\news1\\news1.jpg'),
(2, 'ФОРВАРДЕР 1210Е на разборку!', 'Все вопросы по состоянию, наличию и ценам узнавать по телефонам:\r\n<p>Максим +7 (921) 454-24-04</p>\r\nОлег +7 (921) 466-56-74', '2020-11-17 18:18:37', 'img\\News\\news2\\news1.jpg', 'img\\News\\news2\\news2.jpg\r\nimg\\News\\news2\\news3.jpg\r\nimg\\News\\news2\\news4.jpg\r\nimg\\News\\news2\\news5.jpg'),
(3, 'Гидроцилиндры', 'В наличии большой выбор гидроцилиндров!', '2021-09-24 18:19:47', 'img\\News\\news3\\news1.jpg', '');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `idProduct` int NOT NULL,
  `categoryId` int NOT NULL,
  `categorypartId` int NOT NULL,
  `markId` int NOT NULL,
  `modelId` int NOT NULL,
  `conditionId` int NOT NULL,
  `manufacturerId` int NOT NULL,
  `locationId` int NOT NULL,
  `nameProduct` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `acceptability` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `img` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `additionalImg` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `alt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `vendorCode` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addition` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` int NOT NULL,
  `forIdName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`idProduct`, `categoryId`, `categorypartId`, `markId`, `modelId`, `conditionId`, `manufacturerId`, `locationId`, `nameProduct`, `acceptability`, `img`, `additionalImg`, `alt`, `code`, `vendorCode`, `addition`, `price`, `forIdName`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 'БОРТОВОЙ РЕДУКТОР PONSSE PO40', 'Ponsse', 'http://placehold.it/350x150', 'ntc', 'test', 'fsa', '123', 'sda', 1, ''),
(2, 2, 3, 1, 1, 3, 1, 1, '125 кран в сборе Ponsse Ergo', 'Ponsse', 'img/125kranponsseergo/125kranponsseergo1.jpg ', 'img/125kranponsseergo/125kranponsseergo2.jpg img/125kranponsseergo/125kranponsseergo3.jpg img/125kranponsseergo/125kranponsseergo4.jpg img/125kranponsseergo/125kranponsseergo5.jpg', '125 kran ponsse ergo', '', '', '125 кран в сборе Ponsse Ergo', 1, ''),
(3, 2, 2, 2, 4, 2, 1, 1, 'Чулок John Deere правый', 'John Deere', 'img/CHulokJohnDeerepravyj/CHulokJohnDeerepravyj1.jpg', 'img/CHulokJohnDeerepravyj/CHulokJohnDeerepravyj2.jpg img/CHulokJohnDeerepravyj/CHulokJohnDeerepravyj3.jpg img/CHulokJohnDeerepravyj/CHulokJohnDeerepravyj4.jpg', 'CHulokJohnDeerepravyj', '', '', '', 1, ''),
(4, 2, 2, 1, 1, 2, 1, 1, 'Чулок Ponsse правый', 'Ponsse', 'img/CHulokPonssepravyj/CHulokPonssepravyj1.jpg', 'img/CHulokPonssepravyj/CHulokPonssepravyj2.jpg img/CHulokPonssepravyj/CHulokPonssepravyj3.jpg', 'Чулок Ponsse Правый', '', '', '', 1, ''),
(5, 2, 2, 3, 5, 3, 1, 1, 'Чулок опора моста Valmet 860.1/2/3', 'Valmet', 'img\\CHulokoporamostaValmet860.123\\CHulokoporamostaValmet860.123.jpg', '', 'Чулок опора моста Valmet 860.1/2/3', '', '', '', 1, ''),
(6, 2, 2, 3, 6, 3, 1, 1, 'Чулок опора моста Valmet 860.1/2/3', 'Valmet', 'img\\CHulokoporamostaValmet860.123\\CHulokoporamostaValmet860.123.jpg', '', 'Чулок опора моста Valmet 860.1/2/3', '', '', '', 1, ''),
(7, 2, 2, 3, 7, 3, 1, 1, 'Чулок опора моста Valmet 860.1/2/3', 'Valmet', 'img\\CHulokoporamostaValmet860.123\\CHulokoporamostaValmet860.123.jpg', '', 'Чулок опора моста Valmet 860.1/2/3', '', '', '', 1, ''),
(8, 2, 6, 3, 5, 2, 1, 1, 'Двигатель Valmet 860.1 / 860.2 / 860.3; 840.1 / 840.2 / 840.3', 'Valmet', 'img\\DvigatelValmet\\DvigatelValmet.jpg\r\n', '', 'Двигатель Valmet', '', '', 'Valmet 860.1 / 860.2 / 860.3; 840.1 / 840.2 / 840.3', 1, ''),
(9, 3, 2, 6, 20, 4, 3, 1, 'Редуктор NAF, LOK175, в рабочем состоянии', '', 'img\\Reduktor_NAF_LOK175\\Reduktor_NAF_LOK175_1.jpg', 'img\\Reduktor_NAF_LOK175\\Reduktor_NAF_LOK175_2.jpg img\\Reduktor_NAF_LOK175\\Reduktor_NAF_LOK175_3.jpg', 'Редуктор NAF, LOK175, в рабочем состоянии', '', '', '', 1, 'Reduktor_NAF_LOK175'),
(10, 2, 6, 3, 6, 2, 1, 1, 'Двигатель Valmet 860.1 / 860.2 / 860.3; 840.1 / 840.2 / 840.3', 'Valmet', 'img\\DvigatelValmet\\DvigatelValmet.jpg\r\n', '', 'Двигатель Valmet', '', '', 'Valmet 860.1 / 860.2 / 860.3; 840.1 / 840.2 / 840.3', 1, ''),
(11, 2, 6, 3, 7, 2, 1, 1, 'Двигатель Valmet 860.1 / 860.2 / 860.3; 840.1 / 840.2 / 840.3', 'Valmet', 'img\\DvigatelValmet\\DvigatelValmet.jpg\r\n', '', 'Двигатель Valmet', '', '', 'Valmet 860.1 / 860.2 / 860.3; 840.1 / 840.2 / 840.3', 1, ''),
(12, 2, 6, 3, 8, 2, 1, 1, 'Двигатель Valmet 860.1 / 860.2 / 860.3; 840.1 / 840.2 / 840.3', 'Valmet', 'img\\DvigatelValmet\\DvigatelValmet.jpg\r\n', '', 'Двигатель Valmet', '', '', 'Valmet 860.1 / 860.2 / 860.3; 840.1 / 840.2 / 840.3', 1, ''),
(13, 2, 6, 3, 9, 2, 1, 1, 'Двигатель Valmet 860.1 / 860.2 / 860.3; 840.1 / 840.2 / 840.3', 'Valmet', 'img\\DvigatelValmet\\DvigatelValmet.jpg\r\n', '', 'Двигатель Valmet', '', '', 'Valmet 860.1 / 860.2 / 860.3; 840.1 / 840.2 / 840.3', 1, ''),
(14, 2, 6, 3, 10, 2, 1, 1, 'Двигатель Valmet 860.1 / 860.2 / 860.3; 840.1 / 840.2 / 840.3', 'Valmet', 'img\\DvigatelValmet\\DvigatelValmet.jpg\r\n', '', 'Двигатель Valmet', '', '', 'Valmet 860.1 / 860.2 / 860.3; 840.1 / 840.2 / 840.3', 1, ''),
(15, 1, 6, 1, 11, 2, 1, 1, 'Двигатель Caterpillar, Ergo Buffalo S16', 'Valmet', 'img\\DvigatelCaterpillar,ErgoBuffaloS16\\DvigatelCaterpillar,ErgoBuffaloS16.jpg', '', 'Двигатель Caterpillar, Ergo Buffalo S16', '', '', '', 1, ''),
(16, 2, 6, 1, 12, 2, 1, 1, 'Двигатель Caterpillar, Ergo Buffalo S16', 'Valmet', 'img\\DvigatelCaterpillar,ErgoBuffaloS16\\DvigatelCaterpillar,ErgoBuffaloS16.jpg', '', 'Двигатель Caterpillar, Ergo Buffalo S16', '', '', '', 1, ''),
(17, 1, 6, 2, 13, 2, 1, 1, 'Двигатель John Deere 1270D, 8.1 л, 1 комплектности Тир2', 'John Deere', 'img\\DvigatelJohnDeere\\DvigatelJohnDeere.jpg', '', 'Двигатель John Deere 1270D, 8.1 л, 1 комплектности Тир2', '', '', '', 1, ''),
(18, 2, 6, 2, 4, 2, 1, 1, 'Двигатель John Deere Тир 3, 6,8 л., первой комплектности', 'John Deere', 'img\\DvigatelJohnDeereTir3,6,8.,pervojkomplektnosti\\DvigatelJohnDeereTir3,6,8.,pervojkomplektnosti1.jpg', 'img\\DvigatelJohnDeereTir3,6,8.,pervojkomplektnosti\\DvigatelJohnDeereTir3,6,8.,pervojkomplektnosti2.jpg', 'Двигатель John Deere Тир 3, 6,8 л., первой комплектности', '', '', '', 1, ''),
(19, 2, 6, 1, 12, 2, 1, 1, 'Двигатель Mercedes OM 906 Ponsse Ergo,Buffalo', 'Ponsse', 'img\\DvigatelMercedesOM906PonsseErgo,Buffalo\\DvigatelMercedesOM906PonsseErgo,Buffalo1.jpg', 'img\\DvigatelMercedesOM906PonsseErgo,Buffalo\\DvigatelMercedesOM906PonsseErgo,Buffalo2.jpg', 'Двигатель Mercedes OM 906 Ponsse Ergo,Buffalo', '', '', '', 1, ''),
(20, 1, 6, 1, 11, 2, 1, 1, 'Двигатель Mercedes OM 906 Ponsse Ergo,Buffalo', 'Ponsse', 'img\\DvigatelMercedesOM906PonsseErgo,Buffalo\\DvigatelMercedesOM906PonsseErgo,Buffalo1.jpg', 'img\\DvigatelMercedesOM906PonsseErgo,Buffalo\\DvigatelMercedesOM906PonsseErgo,Buffalo2.jpg', 'Двигатель Mercedes OM 906 Ponsse Ergo,Buffalo', '', '', '', 1, ''),
(21, 1, 6, 2, 13, 2, 1, 1, 'Двигатель Perkins John Deere 1270D, 1 комплектности ', 'John Deere', 'img\\DvigatelPerkins\\DvigatelPerkins.jpg', '', 'Двигатель Perkins John Deere 1270D, 1 комплектности ', '', '', '', 1, ''),
(22, 2, 7, 2, 4, 3, 1, 1, 'Двигатель стеклоочистителя на John Deere и Ponsse.', 'John Deere Ponsse', 'img\\Dvigatelstekloochistitelya(motorchikdvornikov)\\Dvigatelstekloochistitelya(motorchikdvornikov)1.jpg', 'img\\Dvigatelstekloochistitelya(motorchikdvornikov)\\Dvigatelstekloochistitelya(motorchikdvornikov)2.jpg img\\Dvigatelstekloochistitelya(motorchikdvornikov)\\Dvigatelstekloochistitelya(motorchikdvornikov)3.jpg img\\Dvigatelstekloochistitelya(motorchikdvornikov)\\Dvigatelstekloochistitelya(motorchikdvornikov)4.jpg', 'Двигатель стеклоочистителя на John Deere и Ponsse.', '', '', '', 1, ''),
(23, 2, 7, 1, 1, 3, 1, 1, 'Двигатель стеклоочистителя на John Deere и Ponsse.', 'John Deere Ponsse', 'img\\Dvigatelstekloochistitelya(motorchikdvornikov)\\Dvigatelstekloochistitelya(motorchikdvornikov)1.jpg', 'img\\Dvigatelstekloochistitelya(motorchikdvornikov)\\Dvigatelstekloochistitelya(motorchikdvornikov)2.jpg img\\Dvigatelstekloochistitelya(motorchikdvornikov)\\Dvigatelstekloochistitelya(motorchikdvornikov)3.jpg img\\Dvigatelstekloochistitelya(motorchikdvornikov)\\Dvigatelstekloochistitelya(motorchikdvornikov)4.jpg', 'Двигатель стеклоочистителя на John Deere и Ponsse.', '', '', '', 1, ''),
(24, 2, 7, 1, 1, 2, 1, 1, 'Джойстики поворота крана', '', 'img\\Dzhojstiki\\Dzhojstiki1.jpg', 'img\\Dzhojstiki\\Dzhojstiki2.jpg img\\Dzhojstiki\\Dzhojstiki3.jpg img\\Dzhojstiki\\Dzhojstiki4.jpg img\\Dzhojstiki\\Dzhojstiki5.jpg', 'Джойстики поворота крана', '', '', '', 1, ''),
(25, 1, 1, 2, 13, 1, 1, 1, 'Гидроцилиндр подъема стола John Deere 1270D', 'John Deere', 'img\\GidrocilindrpodieemastolaJohnDeere1270D\\GidrocilindrpodieemastolaJohnDeere1270D1.jpg', 'img\\GidrocilindrpodieemastolaJohnDeere1270D\\GidrocilindrpodieemastolaJohnDeere1270D2.jpg img\\GidrocilindrpodieemastolaJohnDeere1270D\\GidrocilindrpodieemastolaJohnDeere1270D3.jpg img\\GidrocilindrpodieemastolaJohnDeere1270D\\GidrocilindrpodieemastolaJohnDeere1270D4.jpg', 'Гидроцилиндр подъема стола John Deere 1270D', '', '', '', 1, ''),
(26, 3, 1, 2, 4, 3, 1, 1, 'Гидромотор хода John Deere', 'John Deere', 'img\\GidromotorhodaJohnDeere\\GidromotorhodaJohnDeere3.jpg', 'img\\GidromotorhodaJohnDeere\\GidromotorhodaJohnDeere2.jpg img\\GidromotorhodaJohnDeere\\GidromotorhodaJohnDeere1.jpg', 'Гидромотор хода John Deere', '', '', '', 1, ''),
(27, 1, 1, 1, 11, 2, 1, 1, 'Гидромотор маленьких вальцов на Ponsse H73E\r\n', 'Ponsse', 'img\\GidromotornaPonsseH73E\\GidromotornaPonsseH73E1.jpg', 'img\\GidromotornaPonsseH73E\\GidromotornaPonsseH73E2.jpg img\\GidromotornaPonsseH73E\\GidromotornaPonsseH73E3.jpg img\\GidromotornaPonsseH73E\\GidromotornaPonsseH73E4.jpg', 'Гидромотор маленьких вальцов на Ponsse H73E\r\n', '', '', '', 1, ''),
(28, 1, 1, 1, 1, 1, 2, 1, 'Гидромотор sauer danfoss OMT 400 HD', '', 'img\\GidromotorsauerdanfossOMT400HD\\GidromotorsauerdanfossOMT400HD1.jpg', 'img\\GidromotorsauerdanfossOMT400HD\\GidromotorsauerdanfossOMT400HD2.jpg', 'Гидромотор sauer danfoss OMT 400 HD', '', '', '', 1, ''),
(29, 3, 1, 2, 4, 3, 1, 1, 'Гильзы поворотные John Deere', 'John Deere', 'img\\GilzypovorotnyeJohnDeere\\GilzypovorotnyeJohnDeere.jpg', '', 'Гильзы поворотные John Deere', '', '', '', 1, ''),
(30, 3, 3, 2, 4, 2, 1, 1, 'John Deere рукоять без секции и стрела CF885', 'John Deere', 'img\\John_Deere_rukoyat\\John_Deere_rukoyat1.jpg', 'img\\John_Deere_rukoyat\\John_Deere_rukoyat2.jpg img\\John_Deere_rukoyat\\John_Deere_rukoyat3.jpg img\\John_Deere_rukoyat\\John_Deere_rukoyat4.jpg img\\John_Deere_rukoyat\\John_Deere_rukoyat5.jpg', 'John Deere рукоять без секции и стрела CF885', '', '', '', 1, ''),
(31, 2, 2, 2, 14, 2, 1, 1, 'Кардан сочленения на John Deere 1110D', 'John Deere', 'img\\Kardan_sochleneniya_na_John Deere_1110D\\Kardan_sochleneniya_na_John Deere_1110D1.jpg', 'img\\Kardan_sochleneniya_na_John Deere_1110D\\Kardan_sochleneniya_na_John Deere_1110D2.jpg', 'Кардан сочленения на John Deere 1110D', '', '', '', 1, ''),
(32, 3, 2, 2, 4, 2, 1, 1, 'Карданные валы Ponsse, John Deere, Valmet', 'Ponsse John Deere Valmet', 'img\\Kardannye_valy_Ponsse_John_Deere_Valmet\\Kardannye_valy_Ponsse_John_Deere_Valmet1.jpg', 'img\\Kardannye_valy_Ponsse_John_Deere_Valmet\\Kardannye_valy_Ponsse_John_Deere_Valmet2.jpg img\\Kardannye_valy_Ponsse_John_Deere_Valmet\\Kardannye_valy_Ponsse_John_Deere_Valmet3.jpg', 'Карданные валы Ponsse, John Deere, Valmet', '', '', '', 1, ''),
(33, 3, 2, 1, 1, 2, 1, 1, 'Карданные валы Ponsse, John Deere, Valmet', 'Ponsse John Deere Valmet', 'img\\Kardannye_valy_Ponsse_John_Deere_Valmet\\Kardannye_valy_Ponsse_John_Deere_Valmet1.jpg', 'img\\Kardannye_valy_Ponsse_John_Deere_Valmet\\Kardannye_valy_Ponsse_John_Deere_Valmet2.jpg img\\Kardannye_valy_Ponsse_John_Deere_Valmet\\Kardannye_valy_Ponsse_John_Deere_Valmet3.jpg', 'Карданные валы Ponsse, John Deere, Valmet', '', '', '', 1, ''),
(34, 3, 2, 3, 15, 2, 1, 1, 'Карданные валы Ponsse, John Deere, Valmet', 'Ponsse John Deere Valmet', 'img\\Kardannye_valy_Ponsse_John_Deere_Valmet\\Kardannye_valy_Ponsse_John_Deere_Valmet1.jpg', 'img\\Kardannye_valy_Ponsse_John_Deere_Valmet\\Kardannye_valy_Ponsse_John_Deere_Valmet2.jpg img\\Kardannye_valy_Ponsse_John_Deere_Valmet\\Kardannye_valy_Ponsse_John_Deere_Valmet3.jpg', 'Карданные валы Ponsse, John Deere, Valmet', '', '', '', 1, ''),
(35, 1, 4, 6, 16, 2, 1, 1, 'ККХМ модуль харвестерной головы 480758', 'Ponsse', 'img\\KKHM_modul_harvesternoj_golovy_480758\\KKHM_modul_harvesternoj_golovy_4807581.jpg', 'img\\KKHM_modul_harvesternoj_golovy_480758\\KKHM_modul_harvesternoj_golovy_4807582.jpg', 'ККХМ модуль харвестерной головы 480758', '480758', '', '', 1, 'KKHM_modul_harvesternoj_golovy_480758'),
(36, 2, 9, 6, 20, 2, 1, 1, 'Подшипники тандемные ', '', 'img\\Podshipniki_tandemnye\\Podshipniki_tandemnye.jpg', '', 'Подшипники тандемные ', '', '', '', 1, 'Podshipniki_tandemnye'),
(37, 2, 2, 2, 24, 3, 1, 1, 'Редуктор John Deere 1010D, пара 12/28', 'John Deere', 'img\\Reduktor_John_Deere_1010D_para_12_28\\Reduktor_John_Deere_1010D_para_12_28.jpg', '', 'Редуктор John Deere 1010D, пара 12/28', '', '', 'пара 12/28', 1, 'Reduktor_John_Deere_1010D_para_12_28'),
(38, 1, 7, 1, 1, 2, 1, 1, 'Клавиатура для спецтехники', 'Ponsse John Deere Valmet', 'img\\Klaviatura_dlya_spectekhniki\\Klaviatura_dlya_spectekhniki.jpg', '', 'Клавиатура для спецтехники', '', '', 'Подходит для всех видов спецтехники', 1, ''),
(39, 1, 7, 2, 4, 2, 1, 1, 'Клавиатура для спецтехники', 'Ponsse John Deere Valmet', 'img\\Klaviatura_dlya_spectekhniki\\Klaviatura_dlya_spectekhniki.jpg', '', 'Клавиатура для спецтехники', '', '', 'Подходит для всех видов спецтехники', 1, ''),
(40, 1, 7, 3, 15, 2, 1, 1, 'Клавиатура для спецтехники', 'Ponsse John Deere Valmet Timberjack', 'img\\Klaviatura_dlya_spectekhniki\\Klaviatura_dlya_spectekhniki.jpg', '', 'Клавиатура для спецтехники', '', '', 'Подходит для всех видов спецтехники', 1, ''),
(41, 2, 7, 1, 1, 2, 1, 1, 'Клавиатура для спецтехники', 'Ponsse John Deere Valmet Timberjack', 'img\\Klaviatura_dlya_spectekhniki\\Klaviatura_dlya_spectekhniki.jpg', '', 'Клавиатура для спецтехники', '', '', 'Подходит для всех видов спецтехники', 1, ''),
(42, 2, 7, 2, 4, 2, 1, 1, 'Клавиатура для спецтехники', 'Ponsse John Deere Valmet Timberjack', 'img\\Klaviatura_dlya_spectekhniki\\Klaviatura_dlya_spectekhniki.jpg', '', 'Клавиатура для спецтехники', '', '', 'Подходит для всех видов спецтехники', 1, ''),
(43, 2, 7, 3, 15, 2, 1, 1, 'Клавиатура для спецтехники', 'Ponsse John Deere Valmet Timberjack', 'img\\Klaviatura_dlya_spectekhniki\\Klaviatura_dlya_spectekhniki.jpg', '', 'Клавиатура для спецтехники', '', '', 'Подходит для всех видов спецтехники', 1, ''),
(44, 1, 3, 2, 13, 2, 1, 1, 'Колонна John Deere 1270D', 'John Deere', 'img\\Kolonna_John_Deere_1270D\\Kolonna_John_Deere_1270D1.jpg', 'img\\Kolonna_John_Deere_1270D\\Kolonna_John_Deere_1270D2.jpg img\\Kolonna_John_Deere_1270D\\Kolonna_John_Deere_1270D3.jpg', 'Колонна John Deere 1270D\r\n', '', '', '', 1, ''),
(45, 1, 3, 2, 17, 2, 1, 1, 'Колонна John Deere 1270E', 'John Deere', 'img\\Kolonna_John_Deere_1270E\\Kolonna_John_Deere_1270E1.jpg', 'img\\Kolonna_John_Deere_1270E\\Kolonna_John_Deere_1270E2.jpg img\\Kolonna_John_Deere_1270E\\Kolonna_John_Deere_1270E3.jpg img\\Kolonna_John_Deere_1270E\\Kolonna_John_Deere_1270E4.jpg img\\Kolonna_John_Deere_1270E\\Kolonna_John_Deere_1270E5.jpg', 'Колонна John Deere 1270E', '', '', '', 1, 'Kolonna_John_Deere_1270E'),
(46, 2, 3, 1, 12, 2, 1, 1, 'Колонна K90 Ponsse Buffalo', 'Ponsse', 'img\\Kolonna_K90_Ponsse_Buffalo\\Kolonna_K90_Ponsse_Buffalo.jpg', '', 'Колонна K90 Ponsse Buffalo', '', '', 'без сварки, в идеальном состоянии', 1, 'Kolonna_K90_Ponsse_Buffalo'),
(47, 1, 3, 1, 11, 2, 1, 1, 'Колонна Ponsse Ergo', 'Ponsse', 'img\\Kolonna_Ponsse_Ergo\\Kolonna_Ponsse_Ergo1.jpg', 'img\\Kolonna_Ponsse_Ergo\\Kolonna_Ponsse_Ergo2.jpg img\\Kolonna_Ponsse_Ergo\\Kolonna_Ponsse_Ergo3.jpg img\\Kolonna_Ponsse_Ergo\\Kolonna_Ponsse_Ergo4.jpg', 'Колонна Ponsse Ergo', '', '', 'Колонна в отличном состоянии', 1, 'Kolonna_Ponsse_Ergo'),
(48, 1, 11, 1, 1, 1, 1, 1, 'Ротаторы BBR15HD, для харвестера Ponsse, John Deere, Komatsu. Новые и б/у', 'Ponsse John Deere Komatsu', 'img\\Rotator_BBR15HD_dlya_harvejstera_Ponsse_Komatsu_John_Deere\\Rotator_BBR15HD_dlya_harvejstera_Ponsse_Komatsu_John_Deere_1.jpg', 'img\\Rotator_BBR15HD_dlya_harvejstera_Ponsse_Komatsu_John_Deere\\Rotator_BBR15HD_dlya_harvejstera_Ponsse_Komatsu_John_Deere_2.jpg', 'Ротаторы BBR15HD,для харвестера Ponsse, John Deere, Komatsu. Новые и б/у', '', '', 'BBR15HD, Новые и б/у', 1, 'Rotator_BBR15HD_dlya_harvejstera_Ponsse_Komatsu_John_Deere'),
(49, 1, 11, 2, 4, 1, 1, 1, 'Ротаторы BBR15HD, для харвестера Ponsse, John Deere, Komatsu. Новые и б/у', 'Ponsse John Deere Komatsu', 'img\\Rotator_BBR15HD_dlya_harvejstera_Ponsse_Komatsu_John_Deere\\Rotator_BBR15HD_dlya_harvejstera_Ponsse_Komatsu_John_Deere_1.jpg', 'img\\Rotator_BBR15HD_dlya_harvejstera_Ponsse_Komatsu_John_Deere\\Rotator_BBR15HD_dlya_harvejstera_Ponsse_Komatsu_John_Deere_2.jpg', 'Ротаторы BBR15HD,для харвестера Ponsse, John Deere, Komatsu. Новые и б/у', '', '', 'BBR15HD, Новые и б/у', 1, 'Rotator_BBR15HD_dlya_harvejstera_Ponsse_Komatsu_John_Deere'),
(50, 1, 11, 5, 25, 1, 1, 1, 'Ротаторы BBR15HD, для харвестера Ponsse, John Deere, Komatsu. Новые и б/у', 'Ponsse John Deere Komatsu', 'img\\Rotator_BBR15HD_dlya_harvejstera_Ponsse_Komatsu_John_Deere\\Rotator_BBR15HD_dlya_harvejstera_Ponsse_Komatsu_John_Deere_1.jpg', 'img\\Rotator_BBR15HD_dlya_harvejstera_Ponsse_Komatsu_John_Deere\\Rotator_BBR15HD_dlya_harvejstera_Ponsse_Komatsu_John_Deere_2.jpg', 'Ротаторы BBR15HD,для харвестера Ponsse, John Deere, Komatsu. Новые и б/у', '', '', 'BBR15HD, Новые и б/у', 1, 'Rotator_BBR15HD_dlya_harvejstera_Ponsse_Komatsu_John_Deere'),
(51, 2, 11, 1, 1, 3, 1, 1, 'Ротатор для форвардера Ponsse, Komatsu', 'Ponsse Komatsu', 'img\\Rotator_dlya_forvardera_Ponsse_Komatsu\\Rotator_dlya_forvardera_Ponsse_Komatsu_1.jpg', 'img\\Rotator_dlya_forvardera_Ponsse_Komatsu\\Rotator_dlya_forvardera_Ponsse_Komatsu_2.jpg', 'Ротатор для форвардера Ponsse, Komatsu', '', '', '', 1, 'Rotator_dlya_forvardera_Ponsse_Komatsu'),
(52, 2, 11, 5, 25, 3, 1, 1, 'Ротатор для форвардера Ponsse, Komatsu', 'Ponsse Komatsu', 'img\\Rotator_dlya_forvardera_Ponsse_Komatsu\\Rotator_dlya_forvardera_Ponsse_Komatsu_1.jpg', 'img\\Rotator_dlya_forvardera_Ponsse_Komatsu\\Rotator_dlya_forvardera_Ponsse_Komatsu_2.jpg', 'Ротатор для форвардера Ponsse, Komatsu', '', '', '', 1, 'Rotator_dlya_forvardera_Ponsse_Komatsu'),
(53, 1, 11, 1, 1, 3, 1, 1, 'Рябухи для харвестерных головок', 'Ponsse John Deere Komatsu', 'img\\Ryabuhi\\Ryabuhi_1.jpg', 'img\\Ryabuhi\\Ryabuhi_2.jpg img\\Ryabuhi\\Ryabuhi_3.jpg', 'Рябухи для харвестерных головок', '', '', '', 1, 'Ryabuhi'),
(54, 1, 11, 2, 4, 3, 1, 1, 'Рябухи для харвестерных головок', 'Ponsse John Deere Komatsu', 'img\\Ryabuhi\\Ryabuhi_1.jpg', 'img\\Ryabuhi\\Ryabuhi_2.jpg img\\Ryabuhi\\Ryabuhi_3.jpg', 'Рябухи для харвестерных головок', '', '', '', 1, 'Ryabuhi'),
(55, 1, 11, 5, 25, 3, 1, 1, 'Рябухи для харвестерных головок', 'Ponsse John Deere Komatsu', 'img\\Ryabuhi\\Ryabuhi_1.jpg', 'img\\Ryabuhi\\Ryabuhi_2.jpg img\\Ryabuhi\\Ryabuhi_3.jpg', 'Рябухи для харвестерных головок', '', '', '', 1, 'Ryabuhi'),
(56, 1, 7, 4, 18, 2, 1, 1, 'Компьютер Timberjack 1270B', 'Timberjack', 'img\\Kompyuter_1270B\\Kompyuter_1270B1.jpg', 'img\\Kompyuter_1270B\\Kompyuter_1270B2.jpg', 'Компьютер 1270B', '', '', '', 1, 'Kompyuter_1270B'),
(57, 1, 4, 4, 18, 2, 1, 1, 'Компьютер  Timberjack 1270B', 'Timberjack', 'img\\Kompyuter_1270B\\Kompyuter_1270B1.jpg', 'img\\Kompyuter_1270B\\Kompyuter_1270B2.jpg', 'Компьютер 1270B', '', '', '', 1, 'Kompyuter_1270B'),
(58, 2, 5, 1, 1, 2, 1, 1, 'Конники для форвардеров Ponsse, John Deere, Valmet', 'Ponsse John Deere Valmet', 'img\\Koniki_stojki_dlya_forvarderov_Ponsse_John_Deere_Valmet\\Koniki_stojki_dlya_forvarderov_Ponsse_John_Deere_Valmet1.jpg', 'img\\Koniki_stojki_dlya_forvarderov_Ponsse_John_Deere_Valmet\\Koniki_stojki_dlya_forvarderov_Ponsse_John_Deere_Valmet2.jpg', 'Конники для форвардеров Ponsse, John Deere, Valmet', '', '', 'Конники для форвардеров Ponsse, John Deere, Valmet', 1, 'Koniki_stojki_dlya_forvarderov_Ponsse_John_Deere_Valmet'),
(59, 2, 5, 2, 4, 2, 1, 1, 'Конники для форвардеров Ponsse, John Deere, Valmet', 'Ponsse John Deere Valmet', 'img\\Koniki_stojki_dlya_forvarderov_Ponsse_John_Deere_Valmet\\Koniki_stojki_dlya_forvarderov_Ponsse_John_Deere_Valmet1.jpg', 'img\\Koniki_stojki_dlya_forvarderov_Ponsse_John_Deere_Valmet\\Koniki_stojki_dlya_forvarderov_Ponsse_John_Deere_Valmet2.jpg', 'Конники для форвардеров Ponsse, John Deere, Valmet', '', '', 'Конники для форвардеров Ponsse, John Deere, Valmet', 1, 'Koniki_stojki_dlya_forvarderov_Ponsse_John_Deere_Valmet'),
(60, 2, 5, 3, 15, 2, 1, 1, 'Конники для форвардеров Ponsse, John Deere, Valmet', 'Ponsse John Deere Valmet', 'img\\Koniki_stojki_dlya_forvarderov_Ponsse_John_Deere_Valmet\\Koniki_stojki_dlya_forvarderov_Ponsse_John_Deere_Valmet1.jpg', 'img\\Koniki_stojki_dlya_forvarderov_Ponsse_John_Deere_Valmet\\Koniki_stojki_dlya_forvarderov_Ponsse_John_Deere_Valmet2.jpg', 'Конники для форвардеров Ponsse, John Deere, Valmet', '', '', 'Конники для форвардеров Ponsse, John Deere, Valmet', 1, 'Koniki_stojki_dlya_forvarderov_Ponsse_John_Deere_Valmet'),
(61, 1, 4, 4, 18, 2, 1, 1, 'Модуль Timberjack 1270B', 'Timberjack', 'img\\Modul_1270B\\Modul_1270B1.jpg', 'img\\Modul_1270B\\Modul_1270B2.jpg img\\Modul_1270B\\Modul_1270B3.jpg img\\Modul_1270B\\Modul_1270B4.jpg', 'Модуль 1270B', '', '', '', 1, 'Modul_1270B'),
(62, 3, 4, 2, 4, 2, 1, 1, 'Chair Module F062146 John Deere', 'John Deere', 'img\\Modul_Chair\\Modul_Chair.jpg', '', 'Chair Module F062146 John Deere', 'F062146', '', '', 1, 'Modul_Chair'),
(63, 3, 4, 4, 16, 2, 1, 1, 'Chair II модуль F056542 Timberjack', 'Timberjack', 'img\\Modul_Chair_II_Timberjack\\Modul_Chair_II_Timberjack.jpg', '', 'Chair II модуль F056542 Timberjack', 'F056542', '', '', 1, 'Modul_Chair_II_Timberjack'),
(64, 3, 4, 4, 16, 2, 1, 1, 'Модуль Chair F052982 Timberjack', 'Timberjack', 'img\\Modul_Chair_Timberjack\\Modul_Chair_Timberjack.jpg', '', 'Модуль Chair F052982 Timberjack', 'F052982', '', '', 1, 'Modul_Chair_Timberjack'),
(65, 3, 4, 2, 4, 2, 1, 1, 'Модуль крана John Deere F066588', 'John Deere', 'img\\Modul_Crane_F066588\\Modul_Crane_F066588.jpg', '', 'Модуль крана F066588', 'F066588', '', 'Модуль крана, подходит на все Трактора Джон Дир серии Д', 1, 'Modul_Crane'),
(66, 2, 4, 2, 14, 2, 1, 1, 'Модуль двигателя John Deere RE532629', 'John Deere', 'img\\Modul_dvigatelya_John_Deer_RE532629\\Modul_dvigatelya_John_Deer_RE5326291.jpg', 'img\\Modul_dvigatelya_John_Deer_RE532629\\Modul_dvigatelya_John_Deer_RE5326292.jpg', 'Модуль двигателя Джон Дир 1110д,1410д Тир 2', 'RE532629', '', 'Модуль двигателя Джон Дир 1110д,1410д Тир 2', 1, 'Modul_dvigatelya_John_Deer_RE532629'),
(67, 2, 4, 2, 19, 2, 1, 1, 'Модуль двигателя John Deere RE532629', 'John Deere', 'img\\Modul_dvigatelya_John_Deer_RE532629\\Modul_dvigatelya_John_Deer_RE5326291.jpg', 'img\\Modul_dvigatelya_John_Deer_RE532629\\Modul_dvigatelya_John_Deer_RE5326292.jpg', 'Модуль двигателя Джон Дир 1110д,1410д Тир 2', 'RE532629', '', 'Модуль двигателя Джон Дир 1110д,1410д Тир 2', 1, 'Modul_dvigatelya_John_Deer_RE532629'),
(68, 3, 4, 2, 4, 2, 1, 1, 'Модуль двигателя John Deere ENG CNTRL L9', 'John Deere', 'img\\Modul_dvigatelya_John_Deere_ENG_CNTRL_L9\\Modul_dvigatelya_John_Deere_ENG_CNTRL_L9_1.jpg', 'img\\Modul_dvigatelya_John_Deere_ENG_CNTRL_L9\\Modul_dvigatelya_John_Deere_ENG_CNTRL_L9_2.jpg', 'Модуль двигателя John Deere ENG CNTRL L9', 'P/N: SE502805, S/N: 101806', '', '', 1, 'Modul_dvigatelya_John_Deere_ENG_CNTRL_L9'),
(69, 2, 4, 1, 12, 2, 1, 1, 'Монитор для Ponsse Buffalo', 'Ponsse', 'img\\Monitor_Ponsse_Buffalo\\Monitor_Ponsse_Buffalo_1.jpg', 'img\\Monitor_Ponsse_Buffalo\\Monitor_Ponsse_Buffalo_2.jpg', 'Монитор для Ponsse Buffalo', '161517 C, Display node ac: 243', '', '161517 C, Display node ac: 243', 1, 'Monitor_Ponsse_Buffalo'),
(70, 1, 4, 2, 13, 2, 1, 1, 'Модуль двигателя John Deere 1270D ТИР 3', 'John Deere', 'img\\Modul_dvigatelya_John_Deere_1270D_TIR_3\\Modul_dvigatelya_John_Deere_1270D_TIR_3_1.jpg', 'img\\Modul_dvigatelya_John_Deere_1270D_TIR_3\\Modul_dvigatelya_John_Deere_1270D_TIR_3_2.jpg', 'Модуль двигателя John Deere 1270D ТИР 3', 'ENG CNTRL L14, P/N: RE 520953, S/N: 413534', '', 'ENG CNTRL L14, P/N: RE 520953, S/N: 413534', 1, 'Modul_dvigatelya_John_Deere_1270D_TIR_3'),
(71, 3, 4, 6, 20, 2, 1, 1, 'Модуль EPEC X1631644 A', '', 'img\\Modul_EPEC_X1631644_A\\Modul_EPEC_1.jpg', 'img\\Modul_EPEC_X1631644_A\\Modul_EPEC_2.jpg', 'Модуль EPEC X1631644 A', 'OPTI + poweri : 2101', '', '', 1, 'Modul_EPEC_X1631644_A'),
(72, 3, 4, 6, 20, 2, 1, 1, 'Модуль IQAN by Parker', '', 'img\\Modul_IQAN_by_Parker\\Modul_IQAN_by_Parker_1.jpg', 'img\\Modul_IQAN_by_Parker\\Modul_IQAN_by_Parker_2.jpg', 'Модуль IQAN by Parker', '5010003, 505230116', '', '', 1, 'Modul_IQAN_by_Parker'),
(73, 3, 4, 2, 4, 2, 1, 1, 'Hub Модуль F052980 John Deere Timberjack', 'John Deere Timberjack', 'img\\Modul_Hub_F052980\\Modul_Hub_F052980.jpg', '', 'Hub Модуль F052980 John Deere Timberjack', 'F052980', '', '', 1, 'Modul_Hub_F052980'),
(74, 3, 4, 4, 16, 2, 1, 1, 'Hub Модуль F052980 John Deere Timberjack', 'John Deere Timberjack', 'img\\Modul_Hub_F052980\\Modul_Hub_F052980.jpg', '', 'Hub Модуль F052980 John Deere Timberjack', 'F052980', '', '', 1, 'Modul_Hub_F052980'),
(75, 3, 4, 2, 4, 2, 1, 1, 'Hub модуль F062144 John Deere', 'John Deere', 'img\\Modul_Hub_F062144\\Modul_Hub_F062144.jpg', '', 'Hub модуль F062144 John Deere', 'F062144', '', '', 1, 'Modul_Hub_F062144'),
(76, 3, 4, 2, 4, 2, 1, 1, 'Модуль Hub F064578', 'John Deere', 'img\\Modul_Hub_F064578\\Modul_Hub_F064578.jpg', '', '', 'F064578', '', 'Хаб Модуль,подходит на всю технику Джон Дир серии Д', 1, 'Modul_Hub_F064578'),
(77, 2, 4, 2, 14, 2, 1, 1, 'Модуль кресла John Deere F066589', 'John Deere', 'img\\Modul_kresla_John_Deere_F066589\\Modul_kresla_John_Deere_F066589.jpg', '', 'Модуль кресла John Deere F066589', 'F066589', '', 'Хаб Модуль,подходит на всю технику Джон Дир серии Д', 1, 'Modul_kresla_John_Deere_F066589'),
(78, 1, 4, 2, 13, 2, 1, 1, 'Модуль кресла John Deere F066589', 'John Deere', 'img\\Modul_kresla_John_Deere_F066589\\Modul_kresla_John_Deere_F066589.jpg', '', 'Модуль кресла John Deere F066589', 'F066589', '', 'Хаб Модуль,подходит на всю технику Джон Дир серии Д', 1, 'Modul_kresla_John_Deere_F066589'),
(79, 2, 4, 2, 19, 2, 1, 1, 'Модуль кресла John Deere F066589', 'John Deere', 'img\\Modul_kresla_John_Deere_F066589\\Modul_kresla_John_Deere_F066589.jpg', '', 'Модуль кресла John Deere F066589', 'F066589', '', 'Хаб Модуль,подходит на всю технику Джон Дир серии Д', 1, 'Modul_kresla_John_Deere_F066589'),
(80, 3, 4, 6, 20, 2, 1, 1, 'Модуль Temic Mercedes-Benz HMG 541 446 00 35', '', 'img\\Modul_Temic_Mercedes-Benz_HMG\\Modul_Temic_Mercedes-Benz_HMG_1.jpg', 'img\\Modul_Temic_Mercedes-Benz_HMG\\Modul_Temic_Mercedes-Benz_HMG_2.jpg', 'Модуль Temic Mercedes-Benz HMG 541 446 00 35', '', '', 'ZGS 003, 00008691A3 VCU/IMO, SN-Nr. 006897', 1, 'Modul_Temic_Mercedes-Benz_HMG'),
(81, 3, 4, 2, 4, 2, 1, 1, 'Модуль Transmission John Deere F066590', 'John Deere', 'img\\Modul_Transmission_John_Deere\\Modul_Transmission_John_Deere.jpg', '', 'Модуль Transmission F066590', 'F066590', '', '', 1, 'Modul_Transmission_John_Deere'),
(82, 3, 4, 4, 16, 2, 1, 1, 'Монитор для Timberjack 1270B F 056673\r\n', 'Timberjack', 'img\\Monitor_Timberjack_TMC_F_056673\\Monitor_Timberjack_TMC_F_056673_1.jpg', 'img\\Monitor_Timberjack_TMC_F_056673\\Monitor_Timberjack_TMC_F_056673_2.jpg', 'Монитор для Timberjack 1270B F 056673\r\n', 'F 056673', '', '', 1, 'Monitor_Timberjack_TMC_F_056673'),
(83, 2, 1, 2, 19, 2, 1, 1, 'Насос гидравлики John Deere 1410D', 'John Deere', 'img\\Nasos_gidravliki_John_Deere_1410D\\Nasos_gidravliki_John_Deere_1410D_1.jpg', 'img\\Nasos_gidravliki_John_Deere_1410D\\Nasos_gidravliki_John_Deere_1410D_2.jpg img\\Nasos_gidravliki_John_Deere_1410D\\Nasos_gidravliki_John_Deere_1410D_3.jpg', 'Насос гидравлики John Deere 1410D', '', '', '', 1, 'Nasos_gidravliki_John_Deere_1410D'),
(84, 1, 1, 1, 11, 2, 1, 1, 'Насос рабочей гидравлики Ponsse Ergo', 'Ponsse', 'img\\Nasos_gidravliki_Ponsse_Ergo\\Nasos_gidravliki_Ponsse_Ergo_1.jpg', 'img\\Nasos_gidravliki_Ponsse_Ergo\\Nasos_gidravliki_Ponsse_Ergo_2.jpg img\\Nasos_gidravliki_Ponsse_Ergo\\Nasos_gidravliki_Ponsse_Ergo_3.jpg img\\Nasos_gidravliki_Ponsse_Ergo\\Nasos_gidravliki_Ponsse_Ergo_4.jpg img\\Nasos_gidravliki_Ponsse_Ergo\\Nasos_gidravliki_Ponsse_Ergo_5.jpg', 'Насос рабочей гидравлики Ponsse Ergo.', '', '', '', 1, 'Nasos_gidravliki_Ponsse_Ergo'),
(85, 2, 1, 2, 19, 2, 1, 1, 'Насос хода John Deere 1410D, 1510Е,1210Е', 'John Deere', 'img\\Nasos_hoda_John_Deere_1410D_1510Е_1210Е\\Nasos_hoda_John_Deere_1410D_1510Е_1210Е_1.jpg', 'img\\Nasos_hoda_John_Deere_1410D_1510Е_1210Е\\Nasos_hoda_John_Deere_1410D_1510Е_1210Е_2.jpg img\\Nasos_hoda_John_Deere_1410D_1510Е_1210Е\\Nasos_hoda_John_Deere_1410D_1510Е_1210Е_3.jpg', 'Насос хода John Deere 1410D, 1510Е,1210Е', '', '', '', 1, 'Nasos_hoda_John_Deere_1410D_1510Е_1210Е'),
(86, 2, 1, 2, 21, 2, 1, 1, 'Насос хода John Deere 1410D, 1510Е,1210Е', 'John Deere', 'img\\Nasos_hoda_John_Deere_1410D_1510Е_1210Е\\Nasos_hoda_John_Deere_1410D_1510Е_1210Е_1.jpg', 'img\\Nasos_hoda_John_Deere_1410D_1510Е_1210Е\\Nasos_hoda_John_Deere_1410D_1510Е_1210Е_2.jpg img\\Nasos_hoda_John_Deere_1410D_1510Е_1210Е\\Nasos_hoda_John_Deere_1410D_1510Е_1210Е_3.jpg', 'Насос хода John Deere 1410D, 1510Е,1210Е', '', '', 'John Deere 1410D, 1510Е,1210Е', 1, 'Nasos_hoda_John_Deere_1410D_1510Е_1210Е'),
(87, 2, 1, 2, 22, 2, 1, 1, 'Насос хода John Deere 1410D, 1510Е,1210Е', 'John Deere', 'img\\Nasos_hoda_John_Deere_1410D_1510Е_1210Е\\Nasos_hoda_John_Deere_1410D_1510Е_1210Е_1.jpg', 'img\\Nasos_hoda_John_Deere_1410D_1510Е_1210Е\\Nasos_hoda_John_Deere_1410D_1510Е_1210Е_2.jpg img\\Nasos_hoda_John_Deere_1410D_1510Е_1210Е\\Nasos_hoda_John_Deere_1410D_1510Е_1210Е_3.jpg', 'Насос хода John Deere 1410D, 1510Е,1210Е', '', '', 'John Deere 1410D, 1510Е,1210Е', 1, 'Nasos_hoda_John_Deere_1410D_1510Е_1210Е'),
(88, 2, 1, 2, 14, 3, 1, 1, 'Насос хода John Deere 1110D', 'John Deere', 'img\\Nasos_hoda_John_Deere_1110D\\Nasos_hoda_John_Deere_1110D_1.jpg', 'img\\Nasos_hoda_John_Deere_1110D\\Nasos_hoda_John_Deere_1110D_2.jpg img\\Nasos_hoda_John_Deere_1110D\\Nasos_hoda_John_Deere_1110D_3.jpg', 'Насос хода John Deere 1110D', '', '', '', 1, 'Nasos_hoda_John_Deere_1110D'),
(89, 2, 7, 2, 22, 1, 1, 1, 'Новый монитор для John Deere 1210E, 1510E, 1510G', 'John Deere', 'img\\Novyj_monitor_dlya_John_Deere_1210E_1510E_1510G\\Novyj_monitor_dlya_John_Deere_1210E_1510E_1510G_1.jpg', 'img\\Novyj_monitor_dlya_John_Deere_1210E_1510E_1510G\\Novyj_monitor_dlya_John_Deere_1210E_1510E_1510G_2.jpg', 'Новый монитор для John Deere 1210E, 1510E, 1510G', '', '', '', 1, 'Novyj_monitor_dlya_John_Deere_1210E_1510E_1510G'),
(90, 2, 7, 2, 21, 1, 1, 1, 'Новый монитор для John Deere 1210E, 1510E, 1510G', 'John Deere', 'img\\Novyj_monitor_dlya_John_Deere_1210E_1510E_1510G\\Novyj_monitor_dlya_John_Deere_1210E_1510E_1510G_1.jpg', 'img\\Novyj_monitor_dlya_John_Deere_1210E_1510E_1510G\\Novyj_monitor_dlya_John_Deere_1210E_1510E_1510G_2.jpg', 'Новый монитор для John Deere 1210E, 1510E, 1510G', '', '', '', 1, 'Novyj_monitor_dlya_John_Deere_1210E_1510E_1510G'),
(91, 2, 7, 2, 23, 1, 1, 1, 'Новый монитор для John Deere 1210E, 1510E, 1510G', 'John Deere', 'img\\Novyj_monitor_dlya_John_Deere_1210E_1510E_1510G\\Novyj_monitor_dlya_John_Deere_1210E_1510E_1510G_1.jpg', 'img\\Novyj_monitor_dlya_John_Deere_1210E_1510E_1510G\\Novyj_monitor_dlya_John_Deere_1210E_1510E_1510G_2.jpg', 'Новый монитор для John Deere 1210E, 1510E, 1510G', '', '', '', 1, 'Novyj_monitor_dlya_John_Deere_1210E_1510E_1510G'),
(92, 1, 11, 1, 1, 2, 1, 1, 'Ножи для харвестерных головок Ponsse, John Deere', 'Ponsse John Deere', 'img\\Nozhi_dlya_harvesternyh_golovok_Ponsse_John_Deere\\Nozhi_dlya_harvesternyh_golovok_Ponsse_John_Deere.jpg', '', 'Ножи для харвестерных головок Ponsse, John Deere', '', '', '', 1, 'Nozhi_dlya_harvesternyh_golovok_Ponsse_John_Deere'),
(93, 1, 11, 2, 4, 2, 1, 1, 'Ножи для харвестерных головок Ponsse, John Deere', 'Ponsse John Deere', 'img\\Nozhi_dlya_harvesternyh_golovok_Ponsse_John_Deere\\Nozhi_dlya_harvesternyh_golovok_Ponsse_John_Deere.jpg', '', 'Ножи для харвестерных головок Ponsse, John Deere', '', '', '', 1, 'Nozhi_dlya_harvesternyh_golovok_Ponsse_John_Deere'),
(94, 2, 2, 1, 1, 2, 3, 1, 'Опора моста ходовой тележки (чулок) NAF и CLARK, правые, левые', 'John Deere Ponsse Valmet', 'img\\Opora_mosta_(chulok)_NAF_CLARK\\Opora_mosta_(chulok)_NAF_CLARK_1.jpg', 'img\\Opora_mosta_(chulok)_NAF_CLARK\\Opora_mosta_(chulok)_NAF_CLARK_2.jpg img\\Opora_mosta_(chulok)_NAF_CLARK\\Opora_mosta_(chulok)_NAF_CLARK_3.jpg img\\Opora_mosta_(chulok)_NAF_CLARK\\Opora_mosta_(chulok)_NAF_CLARK_4.jpg img\\Opora_mosta_(chulok)_NAF_CLARK\\Opora_mosta_(chulok)_NAF_CLARK_5.jpg', 'Опора моста ходовой тележки (чулок) NAF и CLARK, правые, левые', '', '', 'NAF и CLARK, правые, левые', 1, 'Opora_mosta_(chulok)_NAF_CLARK'),
(95, 2, 2, 2, 4, 2, 3, 1, 'Опора моста ходовой тележки (чулок) NAF и CLARK, правые, левые', 'John Deere Ponsse Valmet', 'img\\Opora_mosta_(chulok)_NAF_CLARK\\Opora_mosta_(chulok)_NAF_CLARK_1.jpg', 'img\\Opora_mosta_(chulok)_NAF_CLARK\\Opora_mosta_(chulok)_NAF_CLARK_2.jpg img\\Opora_mosta_(chulok)_NAF_CLARK\\Opora_mosta_(chulok)_NAF_CLARK_3.jpg img\\Opora_mosta_(chulok)_NAF_CLARK\\Opora_mosta_(chulok)_NAF_CLARK_4.jpg img\\Opora_mosta_(chulok)_NAF_CLARK\\Opora_mosta_(chulok)_NAF_CLARK_5.jpg', 'Опора моста ходовой тележки (чулок) NAF и CLARK, правые, левые', '', '', 'NAF и CLARK, правые, левые', 1, 'Opora_mosta_(chulok)_NAF_CLARK'),
(96, 2, 2, 3, 15, 2, 3, 1, 'Опора моста ходовой тележки (чулок) NAF и CLARK, правые, левые', 'John Deere Ponsse Valmet', 'img\\Opora_mosta_(chulok)_NAF_CLARK\\Opora_mosta_(chulok)_NAF_CLARK_1.jpg', 'img\\Opora_mosta_(chulok)_NAF_CLARK\\Opora_mosta_(chulok)_NAF_CLARK_2.jpg img\\Opora_mosta_(chulok)_NAF_CLARK\\Opora_mosta_(chulok)_NAF_CLARK_3.jpg img\\Opora_mosta_(chulok)_NAF_CLARK\\Opora_mosta_(chulok)_NAF_CLARK_4.jpg img\\Opora_mosta_(chulok)_NAF_CLARK\\Opora_mosta_(chulok)_NAF_CLARK_5.jpg', 'Опора моста ходовой тележки (чулок) NAF и CLARK, правые, левые', '', '', 'NAF и CLARK, правые, левые', 1, 'Opora_mosta_(chulok)_NAF_CLARK'),
(97, 1, 3, 1, 11, 2, 1, 1, 'Основание HN125 Ponsse Ergo', 'Ponsse', 'img\\Osnovanie_HN125_Ponsse_Ergo\\Osnovanie_HN125_Ponsse_Ergo.jpg', '', 'Основание HN125 Ponsse Ergo', '', '', 'В отличном состоянии, отверстия без люфтов, без сварки', 1, 'Osnovanie_HN125_Ponsse_Ergo'),
(98, 2, 3, 1, 12, 2, 1, 1, 'Основание колонны манипулятора Ponsse Buffalo', 'Ponsse', 'img\\Osnovanie_kolonny_manipulyatora_Ponsse_Buffalo\\Osnovanie_kolonny_manipulyatora_Ponsse_Buffalo_1.jpg', 'img\\Osnovanie_kolonny_manipulyatora_Ponsse_Buffalo\\Osnovanie_kolonny_manipulyatora_Ponsse_Buffalo_2.jpg img\\Osnovanie_kolonny_manipulyatora_Ponsse_Buffalo\\Osnovanie_kolonny_manipulyatora_Ponsse_Buffalo_3.jpg img\\Osnovanie_kolonny_manipulyatora_Ponsse_Buffalo\\Osnovanie_kolonny_manipulyatora_Ponsse_Buffalo_4.jpg', 'Основание колонны манипулятора Ponsse Buffalo', '', '', '', 1, 'Osnovanie_kolonny_manipulyatora_Ponsse_Buffalo'),
(99, 2, 2, 2, 14, 2, 3, 1, 'Планетарный механизм John Deere (D, E, J) NAF', 'John Deere', 'img\\Planetarnyj_mekhanizm_John_Deere_(D_E_J)_NAF\\Planetarnyj_mekhanizm_John_Deere_(D_E_J)_NAF.jpg', '', 'Планетарный механизм John Deere (D, E, J) NAF, можно в разборе.', '', '', 'Подходит для всей серии D, E, J. Можно в разборе', 1, 'Planetarnyj_mekhanizm_John_Deere_(D_E_J)_NAF'),
(100, 1, 2, 2, 13, 2, 3, 1, 'Планетарный механизм John Deere (D, E, J) NAF', 'John Deere', 'img\\Planetarnyj_mekhanizm_John_Deere_(D_E_J)_NAF\\Planetarnyj_mekhanizm_John_Deere_(D_E_J)_NAF.jpg', '', 'Планетарный механизм John Deere (D, E, J) NAF, можно в разборе.', '', '', 'Подходит для всей серии D, E, J. Можно в разборе', 1, 'Planetarnyj_mekhanizm_John_Deere_(D_E_J)_NAF'),
(101, 1, 2, 2, 17, 2, 3, 1, 'Планетарный механизм John Deere (D, E, J) NAF', 'John Deere', 'img\\Planetarnyj_mekhanizm_John_Deere_(D_E_J)_NAF\\Planetarnyj_mekhanizm_John_Deere_(D_E_J)_NAF.jpg', '', 'Планетарный механизм John Deere (D, E, J) NAF, можно в разборе.', '', '', 'Подходит для всей серии D, E, J. Можно в разборе', 1, 'Planetarnyj_mekhanizm_John_Deere_(D_E_J)_NAF'),
(102, 2, 2, 2, 19, 2, 3, 1, 'Планетарный механизм John Deere (D, E, J) NAF', 'John Deere', 'img\\Planetarnyj_mekhanizm_John_Deere_(D_E_J)_NAF\\Planetarnyj_mekhanizm_John_Deere_(D_E_J)_NAF.jpg', '', 'Планетарный механизм John Deere (D, E, J) NAF, можно в разборе.', '', '', 'Подходит для всей серии D, E, J. Можно в разборе', 1, 'Planetarnyj_mekhanizm_John_Deere_(D_E_J)_NAF'),
(103, 2, 2, 2, 21, 2, 3, 1, 'Планетарный механизм John Deere (D, E, J) NAF', 'John Deere', 'img\\Planetarnyj_mekhanizm_John_Deere_(D_E_J)_NAF\\Planetarnyj_mekhanizm_John_Deere_(D_E_J)_NAF.jpg', '', 'Планетарный механизм John Deere (D, E, J) NAF, можно в разборе.', '', '', 'Подходит для всей серии D, E, J. Можно в разборе', 1, 'Planetarnyj_mekhanizm_John_Deere_(D_E_J)_NAF'),
(104, 2, 2, 2, 22, 2, 3, 1, 'Планетарный механизм John Deere (D, E, J) NAF', 'John Deere', 'img\\Planetarnyj_mekhanizm_John_Deere_(D_E_J)_NAF\\Planetarnyj_mekhanizm_John_Deere_(D_E_J)_NAF.jpg', '', 'Планетарный механизм John Deere (D, E, J) NAF, можно в разборе.', '', '', 'Подходит для всей серии D, E, J. Можно в разборе', 1, 'Planetarnyj_mekhanizm_John_Deere_(D_E_J)_NAF'),
(105, 2, 2, 2, 23, 2, 3, 1, 'Планетарный механизм John Deere (D, E, J) NAF', 'John Deere', 'img\\Planetarnyj_mekhanizm_John_Deere_(D_E_J)_NAF\\Planetarnyj_mekhanizm_John_Deere_(D_E_J)_NAF.jpg', '', 'Планетарный механизм John Deere (D, E, J) NAF, можно в разборе.', '', '', 'Подходит для всей серии D, E, J. Можно в разборе', 1, 'Planetarnyj_mekhanizm_John_Deere_(D_E_J)_NAF'),
(106, 1, 1, 1, 11, 2, 1, 1, 'Подъемный механизм кабины Ponsse Ergo', 'Ponsse', 'img\\Podieemnyj_mekhanizm_kabiny_Ponsse_Ergo\\Podieemnyj_mekhanizm_kabiny_Ponsse_Ergo_1.jpg', 'img\\Podieemnyj_mekhanizm_kabiny_Ponsse_Ergo\\Podieemnyj_mekhanizm_kabiny_Ponsse_Ergo_2.jpg img\\Podieemnyj_mekhanizm_kabiny_Ponsse_Ergo\\Podieemnyj_mekhanizm_kabiny_Ponsse_Ergo_3.jpg img\\Podieemnyj_mekhanizm_kabiny_Ponsse_Ergo\\Podieemnyj_mekhanizm_kabiny_Ponsse_Ergo_4.jpg', 'Подъемный механизм кабины Ponsse Ergo', '', '', '', 1, 'Podieemnyj_mekhanizm_kabiny_Ponsse_Ergo'),
(107, 2, 9, 2, 22, 2, 1, 1, 'Подшипник сочленения John Deere 1210, 1410, 1510', 'John Deere', 'img\\Podshipnik_sochleneniya_John_Deere_1210_1410_1510\\Podshipnik_sochleneniya_John_Deere_1210_1410_1510.jpg', '', 'Подшипник сочленения John Deere 1210, 1410, 1510', '', '', '', 1, 'Podshipnik_sochleneniya_John_Deere_1210_1410_1510'),
(108, 2, 9, 2, 19, 2, 1, 1, 'Подшипник сочленения John Deere 1210, 1410, 1510', 'John Deere', 'img\\Podshipnik_sochleneniya_John_Deere_1210_1410_1510\\Podshipnik_sochleneniya_John_Deere_1210_1410_1510.jpg', '', 'Подшипник сочленения John Deere 1210, 1410, 1510', '', '', '', 1, 'Podshipnik_sochleneniya_John_Deere_1210_1410_1510'),
(109, 2, 9, 2, 21, 2, 1, 1, 'Подшипник сочленения John Deere 1210, 1410, 1510', 'John Deere', 'img\\Podshipnik_sochleneniya_John_Deere_1210_1410_1510\\Podshipnik_sochleneniya_John_Deere_1210_1410_1510.jpg', '', 'Подшипник сочленения John Deere 1210, 1410, 1510', '', '', '', 1, 'Podshipnik_sochleneniya_John_Deere_1210_1410_1510'),
(110, 2, 5, 6, 20, 2, 1, 1, 'Радиаторы на лесозаготовительную технику', '', 'img\\Radiatory\\Radiatory_1.jpg', 'img\\Radiatory\\Radiatory_2.jpg img\\Radiatory\\Radiatory_3.jpg img\\Radiatory\\Radiatory_4.jpg img\\Radiatory\\Radiatory_5.jpg', 'Радиаторы на лесозаготовительную технику', '', '', '', 1, 'Radiatory'),
(111, 1, 5, 6, 20, 2, 1, 1, 'Радиаторы на лесозаготовительную технику', '', 'img\\Radiatory\\Radiatory_1.jpg', 'img\\Radiatory\\Radiatory_2.jpg img\\Radiatory\\Radiatory_3.jpg img\\Radiatory\\Radiatory_4.jpg img\\Radiatory\\Radiatory_5.jpg', 'Радиаторы на лесозаготовительную технику', '', '', '', 1, 'Radiatory'),
(112, 1, 1, 2, 13, 2, 1, 1, 'Распределитель Паркер К170,подходит на John Deere 1270Д', 'John Deere', 'img\\Raspredelitel_Parker_K170LS_F060960\\Raspredelitel_Parker_K170LS_F060960_1.jpg', 'img\\Raspredelitel_Parker_K170LS_F060960\\Raspredelitel_Parker_K170LS_F060960_2.jpg', 'Распределитель Паркер К170,подходит на John Deere 1270Д', 'F060960', '', 'K170LS, F060960', 1, 'Raspredelitel_Parker_K170LS_F060960'),
(113, 2, 2, 1, 12, 4, 1, 1, 'Раздаточные коробки в отличном состоянии Ponsse Buffalo, Ergo', 'Ponsse', 'img\\Razdatochnaya_korobka_Ponsse_Buffalo_Ergo\\Razdatochnaya_korobka_Ponsse_Buffalo_Ergo_1.jpg', 'img\\Razdatochnaya_korobka_Ponsse_Buffalo_Ergo\\Razdatochnaya_korobka_Ponsse_Buffalo_Ergo_2.jpg', 'Раздаточные коробки в отличном состоянии Ponsse Buffalo, Ergo', '', '', '', 1, 'Razdatochnaya_korobka_Ponsse_Buffalo_Ergo'),
(114, 1, 2, 1, 11, 4, 1, 1, 'Раздаточные коробки в отличном состоянии Ponsse Buffalo, Ergo', 'Ponsse', 'img\\Razdatochnaya_korobka_Ponsse_Buffalo_Ergo\\Razdatochnaya_korobka_Ponsse_Buffalo_Ergo_1.jpg', 'img\\Razdatochnaya_korobka_Ponsse_Buffalo_Ergo\\Razdatochnaya_korobka_Ponsse_Buffalo_Ergo_2.jpg', 'Раздаточные коробки в отличном состоянии Ponsse Buffalo, Ergo', '', '', '', 1, 'Razdatochnaya_korobka_Ponsse_Buffalo_Ergo'),
(115, 1, 2, 1, 11, 3, 1, 1, 'Редуктор от безтандемного моста Ponsse Ergo', 'Ponsse', 'img\\Reduktor_NAF_Ponsse_Ergo\\Reduktor_NAF_Ponsse_Ergo.jpg', '', 'Редуктор от безтандемного моста Ponsse Ergo', '', '', '', 1, 'Reduktor_NAF_Ponsse_Ergo'),
(116, 3, 2, 6, 20, 3, 1, 1, 'Редуктор пара 12.28', '', 'img\\Reduktor_para_12.28\\Reduktor_para_12.28_1.jpg', '', 'Редуктор пара 12.28', '', '', '', 1, 'Reduktor_para_12.28'),
(117, 3, 2, 1, 1, 3, 1, 1, 'Редуктор поворота Ponsse', 'Ponsse', 'img\\Reduktor_povorota_Ponsse\\Reduktor_povorota_Ponsse_1.jpg', 'img\\Reduktor_povorota_Ponsse\\Reduktor_povorota_Ponsse_2.jpg img\\Reduktor_povorota_Ponsse\\Reduktor_povorota_Ponsse_3.jpg img\\Reduktor_povorota_Ponsse\\Reduktor_povorota_Ponsse_4.jpg img\\Reduktor_povorota_Ponsse\\Reduktor_povorota_Ponsse_5.jpg', 'Редуктор поворота Ponsse', '', '', '', 1, 'Reduktor_povorota_Ponsse'),
(118, 1, 2, 2, 13, 5, 1, 1, 'Сочленение John Deer 1270D', 'John Deer', 'img\\Sochlenenie_John_Deer_1270D\\Sochlenenie_John_Deer_1270D.jpg', '', 'Сочленение John Deer 1270D', '', '', 'В хорошем состоянии, ВСЕ отверстия НЕ разбиты', 1, 'Sochlenenie_John_Deer_1270D'),
(119, 1, 3, 2, 13, 3, 1, 1, 'Стрела John Deere 1270D', 'John Deere', 'img\\Strela_John_Deere_1270D\\Strela_John_Deere_1270D_1.jpg', 'img\\Strela_John_Deere_1270D\\Strela_John_Deere_1270D_2.jpg img\\Strela_John_Deere_1270D\\Strela_John_Deere_1270D_3.jpg img\\Strela_John_Deere_1270D\\Strela_John_Deere_1270D_4.jpg img\\Strela_John_Deere_1270D\\Strela_John_Deere_1270D_5.jpg', 'Стрела John Deere 1270D', '', '', '', 1, 'Strela_John_Deere_1270D'),
(120, 2, 2, 1, 12, 4, 1, 1, 'Сочленение Ponsse Buffalo', 'Ponsse', 'img\\Sochlenenie_Ponsse_Buffalo\\Sochlenenie_Ponsse_Buffalo.jpg', '', 'Сочленение Ponsse Buffalo', '', '', 'Сделан ремонт всех отверстий. Состояние нового', 1, 'Sochlenenie_Ponsse_Buffalo'),
(121, 3, 3, 1, 1, 3, 1, 1, 'Стрела крана 190 Ponsse', 'Ponsse', 'img\\Strela_krana_190_Ponsse\\Strela_krana_190_Ponsse_1.jpg', 'img\\Strela_krana_190_Ponsse\\Strela_krana_190_Ponsse_2.jpg img\\Strela_krana_190_Ponsse\\Strela_krana_190_Ponsse_3.jpg img\\Strela_krana_190_Ponsse\\Strela_krana_190_Ponsse_4.jpg img\\Strela_krana_190_Ponsse\\Strela_krana_190_Ponsse_5.jpg', 'Стрела крана 190 Ponsse', '', '', '', 1, 'Strela_krana_190_Ponsse'),
(122, 2, 2, 2, 19, 3, 1, 1, 'Ступица John Deere 1410D 1510E 1510G', 'John Deere', 'img\\Stupica_John_Deere_1410D_1510E_1510G\\Stupica_John_Deere_1410D_1510E_1510G_1.jpg', 'img\\Stupica_John_Deere_1410D_1510E_1510G\\Stupica_John_Deere_1410D_1510E_1510G_2.jpg', 'Ступица John Deere 1410D 1510E 1510G', '', '', '', 1, 'Stupica_John_Deere_1410D_1510E_1510G'),
(123, 2, 2, 2, 21, 3, 1, 1, 'Ступица John Deere 1410D 1510E 1510G', 'John Deere', 'img\\Stupica_John_Deere_1410D_1510E_1510G\\Stupica_John_Deere_1410D_1510E_1510G_1.jpg', 'img\\Stupica_John_Deere_1410D_1510E_1510G\\Stupica_John_Deere_1410D_1510E_1510G_2.jpg', 'Ступица John Deere 1410D 1510E 1510G', '', '', '', 1, 'Stupica_John_Deere_1410D_1510E_1510G'),
(124, 2, 2, 2, 23, 3, 1, 1, 'Ступица John Deere 1410D 1510E 1510G', 'John Deere', 'img\\Stupica_John_Deere_1410D_1510E_1510G\\Stupica_John_Deere_1410D_1510E_1510G_1.jpg', 'img\\Stupica_John_Deere_1410D_1510E_1510G\\Stupica_John_Deere_1410D_1510E_1510G_2.jpg', 'Ступица John Deere 1410D 1510E 1510G', '', '', '', 1, 'Stupica_John_Deere_1410D_1510E_1510G'),
(125, 3, 2, 2, 4, 3, 1, 1, 'Ступица John Deere', 'John Deere', 'img\\Stupica_John_Deere\\Stupica_John_Deere.jpg', '', 'Ступица John Deere', '', '', '', 1, 'Stupica_John_Deere'),
(126, 2, 2, 2, 19, 3, 1, 1, 'Ступица John Deere 1410D 1210E 1510E, вся серия G', 'John Deere', 'img\\Stupica_John_Deere_1410D_1210E_1510E_seriya_G\\Stupica_John_Deere_1410D_1210E_1510E_seriya_G_1.jpg', 'img\\Stupica_John_Deere_1410D_1210E_1510E_seriya_G\\Stupica_John_Deere_1410D_1210E_1510E_seriya_G_2.jpg', 'Ступица John Deere 1410D 1210E 1510E, вся серия G', '', '', '', 1, 'Stupica_John_Deere_1410D_1210E_1510E_seriya_G'),
(127, 2, 2, 2, 22, 3, 1, 1, 'Ступица John Deere 1410D 1210E 1510E, вся серия G', 'John Deere', 'img\\Stupica_John_Deere_1410D_1210E_1510E_seriya_G\\Stupica_John_Deere_1410D_1210E_1510E_seriya_G_1.jpg', 'img\\Stupica_John_Deere_1410D_1210E_1510E_seriya_G\\Stupica_John_Deere_1410D_1210E_1510E_seriya_G_2.jpg', 'Ступица John Deere 1410D 1210E 1510E, вся серия G', '', '', '', 1, 'Stupica_John_Deere_1410D_1210E_1510E_seriya_G'),
(128, 2, 2, 2, 21, 3, 1, 1, 'Ступица John Deere 1410D 1210E 1510E, вся серия G', 'John Deere', 'img\\Stupica_John_Deere_1410D_1210E_1510E_seriya_G\\Stupica_John_Deere_1410D_1210E_1510E_seriya_G_1.jpg', 'img\\Stupica_John_Deere_1410D_1210E_1510E_seriya_G\\Stupica_John_Deere_1410D_1210E_1510E_seriya_G_2.jpg', 'Ступица John Deere 1410D 1210E 1510E, вся серия G', '', '', '', 1, 'Stupica_John_Deere_1410D_1210E_1510E_seriya_G'),
(129, 2, 2, 2, 23, 3, 1, 1, 'Ступица John Deere 1410D 1210E 1510E, вся серия G', 'John Deere', 'img\\Stupica_John_Deere_1410D_1210E_1510E_seriya_G\\Stupica_John_Deere_1410D_1210E_1510E_seriya_G_1.jpg', 'img\\Stupica_John_Deere_1410D_1210E_1510E_seriya_G\\Stupica_John_Deere_1410D_1210E_1510E_seriya_G_2.jpg', 'Ступица John Deere 1410D 1210E 1510E, вся серия G', '', '', '', 1, 'Stupica_John_Deere_1410D_1210E_1510E_seriya_G'),
(130, 1, 2, 1, 11, 3, 4, 1, 'Ступица Klark 3-х сателлитная на Ponsse Ergo, есть от без тандемного моста и тандемного', 'Ponsse', 'img\\Stupica_Klark_Ponsse_Ergo\\Stupica_Klark_Ponsse_Ergo.jpg', '', 'Ступица 3-х сателитная на Ponsse Ergo, есть от безтандемного моста и тандемного', '', '', 'Ступица 3-х сателитная, есть от безтандемного моста и тандемного.', 1, 'Stupica_Klark_Ponsse_Ergo'),
(131, 1, 2, 1, 11, 3, 4, 1, 'Ступица Klark Ponsse Ergo 4х сателлитная', 'Ponsse', 'img\\Stupica_Klark_Ponsse_Ergo_4h_satelitnaya\\Stupica_Klark_Ponsse_Ergo_4h_satelitnaya.jpg', '', 'Ступица Klark Ponsse Ergo 4х сателлитная', '', '', '', 1, 'Stupica_Klark_Ponsse_Ergo_4h_satelitnaya'),
(132, 2, 2, 1, 12, 3, 1, 1, 'Ступица Ponsse Buffalo в сборе с полуосью', 'Ponsse', 'img\\Stupica_Ponsse_Buffalo\\Stupica_Ponsse_Buffalo.jpg', '', 'Ступица Ponsse Buffalo в сборе с полуосью', '', '', '', 1, 'Stupica_Ponsse_Buffalo'),
(133, 3, 2, 2, 4, 3, 3, 1, 'Ступицы NAF, John Deere', 'John Deere', 'img\\Stupicy_NAF_John_Deere\\Stupicy_NAF_John_Deere_1.jpg', 'img\\Stupicy_NAF_John_Deere\\Stupicy_NAF_John_Deere_2.jpg img\\Stupicy_NAF_John_Deere\\Stupicy_NAF_John_Deere_3.jpg', 'Ступицы NAF, John Deere', '', '', '', 1, 'Stupicy_NAF_John_Deere'),
(134, 1, 2, 2, 13, 3, 3, 1, 'Тандем John Deere NAF 1270D, 1110D, 1410D', 'John Deere', 'img\\Tandem_John_Deere_NAF_1270D_1110D_1410D\\Tandem_John_Deere_NAF_1270D_1110D_1410D_1.jpg', 'img\\Tandem_John_Deere_NAF_1270D_1110D_1410D\\Tandem_John_Deere_NAF_1270D_1110D_1410D_2.jpg img\\Tandem_John_Deere_NAF_1270D_1110D_1410D\\Tandem_John_Deere_NAF_1270D_1110D_1410D_3.jpg', 'Тандем John Deere NAF 1270D, 1110D, 1410D', '', '', '', 1, 'Tandem_John_Deere_NAF_1270D_1110D_1410D'),
(135, 2, 2, 2, 14, 3, 3, 1, 'Тандем John Deere NAF 1270D, 1110D, 1410D', 'John Deere', 'img\\Tandem_John_Deere_NAF_1270D_1110D_1410D\\Tandem_John_Deere_NAF_1270D_1110D_1410D_1.jpg', 'img\\Tandem_John_Deere_NAF_1270D_1110D_1410D\\Tandem_John_Deere_NAF_1270D_1110D_1410D_2.jpg img\\Tandem_John_Deere_NAF_1270D_1110D_1410D\\Tandem_John_Deere_NAF_1270D_1110D_1410D_3.jpg', 'Тандем John Deere NAF 1270D, 1110D, 1410D', '', '', '', 1, 'Tandem_John_Deere_NAF_1270D_1110D_1410D'),
(136, 2, 2, 2, 19, 3, 3, 1, 'Тандем John Deere NAF 1270D, 1110D, 1410D', 'John Deere', 'img\\Tandem_John_Deere_NAF_1270D_1110D_1410D\\Tandem_John_Deere_NAF_1270D_1110D_1410D_1.jpg', 'img\\Tandem_John_Deere_NAF_1270D_1110D_1410D\\Tandem_John_Deere_NAF_1270D_1110D_1410D_2.jpg img\\Tandem_John_Deere_NAF_1270D_1110D_1410D\\Tandem_John_Deere_NAF_1270D_1110D_1410D_3.jpg', 'Тандем John Deere NAF 1270D, 1110D, 1410D', '', '', '', 1, 'Tandem_John_Deere_NAF_1270D_1110D_1410D'),
(137, 2, 2, 2, 19, 5, 1, 1, 'Тандем John Deere 1410D', 'John Deere', 'img\\Tandem_John_Deere_1410D\\Tandem_John_Deere_1410D_1.jpg', 'img\\Tandem_John_Deere_1410D\\Tandem_John_Deere_1410D_2.jpg', 'Тандем John Deere 1410D', '', '', '', 1, 'Tandem_John_Deere_1410D'),
(138, 3, 2, 6, 20, 3, 3, 1, 'Тандем NAF', '', 'img\\Tandem_NAF\\Tandem_NAF_1.jpg', 'img\\Tandem_NAF\\Tandem_NAF_2.jpg', 'Тандем NAF', '', '', '', 1, 'Tandem_NAF'),
(139, 2, 9, 2, 21, 1, 1, 1, 'Подшипник тандема John Deere 1510E 1510G 1410D', 'John Deere', 'img\\Tandemnyj_podshipnik_John_Deere\\Tandemnyj_podshipnik_John_Deere.jpg', '', 'Подшипник тандема John Deere 1510E 1510G 1410D', '', '', '', 1, 'Tandemnyj_podshipnik_John_Deere'),
(140, 2, 9, 2, 23, 1, 1, 1, 'Подшипник тандема John Deere 1510E 1510G 1410D', 'John Deere', 'img\\Tandemnyj_podshipnik_John_Deere\\Tandemnyj_podshipnik_John_Deere.jpg', '', 'Подшипник тандема John Deere 1510E 1510G 1410D', '', '', '', 1, 'Tandemnyj_podshipnik_John_Deere'),
(141, 2, 9, 2, 19, 1, 1, 1, 'Подшипник тандема John Deere 1510E 1510G 1410D', 'John Deere', 'img\\Tandemnyj_podshipnik_John_Deere\\Tandemnyj_podshipnik_John_Deere.jpg', '', 'Подшипник тандема John Deere 1510E 1510G 1410D', '', '', '', 1, 'Tandemnyj_podshipnik_John_Deere'),
(142, 3, 8, 2, 4, 3, 1, 1, 'Тормозные диски John Deere', 'John Deere', 'img\\Tormoznye_diski_John_Deere\\Tormoznye_diski_John_Deere_1.jpg', 'img\\Tormoznye_diski_John_Deere\\Tormoznye_diski_John_Deere_2.jpg', 'Тормозные диски John Deere', '', '', '', 1, 'Tormoznye_diski_John_Deere'),
(143, 3, 8, 1, 1, 3, 1, 1, 'Тормозные диски Ponsse', 'Ponsse', 'img\\Tormoznye_diski_Ponsse\\Tormoznye_diski_Ponsse.jpg', '', 'Тормозные диски Ponsse', '', '', '', 1, 'Tormoznye_diski_Ponsse'),
(144, 3, 8, 6, 20, 3, 1, 1, 'Тормозные камеры', '', 'img\\Tormoznye_kamery\\Tormoznye_kamery_1.jpg', 'img\\Tormoznye_kamery\\Tormoznye_kamery_2.jpg img\\Tormoznye_kamery\\Tormoznye_kamery_3.jpg img\\Tormoznye_kamery\\Tormoznye_kamery_4.jpg img\\Tormoznye_kamery\\Tormoznye_kamery_5.jpg', 'Тормозные камеры', '', '', 'В наличии большой выбор тормозных камер', 1, 'Tormoznye_kamery');
INSERT INTO `products` (`idProduct`, `categoryId`, `categorypartId`, `markId`, `modelId`, `conditionId`, `manufacturerId`, `locationId`, `nameProduct`, `acceptability`, `img`, `additionalImg`, `alt`, `code`, `vendorCode`, `addition`, `price`, `forIdName`) VALUES
(145, 1, 2, 2, 13, 3, 1, 1, 'Вискомуфта John Deere 1270D', 'John Deere', 'img\\Viskomufta_John_Deere_1270D\\Viskomufta_John_Deere_1270D_1.jpg', 'img\\Viskomufta_John_Deere_1270D\\Viskomufta_John_Deere_1270D_2.jpg img\\Viskomufta_John_Deere_1270D\\Viskomufta_John_Deere_1270D_3.jpg', 'Вискомуфта John Deere 1270D', '', '', '', 1, 'Viskomufta_John_Deere_1270D'),
(146, 1, 3, 1, 11, 3, 1, 1, 'Выдвижная секция телескопа от 125 крана Ponsse Ergo', 'Ponsse', 'img\\Vydvizhnaya_sekciya_teleskopa_Ponsse_Ergo_125\\Vydvizhnaya_sekciya_teleskopa_Ponsse_Ergo_125_1.jpg', 'img\\Vydvizhnaya_sekciya_teleskopa_Ponsse_Ergo_125\\Vydvizhnaya_sekciya_teleskopa_Ponsse_Ergo_125_2.jpg img\\Vydvizhnaya_sekciya_teleskopa_Ponsse_Ergo_125\\Vydvizhnaya_sekciya_teleskopa_Ponsse_Ergo_125_3.jpg img\\Vydvizhnaya_sekciya_teleskopa_Ponsse_Ergo_125\\Vydvizhnaya_sekciya_teleskopa_Ponsse_Ergo_125_4.jpg img\\Vydvizhnaya_sekciya_teleskopa_Ponsse_Ergo_125\\Vydvizhnaya_sekciya_teleskopa_Ponsse_Ergo_125_5.jpg', 'Выдвижная секция телескопа от 125 крана Ponsse Ergo', '', '', '', 1, 'Vydvizhnaya_sekciya_teleskopa_Ponsse_Ergo_125'),
(147, 3, 5, 1, 1, 3, 1, 1, 'Защита Ponsse, John Deere', 'Ponsse John Deere', 'img\\Zashchita_Ponsse_John_Deere\\Zashchita_Ponsse_John_Deere_1.jpg', 'img\\Zashchita_Ponsse_John_Deere\\Zashchita_Ponsse_John_Deere_2.jpg', 'Защита Ponsse, John Deere', '', '', '', 1, 'Zashchita_Ponsse_John_Deere'),
(148, 3, 5, 2, 1, 3, 1, 1, 'Защита Ponsse, John Deere', 'Ponsse John Deere', 'img\\Zashchita_Ponsse_John_Deere\\Zashchita_Ponsse_John_Deere_1.jpg', 'img\\Zashchita_Ponsse_John_Deere\\Zashchita_Ponsse_John_Deere_2.jpg', 'Защита Ponsse, John Deere', '', '', '', 1, 'Zashchita_Ponsse_John_Deere'),
(149, 3, 10, 1, 1, 2, 1, 1, 'Диски на лесозаготовительную технику Ponsse и John Deere', 'Ponsse John Deere', 'img\\Diski_Ponsse_John_Deere\\Diski_Ponsse_John_Deere_1.jpg', 'img\\Diski_Ponsse_John_Deere\\Diski_Ponsse_John_Deere_2.jpg img\\Diski_Ponsse_John_Deere\\Diski_Ponsse_John_Deere_3.jpg', 'Диски на лесозаготовительную технику Ponsse и John Deere', '', '', '', 1, 'Diski_Ponsse_John_Deere'),
(150, 3, 10, 2, 4, 2, 1, 1, 'Диски на лесозаготовительную технику Ponsse и John Deere', 'Ponsse John Deere', 'img\\Diski_Ponsse_John_Deere\\Diski_Ponsse_John_Deere_1.jpg', 'img\\Diski_Ponsse_John_Deere\\Diski_Ponsse_John_Deere_2.jpg img\\Diski_Ponsse_John_Deere\\Diski_Ponsse_John_Deere_3.jpg', 'Диски на лесозаготовительную технику Ponsse и John Deere', '', '', '', 1, 'Diski_Ponsse_John_Deere');

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `productsview`
-- (См. Ниже фактическое представление)
--
DROP VIEW IF EXISTS `productsview`;
CREATE TABLE `productsview` (
`acceptability` varchar(255)
,`addImg` text
,`addition` varchar(255)
,`alt` varchar(255)
,`category` varchar(255)
,`categoryPart` varchar(255)
,`code` varchar(255)
,`condition` varchar(255)
,`forId` varchar(255)
,`id` int
,`img` text
,`location` varchar(255)
,`manufacturer` varchar(255)
,`mark` varchar(255)
,`model` varchar(255)
,`name` varchar(255)
,`price` int
,`vendorCode` text
);

-- --------------------------------------------------------

--
-- Структура таблицы `services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE `services` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `services`
--

INSERT INTO `services` (`id`, `name`, `price`) VALUES
(1, 'КапРемонт', 50000),
(2, 'Замена манжетов', 10000),
(3, 'Сборка цилиндров', 10000),
(4, 'Ремонт гидроусилителя', 10000);

-- --------------------------------------------------------

--
-- Структура для представления `modelsview`
--
DROP TABLE IF EXISTS `modelsview`;

DROP VIEW IF EXISTS `modelsview`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `modelsview`  AS SELECT `models`.`idModel` AS `idModel`, `marks`.`name` AS `markName`, `models`.`name` AS `modelName` FROM (`models` join `marks` on((`models`.`markId` = `marks`.`idMark`))) ;

-- --------------------------------------------------------

--
-- Структура для представления `productsview`
--
DROP TABLE IF EXISTS `productsview`;

DROP VIEW IF EXISTS `productsview`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `productsview`  AS SELECT `products`.`idProduct` AS `id`, `categories`.`name` AS `category`, `categoryparts`.`name` AS `categoryPart`, `marks`.`name` AS `mark`, `models`.`name` AS `model`, `manufacturers`.`name` AS `manufacturer`, `locations`.`name` AS `location`, `products`.`price` AS `price`, `products`.`nameProduct` AS `name`, `products`.`alt` AS `alt`, `products`.`img` AS `img`, `products`.`code` AS `code`, `products`.`additionalImg` AS `addImg`, `conditions`.`name` AS `condition`, `products`.`vendorCode` AS `vendorCode`, `products`.`addition` AS `addition`, `products`.`forIdName` AS `forId`, `products`.`acceptability` AS `acceptability` FROM (((((((`products` join `locations` on((`products`.`locationId` = `locations`.`idLocation`))) join `categories` on((`products`.`categoryId` = `categories`.`idCategory`))) join `categoryparts` on((`products`.`categorypartId` = `categoryparts`.`idCategoryPart`))) join `marks` on((`products`.`markId` = `marks`.`idMark`))) join `models` on((`products`.`modelId` = `models`.`idModel`))) join `conditions` on((`products`.`conditionId` = `conditions`.`idCondition`))) join `manufacturers` on((`products`.`manufacturerId` = `manufacturers`.`id`))) ORDER BY `products`.`nameProduct` ASC ;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`idCategory`);

--
-- Индексы таблицы `categoryparts`
--
ALTER TABLE `categoryparts`
  ADD PRIMARY KEY (`idCategoryPart`);

--
-- Индексы таблицы `conditions`
--
ALTER TABLE `conditions`
  ADD PRIMARY KEY (`idCondition`);

--
-- Индексы таблицы `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`idLocation`);

--
-- Индексы таблицы `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`idMark`);

--
-- Индексы таблицы `models`
--
ALTER TABLE `models`
  ADD PRIMARY KEY (`idModel`),
  ADD KEY `fk_Models_Mark1` (`markId`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`idNew`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`idProduct`),
  ADD KEY `fk_Products_Category1` (`categoryId`),
  ADD KEY `fk_Products_CategoryPart1` (`categorypartId`),
  ADD KEY `fk_Products_Mark1` (`markId`),
  ADD KEY `fk_Products_Condition1` (`conditionId`),
  ADD KEY `fk_Products_Manufacturer1` (`manufacturerId`),
  ADD KEY `fk_Products_Locations1` (`locationId`),
  ADD KEY `fk_Products_Model1` (`modelId`);

--
-- Индексы таблицы `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `idCategory` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `categoryparts`
--
ALTER TABLE `categoryparts`
  MODIFY `idCategoryPart` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `conditions`
--
ALTER TABLE `conditions`
  MODIFY `idCondition` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `locations`
--
ALTER TABLE `locations`
  MODIFY `idLocation` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `marks`
--
ALTER TABLE `marks`
  MODIFY `idMark` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `models`
--
ALTER TABLE `models`
  MODIFY `idModel` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `idNew` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `idProduct` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT для таблицы `services`
--
ALTER TABLE `services`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `models`
--
ALTER TABLE `models`
  ADD CONSTRAINT `fk_Models_Mark1` FOREIGN KEY (`markId`) REFERENCES `marks` (`idMark`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_Products_Category1` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`idCategory`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Products_CategoryPart1` FOREIGN KEY (`categorypartId`) REFERENCES `categoryparts` (`idCategoryPart`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Products_Condition1` FOREIGN KEY (`conditionId`) REFERENCES `conditions` (`idCondition`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Products_Locations1` FOREIGN KEY (`locationId`) REFERENCES `locations` (`idLocation`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Products_Manufacturer1` FOREIGN KEY (`manufacturerId`) REFERENCES `manufacturers` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `fk_Products_Mark1` FOREIGN KEY (`markId`) REFERENCES `marks` (`idMark`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Products_Model1` FOREIGN KEY (`modelId`) REFERENCES `models` (`idModel`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
