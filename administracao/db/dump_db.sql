-- phpMyAdmin SQL Dump
-- version 3.3.2deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: Jul 29, 2011 as 01:42 PM
-- Versão do Servidor: 5.1.41
-- Versão do PHP: 5.3.2-1ubuntu4.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de Dados: `selecaodocente`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `campus`
--

CREATE TABLE IF NOT EXISTS `campus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(128) DEFAULT NULL,
  `ativo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ;

--
-- Extraindo dados da tabela `campus`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso`
--

CREATE TABLE IF NOT EXISTS `curso` (
  `cod_curso` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(128) NOT NULL,
  `ativo` char(50) DEFAULT NULL,
  `campus` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod_curso`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ;

--
-- Extraindo dados da tabela `curso`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `inscrito`
--

CREATE TABLE IF NOT EXISTS `inscrito` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(128) NOT NULL,
  `endereco` varchar(128) NOT NULL,
  `bairro` varchar(128) NOT NULL,
  `cep` varchar(128) NOT NULL,
  `cidade` varchar(128) NOT NULL,
  `estado` varchar(2) NOT NULL,
  `email` varchar(128) DEFAULT NULL,
  `cpf` varchar(18) DEFAULT NULL,
  `rg` varchar(11) NOT NULL,
  `especial` varchar(15) DEFAULT NULL,
  `senha` varchar(20) NOT NULL,
  `nacionalidade` varchar(128) DEFAULT NULL,
  `telefone` varchar(128) NOT NULL,
  `telefone2` varchar(128) DEFAULT NULL,
  `celular` varchar(128) DEFAULT NULL,
  `datanascimento` varchar(10) DEFAULT NULL,
  `sexo` varchar(45) DEFAULT NULL,
  `estadocivil` varchar(45) DEFAULT NULL,
  `orgaoexpedidor` varchar(45) DEFAULT NULL,
  `uf` varchar(45) DEFAULT NULL,
  `dataexpedicao` varchar(10) DEFAULT NULL,
  `especial_descricao` varchar(128) DEFAULT NULL,
  `responsavel` varchar(128) DEFAULT NULL,
  `isencao` varchar(45) DEFAULT NULL,
  `declaracao` varchar(128) DEFAULT NULL,
  `localprova` varchar(128) DEFAULT NULL,
  `numinscricao` varchar(45) NOT NULL,
  `pagamento` varchar(45) DEFAULT NULL,
  `especial_prova` varchar(10) DEFAULT NULL,
  `especial_prova_descricao` varchar(128) DEFAULT NULL,
  `vaga_especial` varchar(10) DEFAULT NULL,
  `vaga_rede_publica` varchar(10) DEFAULT NULL,
  `vaga_rural` varchar(10) DEFAULT NULL,
  `campus` varchar(128) DEFAULT NULL,
  `nis` varchar(15) NOT NULL,
  `curso` int(11) NOT NULL,
  `nota` decimal(3,1) unsigned DEFAULT NULL,
  `data_cadastro` date DEFAULT NULL,
  `ultima_alteracao` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `curso` (`curso`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ;

--
-- Extraindo dados da tabela `inscrito`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `localprova`
--

CREATE TABLE IF NOT EXISTS `localprova` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(128) DEFAULT NULL,
  `ativo` varchar(45) DEFAULT NULL,
  `campus` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ;

--
-- Extraindo dados da tabela `localprova`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `pagamentos`
--

CREATE TABLE IF NOT EXISTS `pagamentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_inscrito` int(11) DEFAULT NULL,
  `arqretorno` varchar(45) DEFAULT NULL,
  `datapagamento` date DEFAULT NULL,
  `dataretorno` date DEFAULT NULL,
  `dataimportacao` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_inscrito` (`id_inscrito`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pagamentos`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `usuario` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL,
  PRIMARY KEY (`usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`usuario`, `senha`) VALUES
('@dm', '123456'),
('@dm!', '!2E4S');

--
-- Restrições para as tabelas dumpadas
--

--
-- Restrições para a tabela `inscrito`
--
ALTER TABLE `inscrito`
  ADD CONSTRAINT `inscrito_ibfk_1` FOREIGN KEY (`curso`) REFERENCES `curso` (`cod_curso`);
