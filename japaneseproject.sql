-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3307
-- Время создания: Ноя 19 2020 г., 20:31
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `japaneseproject`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admin`
--

CREATE TABLE `admin` (
  `idAdmin` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `surName` varchar(30) NOT NULL,
  `fatherName` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `admin`
--

INSERT INTO `admin` (`idAdmin`, `name`, `surName`, `fatherName`) VALUES
(1, 'Alex', 'Lesly', 'Olegovich');

-- --------------------------------------------------------

--
-- Структура таблицы `autoriz_adm`
--

CREATE TABLE `autoriz_adm` (
  `idAutoriz_adm` int(11) NOT NULL,
  `log` varchar(45) NOT NULL,
  `par` char(50) NOT NULL,
  `Admin_idAdmin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `autoriz_adm`
--

INSERT INTO `autoriz_adm` (`idAutoriz_adm`, `log`, `par`, `Admin_idAdmin`) VALUES
(1, '123123', '202cb962ac59075b964b07152d234b70', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `autoriz_kl`
--

CREATE TABLE `autoriz_kl` (
  `idAutoriz_kl` int(11) NOT NULL,
  `log` varchar(45) NOT NULL,
  `par` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `autoriz_men`
--

CREATE TABLE `autoriz_men` (
  `idAutoriz_men` int(11) NOT NULL,
  `log` varchar(45) NOT NULL,
  `par` varchar(50) NOT NULL,
  `meneger_idmeneger` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `autoriz_men`
--

INSERT INTO `autoriz_men` (`idAutoriz_men`, `log`, `par`, `meneger_idmeneger`) VALUES
(1, 'movchanka.2002@gmail.com', '25d55ad283aa400af464c76d713c07ad', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `autoriz_op`
--

CREATE TABLE `autoriz_op` (
  `idAutoriz_op` int(11) NOT NULL,
  `log` varchar(45) NOT NULL,
  `par` char(50) NOT NULL,
  `operator_idoperator` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `autoriz_op`
--

INSERT INTO `autoriz_op` (`idAutoriz_op`, `log`, `par`, `operator_idoperator`) VALUES
(2, 'kuzmin.@mail.ru', 'fa5263a6f37a0355fe9c17cdcbcfdd0d', 9);

-- --------------------------------------------------------

--
-- Структура таблицы `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `surName` varchar(30) NOT NULL,
  `fatherName` varchar(30) DEFAULT NULL,
  `mail` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `country` varchar(20) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `city` tinytext DEFAULT NULL,
  `education` tinytext DEFAULT NULL,
  `levelLng` char(1) DEFAULT NULL,
  `service` tinytext DEFAULT NULL,
  `periodJapanStudy` varchar(30) DEFAULT NULL,
  `startStudy` date DEFAULT NULL,
  `dateBirth` date DEFAULT NULL,
  `school_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `customer`
--

INSERT INTO `customer` (`id`, `name`, `surName`, `fatherName`, `mail`, `phone`, `country`, `gender`, `city`, `education`, `levelLng`, `service`, `periodJapanStudy`, `startStudy`, `dateBirth`, `school_id`, `order_id`) VALUES
(1, 'Александра', 'Пронина', 'Олеговна', 'kjkl', '56165', 'kjhk', 'w', 'Tokyou', 'lkjl', '5', 'jklj', '4564', '2022-05-20', '2001-11-25', 1, 1),
(2, 'Сергей', 'Куваев', 'Алексеевич', 'mail.com', '+7(953)986-59-30', 'Russia', 'm', 'Nara', 'sdfsdfdsf', '1', 'Premium', '2', '2020-10-02', '2002-10-23', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `dormitory`
--

CREATE TABLE `dormitory` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `price` int(11) NOT NULL,
  `places` int(11) NOT NULL,
  `img` varchar(45) DEFAULT NULL,
  `school_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `longprogram`
--

CREATE TABLE `longprogram` (
  `id` int(11) NOT NULL,
  `period` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `examinationDocuments` int(11) NOT NULL,
  `entranceFee` int(11) NOT NULL,
  `education` int(11) NOT NULL,
  `culturalProgram` int(11) NOT NULL,
  `InsuranceTrainingMaterials` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `longprogram`
--

INSERT INTO `longprogram` (`id`, `period`, `examinationDocuments`, `entranceFee`, `education`, `culturalProgram`, `InsuranceTrainingMaterials`) VALUES
(1, 'от 1 года', 30000, 70000, 600000, 80000, 60000);

-- --------------------------------------------------------

--
-- Структура таблицы `meneger`
--

CREATE TABLE `meneger` (
  `idmeneger` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `surName` varchar(30) NOT NULL,
  `fatherName` varchar(30) DEFAULT NULL,
  `mail` varchar(45) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `datePost` date NOT NULL,
  `dateOtstavki` date DEFAULT NULL,
  `status` tinytext NOT NULL,
  `polojenie` tinytext NOT NULL,
  `gender` char(1) NOT NULL,
  `dateBirth` date NOT NULL,
  `salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `meneger`
--

INSERT INTO `meneger` (`idmeneger`, `name`, `surName`, `fatherName`, `mail`, `phone`, `datePost`, `dateOtstavki`, `status`, `polojenie`, `gender`, `dateBirth`, `salary`) VALUES
(1, 'Дмитрий', 'Мовчан', 'Олегович', 'movchanka.2002@gmail.com', '+7(465)456-15-64', '2020-11-14', NULL, 'Работает', 'активен', 'm', '2001-11-01', 0),
(2, 'Александр', 'Кузьмин', 'Валерьеви', 'お前はもう死んでる。何？', '+7(800)555-35-35', '2020-11-19', NULL, 'Работает', 'активен', 'w', '2020-11-05', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `operator`
--

CREATE TABLE `operator` (
  `idoperator` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `surName` varchar(30) NOT NULL,
  `fatherName` varchar(30) DEFAULT NULL,
  `mail` varchar(45) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `gender` char(1) NOT NULL,
  `datePost` date NOT NULL,
  `dateOtstavki` date DEFAULT NULL,
  `dateBirth` date NOT NULL,
  `status` tinytext NOT NULL,
  `polojenie` tinytext NOT NULL,
  `salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `operator`
--

INSERT INTO `operator` (`idoperator`, `name`, `surName`, `fatherName`, `mail`, `phone`, `gender`, `datePost`, `dateOtstavki`, `dateBirth`, `status`, `polojenie`, `salary`) VALUES
(1, 'Александр', 'Пронин', 'Олегович', 'Aronin.2001@gmail.com', '+7(234)242-34-44', 'm', '2020-11-13', NULL, '2001-11-25', 'Работает', 'активен', 0),
(2, 'Александр', 'Кузьмин', ' ', 'kuzma.2002@mail.ru', '+7(484)864-65-45', 'm', '2020-11-13', NULL, '2000-10-30', 'Работает', 'активен', 0),
(6, 'наконецто', 'это', 'работает!)', 'thisworks@mail.ru', '+7(234)324-23-43', 'm', '2020-11-13', NULL, '1999-10-28', 'Работает', 'активен', 0),
(9, 'Александр', 'Кузьмин', 'Николаевич', 'kuzmin.@mail.ru', '+7(987)897-84-56', 'w', '2020-11-19', NULL, '2029-04-01', 'Работает', 'активен', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `schools`
--

CREATE TABLE `schools` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(4000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_shortprogram` int(11) NOT NULL,
  `id_longprogram` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `schools`
--

INSERT INTO `schools` (`id`, `name`, `city`, `description`, `img`, `id_shortprogram`, `id_longprogram`) VALUES
(1, 'Аояма', 'Токио', 'Международная образовательная академия Аояма была основана в 1988 году в центральном районе Токио, Аояма. Школа предлагает большое разнообразие учебных программ — от нулевого до самого высшего уровня. Великолепные результаты на экзаменах и высокий процент поступающих в японские вузы – вот отличительная черта Международной образовательной академии Аояма. Более 90% выпускников школы успешно поступает в бакалавриат и магистратуру ведущих университетов.  Однако отличные результаты – не единственное достоинство академии Аояма. Огромное внимание уделяется разговорным навыкам, коммуникации и изучению культурных традиций Японии.  «В XXI веке сердца людей не заперты в границах государств. Мы все постепенно становимся одной большой семьей. Мы постигаем языки и обычаи друг друга, изучаем политику, экономику и прочие важные дисциплины. Коммуникация становится неким мостиком между людьми, — говорит вице-президент школы господин Цунетоши Танака. — У Международной образовательной академии Аояма богатый опыт и оригинальные методы преподавания, которые используются даже не столько ради помощи в поступлении в вуз, сколько для того, чтобы помочь иностранцам быстро и эффективно выучить японский язык».  Стоит ли говорить, что атмосфера в учебном заведении – это ключевой фактор в достижении столь важной цели. Заглянув в комнату отдыха, можно убедиться в успехе выбранного подхода. «Мы помогали друг другу, — говорит выпускник из Кореи. — Решали задания прошлых вступительных экзаменов и готовились отвечать на вопросы интервью. Когда кто-то проваливал экзамен, мы все сочувствовали ему, а когда кто-то успешно сдавал экзамен, мы радовались вместе с ним».  «Большинство моих воспоминаний о школе связанно именно с комнатой отдыха, — признается еще одна выпускница — Именно здесь мы с одноклассниками готовились к EJU, шлифовали текст мотивационного письма и сокрушались, получая текст с пометкой «Я совершенно не понимаю, что ты хочешь этим сказать».  Кроме этого, студенты школы Аояма участвуют в самых разнообразных мероприятиях: примеряют кимоно, ходят в походы, общаются с японцами-волонтерами.', 'https://nihongo-manabo.com/product/aoyama-international-education-institute/#', 1, 1),
(2, 'Институт японского языка Синдзюку', 'Токио', 'Институт японского языка Синдзюку — одна из старейших языковых школ в Японии. Впервые иностранных студентов приняли в 1975 году, и уже более 40 лет здесь готовят к работе и учебе в Японии. Гордость школы — разнообразный  национальный состав и сотрудники со всего мира. В Институте японского языка Синдзюку учатся студенты более, чем из 50 стран. В своей работе Институт использует метод Эдзоэ, который является уникальным и визуальным обучающим методом, сочетающим в себе цифровой контент VLJ.', 'https://i1.wp.com/nihongo-manabo.com/wp-content/uploads/2020/06/日本舞踊-min-scaled.jpeg?resize=1536%2C647&ssl=1', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `shortprogram`
--

CREATE TABLE `shortprogram` (
  `id` int(11) NOT NULL,
  `period` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `examinationDocuments` int(11) NOT NULL,
  `entranceFee` int(11) NOT NULL,
  `education` int(11) NOT NULL,
  `culturalProgram` int(11) NOT NULL,
  `InsuranceTrainingMaterials` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `shortprogram`
--

INSERT INTO `shortprogram` (`id`, `period`, `examinationDocuments`, `entranceFee`, `education`, `culturalProgram`, `InsuranceTrainingMaterials`) VALUES
(1, '3 месяца', 0, 0, 150000, 20000, 15000);

-- --------------------------------------------------------

--
-- Структура таблицы `typeservice`
--

CREATE TABLE `typeservice` (
  `id` int(11) NOT NULL,
  `type` varchar(45) NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(3000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `typeservice`
--

INSERT INTO `typeservice` (`id`, `type`, `price`, `description`) VALUES
(1, 'Стандартный', 10000, '・Консультации по электронной почте и телефону\r\n・Проверка и перевод документов на японский язык\r\n・Подача документов в языковую школу\r\n・Поиск и бронирование жилья в Японии\r\n・Помощь в заполнении анкеты на визу\r\n\r\nКонсультации по электронной почте и телефону\r\n\r\nПосле получения заявки MANABO связывается со студентом для консультации и подбора школы японского языка. Мы спрашиваем, в каком городе Японии хотел бы жить студент, какие у него цели и бюджет. После консультации мы предлагаем несколько школ на выбор. При необходимости мы позвоним в удобное для вас время и подробно расскажем о процессе оформления.\r\n\r\nПроверка и перевод документов на японский язык\r\n\r\nЧтобы получить студенческую визу в Японию нужен небольшой пакет документов, но подготовить все нужно тщательно. Поэтому команда MANABO помогает собрать документы, после чего квалифицированный переводчик переводит их на японский язык.\r\n\r\nПодача документов в языковую школу\r\n\r\nПеред подачей документов в школу японского языка, MANABO проводят проверку документов, переводов и анкет. Школа одобряет копии документов, и студент высылает на адрес офиса MANABO в Токио оригиналы. Оригиналы документов школа подает в Иммиграцию Японии. Во время рассмотрения заявки на визу мы держим связь со школой. И в случае необходимости подготовить дополнительные документы оповещаем студента. Студенты краткосрочной программы не высылают оригиналы документов, и оформление визы проходит быстрее.\r\n\r\nПоиск и бронирование жилья в Японии\r\n\r\nКогда виза одобрена, MANABO помогают выбрать жилье и заключить договор со школой или риэлторской компанией. Студенты живут в общежитиях на 1-4 человека в комнате, гестхаусах, квартирах и хоумстее.\r\n\r\nПомощь в заполнении анкеты на визу\r\n\r\nПоследний этап оформления — подача документов на визу в Посольстве или Консульстве Японии в России. Студенты долгосрочной программы подают заполненные анкеты и сертификат на визу от Иммиграции Японии, а краткосрочной — приглашение от школы. MANABO помогают заполнить анкеты и подать документы на визу.'),
(2, 'Стандартный', 30000, '・Услуги базового пакета\r\n・Встреча в аэропорту\r\n・Сопровождение до места проживания и школы\r\n・Оформление договора аренды жилья\r\n・Переходник, карта Suica или Pasmo и карта поездов\r\n\r\nВстреча в аэропорту\r\n\r\nРусскоговорящий сотрудник MANABO встретит вас в аэропорту Японии с табличкой и поможет сориентироваться. Проезд из аэропорта включен в стоимость, поэтому наличные деньги не понадобятся. Сопровождающий расскажет о жизни в Японии и ответит на интересующие вопросы об учебе в школе японского языка.\r\n\r\n*В стоимость пакета включен проезд на поездах и автобусах, цену индивидуального такси уточняйте у менеджера MANABO. \r\n\r\nСопровождение до места проживания и школы\r\n\r\nРусскоговорящий гид проводит вас до места заключения договора на жилье и поможет понять содержание разговора. После заселения студента провожают до школы и показывают дорогу.\r\n\r\nПереходник, карта Suica или Pasmo и карта поездов\r\n\r\nЯпонский переходник, проездной с остатком 1000 иен и карта поездов с отмеченным и местами учебы и проживания передаст сопровождающий во время встречи. Проездной действует на всех линиях поездов, метро и на автобусах. Помимо этого, картой можно оплачивать покупки в магазинах и автоматах с едой и напитками. Пополнить проездной можно на любой станции Японии.'),
(3, 'Премиум', 50000, '・Услуги базового и стандартного пакетов\r\n・Регистрация в мэрии и оформление японской медицинской страховки\r\n・Покупка японской сим-карты\r\n・Открытие счета в японском банке\r\n・Именная печать и 2000 иен наличными\r\n\r\nРегистрация в мэрии и оформление японской медицинской страховки\r\n\r\nВсе жители Японии, включая иностранных студентов, регистрируются по месту жительства. Регистрация проходит на японском языке, бланки заполняются тоже на японском. Сотрудники администрации редко говорят по-английски, поэтому русскоговорящий сопровождающий поможет с переводом и заполнением. После регистрации в мэрии студент получает японскую медицинскую страховку, которая покрывает 70% затрат на лечение и лекарства. Стоимость страховки для студента составит около 1500 иен в месяц.\r\n\r\nПокупка японской сим-карты\r\n\r\nСопровождающий поможет выбрать оператора, тариф и переведет слова сотрудника магазина во время заключения договора. Для заключения договора необходимо знать японский или английский язык, либо прийти с переводчиком.\r\n\r\nОткрытие счета в японском банке\r\n\r\nБанковский счет нужен для получения зарплаты с подработки, на него же можно принимать переводы из России. Открыть счет в японском банке без знания языка сложно, к тому же, не все банки принимают иностранных студентов. Сопровождающий поможет обратиться в нужный банк и заполнить все документы.\r\n\r\nИменная печать и 2000 иен наличными\r\n\r\nПомимо переходника, проездного с остатком 1000 иен и карты поездов, во время встречи в аэропорту сопровождающий передаст именную печать и 2000 иен наличными. Печать в Японии используют вместо подписи, поэтому ее делают даже иностранцы.'),
(24, 'Стандартный', 10000, '・Консультации по электронной почте и телефону\r\n・Проверка и перевод документов на японский язык\r\n・Подача документов в языковую школу\r\n・Поиск и бронирование жилья в Японии\r\n・Помощь в заполнении анкеты на визу\r\n\r\nКонсультации по электронной почте и телефону\r\n\r\nПосле получения заявки MANABO связывается со студентом для консультации и подбора школы японского языка. Мы спрашиваем, в каком городе Японии хотел бы жить студент, какие у него цели и бюджет. После консультации мы предлагаем несколько школ на выбор. При необходимости мы позвоним в удобное для вас время и подробно расскажем о процессе оформления.\r\n\r\nПроверка и перевод документов на японский язык\r\n\r\nЧтобы получить студенческую визу в Японию нужен небольшой пакет документов, но подготовить все нужно тщательно. Поэтому команда MANABO помогает собрать документы, после чего квалифицированный переводчик переводит их на японский язык.\r\n\r\nПодача документов в языковую школу\r\n\r\nПеред подачей документов в школу японского языка, MANABO проводят проверку документов, переводов и анкет. Школа одобряет копии документов, и студент высылает на адрес офиса MANABO в Токио оригиналы. Оригиналы документов школа подает в Иммиграцию Японии. Во время рассмотрения заявки на визу мы держим связь со школой. И в случае необходимости подготовить дополнительные документы оповещаем студента. Студенты краткосрочной программы не высылают оригиналы документов, и оформление визы проходит быстрее.\r\n\r\nПоиск и бронирование жилья в Японии\r\n\r\nКогда виза одобрена, MANABO помогают выбрать жилье и заключить договор со школой или риэлторской компанией. Студенты живут в общежитиях на 1-4 человека в комнате, гестхаусах, квартирах и хоумстее.\r\n\r\nПомощь в заполнении анкеты на визу\r\n\r\nПоследний этап оформления — подача документов на визу в Посольстве или Консульстве Японии в России. Студенты долгосрочной программы подают заполненные анкеты и сертификат на визу от Иммиграции Японии, а краткосрочной — приглашение от школы. MANABO помогают заполнить анкеты и подать документы на визу.'),
(25, 'Мега Саня', 3000, 'Мега Описание'),
(26, 'Андрей', 100000000, 'ыоваолвыоавыоавы'),
(27, 'Мега Саня', 3000, 'Мега Описание'),
(28, 'Золотые Ручки', 2000, 'опоаплаотмсраомомрщшамочджлмоомсомсрмлосчтмолтмсчбьтмлочтмсчьмтсч'),
(31, 'Золотые Ручки', 2000, 'опоаплаотмсраомомрщшамочджлмоомсомсрмлосчтмолтмсчбьтмлочтмсчьмтсч');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idAdmin`);

--
-- Индексы таблицы `autoriz_adm`
--
ALTER TABLE `autoriz_adm`
  ADD PRIMARY KEY (`idAutoriz_adm`,`Admin_idAdmin`),
  ADD KEY `fk_Autoriz_adm_Admin1_idx` (`Admin_idAdmin`);

--
-- Индексы таблицы `autoriz_kl`
--
ALTER TABLE `autoriz_kl`
  ADD PRIMARY KEY (`idAutoriz_kl`,`customer_id`),
  ADD KEY `fk_Autoriz_kl_customer1_idx` (`customer_id`);

--
-- Индексы таблицы `autoriz_men`
--
ALTER TABLE `autoriz_men`
  ADD PRIMARY KEY (`idAutoriz_men`,`meneger_idmeneger`),
  ADD KEY `fk_Autoriz_men_meneger1_idx` (`meneger_idmeneger`);

--
-- Индексы таблицы `autoriz_op`
--
ALTER TABLE `autoriz_op`
  ADD PRIMARY KEY (`idAutoriz_op`,`operator_idoperator`),
  ADD KEY `fk_Autoriz_op_operator1_idx` (`operator_idoperator`);

--
-- Индексы таблицы `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`,`school_id`,`order_id`),
  ADD KEY `fk_customer_school1_idx` (`school_id`),
  ADD KEY `fk_customer_order1_idx` (`order_id`);

--
-- Индексы таблицы `dormitory`
--
ALTER TABLE `dormitory`
  ADD PRIMARY KEY (`id`,`school_id`),
  ADD KEY `fk_dormitory_school1_idx` (`school_id`);

--
-- Индексы таблицы `longprogram`
--
ALTER TABLE `longprogram`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `meneger`
--
ALTER TABLE `meneger`
  ADD PRIMARY KEY (`idmeneger`);

--
-- Индексы таблицы `operator`
--
ALTER TABLE `operator`
  ADD PRIMARY KEY (`idoperator`);

--
-- Индексы таблицы `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_shortprogram` (`id_shortprogram`),
  ADD KEY `id_longprogram` (`id_longprogram`);

--
-- Индексы таблицы `shortprogram`
--
ALTER TABLE `shortprogram`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `typeservice`
--
ALTER TABLE `typeservice`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `autoriz_adm`
--
ALTER TABLE `autoriz_adm`
  MODIFY `idAutoriz_adm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `autoriz_kl`
--
ALTER TABLE `autoriz_kl`
  MODIFY `idAutoriz_kl` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `autoriz_men`
--
ALTER TABLE `autoriz_men`
  MODIFY `idAutoriz_men` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `autoriz_op`
--
ALTER TABLE `autoriz_op`
  MODIFY `idAutoriz_op` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `dormitory`
--
ALTER TABLE `dormitory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `longprogram`
--
ALTER TABLE `longprogram`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `meneger`
--
ALTER TABLE `meneger`
  MODIFY `idmeneger` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `operator`
--
ALTER TABLE `operator`
  MODIFY `idoperator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `schools`
--
ALTER TABLE `schools`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `shortprogram`
--
ALTER TABLE `shortprogram`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `typeservice`
--
ALTER TABLE `typeservice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `autoriz_adm`
--
ALTER TABLE `autoriz_adm`
  ADD CONSTRAINT `fk_Autoriz_adm_Admin1` FOREIGN KEY (`Admin_idAdmin`) REFERENCES `admin` (`idAdmin`);

--
-- Ограничения внешнего ключа таблицы `autoriz_kl`
--
ALTER TABLE `autoriz_kl`
  ADD CONSTRAINT `fk_Autoriz_kl_customer1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`);

--
-- Ограничения внешнего ключа таблицы `autoriz_men`
--
ALTER TABLE `autoriz_men`
  ADD CONSTRAINT `fk_Autoriz_men_meneger1` FOREIGN KEY (`meneger_idmeneger`) REFERENCES `meneger` (`idmeneger`);

--
-- Ограничения внешнего ключа таблицы `autoriz_op`
--
ALTER TABLE `autoriz_op`
  ADD CONSTRAINT `fk_Autoriz_op_operator1` FOREIGN KEY (`operator_idoperator`) REFERENCES `operator` (`idoperator`);

--
-- Ограничения внешнего ключа таблицы `schools`
--
ALTER TABLE `schools`
  ADD CONSTRAINT `schools_ibfk_1` FOREIGN KEY (`id_shortprogram`) REFERENCES `shortprogram` (`id`),
  ADD CONSTRAINT `schools_ibfk_2` FOREIGN KEY (`id_longprogram`) REFERENCES `longprogram` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
