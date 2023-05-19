-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Мар 14 2023 г., 12:16
-- Версия сервера: 10.4.24-MariaDB
-- Версия PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `oxuaz`
--

-- --------------------------------------------------------

--
-- Структура таблицы `about`
--

CREATE TABLE `about` (
  `b_id` int(11) NOT NULL,
  `b_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `b_description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `b_img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `b_img_ext` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `b_editor_id` int(11) NOT NULL,
  `b_edit_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `about`
--

INSERT INTO `about` (`b_id`, `b_title`, `b_description`, `b_img`, `b_img_ext`, `b_editor_id`, `b_edit_date`) VALUES
(1, 'İsrail Azərbaycan Təlim Mərkəzi ', 'İsrail Azərbaycan Təlim Mərkəzi istiqamətini IT sahəsi üzrə dəyişmək istəyən gənclər və universitet tələbələri üçün ödənişsiz təlimlər həyata keçirir.\r\n\r\nTədris Mərkəzində Full Stack, UI/UX, QA, Mobile Development, Data Science, DevOps, CCNA, Big Data və s. istiqamətdə təlimlər tədris olunur. Təlimlər istiqamətlərdən asılı olaraq müəyyən müddət ərzində, həftədə 3 dəfə 3 saat olaraq tədris olunur.\r\n\r\nTəlimi bitirən tələbələr sonda final proyekt olaraq real layihələrini təqdim edirlər. Yüksək nəticə göstərən tələbələrin müxtəlif şirkətlərə yönləndirilərək işlə təmin olunmasına xüsusi diqqət yetirilir.\r\n\r\nMərkəzdə fəaliyyət göstərən təlimçilər İsrailli mütəxəssislər tərəfindən seçilərək təyin edilir. Tədris zamanı istifadə olunan dərs materialları İsrailin IT üzrə öndə gedən tədris mərkəzlərində istifadə olunan materiallardır.\r\n\r\nMərkəzdə təhsil almaq istəyən şəxslər sosial media platformaları üzərindən qeydiyyatdan keçərək müraciət edirlər. Müraciət hissəsi bir neçə mərhələdən ibarət olur. Mərhələləri uğurla keçən namizəd tam təqaüd qazanaraq mərkəzdə təhsil almağa başlayır.\r\n', '3a65720a1bb4b7f2b392a061cf2b1891.jpg', '.jpg', 1, '2023-03-11 13:28:20');

-- --------------------------------------------------------

--
-- Структура таблицы `admin`
--

CREATE TABLE `admin` (
  `a_id` int(11) NOT NULL,
  `a_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `a_mail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `a_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `a_status` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `a_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `a_img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `a_category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `a_registered_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `a_ip` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `admin`
--

INSERT INTO `admin` (`a_id`, `a_name`, `a_mail`, `a_password`, `a_status`, `a_token`, `a_img`, `a_category`, `a_registered_date`, `a_ip`) VALUES
(1, 'Rashid Aliyev', 'rashiddalv@gmail.com', 'c15a30ae0f4a7dc2ebcecc7cb31aea95', 'Verified user', '46c16bbabd068eb8d45d0399b0f769e2', '3373624c3968bafb88b3979746f9f7b7.gif', 'Admin', '', 0),
(16, 'Huseyn Mikayilzade', 'huseynmikayilzade07@gmail.com', 'c15a30ae0f4a7dc2ebcecc7cb31aea95', 'Verified user', '0', 'ce8224c8415194494b71d535d7784023.jpg', '', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'Programming'),
(2, 'Languages'),
(3, 'Office programs'),
(4, 'Sales & Marketing'),
(5, 'Call Center Training'),
(6, 'Retail Training');

-- --------------------------------------------------------

--
-- Структура таблицы `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `contact_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_subject` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `contact_message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `contact_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_status` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `contact_viewer_id` int(11) NOT NULL,
  `contact_viewed_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `contact`
--

INSERT INTO `contact` (`contact_id`, `contact_name`, `contact_email`, `contact_subject`, `contact_message`, `contact_date`, `contact_status`, `contact_viewer_id`, `contact_viewed_date`) VALUES
(13, 'Kərim Kərimov', 'kerimabbas0v@gmail.com', 'WEB Development', 'Heheh suiiii', '2023-03-09 19:37:38', 'Müraciət cavablandırılıb', 1, '2023-03-14 15:04:35');

-- --------------------------------------------------------

--
-- Структура таблицы `courses`
--

CREATE TABLE `courses` (
  `c_id` int(11) NOT NULL,
  `c_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `c_description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `c_category` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `c_trainer` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `c_price` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `c_duration` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `c_img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `c_file_ext` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `c_creator_id` int(11) NOT NULL,
  `c_created_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `c_updater_id` int(11) NOT NULL,
  `c_update_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `courses`
--

INSERT INTO `courses` (`c_id`, `c_title`, `c_description`, `c_category`, `c_trainer`, `c_price`, `c_duration`, `c_img`, `c_file_ext`, `c_creator_id`, `c_created_date`, `c_updater_id`, `c_update_date`) VALUES
(42, 'JavaScript React', 'The course starts now and never ends. It is a completely self-paced online course. you decide when you start and when you finish. The course includes online streaming access to videos and all code files that are used in this course. Please check the course content on the course page, as we list all of our topics very transparently. Whatever is included, is mentioned.\r\n\r\n\r\nThis course is based on Javascript and expects that you are familiar with basic Javascript concepts such as variables, loops, functions, etc. If not, please brush up on your javascript first before taking the course.\r\n\r\nThis course is designed to take you through the journey of becoming a pro backend developer. You will be able to design a backend that will be production-ready and can be consumed by applications built on the web (react, angular, vue, etc) or any mobile (flutter, react native, android, or iOS).\r\n\r\nDuring this journey, we will learn to build REST API, documenting APIs with Swagger, Postman, Express, MongoDB, Mongoose, Oauth, file handling, security, cookies, JWT token, sessions, emails and so much more. You can check video names that will give you more ideas about the concepts that we will cover.\r\n\r\nThe goal of this course is to make sure that you get comfortable in building any kind of backend for a client, manager, startup or for yourself. You will be able to plan, architect, and deliver all features asked by the front-end team.\"', 'Programming', 'Rza Talibov', '350', '7 Ay/2 Saat', 'f0a50378ae3fd0d164bd20de04c26daf.jpg', '.jpg', 1, '2023-03-05 19:10:33', 16, '2023-03-06 12:47:39'),
(63, 'Frontend Development', 'Frontend proqramlaşdırma sferasına yeni başlayan şəxslər üçün nəzərdə tutulmuş proqramdır. Biz bu proqram çərçivəsində ən populyar proqramlaşdırma dillərindən JavaScripti, React.js-i öyrənəcək, Git-lə işləyəcəyik. Kursda İsrail proqramçılarının real həyatdan seçdikləri və sektordakı son standartlara uyğun nümunələr illüstrasiya olunacaq. Hər zaman yanınızda olan mentorlar isə bütün vacib bilikləri əldə etməyinizə dəstək verəcəklər. Tələbələr mürəkkəb tapşırıqları fərdi və ya qruplar şəklində həll edəcək, əldə etdikləri bilikləri öz layihələrində tətbiq etmək imkanı qazanacaq.', 'Programming', 'Talibov Mammadrza', '120', '7 Ay/2 Saat', '86598817edd4d0e46805daae310f6fa7.jpeg', '.jpeg', 1, '2023-03-06 19:31:00', 0, ''),
(64, 'Mobil development', 'Mobil developerler bir növ proqram developerlerdir.  Onlar Google-un Android, Apple-ın iOS və Microsoft-un Windows Phone platformaları üçün proqramlar yaratmaq kimi mobil texnologiyada ixtisaslaşırlar.  Bu səbəbdən bu tip rollar üçün iş başlıqlarına Android developer və iOS developer daxildir.  Mobil developerler seçdikləri platforma üçün proqramlaşdırma dillərini və proqram təminatı inkişaf mühitini öyrənirlər.  Hal-hazırda, hər birinin öz əsas dil(lər)i və inkişaf mühiti (məsələn, Android üçün Java, iOS üçün Objective-C və Windows Phone üçün C#) olan bir neçə əsas mobil platforma mövcuddur, lakin bu, daimi dəyişiklik vəziyyətindədir.  yeni texnologiyanın sürəti ilə ayaqlaşmaq olduqca zaman m-zaman cetin ola bilir', 'Office programs', 'Şamxal Quliyev', '200', '7 Ay/2 Saat', '380da99dc563da7a7b7c4f326ac4246e.png', '.png', 1, '2023-03-06 19:33:13', 1, '2023-03-09 19:36:13'),
(65, 'QA Mühəndisliyi', 'QA mühəndisi kimi tanınan keyfiyyət təminatı (QA) testçisi yeni və mövcud proqram təminatını sınaqdan keçirmək, kodu sazlamaq və proqramın  istifadəsini yaxşılaşdırmaq üçün test planları hazırlayır.Bunu manual yaxud avtomatlaşdırılmış testlər ilə etmək mümkündür.Bunun üçün istifadə olunan  Reqressiya,Sistem,Stress və bir çox manual testlər kimi həm funksional həm  də qeyri-funksional testlər mövcuddur.Həmçinin avtomatlaşdırılmış test üçün\r\nJira,Postman,SOAPIU,Selenium,Appium,\r\nMySql,Oracle,CI,Webdriver,Unix/Linux və bir çox texnologiyalar vardır', 'Office programs', 'Əmiraslan Məmmədov', '149', '7 Ay/2 Saat', '', '', 16, '2023-03-06 19:38:04', 1, '2023-03-09 18:33:58'),
(87, 'Full/Stack Developer', 'Front End Developer Web səhifənin ön üz tərtibatçısı kimi ifadə edilməkdədir, və istifadəçi tərəfindən görülən dizayn və özəllikləri bir web səhifənin ən önəmli hissəsidir, Front End Developer Web səhifənin ön üz görünüşlə birlikdə funksionallıqlarının doğru və xətasız şəkildə kodlaşdırmaq üçün çalışırlar,  Vəzifəsi isə istifadəçi(müştərinin) istəklərinə nəzərən Html, Css və Js kimi Front End\'ə xas  təməl dillərdə olan hakimiyyəti ilə səhifənin skeletinin qurulub istənilən dizaynın kodlaşdırılmasıdır, Amma Back end developer \"Front end\" developerdən fərqli olaraq aysberqin görünən tərəfi ilə yox, məhz son, İstifadəçinin görmədiyi ağır bir işi yerinə yetirir. \"Back end\" developerlǝr serverlərdə, bulud yaddaşlarında İşləməklə hər hansı web layihənin alqoritmik tərəfini inşa edir. Məlumat bazasının qurulması, sorğuların göndərilməsi və yadda saxlanılması və bu qəbildən 10-larla iş. \"Back end\" developerlər adətən bir neçə proqramlaşdırma dillərində rahat işləmək bacarığına malik olurlar, bu iki Developer tipindən fərqli olaraq Full-Stack Developerlər hər iki Developerin bilik və bacarıqlarına sahib olan mütəxəssislərdir.', 'Programming', 'Elşad Ağazadə', '125', '7 Ay/2 Saat', '9324f096156950678ea126d5cdb36cdf.jpeg', '.jpeg', 1, '2023-03-10 23:31:55', 0, ''),
(88, 'QA Mühəndisliyi', 'TESTING - Proqram təminatının hazırlanmasının vacib hissəsidir. Aşkar edilmiş səhvlərin yoxlanılması və düzəldilməsidir.Testerinin rolu nasazlıqları tapmaq və müştərinin tələblərinə cavab verməsini təmin etmək üçün proqram təminatı üzərində sınaqları planlaşdırmaq və həyata keçirməkdir.Tester onun keyfiyyətini yaxşılaşdırmaq və sistemdəki səhvləri azaltmaq üçün proqram təminatı tərtibatçısı, məlumat işçisi, sistem analitiki və digər funksionerlərlə əməkdaşlıq edir ki, məhsulu işə salmazdan əvvəl risk səviyyəsi azalsın.Bu o deməkdir ki, peşəkar proqram təminatı sınayıcısı bu sahədə bir çox metodologiya, iş texnikası və alətlər haqqında biliyə malik olmalıdır.\r\n\r\nSoftware QA Tester:\r\n\r\nİnkişafın bütün mərhələlərində məhsulun zəif tərəflərini və uyğunsuzluqlarını müəyyən etmək;\r\n\r\nLayihə tələblərini müəyyənləşdirməyə kömək etmək;\r\n\r\nMəhsulun keyfiyyəti haqqında hərtərəfli məlumat vermək;\r\n\r\nTesterlər məhsulu sistemin inkişaf dövrünün bütün mərhələlərində sınaqdan keçirirlər.', 'Programming', 'Elşad Ağazadə', '144', '7 Ay/2 Saat', 'aa1f6163270423a42380c554e2082d9f.jpeg', '.jpeg', 1, '2023-03-10 23:32:34', 0, ''),
(89, 'Backend programlaşdırma', 'C# Microsoft tərəfindən hazırlanmış proqramlaşdırma dilidir. Ən çox seçilən proqramlaşdırma dili olan C və C++ ilə interaktiv şəkildə inkişaf etdirilən və müasir kodlaşdırmaya malik olan C# dili də bir çox platformaları dəstəkləyən Java dilinə çox bənzəyir. Bu oxşarlıqların ən mühümü onun .NET Framework platformasında obyektyönlü dil olmasıdır.\r\n\r\nC Sharp kodlarının C++ və Visual Basic kodlarından fərqli alqoritmləri olduğundan, proqramın kodlarını birbaşa tərtib edə bilmirlər. C# kodları iki mərhələdə proqram kimi tərtib edir. MIL kompilyasiyası adlanan bu mərhələlərdən birincisi Assembly adlanır. İkinci mərhələdə uzantı .EXE-dir. C# ilə hazırlanmış proqram təminatı bu vəziyyətdə sistemlər tərəfindən idarə edilə bilmədiyi üçün .NET Framework işə düşür.\r\n\r\nC# proqramlaşdırma dili ən müasir dil olduğundan proqramçılara istədiyi hər şeyi proqramlaşdırma imkanı verir.\r\n\r\n    Veb, Veb Tətbiqləri (Asp.NET)\r\n    Mobil proqramlar\r\n    Veb servislər\r\n    Konsol proqramlar\r\n    DLL yazma\r\n    Windows Forms Proqramları\r\n    Oyun yazma\r\n\r\nStructured Query Language üçün qısaldılmış SQL verilənlər bazası proqramıdır. Tərcümədə Strukturlaşdırılmış Sorğu dili mənasını verir.\r\n\r\nMüxtəlif ölçülərdə və müxtəlif funksiyalarda çoxlu verilənləri saxlayan, verilənlər bazalarının idarəetmə sisteminə verilən addır. SQL ilə bu məlumatları idarə etmək, silmək, aktivləşdirmək və üzərində işləmək mümkündür.\r\n\r\nProqramlaşdırma dili olmasa da, əksər insanlar tərəfindən dil kimi qəbul edilir və belə tanınır. Bununla belə, sözün əsl mənasında verilənlər bazasında istifadə oluna bilən alt dildir. Verilənlər bazası idarəçiliyi üçün lazım olan bu tətbiqin ilk ekvivalenti SQUARE olaraq ortaya çıxdı. Bunun çox faydalı olmamasının əsas səbəbi riyaziyyat sintaksisi ilə istifadə edilə bilməsi idi. Daha sonra ingiliscə əsaslanan SEQUEL kimi inkişaf etdirildi və zaman keçdikcə artıq sözlər və ingilis sözləri atıldı və indiki formasını SQL kimi aldı.\r\n\r\nSQL ilə idarə edə biləcəyiniz verilənlər bazası aşağıdakı kimi verilmişdir.\r\n\r\n    MySQL\r\n    MsSql\r\n    Microsoft SQL Server\r\n    Oracle\r\n    IBM Database 2 (IBM DB2)\r\n    PostgreSQL\r\n\r\nSQL ilə edə biləcəyiniz əməliyyatlar\r\n\r\n    Mövcud məlumatları verilənlər bazasında saxlaya bilərsiniz\r\n    Verilənlər bazasına yeni məlumatları çəkə bilərsiniz\r\n    Verilənlər bazasındakı bütün məlumatları yeniləyə bilərsiniz\r\n    Milyonlarla məlumatı sorğulaya və axtara bilərsiniz', 'Programming', 'Talibov Mammadrza', '200', '7 Ay/2 Saat', 'c3ecc663c4fa4d25451be69f15bed59b.jpeg', '.jpeg', 1, '2023-03-10 23:33:36', 0, ''),
(90, 'DevOps', 'DevOPS mühəndisliyi tətbiqlərin və İKT həllərin birləşməsindən yaranmış yeni bir sahədir. Proqramların ehtiyac duyduğu əməliyyat sistemindən asılılıqlar konteyner texnologiyası vasitəsilə təmin edilir. Buna görə də, əməliyyat sistemlərinə və bulud texnologiyalarına keçid sadədir və sürətli istifadəyə imkan verir. Bu yeni İKT ənənəsi sayəsində əməliyyat sistemi üzərində təkrarlanan işlərin, əlavə sistem sazlamaları azalır. Davamlı İnteqrasiya və Davamlı Yerləşdirmə (CI/CD) sürətli, ani, pozulmayan versiyalar üçün proqram hazırlığının effektivliyini artırır.', 'Programming', 'Fəxri Nifdalızadə', '189', '7 Ay/2 Saat', 'a8b5bbdb1ef799aa2aed0dfa34e3b3a6.jpeg', '.jpeg', 1, '2023-03-10 23:34:45', 0, ''),
(91, 'Big Data', 'Big Data-Ənənəvi alətlərdən istifadə etməklə saxlanıla, emal oluna və ya təhlil edilə bilməyən çoxlu sayda məlumat toplusudur.\r\nBig data insanların gündəlik həyatında istifadə edilən məlumatlarının sayının artırdığı üçün vacib bir vəziyyətə gəlib çıxıb. Dünya üzərindəki informasiya miqyası artır və bununla əlaqədar, gündəlik həyatda istifadə edilən məlumatların həcmi də artır.\r\n\r\nBig Data və onun Analitik İnkişafı, data əldə etmə və analitik prosesləri tətbiq etməyə nəzarət edir. Big data vacib informasiyalar üçün böyük bir baza yaradır və onun analitikası bizə daha yaxşı bir şəkildə qərarlar vermək imkanı verir.\r\n\r\nBig Data və onun Analitik İnkişafı digər müasir texnologiyalarla birlikdə, informasiya sistemləri və informasiya mənbələri üzərindəki sahiblik haqqında dəqiqlik yaratmaq üçün işləyir. Analitik çıxışlar informasiya mənbələrinin daha yaxşı nəzarət edilməsinə imkan verir.\r\nƏlavə olaraq, Big data analitikası təhlükəsizliyin artırılmasına və potensial təhlükələrin aradan qaldırılmasına kömək edir.', 'Office programs', 'Sənan Abdullayev', '89', '5 Ay/1,5 Saat', '', '', 1, '2023-03-10 23:35:20', 1, '2023-03-11 00:41:51'),
(92, 'Uİ/UX dizayner', 'Günümüzdə bir çox sahələrə tələbat artmaqda davam edir. Onlardan biri də UI/UX dizayndır. İATC olaraq İT bazarında olan bu tələbatı ödəmək üçün mütəxəssislər yetişdiririk. \r\n\r\nUI/UX nədir?\r\n\r\nUI (User İnterface) istifadəçi istəklərini nəzərə alaraq onların maximum dərəcədə işlərini rahatladacaq  və gözəl dizayna malik web səhifə və tətbiqlərin yaradılması, eyni zamanda mövcud olanların daha da təkminləşdirilməsindən ibarətdir. \r\n\r\nUX ( User Experince) Məhsulun yaradılmasının ilkin mərhələsi olub, istifadəçilərin əvvəlki təcrübələrinə və tələbatlarına əsaslanır. \r\n\r\nTəlim mərkəzində tələbələrimizə həm nəzəri, həm də praktiki biliklər tədris olunur. Dərs müddəti 4 ay davam edir. Tələbələrimiz tez bir zamanda materialı mənimsəyir, əmək bazarında profesional şəkildə öz yerlərin tapırlar. ', 'Office programs', 'Kərim Kərimov', '70', '7 Ay/2 Saat', '182180d5cb2b4ccb339a6ca8dfb1e3c1.jpeg', '.jpeg', 1, '2023-03-10 23:36:20', 1, '2023-03-11 12:19:35'),
(100, 'Retail : Retail Training', 'The right onboarding training helps new employees become familiar with your business, branding, and procedures. Your retail employees will be fired up about their new jobs, familiar with their tasks, and prepared to start with a strong onboarding program. Touring a sales floor, getting to know the staff, and going over business values and guidelines are some examples of onboarding training topics. This Retail Training Course will give you a strong foundation to become a self-assured Retail Training specialist and gain more advanced abilities to fill in the gaps for higher efficiency and productivity.\r\n\r\nUnderstanding the whole range of goods and services offered by the company is a big component of providing good customer service. As a result, businesses use retail training to transform retail staff into the necessary product specialists.\r\n\r\nWe can assist you with the initial training and role preparations if you believe you have the capacity to join this career. We\'ve painstakingly condensed all the crucial information of the Retail Training Course and designed it into one continuous tutorial that is intended to train and guide people in the criteria for this role.', 'Retail Training', 'Elşad Ağazadə', '244', '5 Ay/1,5 Saat', 'e8d533b126e2181f91b55498ea4f2a94.jpg', '.jpg', 1, '2023-03-11 19:50:17', 0, ''),
(101, 'CIM Diploma in Professional Digital Marketing (Online)', 'Interest FREE Payment Plans mean you can study from just £99 a month!\r\n\r\nThe CIM Diploma in Professional Digital Marketing is a worldwide recognised professional qualification that is highly demanded by employers - Gaining this prestigious accolade puts you in the top 1% of marketers in the world.\r\n\r\nGraduate in as little as 12 weeks and earn in excess of £50-150K - Our Price Guarantee ensures we are cheaper than any CIM study centre in the world by at least 20%\r\n\r\n    £1149 + VAT Online - Learn anywhere - anytime 24/7 and study at a pace and time that suits you\r\n    Interest FREE Payment Plans Available\r\n\r\n    Attend Business Consort\'s 2-day course LIVE Online which covers 80% of the syllabus and the remainder is then completed online to graduate with the CIM Diploma in Professional Digital Marketing\r\n\r\nIncludes all course materials, workbooks, CIM Certificate upon completion + unlimited after-course support and reading list\r\n\r\nThe CIM Diploma in Professional Digital Marketing is Accredited by The Chartered Institute of Marketing - Online Digital Marketing and social media marketing course.\r\n\r\nGet a professional worldwide recognised digital marketing qualification in as little as 12 weeks.\r\n\r\nNo start dates – Our rolling enrolment means as soon as you register you will receive access to the course within 15 minutes!', 'Sales & Marketing', 'Fəxri Nifdalızadə', '130', '5 Ay/1,5 Saat', '6e2cf5266ecb2af3d42c393e156d9149.jpg', '.jpg', 1, '2023-03-11 19:51:42', 0, ''),
(102, 'Excellence in Digital Marketing', 'Want to make successful career in Digital Marketing by gaining excellence in Digital Marketing?\r\n\r\nTake a look at this course only where you will\r\n\r\n· Not only learn in depth how to do digital marketing excellently with concrete actionable advices, tools, techniques, processes and methodologies but also\r\n\r\n· Skill yourself by doing a Digital Marketing Internship with us!\r\n\r\n· Preview few lectures & quizzes to see the content for yourself\r\n\r\n· Clear your doubts on this topic any time while doing the course\r\n\r\n· Get Reed\'s 14 days Money Back Guarantee\r\n\r\nIn addition to learning about marketing right from passing out from Indian Institute of Management Bangalore in 1981, we have been digitally marketing our own business since 2007\r\n\r\nWhat I am sharing with you here is my learnings over these almost 40 years in building businesses successfully through Digital Marketing!', 'Sales & Marketing', 'Sənan Abdullayev', '100', '5 Ay/1,5 Saat', '21c4b97d69258e467341a29eb1675f1f.jpg', '.jpg', 1, '2023-03-11 19:52:28', 0, ''),
(103, 'Microsoft Office Specialist (MOS)', 'Microsoft Office is the world\'s most admired suite of business productivity tools. Its Word, Excel, and PowerPoint products set the standard for word processing, spreadsheet and data use and business presentations, respectively. Microsoft Office is required for about 40% of all job postings. This Microsoft Office Specialist (MOS) course teaches learners all they need to know about word, Excel, PowerPoint, Outlook, and Access.\r\n\r\nBusiness operations and office support positions are among the fastest-growing career areas in the current economy. From administrative assistants to specialists in business presentations, data analysis and document publishing, many of today\'s most promising career areas involve expertise in Microsoft Office products.', 'Office programs', 'Kərim Kərimov', '70', '5 Ay/1,5 Saat', '0b99e4bb53fa8662ddb4ebb0bcb468de.jpg', '.jpg', 1, '2023-03-11 19:53:27', 0, ''),
(104, 'Microsoft Office Specialist ', 'Microsoft Office Specialist (MOS) Training\r\n\r\nIf you want to brush up on your Microsoft Office Specialist (MOS) knowledge and abilities, this Microsoft Office Specialist (MOS) bundle is the best option for you! Microsoft Office Specialist (MOS) is one of the most popular courses. You can save 98% off the regular price of these courses in Microsoft Office Specialist (MOS) package by purchasing it for only £51!\r\n\r\nThe Microsoft Office Specialist (MOS) bundle allows you to learn from industry experts. This Microsoft Office Specialist (MOS) courses can help you get the information and skills necessary to excel in any field. With the Microsoft Office Specialist (MOS) bundle course, you\'ll learn all you need to know to succeed in your career related to Microsoft Office Specialist (MOS).\r\n\r\nThis Microsoft Office Specialist (MOS) bundle comes with six courses on Microsoft Office Specialist (MOS).\r\n\r\n    Course 01: Microsoft Office\r\n    Course 02: Microsoft Excel Power Query\r\n    Course 03: Microsoft OneNote\r\n    Course 04: Microsoft Teams Mastery\r\n    Course 05: Introduction to Microsoft Azure\r\n    Course 06: Microsoft Power BI Mastery\r\n\r\nAbout 19 hours are required to finish this Microsoft Office Specialist (MOS) bundle program. Get a head start on your professional goals by enrolling in the Microsoft Office Specialist (MOS) bundle.', 'Office programs', 'Talibov Mammadrza', '90', '7 Ay/2 Saat', '2fe435409edd8f1e078815219ad41ee4.jpg', '.jpg', 1, '2023-03-11 19:54:05', 0, ''),
(105, 'British Sign Language (BSL) Level 1 & 2', 'Online British Sign Language Course - Learn BSL Today\r\n\r\nOur best-selling British Sign Language (BSL) course is designed to teach learners to advance their skills to communicate with Deaf people using Sign Language in various situations of our day-to-day life.\r\n\r\nThis British Sign Language (BSL) Level 1 & 2 course will provide you with an opportunity to equip yourself with a solid foundation and develop more advanced skills on that foundation.\r\n\r\nThe British Sign Language (BSL) Level 1 & 2 course is presented by a highly rated British Sign Language interpreter registered with the National Registers of Communication Professionals working with Deaf and Deafblind People. The Course begins with the basic signs that include alphabets, numbers, names and places. The British Sign Language (BSL) Level 1 & 2 course then covers situation-wise vocabulary, conversational topics, asking questions, and more. You learn British Sign Language (BSL) through video lessons, practical exercises and online study materials. Upon successful completion of this British Sign Language (BSL) course, you will develop your functional BSL communication in more depth.', 'Languages', 'Sənan Abdullayev', '240', '6 Ay/3 Saat', '58468538ff584a6aca5c89a38bec1c60.jpg', '.jpg', 1, '2023-03-11 19:55:18', 0, ''),
(106, 'English for Russian Speakers', 'With the ever-increasing demand for English for Russian Speakers in personal and professional settings, this English for Russian Speakers training aims at educating, nurturing, and upskilling individuals to stay ahead of the curve — whatever their level of expertise in English for Russian Speakers may be.\r\n\r\nThis English for Russian Speakers specialisation comes with some of our best selling courses on topics relevant to the field.\r\n\r\nThis English for Russian Speakers bundle comes to you with FREE PDF Certificates.\r\n\r\nCourses offered in this English for Russian Speakers specialisation are:\r\n\r\n    Communication Skills\r\n    Phonics\r\n    English Grammar\r\n    English Literature\r\n    ESOL\r\n    Self Organisation\r\n    Report Writing\r\n    Self Esteem\r\n    Negotiation Skills\r\n    Proofreading\r\n    Equality and Diversity\r\n    Minute Taking\r\n    Speech Therapy\r\n    BSL\r\n    Time Management', 'Languages', 'Kərim Kərimov', '170', '9 Ay/2 Saat', '126c4c9fc20c602cfed69dd7ca39f020.jpg', '.jpg', 1, '2023-03-11 19:56:17', 0, ''),
(107, 'Call Center Training', 'Call Center Online Training\r\n\r\nDo you want to start a career in the Call Center sector or learn more about it?\r\n\r\nThis Call Center course is designed by industry experts so that it assists you to have a better understanding of Call Center.\r\n\r\nThis Call Center training has covered all the latest topics to keep you better prepared for your Call Center profession.\r\n\r\nEnroll now for a successful Call Center career!\r\n\r\nThis Call Center training offers\r\n\r\n    Free Time Management Course\r\n\r\n', 'Call Center Training', 'Kərim Kərimov', '120', '2 Ay/1 Saat', 'ef89d84ee59d0a7323cf468d8bc28511.jpg', '.jpg', 1, '2023-03-11 19:57:50', 0, ''),
(108, 'Call Center Training – Online Course – CPDUK Accredited', 'Call Center - Online Training Course - Intermediate Level - CPDUK Accredited.\r\n\r\nWelcome to our online Call Center training course. All our online training courses, programmes and qualifications are accredited by the CPD Certification Service (CPDUK).\r\n\r\nPhone skills are a highly valuable tool to have in an employee’s skill-set, and Call Center training will help provide those skills. This online Call Center training course will help participants improve their phone skills, which will make them more confident, improve sales, and help gain new customers while retaining current clientele. A more confident employee is also one that is happier, and happier employees will produce more satisfied customers.\r\n\r\nCall Center training will lower costs as it can reduce turnover. Participants will learn the skills to improve productivity and performance. This will produce a positive environment throughout your company and help influence the organisation as a whole. Evaluating metrics and coaching are also used to make sure the participants are reaching their potential, and to keep their skill-set at a high level.', 'Call Center Training', 'Sənan Abdullayev', '29', '2 Ay/1 Saat', 'dbebfc489357a2d0a4021dfa415e66ba.png', '.png', 1, '2023-03-11 19:58:42', 1, '2023-03-13 01:55:00');

-- --------------------------------------------------------

--
-- Структура таблицы `emails`
--

CREATE TABLE `emails` (
  `emails_id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `emails`
--

INSERT INTO `emails` (`emails_id`, `email`) VALUES
(1, 'rashiddvalorant@gmail.com');

-- --------------------------------------------------------

--
-- Структура таблицы `reset-pass`
--

CREATE TABLE `reset-pass` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `reset-pass`
--

INSERT INTO `reset-pass` (`id`, `email`, `token`, `created_at`) VALUES
(119, 'rashiddalv@gmail.com', '9b9b4e7d7a8d95bf121d013f526a81e600f9c36f7d362e21bacb518748f34966', '2023-03-08 12:23:24'),
(120, 'rashiddalv@gmail.com', '8596e1634fc0c2800090680c66dae943cab68ea800cb2b2fcba122139e0f1e0e', '2023-03-08 12:31:44'),
(121, 'rashiddalv@gmail.com', 'fa6fb45a80996d07ad2efeb76db13f724962a4a2cdb2a5a774e1a3e839f8ac7c', '2023-03-08 12:34:09');

-- --------------------------------------------------------

--
-- Структура таблицы `trainers`
--

CREATE TABLE `trainers` (
  `t_id` int(11) NOT NULL,
  `t_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `t_about` longtext COLLATE utf8_unicode_ci NOT NULL,
  `t_img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `t_img_ext` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `t_creator_id` int(11) NOT NULL,
  `t_created_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `trainers`
--

INSERT INTO `trainers` (`t_id`, `t_name`, `t_about`, `t_img`, `t_img_ext`, `t_creator_id`, `t_created_date`) VALUES
(10, 'Talibov Mammadrza', '2016-2017 ci ildə Richmen geyim şirkətinin İT departamentində baş proqramçı, 2017-ci ildən etibarən indiki vaxta qədər isə ADNSU (Azərbaycan Dövlət Neft Sənaye Universiteti)-da İT departamentində baş proqramçı olaraq fəaliyyət göstərir. Əlavə olaraq Azərbaycan Dövlət Neft Sənaye Universitetində Web Development və Microsoft office specialist kursları üzrə dərslər və Beynəlxalq sertifikat imtahanına hazırlıq dərsləri tədris edir. İlk Proqramını 14 yaşında yazıb. ', 'f6521f21179d8d92e5484f4fa6ddd816.jpg', '.jpg', 1, '2023-03-06 19:22:13'),
(12, 'Fəxri Nifdalızadə', 'Haqqında\r\nAzərbaycan Dövlət Neft və Sənaye Universitetində İT mütəxəssis və müəllim olaraq çalışır. \r\n2022-ci ildən İsrael Azerbaijan Training Center-də müəllim kimi işləməyə başlayıb.\r\n\r\nXüsusi biliklər\r\nProqramlaşdırma Dilləri\r\n    Python, PL/SQL, Java, React JS\r\nVerilənlər bazası\r\n   Oracle 11g və 21c, Postgre SQL, MySql\r\nProqram təminatı\r\n   Toad, SQL Developer, Power BI, IDEA DataGrip, Google CoLab, Jupiter Notebooks\r\n\r\nSertifikatlar\r\nProject Management: IPMA Level D \r\nOracle SQL: DataByte,\r\nOracle PL/SQL: DataByte,\r\nEnglish: British Council,\r\nMTA Software Development Fundamentals: EduTech,\r\nSQL for Data Science: EDX,\r\nProgramming with Python: EDX\r\nIT Essentials: Cisco NetAcad.\r\nBasics of programming in Python: Cisco NetAcad.\r\nLinux Essentials: Cisco NetAcad.\r\nData Structures & Algorithms: EDX', '4259115fa56ce8fe3359a6ddfe222695.png', '.png', 1, '2023-03-06 19:24:57'),
(13, 'Elşad Ağazadə', 'Amerikanın Kaliforniya ştatında fəaliyyət göstərən məşhur \"Berkeley Universitetinin Proqramlaşdırma düşərgəsinə\" qatılaraq onların öyrətmə metodologiyasını araşdırıb, Azərbaycana qayıtdıqdan sonra burada hal-hazırda məşhur olan kodlaşdırma düşərgələrindən birində təsis edib. Bu müəssisədə yetişdirdiyi tələbələr hal-hazırda müxtəlif layihələrdə, startaplarda və şirkətlərdə proqramçı kimi öz karyeralarına davam edirlər. Bununla yanaşı Azərbaycanda məşhur neft şirkəti olan \"British Petroliumun\" mütəxəssislərinə proqramlaşdırma və Data Analitika təlimləri keçib. Həmçinin \"Britaniya Konsulluğunun\" təşkil etdiyi fiziki məhdudiyyətli şəxslərin özünü inkişaf məqsədli layihəsində iştirak edərək fiziki məhdudiyyətli şəxslərə web proqramlaşdırma ilə bağlı təlimlər keçib. 2004-2006-cı illərdə komanda ilə birlikdə \"iCanDo LTD\" şirkətini təhsis edib və Nurgün Motors, Toyota, Suzuki və başqa şirkətlərlə uğurlu layihələr həyata keçiriblər. ABŞ-da və xüsusən də Silikon Vadidə fəaliyyət göstərən şirkətlərlə əməkdaşlıq etmişdir və bir çox uğurlu layihələrə imza atıb. Həmçinin Avrasiya üzrə keçirilən Eurasian Startup Awards müsabiqəsində 2019 və 2020-ci illərdə \"Süni Zəka\" və \"Data Science\" kateqoriyaları üzrə münsiflər heyətinin üzvü olmuşdur.', '0a684ac2f74fef80713a2fc0719b61ac.jpg', '.jpg', 1, '2023-03-06 19:25:18'),
(14, 'Şamxal Quliyev', 'Şamxal Quliyev İstanbul Fatih Universitetinin Kompüter Mühəndisliyi fakultəsini bitirib. Proqramlaşdırmaya universitet illərindən başlayıb və 9 ildən çoxdur ki, iOS proqramlaşdırma ilə məşğuldur. iOS team lead və müəllim kimi fəaliyyətinə davam edir. Eyni zamanda öz təcrübələrini youtube kanalında da paylaşır.\r\n\r\n', '11ba5f174fb4ff451ba53df57a838a8f.jpg', '.jpg', 1, '2023-03-06 19:26:17'),
(15, 'Sənan Abdullayev', 'Java Software Engineer. Azərbaycan Dövlət Neft və Sənaye Universitetinin İnformasiya Texnologiyaları ixtisasını bitirib. Programlaşdırma fəaliyyətinə 2020-ci ildən başlayıb. Hal hazırda C++, C#, Java və JavaScript dillərini bilir. Bankçılıq, Sənayenin avtomatlaşdırılması sahəsi onun maraq dairəsindədir.', 'f1354f5f72e1d933127fafc2e8f05e61.jpg', '.jpg', 1, '2023-03-06 19:27:02'),
(16, 'Kərim Kərimov', 'Kərim Kərimov 2013cü ildə məktəbi qızıl medal attestatı ilə bitirib, yüksək balla Bakı Ali Neft Məktəbinin Proseslərin Avtomatlaşdırılması üzrə bakalavr təhsilinə başlayıb. Tələbə olduğu müddətdə proqramlaşdırma ilə yaxından tanış olub, 10-a yaxın yerli startupların ərsəyə gəlməsində iştirak edib. 2018-2020 illər arasında Macarıstanda Budapeşt Texnologiya və İqtisadiyyat universitetində Komputer mühəndisliyi üzrə magistr təhsili alıb. Həmin dövr ərzində Nokia-nın Budapeşt ofisində işləyib. 2020-ci ildə magistr təhsili bitdikdən sonra ölkəyə qayıtmış və PAŞA Bank şirkətində Senior Software Developer kimi işə başlamışdır. 2022 aprel ayında Funsional sahə lideri vəzifəsinə təltif olunmuş, 10-dan çox mobil sahəsində çalışan mühəndislərlə fərqli layihələrdə iştirak edir.', 'e5f8e939ebdee95ae9af512c4fbd5c7b.jpg', '.jpg', 1, '2023-03-06 19:28:02');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`b_id`);

--
-- Индексы таблицы `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`a_id`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Индексы таблицы `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Индексы таблицы `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`c_id`);

--
-- Индексы таблицы `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`emails_id`);

--
-- Индексы таблицы `reset-pass`
--
ALTER TABLE `reset-pass`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `trainers`
--
ALTER TABLE `trainers`
  ADD PRIMARY KEY (`t_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `about`
--
ALTER TABLE `about`
  MODIFY `b_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `admin`
--
ALTER TABLE `admin`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `courses`
--
ALTER TABLE `courses`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT для таблицы `emails`
--
ALTER TABLE `emails`
  MODIFY `emails_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `reset-pass`
--
ALTER TABLE `reset-pass`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT для таблицы `trainers`
--
ALTER TABLE `trainers`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
