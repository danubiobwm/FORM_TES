-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 17-Ago-2018 às 15:22
-- Versão do servidor: 5.7.17
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `form_contato`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `mensagens_contatos`
--

CREATE TABLE `mensagens_contatos` (
  `id` int(11) NOT NULL,
  `assunto` varchar(220) NOT NULL,
  `mensagem` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `mensagens_contatos`
--

INSERT INTO `mensagens_contatos` (`id`, `assunto`, `mensagem`, `created`, `modified`) VALUES
(1, 'CV', 'Curriculum ', '2018-08-17 09:17:06', NULL),
(2, 'CV', 'Curriculum ', '2018-08-17 09:18:31', NULL),
(3, 'Danubio', 'teste', '2018-08-17 10:11:31', NULL),
(4, 'Danubio', 'teste esse vai', '2018-08-17 10:13:25', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mensagens_contatos`
--
ALTER TABLE `mensagens_contatos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mensagens_contatos`
--
ALTER TABLE `mensagens_contatos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
