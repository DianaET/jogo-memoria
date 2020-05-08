-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 18-Ago-2019 às 23:37
-- Versão do servidor: 5.7.26
-- versão do PHP: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `equipe_bd`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `coordenadores`
--

DROP TABLE IF EXISTS `coordenadores`;
CREATE TABLE IF NOT EXISTS `coordenadores` (
  `nome` varchar(50) NOT NULL,
  `contato` varchar(50) NOT NULL,
  `disciplina` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `coordenadores`
--

INSERT INTO `coordenadores` (`nome`, `contato`, `disciplina`) VALUES
('Carmem Leite', 'carmem.leite@ifsudestemg.edu.br', 'Inglês'),
('Diana Tuyarot', 'diana.tuyarot@ifsudestemg.edu.br', 'Física');

-- --------------------------------------------------------

--
-- Estrutura da tabela `participantes`
--

DROP TABLE IF EXISTS `participantes`;
CREATE TABLE IF NOT EXISTS `participantes` (
  `nome` varchar(50) NOT NULL,
  `contato` varchar(50) NOT NULL,
  `curso` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `participantes`
--

INSERT INTO `participantes` (`nome`, `contato`, `curso`) VALUES
('Mylena Moreira', 'mylenacristina.moreira@gmail.com', '3°EDF'),
('Sara Carvalho', 'saracarvalhogtordo@gmail.com', '2°EDF'),
('Paula David', 'pauladavidt@gmail.com', '2°EDF'),
('Priscilla Barreiros', 'priscillasales220@gmail.com', '3°EDF'),
('Lívia Alves', 'liviaalves421@gmail.com', '3°EDF'),
('Anna Rafaela', 'aninhahp11@gmail.com', '3°EDF'),
('Julia Cruz', 'acjulia2002@gmailcom', '3°EDF'),
('Bernardo André', 'bernardoandrerocha@gmail.com', '3°INF');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
