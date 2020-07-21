-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 22 2020 г., 00:05
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
(11, 1, 'Синоним to imitate', 'to ignore', 'to copy', 'to draw', '', 1),
(12, 1, 'Синоним to join', 'to unite', 'to enjoy', 'to wrap', '', 0),
(13, 1, 'Синоним to obtain', 'to build', 'to skip', 'to get', '', 2),
(14, 1, 'Синоним to preserve', 'to pretend', 'to keep', 'to feed', '', 1),
(15, 1, 'Синоним to require', 'to need', 'to provide', 'to compel', '', 0),
(16, 1, 'Синоним to select', 'to display', 'to choose', 'to discover', '', 1),
(17, 1, 'Синоним to settle', 'to persuade', 'to decide', 'to deceive', '', 1),
(18, 1, 'Синоним to shout', 'to worry', 'to stare', 'to yell', '', 2),
(19, 1, 'Синоним to tremble', 'to shake', 'to stretch', 'to kneel', '', 0),
(20, 1, 'Синоним to weep', 'to fasten', 'to cry', 'to rub', '', 1),
(21, 4, '_____ a day keeps a doctor away.', 'A cucumber', 'An orange', 'An apple', '', 2),
(22, 4, 'To be greedy is a _____.', 'sin', 'pin', 'cin', '', 0),
(23, 4, 'You need to change the _____ in your watch.', 'summer', 'spring', 'winter', '', 1),
(24, 4, 'To pass exams for him is a piece of _____.', 'chocolate', 'biscuit', 'biscuit', '', 2),
(25, 4, 'Why did he shout last night? – He had a bad _____.', 'dream', 'team', 'beam', '', 0),
(26, 4, 'If you don`t have a cat to catch mice, buy a _____.', 'hat', 'bat', 'trap', '', 2),
(27, 4, 'I can`t see anything because of the _____.', 'frog', 'fog', 'fork', '', 1),
(28, 4, 'I am hungry. Let`s have a _____.', 'snack', 'snake', 'snail', '', 0),
(29, 4, 'The sculpture is of _____.', 'steal', 'still', 'steel', '', 2),
(30, 4, 'My daughter wants a white _____ for her birthday.', 'hare', 'hair', 'heir', '', 0),
(31, 4, 'Could you give me 10000 $? – No _____ (Ни за что)!', 'day', 'way', 'pay', '', 1),
(32, 4, 'On weekends we all like to play _____ ball.', 'pain', 'paint', 'painting', '', 1),
(33, 4, 'The dinner was delicious! You are an excellent _____.', 'cook', 'cooker', 'cock', '', 0),
(34, 4, 'Don`t be a _____ and take the money.', 'full', 'fool', 'food', '', 1),
(35, 4, 'This is not Picasso. It’s a _____.', 'fake', 'fame', 'fame', '', 0),
(36, 4, 'The Sahara is a big _____ in Africa.', 'dessert', 'desert', 'desire', '', 1),
(37, 4, 'I like summer very much, when the sun is bright and _____ is green.', 'brass', 'glass', 'grass', '', 2),
(38, 4, 'In Chicago people like to travel by _____.', 'tram', 'track', 'truck', '', 0),
(39, 4, 'Take a _____ of paper and write down the contact information.', 'shit', 'sheet', 'sheep', '', 1),
(40, 4, 'My father is a pilot in a _____.', 'copper', 'topper', 'chopper', '', 2),
(41, 5, 'To go dutch:', 'быть смелым', 'напиваться', 'платить по счету поровну', '', 2),
(42, 5, 'A young turk:', 'бунтарь', 'юнец', 'болтун', '', 0),
(43, 5, 'Chinese whispers:', 'тихоня', 'раннее утро с красивым рассветом', 'неверно передаваемая информация', '', 2),
(44, 5, 'It’s all greek:', 'все понятно', 'все непонятно', 'дела идут отлично', '', 1),
(45, 5, 'Indian summer:', 'бабье лето', 'оттепель зимой', 'раннее потепление весной', '', 0),
(46, 5, 'A mexican standoff:', 'серьезный конфликт', 'веселая вечеринка', 'безвыходное положение', '', 2),
(47, 5, 'Dutch uncle:', 'зануда', 'бедняк', 'душа компании', '', 0),
(48, 5, 'To build castles in Spain:', 'проводить отпуск в теплых странах', 'мечтать', 'работать без отдыха', '', 1),
(49, 5, 'To talk turkey:', 'говорить неразборчиво', 'говорить быстро', 'говорить по делу', '', 2),
(50, 5, 'To talk for England:', 'много болтать', 'быть очень серьезным', 'интересоваться политикой', '', 0),
(51, 2, 'What … at 20 years old, that’s to say five years ago? … anywhere or were you jobless?', 'did you do/ did you work', 'were you working/ did you work', 'had you worked/ were you working', 'were you working/ did you work', 0),
(52, 2, 'The other day we … her at the shop. She was busy putting on a red scarf.', 'were meeting', 'met', 'meet', 'had met', 1),
(53, 2, 'My mother … supper by the time I appeared. When I … she was still preparing it.', 'did not cook/ was returning', 'had cooked/ return', 'wasn’t cooking/ returned', 'had not cooked/ returned', 3),
(54, 2, 'Last summer our kids … the competition. Fortunately, they won first place.', 'Last summer our kids … the competition. Fortunately, they won first place.', 'was taking part in', 'was taking part in', 'had taken part in', 0),
(55, 2, 'It … his first voyage that day. He …to New York many times.', 'were not/ was already', 'was/ been already', 'wasn’t/ had already been', 'was not/ was already', 2),
(56, 2, '….I started talking … they interrupted me.', 'hardly have/ when', 'hardly/ if', 'hardly had/ when', 'hardly had/ than', 2),
(57, 2, 'Once upon a time there … a witch together with her husband and stepdaughter.', 'were living', 'living', 'had lived', 'lived', 3),
(58, 2, 'We went home after it … snowing.', 'had stopped', 'have stopped', 'stopped', 'was stopping', 0),
(59, 2, '… your bother … off the table before I turned up?', 'have/ felled', 'did/ fell', 'had/ fallen', 'did/ fall', 2),
(60, 2, 'She … her school in 2000, then she … a job in 2003 and then she … married in spring, 2005.', 'finished/ found/ got', 'was finishing/ find/ get', 'had finished/ had found/ had got', 'fisnished/ finded/ getted', 0),
(61, 2, 'Past Simple или Present Perfect?\r\nIs it the second time you … Russia? No, I … Russia four or five times.', 'have been to / have been to', 'had been to / was in', 'were in / was in', 'was going to / was to', 0),
(62, 2, 'Past Simple или Present Perfect?\r\nTom and I … friends since childhood.', 'has been', 'were', 'have been', 'was', 2),
(63, 2, 'Past Simple или Present Perfect?\r\nWe … a kitten 2 months ago. ', 'bought', 'have bought', 'were buying', 'buy', 0),
(64, 2, 'Past Simple или Present Perfect?\r\nHe ... his work yet.', 'didn`t finish', 'haven`t finished', 'hasn`t finished', 'hadn`t finished', 2),
(65, 2, '\r\nLast night my neighbour … you in a perfumer`s shop.', 'seen', 'seed', 'have seen', 'saw', 3),
(66, 2, 'We … to throw a party three days ago but mother … no.', 'have decided / have said', 'decided / said', 'has decided / said', 'were deciding / say', 1),
(67, 2, '… you … my letter from the USA yet? I … it to you a week ago.', 'have – receiving / was sending', 'did – receive / sent', 'have – received / sent', 'are – received / sent', 2),
(68, 2, '... you ... the newspaper today?', 'have / read', 'did / read', 'have / readed', 'did / readed', 0),
(69, 2, 'Why … you enter the college in 2000?', 'not', 'haven`t', 'were not', 'didn`t', 3),
(70, 2, 'Suvorov never ... a single battle.', 'has lost', 'lost', 'did lose', 'hasn`t lost', 1),
(71, 2, 'Present Simple или Present Continuous?\r\nWhere _____ on holidays?', 'you go', 'do you go', 'do you going', 'are you go', 1),
(72, 2, ' I _____ lots of books every year.', 'will read', 'am reading', 'read', 'am going to read', 2),
(73, 2, 'We _____ to a party next Saturday.', 'go', 'are going', 'are going', 'went', 2),
(74, 2, '_____ to go out tonight?', 'Are you wanting', 'Are you wanting', 'Is you want', 'Would you want', 0),
(75, 2, 'Every morning Tessa _____ at 7.30.', 'is getting up', 'got up', 'get up', 'gets up', 3),
(76, 2, 'Oh, someone _____ in my seat!', 'is sitting', 'sits', 'will sit', 'sit', 0),
(77, 2, 'I`m sorry. I can`t help you at the moment. I _____ dinner.', 'will cook', 'am cooking', 'cook', 'cooked', 1),
(78, 2, 'In Britain people _____ on the right.', 'are driving', 'drives', 'drive', 'drove', 2),
(79, 2, 'What _____ in your free time?', 'are you doing', 'do you do', 'you do', 'are you do', 1),
(80, 2, 'Jack`s a policeman but he _____ a uniform.', 'doesn`t wear', 'isn`t wearing', 'no wear', 'wears', 0);

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
(1, 1, 'Лексика английского языка (синонимы)', 300, 'Я', '2020-07-20 13:35:33'),
(2, 1, 'Грамматика (Past Simple или Past Perfect?)', 300, 'Я', '2020-07-19 13:56:35'),
(3, 2, 'Запрещённый тест', 60, 'Я', '2020-07-19 13:57:22'),
(4, 1, 'Лексика английского языка (существительные)', 300, 'Я', '2020-07-20 13:36:00'),
(5, 1, 'Лексика (идиомы о странах и национальностях)', 300, 'Я', '2020-07-20 21:00:00');

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT для таблицы `students`
--
ALTER TABLE `students`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `tests`
--
ALTER TABLE `tests`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
