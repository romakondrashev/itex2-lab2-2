-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Апр 13 2020 г., 18:37
-- Версия сервера: 10.3.15-MariaDB
-- Версия PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `lab_1_2`
--

-- --------------------------------------------------------

--
-- Структура таблицы `department`
--

CREATE TABLE `department` (
  `ID_Department` int(60) NOT NULL,
  `chief` varchar(128) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `department`
--

INSERT INTO `department` (`ID_Department`, `chief`) VALUES
(23, 'Иванов И.И.'),
(41, 'Смирнов А.Г.');

-- --------------------------------------------------------

--
-- Структура таблицы `projects`
--

CREATE TABLE `projects` (
  `ID_Projects` int(60) NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `manager` varchar(128) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `projects`
--

INSERT INTO `projects` (`ID_Projects`, `name`, `manager`) VALUES
(76412, 'Telegram', 'Семёнов А.А.'),
(84123, 'Instagram', 'Васильев В.Г.');

-- --------------------------------------------------------

--
-- Структура таблицы `work`
--

CREATE TABLE `work` (
  `FID_Worker` int(60) NOT NULL,
  `FID_Projects` int(60) NOT NULL,
  `date` date NOT NULL,
  `time_start` time NOT NULL,
  `time_end` time NOT NULL,
  `description` varchar(128) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `work`
--

INSERT INTO `work` (`FID_Worker`, `FID_Projects`, `date`, `time_start`, `time_end`, `description`) VALUES
(1578, 76412, '2019-09-11', '09:00:00', '21:00:00', 'Оптимизация приложения под мобильные устройства.'),
(6122, 76412, '2019-11-26', '12:00:00', '20:00:00', 'Добавлена двухфакторная аутентификация.'),
(1578, 84123, '2020-01-01', '11:30:00', '11:40:00', 'Автоматическое обновление ленты.');

-- --------------------------------------------------------

--
-- Структура таблицы `worker`
--

CREATE TABLE `worker` (
  `ID_Worker` int(60) NOT NULL,
  `FID_Department` int(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `worker`
--

INSERT INTO `worker` (`ID_Worker`, `FID_Department`) VALUES
(1578, 23),
(6122, 23);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`ID_Department`);

--
-- Индексы таблицы `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`ID_Projects`);

--
-- Индексы таблицы `worker`
--
ALTER TABLE `worker`
  ADD PRIMARY KEY (`ID_Worker`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
