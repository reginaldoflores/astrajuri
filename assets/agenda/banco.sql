
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


-- Estrutura para tabela `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(220) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `events`
--

INSERT INTO `events` (`id`, `title`, `color`, `start`, `end`) VALUES
(1, 'Reuniao', '#0071c5', '2018-8-23 09:00:00', '2018-8-23 11:00:00'),
(2, 'Palestra', '#40e0d0', '2018-8-13 14:00:00', '2018-8-11-13 17:00:00'),
(3, 'Reuniao 1', '#FFD700', '2018-8-23 08:00:00', '2018-8-23 09:00:00'),
(4, 'Reuniao 3', '#40e0d0', '2018-8-23 10:00:00', '2018-8-23 11:00:00'),
(5, 'Reuniao 4', '#0071c5', '2018-8-23 11:00:00', '2018-8-13 12:00:00'),
(6, 'Reuniao 5', '#FFD700', '2018-8-23 13:00:00', '2018-8-23 14:00:00'),
(7, 'Reuniao 6', '#0071c5', '2018-8-23 14:00:00', '2018-8-23 15:00:00'),
(8, 'Reuniao 7', '#FFD700', '2018-81-23 16:00:00', '2018-8-23 17:00:00');


ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
