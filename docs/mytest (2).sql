-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 19 2020 г., 23:02
-- Версия сервера: 8.0.19
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mytest`
--

-- --------------------------------------------------------

--
-- Структура таблицы `students`
--

CREATE TABLE `students` (
  `id` int NOT NULL,
  `class_id` int NOT NULL COMMENT 'Класс',
  `fio` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Фамилия Имя'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `students`
--

INSERT INTO `students` (`id`, `class_id`, `fio`) VALUES
(1, 1, 'Иванов Илья'),
(2, 2, 'Степанов Иван'),
(3, 3, 'Петров Сергей');

-- --------------------------------------------------------

--
-- Структура таблицы `tests`
--

CREATE TABLE `tests` (
  `id` int NOT NULL,
  `status` tinyint UNSIGNED NOT NULL COMMENT 'Статус',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Название теста',
  `duration` int UNSIGNED NOT NULL COMMENT 'Длительность',
  `author` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Автор',
  `date_edit` datetime NOT NULL COMMENT 'Дата изменения'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tests`
--

INSERT INTO `tests` (`id`, `status`, `title`, `duration`, `author`, `date_edit`) VALUES
(1, 1, 'Лексика английского языка', 300, 'Я', '2020-07-19 13:55:33'),
(2, 1, 'Грамматика английского языка', 300, 'Я', '2020-07-19 13:56:35'),
(3, 2, 'Запрещённый тест', 60, 'Я', '2020-07-19 13:57:22');

-- --------------------------------------------------------

--
-- Структура таблицы `teststate`
--

CREATE TABLE `teststate` (
  `id` int NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Статус'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `teststate`
--

INSERT INTO `teststate` (`id`, `name`) VALUES
(1, 'доступен'),
(2, 'отключен');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `group_id` int UNSIGNED NOT NULL COMMENT 'Группа',
  `login` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Логин',
  `password` varchar(255) NOT NULL COMMENT 'Пароль',
  `email` varchar(255) NOT NULL COMMENT 'e-mail'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `group_id`, `login`, `password`, `email`) VALUES
(1, 3, 'admin', '1', '');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idTask_UNIQUE` (`id`);

--
-- Индексы таблицы `teststate`
--
ALTER TABLE `teststate`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idPeople_UNIQUE` (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `students`
--
ALTER TABLE `students`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `tests`
--
ALTER TABLE `tests`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `teststate`
--
ALTER TABLE `teststate`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
