-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 19 2020 г., 22:33
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
-- Структура таблицы `classes`
--

CREATE TABLE `classes` (
  `id` int NOT NULL,
  `name` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Класс'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `classes`
--

INSERT INTO `classes` (`id`, `name`) VALUES
(2, '10-й класс'),
(3, '11-й класс'),
(1, '9-й класс');

-- --------------------------------------------------------

--
-- Структура таблицы `grades`
--

CREATE TABLE `grades` (
  `id` int NOT NULL,
  `grade` tinyint UNSIGNED NOT NULL COMMENT 'Оценка',
  `threshold` decimal(5,2) NOT NULL COMMENT 'Порог'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `grades`
--

INSERT INTO `grades` (`id`, `grade`, `threshold`) VALUES
(1, 10, '100.00'),
(2, 9, '90.00'),
(3, 8, '80.00'),
(4, 7, '70.00');

-- --------------------------------------------------------

--
-- Структура таблицы `groups`
--

CREATE TABLE `groups` (
  `id` int NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Группа',
  `access_level` tinyint(1) NOT NULL COMMENT 'Уровень доступа'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `groups`
--

INSERT INTO `groups` (`id`, `name`, `access_level`) VALUES
(1, 'модераторы', 1),
(2, 'гости', 0),
(3, 'администраторы', 99);

-- --------------------------------------------------------

--
-- Структура таблицы `questions`
--

CREATE TABLE `questions` (
  `id` int NOT NULL,
  `test_id` int NOT NULL COMMENT 'Тест',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Вопрос',
  `answer1` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'A',
  `answer2` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'B',
  `answer3` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT 'C',
  `answer4` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT 'D',
  `ans_right` int NOT NULL DEFAULT '1' COMMENT 'Ответ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `questions`
--

INSERT INTO `questions` (`id`, `test_id`, `content`, `answer1`, `answer2`, `answer3`, `answer4`, `ans_right`) VALUES
(1, 1, 'Синоним to adore ...', 'to love', 'to desire', 'to celebrate', '', 0),
(2, 1, 'Синоним to affect ...', 'to include', 'to influence', 'to improve', '', 1),
(3, 1, 'Синоним to alter ...', 'to repair', 'to make-up', 'to change', '', 2),
(4, 1, 'Синоним to amuse ...', 'to amaze', 'to entertain', 'to exaggerate', '', 1),
(5, 1, 'Синоним to astonish ...', 'to surprise', 'to guess', 'to pack', '', 0),
(6, 1, 'Синоним to depart ...', 'to compare', 'to break', 'to leave', '', 2),
(7, 1, 'Синоним to fasten ...', 'to feed', 'to tie', 'to dress', '', 1),
(8, 1, 'Синоним to frighten ...', 'to disturb', 'to scare', 'to comfort', '', 1),
(9, 1, 'Синоним to happen ...', 'to occur', 'to accept', 'to take part', '', 2),
(10, 1, 'Синоним to hug ...', 'to embrace', 'to hand', 'to wave', '', 0),
(11, 1, 'Синоним to imitate ...', 'to ignore', 'to copy', 'to draw', '', 1),
(12, 1, 'Синоним to join', 'to unite', 'to enjoy', 'to wrap', '', 0),
(13, 1, 'Синоним to obtain', 'to build', 'to skip', 'to get', '', 2),
(14, 1, 'Синоним to preserve', 'to pretend', 'to keep', 'to feed', '', 1),
(15, 1, 'Синоним to require', 'to need', 'to provide', 'to compel', '', 0),
(16, 1, 'Синоним to select', 'to display', 'to choose', 'to discover', '', 1),
(17, 1, 'Синоним to settle', 'to persuade', 'to decide', 'to deceive', '', 1),
(18, 1, 'Синоним to shout', 'to worry', 'to stare', 'to yell', '', 2),
(19, 1, 'Синоним to tremble', 'to shake', 'to stretch', 'to kneel', '', 0),
(20, 1, 'Синоним to weep', 'to fasten', 'to cry', 'to rub', '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `results`
--

CREATE TABLE `results` (
  `id` int NOT NULL,
  `student_id` int NOT NULL COMMENT 'Учащийся',
  `test_id` int NOT NULL COMMENT 'Тест',
  `duration` int UNSIGNED NOT NULL COMMENT 'Продолжительность',
  `result` decimal(5,2) NOT NULL COMMENT 'Результат'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `students`
--

CREATE TABLE `students` (
  `id` int NOT NULL,
  `class_id` int NOT NULL COMMENT 'Класс',
  `fio` varchar(50) NOT NULL COMMENT 'Фамилия Имя'
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
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'Статус'
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
-- Индексы таблицы `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`);

--
-- Индексы таблицы `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `grade` (`grade`);

--
-- Индексы таблицы `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idCar_UNIQUE` (`id`),
  ADD UNIQUE KEY `GNum_UNIQUE` (`name`);

--
-- Индексы таблицы `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idPlace_UNIQUE` (`id`);

--
-- Индексы таблицы `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT для таблицы `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
