-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 22 2020 г., 10:41
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
-- Структура таблицы `questions`
--

CREATE TABLE `questions` (
  `id` int NOT NULL,
  `test_id` int NOT NULL COMMENT 'Topic',
  `content` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'Question',
  `answer1` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'A',
  `answer2` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'B',
  `answer3` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'C',
  `answer4` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'D',
  `ans_right` int NOT NULL DEFAULT '1' COMMENT 'Answer'
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
(21, 1, '_____ a day keeps a doctor away.', 'A cucumber', 'An orange', 'An apple', '', 2),
(22, 1, 'To be greedy is a _____.', 'sin', 'pin', 'cin', '', 0),
(23, 1, 'You need to change the _____ in your watch.', 'summer', 'spring', 'winter', '', 1),
(24, 1, 'To pass exams for him is a piece of _____.', 'chocolate', 'biscuit', 'biscuit', '', 2),
(25, 1, 'Why did he shout last night? – He had a bad _____.', 'dream', 'team', 'beam', '', 0),
(26, 1, 'If you don\'t have a cat to catch mice, buy a _____.', 'hat', 'bat', 'trap', '', 2),
(27, 1, 'I can\'t see anything because of the _____.', 'frog', 'fog', 'fork', '', 1),
(28, 1, 'I am hungry. Let\'s have a _____.', 'snack', 'snake', 'snail', '', 0),
(29, 1, 'The sculpture is of _____.', 'steal', 'still', 'steel', '', 2),
(30, 1, 'My daughter wants a white _____ for her birthday.', 'hare', 'hair', 'heir', '', 0),
(31, 1, 'Could you give me 10000 $? – No _____ (Ни за что)!', 'day', 'way', 'pay', '', 1),
(32, 1, 'On weekends we all like to play _____ ball.', 'pain', 'paint', 'painting', '', 1),
(33, 1, 'The dinner was delicious! You are an excellent _____.', 'cook', 'cooker', 'cock', '', 0),
(34, 1, 'Don\'t be a _____ and take the money.', 'full', 'fool', 'food', '', 1),
(35, 1, 'This is not Picasso. It’s a _____.', 'fake', 'fame', 'fame', '', 0),
(36, 1, 'The Sahara is a big _____ in Africa.', 'dessert', 'desert', 'desire', '', 1),
(37, 1, 'I like summer very much, when the sun is bright and _____ is green.', 'brass', 'glass', 'grass', '', 2),
(38, 1, 'In Chicago people like to travel by _____.', 'tram', 'track', 'truck', '', 0),
(39, 1, 'Take a _____ of paper and write down the contact information.', 'shit', 'sheet', 'sheep', '', 1),
(40, 1, 'My father is a pilot in a _____.', 'copper', 'topper', 'chopper', '', 2),
(41, 1, 'To go dutch:', 'быть смелым', 'напиваться', 'платить по счету поровну', '', 2),
(42, 1, 'A young turk:', 'бунтарь', 'юнец', 'болтун', '', 0),
(43, 1, 'Chinese whispers:', 'тихоня', 'раннее утро с красивым рассветом', 'неверно передаваемая информация', '', 2),
(44, 1, 'It\'s all greek:', 'все понятно', 'все непонятно', 'дела идут отлично', '', 1),
(45, 1, 'Indian summer:', 'бабье лето', 'оттепель зимой', 'раннее потепление весной', '', 0),
(46, 1, 'A mexican standoff:', 'серьезный конфликт', 'веселая вечеринка', 'безвыходное положение', '', 2),
(47, 1, 'Dutch uncle:', 'зануда', 'бедняк', 'душа компании', '', 0),
(48, 1, 'To build castles in Spain:', 'проводить отпуск в теплых странах', 'мечтать', 'работать без отдыха', '', 1),
(49, 1, 'To talk turkey:', 'говорить неразборчиво', 'говорить быстро', 'говорить по делу', '', 2),
(50, 1, 'To talk for England:', 'много болтать', 'быть очень серьезным', 'интересоваться политикой', '', 0),
(51, 2, 'What … at 20 years old, that\'s to say five years ago? … anywhere or were you jobless?', 'did you do/ did you work', 'were you working/ did you work', 'had you worked/ were you working', 'were you working/ did you work', 0),
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
(65, 2, 'Last night my neighbour … you in a perfumer\'s shop.', 'seen', 'seed', 'have seen', 'saw', 3),
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
(77, 2, 'I\'m sorry. I can`t help you at the moment. I _____ dinner.', 'will cook', 'am cooking', 'cook', 'cooked', 1),
(78, 2, 'In Britain people _____ on the right.', 'are driving', 'drives', 'drive', 'drove', 2),
(79, 2, 'What _____ in your free time?', 'are you doing', 'do you do', 'you do', 'are you do', 1),
(80, 2, 'Jack\'s a policeman but he _____ a uniform.', 'doesn\'t wear', 'isn\'t wearing', 'no wear', 'wears', 0),
(81, 2, 'Do you like_____ football on TV?', 'watch', 'watched', 'watches', 'watching', 3),
(82, 2, 'Thank you for_____ me.', 'helping', 'help', 'to help', 'helped', 0),
(83, 2, 'I’m afraid of _____ mistakes.', 'to make', 'made', 'make', 'making', 3),
(84, 2, 'It is important _____.', 'to win', 'winning', 'win', 'won', 0),
(85, 2, 'A: This problem is too difficult. I can’t solve it.\r\nB: Is it really too difficult for you _____?\r\n', 'solving', 'solve', 'to solve', 'solved', 2),
(86, 2, 'Have you got anything _____?', 'reading', 'to read', 'read', 'reads', 1),
(87, 2, 'She is good at _____.', 'to swim', 'swimming', 'swims', 'swum', 1),
(88, 2, 'My father does the _____ himself.', 'ironing', 'irons', 'to iron', 'iron', 0),
(89, 2, 'My mother does all the _____.', 'cleaning', 'to clean', 'cleans', 'clean', 0),
(90, 2, 'The boy _____ in the dentist’s chair has got toothache.', 'sitting', 'sat', 'sit', 'sits', 0),
(91, 2, 'This is not my pencil, ... is green.', 'hers', 'mine', 'its', 'theirs', 1),
(92, 2, 'I have broken my pen. I see you have finished writing your exercise. Please give me ...', 'mine', 'its', 'yours', 'ours', 2),
(93, 2, 'Our twins were born on the same day as their twins. But ... look bigger than ...', 'ours, theirs', 'theirs, its', 'ours, hers', 'theirs, his', 0),
(94, 2, 'It\'s not the house of Mr. and Mrs. Smith, ... is bigger.', 'hers', 'his', 'theirs', 'ours', 2),
(95, 2, 'Oh, I cannot find my coat. Look, this coat is the same as ... , but it\'s not ...', 'mine, hers', 'mine, his', 'theirs, his', 'mine, mine', 3),
(96, 2, 'Do you know this guy? – Yes, I saw him with Ann yesterday. I think, he is a friend ...', 'her', 'of hers', 'his', 'of mine', 1),
(97, 2, 'Whose books are in the bookcase? – Yesterday I saw how Kate and Steve put something in this bookcase. So, I think, these books are ...', 'hers', 'ours', 'theirs', 'its', 2),
(98, 2, 'Whose puppies are these? – My sister and I bought them two days ago, so, they are ...', 'ours', 'theirs', 'his', 'its', 0),
(99, 2, 'Jane, I have bought a new mobile phone too. But ... has more functions than ...', 'your, my', 'yours, mine', 'hers, mine', 'his, my', 1),
(100, 2, 'Whose jacket is this? – Oh, my father had a birthday yesterday and my mother presented him this jacket. That\'s why I\'m sure it\'s ...', 'hers', 'ours', 'its', 'his', 3),
(101, 2, 'It was ___ music I have ever heard.', 'more beautiful', 'less beautiful', 'the most beautiful', 'beautiful', 2),
(102, 2, 'I have ___ time than he does.', 'bigger', 'larger', 'most', 'less', 3),
(103, 2, 'Your English is much ___ now. You’ve made___ mistakes this time.', 'best / least', 'better / less', 'the best / less', 'good / less', 1),
(104, 2, 'Please, tell me something ___ than this old joke.', 'interesting', 'less interesting', 'more interesting', 'the most interesting', 2),
(105, 2, 'It is much ___ to speak English than to understand.', 'the most difficult', 'more difficult', 'difficult', 'most difficult', 1),
(106, 2, 'He is ___ among his classmates.', 'old', 'taller', 'the youngest', 'short', 2),
(107, 2, 'I make ___ mistakes now than last year.', 'few', 'fewer', '-', 'the fewest', 1),
(108, 2, 'It is ___ and ___ to live here than there.', 'warm / most pleasant', 'warmer / pleasant', 'warmest / pleasanter', 'warmer / more pleasant', 3),
(109, 2, 'Which is ___ country in the UK?', 'industrial', 'the most industrial', 'more industrial', 'most industrial', 1),
(110, 2, 'The ___ you start, the ___ you’ll finish.', 'soon / more quickly', 'sooner / more quickly', 'sooner / quickly', 'soon / quickly', 1),
(111, 2, 'There is … table opposite the chair. … table is very nice.', 'a/A', 'the/A', '-/The', 'a/The', 3),
(112, 2, '… cat (подразумевается: любая кошка) likes purring. My cat liked meowing as well.', 'The', '–', 'An', 'A', 3),
(113, 2, 'She is so unsociable. She has only … few (несколько) close friends. What … pity!', 'a/a', 'the/the', 'a/-', 'the/a', 0),
(114, 2, 'Let’s have … smoke! - It’s … shame! You still smoke … cigars!', 'a/a/-', 'the/the/-', '-/-', 'a/the/the', 0),
(115, 2, 'Why are you always in … hurry? Because … time is … money.', 'the/the/the', 'a/a/a', 'a/-/-', '-/-/-', 2),
(116, 2, 'Please give me … book to read. – Which one? – … book that is on your left.', 'a/The', 'a/A', 'the/A', 'A/A', 0),
(117, 2, 'Do you have … car? No, I prefer going on … foot or by …bus.', 'a/a/a', 'the/the/the', 'a/-/the', 'a/-/-', 3),
(118, 2, 'She’s … citizen of …USA.', 'a/a', 'a/-', 'the/the', 'a/the', 3),
(119, 2, 'My husband works as … pilot. It means that I can go by … air at a low price.', 'a/-', 'a/a', 'the/the', '-/-', 0),
(120, 2, 'On ___ bright January morning ___ telephone kept ringing in my office.', 'the/the', 'a/the', '-/-', '-/the', 1),
(121, 2, '___ man always went to ___ same bar at ___ same time every day and asked for two glasses of ___ soda.', 'A/the/the/-', 'A/the/the/a', 'A/the/-/-', '-/the/the/-', 0),
(122, 2, '___ USA is ___ country. It is in North America.', '-/a', 'the/a', 'the/-', 'the/the', 1),
(123, 2, '___ most favorite game is cricket, which is called by ___ English “___ greatest game in ___ world”.', 'the/the/the/the', 'the/a/the/the', '-/the/-/the', 'a/the/-/the', 0),
(124, 2, '___ death of her husband resulted in ___ loss of her home also.', '-/-', '-/the', 'the/the', 'a/-', 2),
(125, 2, 'Peter is on ___ night duty. When I go to ___ bed, he goes to ___ work.', 'the/-/a', '-/-/-', 'a/a/a', 'the/the/-', 1),
(126, 2, 'Don’t stay outside in ___ cold; come in by ___ fire.', 'the/the', 'the/a', '-/a', 'the/-', 0),
(127, 2, 'Kate ate ___ meat with ___ vegetables for ___ second course.', '-/-/the', 'a/the/-', 'the/a/the', '-/an/-', 0),
(128, 2, 'Sofia is ___ capital of ___ Bulgaria.', '-/-', 'the/the', 'the/-', 'the/a', 2),
(129, 2, '___ Moon has no ___ light. It is bright because ___ Sun shines on it.', 'The/-/the', 'The/a/the', '-/-/the', 'The/the/the', 0),
(130, 2, 'Образуйте форму множественного числа существительного leaf.', 'leaves', 'leavs', 'leafs', 'leafes', 0),
(131, 2, 'Какое из существительных не образует множественное число при помощи окончания -es?', 'city', 'key', 'box', 'dish', 1),
(132, 2, 'Образуйте верную форму множественного числа существительного potato.', 'potatos', 'potats', 'potatoes', 'potates', 2),
(133, 2, 'Какое из существительных образует множественное число путем изменения согласной f?', 'chief', 'roof', 'safe', 'wife', 3),
(134, 2, 'Множественное число какого из существительных образовано неправильно?', 'businessmen', 'teeth', 'mouses', 'foxes', 2),
(135, 2, 'Какое из существительных не имеет особой формы множественного числа?', 'foot', 'ear', 'deer', 'child', 1),
(136, 2, 'В каком из примеров приведено существительное в единственном числе?', 'women', 'garden', 'oxen', 'brethren', 1),
(137, 2, 'Какое существительное образует множественное число при помощи окончания -s?', 'basis', 'datum', 'piano', 'phenomenon ', 2),
(138, 2, 'Укажите существительное с одинаковой формой единственного и множественного числа.', 'ship', 'sleep', 'penny', 'sheep', 3),
(139, 2, 'Какое существительное в английском языке употребляется как в единственном, так и во множественном числе?', 'trousers (брюки)', 'scissors (ножницы)', 'gates (ворота)', 'clothes (одежда)', 2),
(140, 2, 'Do you read any newspapers? – Yes I read …”Times” and … “Komsomol”.', 'a/a', '-/-', 'the/the', 'the/a', 2);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idPlace_UNIQUE` (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
