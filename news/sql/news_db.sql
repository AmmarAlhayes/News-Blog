-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 11. Okt 2022 um 22:38
-- Server-Version: 10.4.25-MariaDB
-- PHP-Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `news_db`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `news_data`
--

CREATE TABLE `news_data` (
  `id` int(11) NOT NULL,
  `btn_id` int(11) NOT NULL,
  `source_name` varchar(30) NOT NULL,
  `article_url` text NOT NULL,
  `article_title` text NOT NULL,
  `article_description` text NOT NULL,
  `article_content` text NOT NULL,
  `article_publish_date` date NOT NULL,
  `publish_hour` int(11) NOT NULL,
  `publish_minute` int(11) NOT NULL,
  `publish_second` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `news_data`
--

INSERT INTO `news_data` (`id`, `btn_id`, `source_name`, `article_url`, `article_title`, `article_description`, `article_content`, `article_publish_date`, `publish_hour`, `publish_minute`, `publish_second`) VALUES
(21, 2, 'Jalopnik', 'https://jalopnik.com/general-motors-is-getting-into-the-energy-business-1849641891', 'General Motors Is Getting Into the Energy Business', 'General Motors sees EVs as a solution to our increasing energy demands, Hyundai and Ford are catching up to Tesla and the European Commission might finally stop dragging its feet over ever-stringent internal-combustion emissions rules. All that and more in th…', 'General Motors sees EVs as a solution to our increasing energy demands, Hyundai and Ford are catching up to Tesla and the European Commission might finally stop dragging its feet over ever-stringent … [ 12422 chars]', '2022-10-11', 15, 0, 0),
(22, 3, 'STERN.de', 'https://www.stern.de/panorama/britischer-kuenstler--mr--doodle--kritzelt-seine-villa-und-seinen-tesla-voll-32803754.html', '\"Mr. Doodle\": \"Lebendiges Kunstwerk\": Britischer Künstler kritzelt seine Villa und seinen Tesla voll', 'Während des coronabedingten Lockdowns verbrachte der Künstler \"Mr. Doodle\" zwangsweise viel Zeit zuhause. Er nutzte dies, um sich einen Kindheitstraum zu erfüllen – er kritzelte sein komplettes Haus voll.', '13 Zimmer hat das Anwesen des britischen Künstler Sam Cox in Kent im Süden Englands und jedes dieser Zimmer hat er bis ins kleinste Detail vollgekritzelt. Bettwäsche, Toilettensitze, Kochutensilien, … [ 1886 chars]', '2022-10-11', 14, 58, 0),
(23, 4, 'Jalopnik', 'https://jalopnik.com/general-motors-is-getting-into-the-energy-business-1849641891', 'General Motors Is Getting Into the Energy Business', 'General Motors sees EVs as a solution to our increasing energy demands, Hyundai and Ford are catching up to Tesla and the European Commission might finally stop dragging its feet over ever-stringent internal-combustion emissions rules. All that and more in th…', 'General Motors sees EVs as a solution to our increasing energy demands, Hyundai and Ford are catching up to Tesla and the European Commission might finally stop dragging its feet over ever-stringent … [ 12422 chars]', '2022-10-11', 15, 0, 0),
(24, 5, 'STERN.de', 'https://www.stern.de/panorama/britischer-kuenstler--mr--doodle--kritzelt-seine-villa-und-seinen-tesla-voll-32803754.html', '\"Mr. Doodle\": \"Lebendiges Kunstwerk\": Britischer Künstler kritzelt seine Villa und seinen Tesla voll', 'Während des coronabedingten Lockdowns verbrachte der Künstler \"Mr. Doodle\" zwangsweise viel Zeit zuhause. Er nutzte dies, um sich einen Kindheitstraum zu erfüllen – er kritzelte sein komplettes Haus voll.', '13 Zimmer hat das Anwesen des britischen Künstler Sam Cox in Kent im Süden Englands und jedes dieser Zimmer hat er bis ins kleinste Detail vollgekritzelt. Bettwäsche, Toilettensitze, Kochutensilien, … [ 1886 chars]', '2022-10-11', 14, 58, 0),
(25, 7, 'FX Empire', 'https://www.fxempire.com/news/article/honda-lg-to-locate-4-4-billion-battery-plant-in-ohio-1158061', 'Honda, LG to locate $4.4 billion battery plant in Ohio', 'By David Shepardson WASHINGTON (Reuters) -   Honda Motor and LG Energy Solution said on Tuesday they will build a new joint venture $4.4 billion battery plant in Ohio.', 'The two companies had announced the plan in August but had not settled on a U.S. location. They said they are initially committing to investing $3.5 billion and creating 2,200 jobs but said the overa… [ 1439 chars]', '2022-10-11', 14, 51, 38),
(26, 8, 'Iz.ru', 'https://iz.ru/1408595/2022-10-11/rossiiskii-rynok-novykh-elektromobilei-v-sentiabre-vyros-na-30', 'Российский рынок новых электромобилей в сентябре вырос на 30%', 'В России в сентябре 2022 года жители РФ приобрели 209 новых электромобилей. Такой показатель на 29,8% больше, чем в 2021 году. Об этом 11 октября сообщило агентство «Автостат».', '2022 209 . 29,8% , 2021 . 11 «».\r\n : 0,14% ( 2021 ) 0,47% ( 2022 ).\r\n Volkswagen 69 . . 2021 .\r\n Tesla (44 .), Audi (20 .). Mercedes-Benz Hongqi (12 11 . ). BMW 10 .\r\n Volkswagen ID.4 51 . Tesla Mode… [ 133 chars]', '2022-10-11', 14, 49, 46),
(27, 9, 'CNA', 'https://www.channelnewsasia.com/business/honda-lg-locate-44-billion-battery-plant-ohio-3002566', 'Honda, LG to locate $4.4 billion battery plant in Ohio', 'WASHINGTON : Honda Motor and LG Energy Solution said on Tuesday they will build a new joint venture $4.4 billion battery plant in Ohio.The two companies had announced the plan in August but had not settled on a U.S. location. They said they are initially comm…', 'WASHINGTON : Honda Motor and LG Energy Solution said on Tuesday they will build a new joint venture $4.4 billion battery plant in Ohio.\r\nThe two companies had announced the plan in August but had not… [ 1527 chars]', '2022-10-11', 14, 48, 33),
(28, 10, 'Reuters', 'https://www.reuters.com/business/autos-transportation/honda-lg-locate-44-billion-battery-plant-ohio-2022-10-11/', 'Honda, LG to locate $4.4 billion battery plant in Ohio - Reuters', 'Honda Motor <a href=\"https://www.reuters.com/companies/7267.T\" target=\"_blank\">(7267.T)</a> and LG Energy Solution <a href=\"https://www.reuters.com/companies/373220.KS\" target=\"_blank\">(373220.KS)</a> said on Tuesday they will build a new joint venture $4.4 b…', 'WASHINGTON, Oct 11 (Reuters) - Honda Motor (7267.T) and LG Energy Solution (373220.KS) said on Tuesday they will build a new joint venture $4.4 billion battery plant in Ohio.\r\nThe two companies had a… [ 1819 chars]', '2022-10-11', 14, 48, 0),
(29, 12, 'New York Daily News', 'https://www.nydailynews.com/news/national/ny-kanye-elon-musk-twitter-20221011-eaa3fqqwczdzpj5bts4nsyykyy-story.html', 'Elon Musk expressed ‘concerns’ after Kanye West’s tweet was slammed as antisemitic', 'Elon Musk, the somewhat begrudging potential new head of Twitter, spoke with pal Kanye West amid controversy over posts he shared on social media this weekend.', 'Elon Musk, the somewhat begrudging potential new head of Twitter, spoke with pal Kanye West amid controversy over posts the artist shared on social media over the weekend.\r\nTalked to ye today ', '2022-10-11', 14, 40, 24),
(30, 13, 'Dagospia.com', 'https://www.dagospia.com/rubrica-29/cronache/ldquo-rottura-mia-figlia-colpa-neo-marxisti-rdquo-327689.htm', '“LA ROTTURA CON MIA FIGLIA? È COLPA DEI NEO-MARXISTI” – QUELLO SVALVOLONE DI ELON MUSK È CONVINTO CHE LA FIGLIA 18ENNE TRANS LO ABBIA SFANCULATO DOPO CHE LE “ISTITUZIONI EDUCATIVE” HANNO ESERCITATO UN’INFLUENZA SU DI LEI: “È TUTTO INFARCITO DI COMUNISMO. E IL SENTIMENTO GENERALE È CHE SE SEI RICCO, SEI MALVAGIO”. MA IL BOSS DI TESLA DIMENTICA DI ESSERSI SCAGLIATO CONTRO I PRONOMI, IL GENDER E DI AVER APPOGGIATO IL…', 'DAGONEWS   elon musk Elon Musk non crede di aver avuto alcun ruolo nella decisione della figlia 18enne di allontanarsi da lui. Il ceo di Tesla ha detto al “Financial Times” che la decisione di sua figlia di prendere le distanze da lui è stata causata dai \"neo…', 'DAGONEWS\r\nelon musk \r\nElon Musk non crede di aver avuto alcun ruolo nella decisione della figlia 18enne di allontanarsi da lui. Il ceo di Tesla ha detto al “Financial Times” che la decisione di sua f… [ 1816 chars]', '2022-10-11', 14, 39, 0),
(31, 14, 'NBC News', 'https://www.nbcnews.com/tech/tech-news/many-us-drivers-treat-partially-automated-cars-self-driving-study-find-rcna51662', 'Many U.S. drivers treat partially automated cars as self-driving, study finds', 'Drivers using advanced driver assistance systems like Tesla Autopilot or General Motors Super Cruise often treat their vehicles as fully self-driving despite', 'WASHINGTON Drivers using advanced driver assistance systems like Tesla Autopilot or General Motors Super Cruise often treat their vehicles as fully self-driving despite warnings, a new study has foun… [ 2233 chars]', '2022-10-11', 14, 38, 39),
(32, 16, 'Unlimit-tech.com', 'https://www.unlimit-tech.com/2022/10/tesla-model-y-تتفوق-على-volkswagen-golf-لتصبح-السيارة-الأكثر-م/', 'Tesla Model Y تتفوق على Volkswagen Golf لتصبح السيارة الأكثر مبيعًا في ألمانيا', 'هذا الموضوع Tesla Model Y تتفوق على Volkswagen Golf لتصبح السيارة الأكثر مبيعًا في ألمانيا ظهر على التقنية بلا حدود.\nحققت سيارة Volkswagen Golf المدمجة نجاحًا مطلقًا لأنها كانت واحدة من أكثر السيارات مبيعًا في ألمانيا لعدة عقود. ولكن في عصر التنقل الكهربائي ا…', 'Volkswagen Golf . Volkswagen .\r\n ID.4 ID.5 Tesla Model Y Model 3.\r\n Tesla Model Y Volkswagen Golf .\r\n Gigafactory . 9846 Tesla Model Y 2022 Volkswagen Golf 7000 .', '2022-10-11', 14, 30, 34),
(33, 17, 'Wirtschafts Woche', 'https://www.wiwo.de/politik/europa/energiekrise-teure-energie-drohende-rezession-trifft-die-krise-den-osten-haerter-/28735862.html', 'Energiekrise: Teure Energie, drohende Rezession: Trifft die Krise den Osten härter?', 'Der „Heiße Herbst“ von links und rechts zündet vor allem bei vielen Menschen im Osten. Sie sehen sich in der Krise besonders hart getroffen. Ökonomen sagen: Einige Fakten sprechen dagegen.', 'Knappes Gas, teurer Sprit, steigende Preise für Brot und Butter: Krisenstimmung herrscht fast überall im Land, aber im Osten noch mehr als im Westen. Tausende protestieren jede Woche montags in Schwe… [ 6753 chars]', '2022-10-11', 14, 27, 23),
(34, 19, 'GlobeNewswire', 'https://www.globenewswire.com/news-release/2022/10/11/2532093/0/en/The-global-V2X-cybersecurity-market-is-projected-to-grow-from-USD-1-2-billion-in-2022-to-USD-3-2-billion-by-2028-at-a-CAGR-of-18-1.html', 'The global V2X cybersecurity market is projected to grow from USD 1.2 billion in 2022 to USD 3.2 billion by 2028, at a CAGR of 18.1%', 'Parameters such as increase in demand for autonomous mobility, along with significant growth of automotive V2X market are expected to bolster the revenue growth of the V2X cybersecurity market during the forecast period. Parameters such as increase in demand …', 'New York, Oct. 11, 2022 (GLOBE NEWSWIRE) -- Reportlinker.com announces the release of the report \"V2X Cybersecurity Market by Unit Type, Form, Communication Type, Security Type, Connectivity Type, Ve… [ 5762 chars]', '2022-10-11', 14, 31, 0),
(35, 20, 'Unlimit-tech.com', 'https://www.unlimit-tech.com/2022/10/tesla-model-y-تتفوق-على-volkswagen-golf-لتصبح-السيارة-الأكثر-م/', 'Tesla Model Y تتفوق على Volkswagen Golf لتصبح السيارة الأكثر مبيعًا في ألمانيا', 'هذا الموضوع Tesla Model Y تتفوق على Volkswagen Golf لتصبح السيارة الأكثر مبيعًا في ألمانيا ظهر على التقنية بلا حدود.\nحققت سيارة Volkswagen Golf المدمجة نجاحًا مطلقًا لأنها كانت واحدة من أكثر السيارات مبيعًا في ألمانيا لعدة عقود. ولكن في عصر التنقل الكهربائي ا…', 'Volkswagen Golf . Volkswagen .\r\n ID.4 ID.5 Tesla Model Y Model 3.\r\n Tesla Model Y Volkswagen Golf .\r\n Gigafactory . 9846 Tesla Model Y 2022 Volkswagen Golf 7000 .', '2022-10-11', 14, 30, 34);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `news_data`
--
ALTER TABLE `news_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `news_data`
--
ALTER TABLE `news_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
