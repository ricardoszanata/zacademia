-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16-Mar-2022 às 19:42
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `zacademia`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `avaliacoes`
--

CREATE TABLE `avaliacoes` (
  `avaid` int(11) NOT NULL,
  `avapesid` int(11) DEFAULT NULL,
  `avadobid` int(11) DEFAULT NULL,
  `avaperid` int(11) DEFAULT NULL,
  `avadata` date DEFAULT NULL,
  `avapeso` decimal(18,0) DEFAULT NULL,
  `avaaltura` decimal(18,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `dobrascutaneas`
--

CREATE TABLE `dobrascutaneas` (
  `dobid` int(11) NOT NULL,
  `dobbicipes` decimal(18,0) DEFAULT NULL,
  `dobtricipis` decimal(18,0) DEFAULT NULL,
  `dobpeitoral` decimal(18,0) DEFAULT NULL,
  `dobabdome` decimal(18,0) DEFAULT NULL,
  `dobcoxa` decimal(18,0) DEFAULT NULL,
  `dobpanturrilha` decimal(18,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `exercicios`
--

CREATE TABLE `exercicios` (
  `exeid` int(11) NOT NULL,
  `exenome` varchar(100) DEFAULT NULL,
  `exegruid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `gruposmusculares`
--

CREATE TABLE `gruposmusculares` (
  `gruid` int(11) NOT NULL,
  `grunome` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `itenstreinos`
--

CREATE TABLE `itenstreinos` (
  `iteid` int(11) NOT NULL,
  `itetreid` int(11) DEFAULT NULL,
  `iteexeid` int(11) DEFAULT NULL,
  `iteserie` int(11) DEFAULT NULL,
  `iterepeticao` int(11) DEFAULT NULL,
  `itepeso` int(11) DEFAULT NULL,
  `itedescanso` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `matriculas`
--

CREATE TABLE `matriculas` (
  `matid` int(11) NOT NULL,
  `matdatacadastro` date DEFAULT NULL,
  `matseg` tinyint(1) DEFAULT NULL,
  `matseghora` time DEFAULT NULL,
  `matter` tinyint(1) DEFAULT NULL,
  `matterhora` time DEFAULT NULL,
  `matqua` tinyint(1) DEFAULT NULL,
  `matquahora` time DEFAULT NULL,
  `matqui` tinyint(1) DEFAULT NULL,
  `matquihora` time DEFAULT NULL,
  `matsex` tinyint(1) DEFAULT NULL,
  `matsexhora` time DEFAULT NULL,
  `matsab` tinyint(1) DEFAULT NULL,
  `matsabhora` time DEFAULT NULL,
  `matdom` tinyint(1) DEFAULT NULL,
  `matdomhora` time DEFAULT NULL,
  `matplaid` int(11) DEFAULT NULL,
  `matpesid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `perimetros`
--

CREATE TABLE `perimetros` (
  `perid` int(11) NOT NULL,
  `perpescoco` decimal(18,0) DEFAULT NULL,
  `perombro` decimal(18,0) DEFAULT NULL,
  `pertorax` decimal(18,0) DEFAULT NULL,
  `percintura` decimal(18,0) DEFAULT NULL,
  `perabdome` decimal(18,0) DEFAULT NULL,
  `perquadril` decimal(18,0) DEFAULT NULL,
  `perbracod` decimal(18,0) DEFAULT NULL,
  `perbracoe` decimal(18,0) DEFAULT NULL,
  `perantebracod` decimal(18,0) DEFAULT NULL,
  `perantebracoe` decimal(18,0) DEFAULT NULL,
  `percoxad` decimal(18,0) DEFAULT NULL,
  `percoxae` decimal(18,0) DEFAULT NULL,
  `perpanturrilhad` decimal(18,0) DEFAULT NULL,
  `perpanturrilhae` decimal(18,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoas`
--

CREATE TABLE `pessoas` (
  `pesid` int(11) NOT NULL,
  `pesnome` varchar(100) DEFAULT NULL,
  `pesdatanasc` date DEFAULT NULL,
  `pessexo` varchar(20) DEFAULT NULL,
  `pescpf` varchar(20) DEFAULT NULL,
  `pesrg` varchar(20) DEFAULT NULL,
  `pesendereco` varchar(100) DEFAULT NULL,
  `pestelefone` varchar(20) DEFAULT NULL,
  `pescelular` varchar(20) DEFAULT NULL,
  `pesemail` varchar(100) DEFAULT NULL,
  `pespass` varchar(50) NOT NULL,
  `peschave` varchar(50) DEFAULT NULL,
  `pestipid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `planos`
--

CREATE TABLE `planos` (
  `plaid` int(11) NOT NULL,
  `planome` varchar(100) DEFAULT NULL,
  `plavalor` decimal(18,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipospessoa`
--

CREATE TABLE `tipospessoa` (
  `tipid` int(11) NOT NULL,
  `tipnome` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `treinos`
--

CREATE TABLE `treinos` (
  `treid` int(11) NOT NULL,
  `tredtinicio` date DEFAULT NULL,
  `tredtfim` date DEFAULT NULL,
  `trealid` int(11) DEFAULT NULL,
  `trepeid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `avaliacoes`
--
ALTER TABLE `avaliacoes`
  ADD PRIMARY KEY (`avaid`),
  ADD KEY `fkavapesid` (`avapesid`),
  ADD KEY `fkavadobid` (`avadobid`),
  ADD KEY `fkavaperid` (`avaperid`);

--
-- Índices para tabela `dobrascutaneas`
--
ALTER TABLE `dobrascutaneas`
  ADD PRIMARY KEY (`dobid`);

--
-- Índices para tabela `exercicios`
--
ALTER TABLE `exercicios`
  ADD PRIMARY KEY (`exeid`),
  ADD KEY `fkexegruid` (`exegruid`);

--
-- Índices para tabela `gruposmusculares`
--
ALTER TABLE `gruposmusculares`
  ADD PRIMARY KEY (`gruid`);

--
-- Índices para tabela `itenstreinos`
--
ALTER TABLE `itenstreinos`
  ADD PRIMARY KEY (`iteid`),
  ADD KEY `fkitetreid` (`itetreid`),
  ADD KEY `fkiteexeid` (`iteexeid`);

--
-- Índices para tabela `matriculas`
--
ALTER TABLE `matriculas`
  ADD PRIMARY KEY (`matid`),
  ADD KEY `fkmatplaid` (`matplaid`),
  ADD KEY `fkmatpesid` (`matpesid`);

--
-- Índices para tabela `perimetros`
--
ALTER TABLE `perimetros`
  ADD PRIMARY KEY (`perid`);

--
-- Índices para tabela `pessoas`
--
ALTER TABLE `pessoas`
  ADD PRIMARY KEY (`pesid`),
  ADD KEY `fkpestipid` (`pestipid`);

--
-- Índices para tabela `planos`
--
ALTER TABLE `planos`
  ADD PRIMARY KEY (`plaid`);

--
-- Índices para tabela `tipospessoa`
--
ALTER TABLE `tipospessoa`
  ADD PRIMARY KEY (`tipid`);

--
-- Índices para tabela `treinos`
--
ALTER TABLE `treinos`
  ADD PRIMARY KEY (`treid`),
  ADD KEY `fktrealid` (`trealid`),
  ADD KEY `fktrepeid` (`trepeid`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `avaliacoes`
--
ALTER TABLE `avaliacoes`
  MODIFY `avaid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `dobrascutaneas`
--
ALTER TABLE `dobrascutaneas`
  MODIFY `dobid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `exercicios`
--
ALTER TABLE `exercicios`
  MODIFY `exeid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `gruposmusculares`
--
ALTER TABLE `gruposmusculares`
  MODIFY `gruid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `itenstreinos`
--
ALTER TABLE `itenstreinos`
  MODIFY `iteid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `matriculas`
--
ALTER TABLE `matriculas`
  MODIFY `matid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `perimetros`
--
ALTER TABLE `perimetros`
  MODIFY `perid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pessoas`
--
ALTER TABLE `pessoas`
  MODIFY `pesid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `planos`
--
ALTER TABLE `planos`
  MODIFY `plaid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tipospessoa`
--
ALTER TABLE `tipospessoa`
  MODIFY `tipid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `treinos`
--
ALTER TABLE `treinos`
  MODIFY `treid` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `avaliacoes`
--
ALTER TABLE `avaliacoes`
  ADD CONSTRAINT `fkavadobid` FOREIGN KEY (`avadobid`) REFERENCES `dobrascutaneas` (`dobid`),
  ADD CONSTRAINT `fkavaperid` FOREIGN KEY (`avaperid`) REFERENCES `perimetros` (`perid`),
  ADD CONSTRAINT `fkavapesid` FOREIGN KEY (`avapesid`) REFERENCES `pessoas` (`pesid`);

--
-- Limitadores para a tabela `exercicios`
--
ALTER TABLE `exercicios`
  ADD CONSTRAINT `fkexegruid` FOREIGN KEY (`exegruid`) REFERENCES `gruposmusculares` (`gruid`);

--
-- Limitadores para a tabela `itenstreinos`
--
ALTER TABLE `itenstreinos`
  ADD CONSTRAINT `fkiteexeid` FOREIGN KEY (`iteexeid`) REFERENCES `exercicios` (`exeid`),
  ADD CONSTRAINT `fkitetreid` FOREIGN KEY (`itetreid`) REFERENCES `treinos` (`treid`);

--
-- Limitadores para a tabela `matriculas`
--
ALTER TABLE `matriculas`
  ADD CONSTRAINT `fkmatpesid` FOREIGN KEY (`matpesid`) REFERENCES `pessoas` (`pesid`),
  ADD CONSTRAINT `fkmatplaid` FOREIGN KEY (`matplaid`) REFERENCES `planos` (`plaid`);

--
-- Limitadores para a tabela `pessoas`
--
ALTER TABLE `pessoas`
  ADD CONSTRAINT `fkpestipid` FOREIGN KEY (`pestipid`) REFERENCES `tipospessoa` (`tipid`);

--
-- Limitadores para a tabela `treinos`
--
ALTER TABLE `treinos`
  ADD CONSTRAINT `fktrealid` FOREIGN KEY (`trealid`) REFERENCES `pessoas` (`pesid`),
  ADD CONSTRAINT `fktrepeid` FOREIGN KEY (`trepeid`) REFERENCES `pessoas` (`pesid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
