-- phpMyAdmin SQL Dump
-- version 3.3.10deb2
-- http://www.phpmyadmin.net
--
-- Servidor: 186.202.13.20
-- Tempo de Geração: Set 06, 2011 as 02:55 PM
-- Versão do Servidor: 5.1.54
-- Versão do PHP: 5.3.3-7+squeeze3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de Dados: `ifbaiano28`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Extraindo dados da tabela `campus`
--

INSERT INTO `campus` (`id`, `nome`, `ativo`) VALUES
(1, 'Catu', 'N'),
(2, 'Guanambi', 'N'),
(3, 'Santa InÃªs', NULL),
(4, 'Senhor do Bonfim', 'N'),
(10, 'Bom Jesus da Lapa', NULL),
(11, 'Guarajuba', NULL),
(12, 'Morro da Gaivotas', NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=68 ;

--
-- Extraindo dados da tabela `curso`
--

INSERT INTO `curso` (`cod_curso`, `nome`, `ativo`, `campus`) VALUES
(55, 'LÃ­ngua Brasileira de Sinais - Libras ', 'N', 1),
(56, 'LÃ­ngua Brasileira de Sinais - Libras', 'N', 2),
(57, 'LÃ­ngua Brasileira de Sinais - Libras', NULL, 3),
(58, 'LÃ­ngua Brasileira de Sinais - Libras', 'N', 4),
(64, 'Especialização em Acessibilidade', NULL, 10),
(65, 'Especialização em Acessibilidade', NULL, 11),
(66, 'Especialização em Acessibilidade', NULL, 3),
(67, 'curso de cozinha', NULL, 10);

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
  `campus` int(11) NOT NULL,
  `nis` varchar(15) NOT NULL,
  `curso` int(11) NOT NULL,
  `nota` decimal(3,1) unsigned DEFAULT NULL,
  `data_cadastro` date DEFAULT NULL,
  `ultima_alteracao` date DEFAULT NULL,
  `isento_homologado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `curso` (`curso`),
  KEY `campus` (`campus`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=209 ;

--
-- Extraindo dados da tabela `inscrito`
--

INSERT INTO `inscrito` (`id`, `nome`, `endereco`, `bairro`, `cep`, `cidade`, `estado`, `email`, `cpf`, `rg`, `especial`, `senha`, `nacionalidade`, `telefone`, `telefone2`, `celular`, `datanascimento`, `sexo`, `estadocivil`, `orgaoexpedidor`, `uf`, `dataexpedicao`, `especial_descricao`, `responsavel`, `isencao`, `declaracao`, `localprova`, `numinscricao`, `pagamento`, `especial_prova`, `especial_prova_descricao`, `vaga_especial`, `vaga_rede_publica`, `vaga_rural`, `campus`, `nis`, `curso`, `nota`, `data_cadastro`, `ultima_alteracao`, `isento_homologado`) VALUES
(169, 'JOILCE KARINE FERNANDES SILVA PEREIRA', 'RUA CASSEMIRO DE ABREU, 371 ', 'CENTRO', '46430-000', 'GUANAMBI', 'BA', 'JOILCEGBI@HOTMAIL.COM', '68609698572', '552762709', 'NAO', 'JOKA3509', 'BRASILEIRA', '(77) 3451-3509', '', '(77) 8802-3642', '17/10/1973', 'FEMININO', 'CASADO(A)', 'SSP', 'BA', '16/10/1998', '', '', 'NAO', 'SIM', '0', '6860169', NULL, 'NAO', '', 'NAO', 'NAO', 'NAO', 2, '', 56, NULL, '2011-08-19', '2011-08-19', NULL),
(170, 'ERIVALDO DE JESUS MARINHO', 'AV. SEVERINO VIEIRA', 'IMBASSAY', '42850-000', 'DIAS D''Ã�VILA', 'BA', 'ERIVALDO.LIBRAS@GMAIL.COM', '00777004577', '0872128032', 'NAO', 'ERINHO6405146', 'BRASILEIRO', '(71) 3625-4054', '', '(71) 8832-1944', '01/04/1983', 'MASCULINO', 'SOLTEIRO(A)', 'SSP', 'BA', '04/01/2010', '', '', 'NAO', 'SIM', '0', '0077170', NULL, 'NAO', '', 'NAO', 'NAO', 'NAO', 1, '', 55, NULL, '2011-08-19', '2011-08-19', NULL),
(171, 'ANTONIETA LEOLINA SOUZA DIAS', 'RUA JOÃƒO JOSÃ‰ DE MIRANDA', 'NAZARÃ‰', '44700-00', 'JACOBINA', 'BA', 'ANTONIETALSD@GMAIL.COM', '60551690534', '04000912449', 'NAO', 'ANTONIETA', 'BRASILEIRA', '(74) 8105-6853', '', '', '13/06/1970', 'FEMININO', 'CASADO(A)', 'SSP', 'BA', '01/06/2009', '', '', 'SIM', 'SIM', '0', '6055171', NULL, 'NAO', '', 'NAO', 'NAO', 'NAO', 4, '', 58, NULL, '2011-08-19', '2011-08-19', NULL),
(172, 'ELIZANGELA DE ARAUJO MAMÃ‰DIO', 'RUA MANOEL COTRIM NÂ°358', 'ALVORADA', '46430000', 'GUANAMBI', 'DF', 'LIUAPOSTOLA@HOTMAIL.COM', '02326828526', '1281561983', 'NAO', 'MAMEDIO789*', 'BRASILEIRA', '', '', '(77) 9934-9222', '06/12/1983', 'FEMININO', 'SOLTEIRO(A)', 'SSP', 'BA', '08/12/2000', '', '', 'NAO', 'SIM', '0', '0232172', NULL, 'NAO', '', 'NAO', 'NAO', 'NAO', 2, '', 56, NULL, '2011-08-19', '2011-08-19', NULL),
(173, 'CARLA FERNANDES MAGALHAES', 'LIMA BARRETO', 'PARAISO', '46430-000', 'GUANAMBI', 'BA', 'CAUMAGALHAES@HOTMAIL.COM', '01869799593', '1000207803', 'NAO', '030983150711751', 'BRASILEIRA', '', '', '', '16/03/84', 'FEMININO', 'SOLTEIRO(A)', 'SSP', 'BA', '10/02/06', '', '', 'NAO', 'SIM', '0', '0186173', NULL, 'NAO', '', 'NAO', 'NAO', 'NAO', 1, '', 55, NULL, '2011-08-20', '2011-08-20', NULL),
(174, 'JULIEZE JESUS DE SOUZA', '1Âª TRAVESSA ITAUNA N 23', 'TOMBA', '44090-308', 'FEIRA DE SANTANA', 'BA', 'JULYPEREGRINA@HOTMAIL.COM', '00586233539', '0752327232', 'NAO', 'CRISTO', 'BRASILEIRA', '(75) 3614-9511', '', '(75) 8103-6281', '14/08/1981', 'FEMININO', 'SOLTEIRO(A)', 'SSP', 'BA', '05/12/2008', '', '', 'NAO', 'SIM', '0', '0058174', NULL, 'NAO', '', 'NAO', 'NAO', 'NAO', 1, '', 55, NULL, '2011-08-20', '2011-08-20', NULL),
(175, 'ENOS FIGUEREDO DE FREITAS', 'TV.LÃ�DICE DA MATA, 16', 'ALTO DO CIGANO', '48970-000', 'SENHOR DO BONFIM', 'BA', 'ENOSLS6@HOTMAIL.COM', '02443455548', '1330436571', 'NAO', 'IFLS2011', 'BRASILEIRO', '(74) 3541-5277', '', '(74) 9124-9245', '24/04/1986', 'MASCULINO', 'CASADO(A)', 'CNAS', 'BA', '15/12/2010', '', '', 'NAO', 'SIM', '0', '0244175', NULL, 'NAO', '', 'NAO', 'NAO', 'NAO', 4, '', 58, NULL, '2011-08-20', '2011-08-20', NULL),
(177, 'ALESSANDRA SANDES LOPES', 'RUA DR. OSCAR  RABELLO, 335', 'PRAÃ‡A KENNEDY', '48020-610', 'ALAGOINHAS', 'BA', 'ALLY.SANDES@HOTMAIL.COM', '54675570500', '54675570500', 'AUDITIVA', 'SANDRA1971', 'BRASILEIRA', '(75) 3421-1075', '', '(75) 8825-6471', '28/05/71', 'MASCULINO', 'CASADO(A)', 'SSP', 'BA', '26/10/2006', '', '', 'NAO', 'SIM', '0', '5467177', NULL, 'NAO', '', 'NAO', 'NAO', 'NAO', 1, '', 55, NULL, '2011-08-21', '2011-08-21', NULL),
(178, 'APARECIDA DE FÃ�TIMA CASTRO BRITO CRUZ', 'RUA NILZA FERNANDES CARDOSO. 57', 'PARAISO', '46430-000', 'GUANAMBI', 'BA', 'FAFA.GBI@HOTMAIL.COM', '00153353562', '0873329813', 'NAO', 'EUAINDATEAMO', 'BRASILEIRA', '', '', '(77) 8807-6486', '12/10/1979', 'FEMININO', 'CASADO(A)', 'SSP', 'BA', '05/07/2001', '', '', 'NAO', 'SIM', '0', '0015178', NULL, 'NAO', '', 'NAO', 'NAO', 'NAO', 2, '', 56, NULL, '2011-08-21', '2011-08-21', NULL),
(180, 'RAFAEL BOMFIM BRAGA ', 'RUA HUMBERTO PORTO 384 APTO 202', 'SAO RAFAEL ', '41250-575', 'SALVADOR ', 'BA', 'RAFAEL_SURF_1988@HOTMAIL.COM', '03025956518', '1132917280', 'AUDITIVA', 'BOMFIM', 'BAHIA', '(71) 3395-1288', '', '(71) 8172-2394', '26/08/1988', 'MASCULINO', 'SOLTEIRO(A)', 'SSA', 'BA', '06/06/2011', '', '', 'NAO', 'SIM', '0', '0302179', NULL, 'SIM', 'INTERPRETE', 'SIM', 'NAO', 'NAO', 1, '', 55, NULL, '2011-08-21', '2011-08-21', NULL),
(184, 'MARIA JOSÃ‰ MOTA OLIVEIRA ', 'RUA DAS PALMEIRAS 90 APTO 303 TORRE AZUL', 'PONTO CENTRAL', '44149-999', 'FEIRA DE SANTANA', 'BA', 'CHICA.OLIVEIRA@HOTMAIL.COM', '58143610500', '0386305323', 'NAO', 'RAFANANDA', 'BRASILEIRA', '(75) 3625-7869', '', '(75) 9947-7007', '21/11/1969', 'FEMININO', 'DIVORCIADO(A)', 'SSP', 'BA', '14/02/2011', '', '', 'NAO', 'SIM', '0', '5814181', NULL, 'NAO', '', 'NAO', 'NAO', 'NAO', 4, '', 58, NULL, '2011-08-22', '2011-08-22', NULL),
(185, 'JANETE FERREIRA DOS SANTOS SARTORETTO', 'CAMINHO 02, NUMERO 10', 'GLEBA C', '42083-060', 'CAMAÃ‡ARI', 'BA', 'JJANE.F@HOTMAIL.COM', '82352500559', '0712665773', 'NAO', '99381653', 'BRASILEIRA', '(71) 3621-3188', '', '(71) 8218-3420', '28/09/1983', 'FEMININO', 'CASADO(A)', 'SSP', 'BA', '22/09/2009', '', '', 'NAO', 'SIM', '0', '8235185', NULL, 'NAO', '', 'NAO', 'NAO', 'NAO', 1, '', 55, NULL, '2011-08-22', '2011-08-22', NULL),
(187, 'JOSEANE DOS SANTOS DO ESPIRITO SANTO', '1 TV. TRANQUILIDADE NÂº 3', 'BOCA DO RIO', '41705-210', 'SALVADOR', 'BA', 'JOSYLS06@YAHOO.COM.BR', '01941199550', '1011285410', 'NAO', 'EXPERIENCIA', 'BRASILEIRA', '(71) 9108-5063', '', '(71) 8700-9127', '24/04/1984', 'FEMININO', 'SOLTEIRO(A)', 'SSP', 'BA', '21/06/2010', '', '', 'NAO', 'SIM', '0', '0194187', NULL, 'NAO', '', 'NAO', 'NAO', 'NAO', 1, '', 55, NULL, '2011-08-22', '2011-08-22', NULL),
(188, 'MAÃ�SA LIMA FREITAS', 'TRAVESSA OTÃ�VIO MANGABEIRA NÂº 14', 'CENTRO', '44790-000', 'CAMPO FORMOSO', 'BA', 'MAISA_SACF@HOTMAIL.COM', '89037910530', '0438466020', 'NAO', 'RAFAEL', 'BRASILEIRA', '(74) 3645-3818', '', '(74) 9117-9184', '26/03/1974', 'FEMININO', 'SOLTEIRO(A)', 'SSP', 'BA', '20/09/2001', '', '', 'NAO', 'SIM', '0', '8903188', NULL, 'NAO', '', 'NAO', 'NAO', 'NAO', 4, '', 58, NULL, '2011-08-22', '2011-08-22', NULL),
(189, 'INADILCE DOS SANTOS REIS', 'RUA DAS ACACIAS  135', 'JARDIN PETROLAR', '48000-000', 'ALAGOINHAS', 'BA', 'DYLL.CE@HOTMAIL.COM', '72526815568', '0810045753', 'NAO', 'PEDRO', 'BRASILEIRA', '(75) 8152-4271', '', '(75) 8152-4271', '28/04/1977', 'FEMININO', 'CASADO(A)', 'SSP', 'BA', '21/11/2006', '', '', 'SIM', 'SIM', '0', '7252189', NULL, 'NAO', '', 'NAO', 'NAO', 'NAO', 1, '', 55, 0.0, '2011-08-23', '2011-08-23', NULL),
(190, 'MIRIAM MARAQUES CÃƒNCIO', 'IAENE- BR 101 KM 197- ESTRADA DE CAPUEIRUÃ‡U- S/NÂº', 'CAPUEIRUÃ‡U', '44300-000', 'CACHOEIRA', 'BA', 'MIRIAMCANCIO1@YAHOO.COM.BR', '89257723534', '0575391383', 'NAO', 'LIDDIA', 'BRASILEIRA', '(75) 3425-8124', '', '(75) 9100-7738', '14/03/1973', 'FEMININO', 'CASADO(A)', 'SSPBA', 'BA', '09/02/2007', '', '', 'NAO', 'SIM', '0', '8925190', NULL, 'NAO', '', 'NAO', 'NAO', 'NAO', 3, '', 57, 0.0, '2011-08-23', '2011-08-30', NULL),
(191, 'DILCINÃ‰A DOS SANTOS REIS', 'RUA DAS ACÃ�CIAS', 'JARDIM PETROLAR', '48030-660', 'ALAGOINHAS', 'BA', 'NEASANTOSS@YAHOO.COM.BR', '82123721549', '810043629', 'NAO', '230418', 'BRASILEIRA', '', '', '75) 8105-9304', '07/08/1979', 'MASCULINO', 'SOLTEIRO(A)', 'SSP', 'BA', '14/01/2007', '', '', 'NAO', 'SIM', '0', '8212191', NULL, 'NAO', '', 'NAO', 'NAO', 'NAO', 1, '', 55, NULL, '2011-08-23', '2011-08-23', NULL),
(192, 'ELISA MARA NASARIO CARNEIRO', 'RUA MOEDA, 116 ', 'SANTA INÃŠS', '31080-110', 'BELO HORIZONTE ', 'MG', 'ELISAMNASARIOC@GMAIL.COM', '10014937611', '14074278', 'NAO', '91LISA25', 'BRASILEIRA', '(31) 3461-1158', '', '(31) 8812-1158', '25/03/1991', 'FEMININO', 'SOLTEIRO(A)', 'SSPMG', 'MG', '01/12/2011', '', '', 'NAO', 'SIM', '0', '1001192', NULL, 'NAO', '', 'NAO', 'NAO', 'NAO', 2, '', 56, NULL, '2011-08-23', '2011-08-23', NULL),
(193, 'ISAAC FIGUEREDO DE FREITAS', 'RUA FRANCISCO SIMAS NÂº 195', 'CENTRO', '48970-000', 'SENHOR DO BONFIM', 'BA', 'ISAACFREITAS123@HOTMAIL.COM', '02349271510', '1356578578', 'NAO', '191470EC', 'BRASILEIRA', '(74) 3541-5277', '', '(74) 9122-1053', '05/04/1987', 'MASCULINO', 'CASADO(A)', 'SSP', 'BA', '30/01/2008', '', '', 'NAO', 'SIM', '0', '0234193', NULL, 'NAO', '', 'NAO', 'NAO', 'NAO', 3, '', 57, NULL, '2011-08-23', '2011-08-23', NULL),
(194, 'DEIZIANE DOS SANTOS MOTA', 'RUA HAMILTON RIOS N 133', 'DIST BANDIAÃ‡U', '48745-000', 'CONCEIÃ‡ÃƒO DO COITÃ‰', 'BA', 'DEISE_AURA@HOTMAIL.COM', '03292931509', '1124600116', 'AUDITIVA', '2605', 'BRASILEIRA', '(75) 3218-4053', '', '(75) 9969-6854', '26/05/1987', 'FEMININO', 'SOLTEIRO(A)', 'SSP', 'BA', '15/09/1998', '', '', 'NAO', 'SIM', '0', '0329194', NULL, 'SIM', 'INTÃ‰RPRETE DE LIBRAS', 'SIM', 'NAO', 'NAO', 3, '', 57, NULL, '2011-08-29', '2011-08-29', NULL),
(195, 'MARCONI BOMFIM DE SANTANA', 'COND. MORADA DO BOSQUE BL-15 APTO-22', 'MALHADO', '45658-638', 'ILHEUS', 'BA', 'MARCONIBS@HOTMAIL.COM', '00829915532', '0839868200', 'NAO', 'CONDINHO', 'BRASILEIRO', '(73) 3634-8717', '', '(73) 8879-0009', '15/06/1984', 'MASCULINO', 'SOLTEIRO(A)', 'SSP', 'BA', '14/07/1997', '', '', 'NAO', 'SIM', '0', '0082195', NULL, 'NAO', '', 'NAO', 'NAO', 'NAO', 3, '', 57, NULL, '2011-08-29', '2011-08-29', NULL),
(197, 'JOSEANE DA SILVA DE ARAUJO', 'RUA RIO AVE 27E', 'SAO MARCOS', '41253-327', 'SALVADOR', 'BA', 'SIPRIANE@HOTMAIL.COM', '92387012534', '0606348808', 'NAO', '252525', 'BRASILEIRA', '(71) 3213-1424', '', '(71) 8208-3847', '13/06/1975', 'FEMININO', 'CASADO(A)', 'SSP', 'BA', '09/12/2004', '', '', 'NAO', 'SIM', '0', '9238197', NULL, 'NAO', '', 'NAO', 'NAO', 'NAO', 3, '', 57, NULL, '2011-08-30', '2011-08-30', NULL),
(198, 'JOYCE GOMES DE ALENCAR', 'AV. MONSENHOR ANGELO SAMPAIO', 'VILA EDUARDO', '56300-000', 'PETROLINA', 'PE', 'JOYCIELLY@HOTMAIL.COM', '07050336432', '1387921789', 'AUDITIVA', '6405252', 'BRASILEIRA', '(87) 3862-5796', '', '(87) 8839-1712', '30/04/1986', 'FEMININO', 'SOLTEIRO(A)', 'SSP', 'BA', '26/09/2003', '', '', 'NAO', 'SIM', '0', '0705198', NULL, 'SIM', '', 'SIM', 'NAO', 'NAO', 3, '', 57, NULL, '2011-08-31', '2011-08-31', NULL),
(199, 'LÃ‰IA SILVA SANTOS', 'RUA JOSÃ‰ BARROS MEIRA 160', 'MANDACARU', '45207-070', 'JEQUIÃ‰', 'BA', 'LISLEYA@HOTMAIL.COM', '03312592577', '1365054306', 'NAO', 'LEIA', 'BRASILEIRA', '(73) 3525-4061', '', '(73) 9129-5430', '06/03/1987', 'FEMININO', 'SOLTEIRO(A)', 'SSP', 'BA', '31/01/2003', '', '', 'NAO', 'SIM', '0', '0331199', NULL, 'NAO', '', 'NAO', 'NAO', 'NAO', 3, '', 57, NULL, '2011-08-31', '2011-08-31', NULL),
(200, 'LUCCA MIRANDA LUCAS REZENDE', 'RUA PROFESSOR SABINO SILVA', 'JARDIM APIPEMA', '45822-555', 'GUARAJUBA', 'BA', 'ANDRE.REZENDE@IFBAIANO.EDU.BR', '39732221003', '789456', 'NAO', '123', 'BRAISLEIRO', '(88) 5454-5121', '', '(68) 7645-4346', '13/03/1976', 'MASCULINO', 'SOLTEIRO(A)', 'SSP', 'BA', '12/12/2001', '', '', 'SIM', 'SIM', '0', '3973200', NULL, 'NAO', '', 'NAO', 'NAO', 'NAO', 3, '', 57, 0.0, '2011-09-02', '2011-09-05', '1'),
(201, 'LANA MIRANDA LUCAS REZENDE', 'ENDEREÃ‡O', 'BAIRRO', '45822-555', 'CIDADE', 'BA', 'ANDRE.LUIZ.REZENDE@GMAIL.COM', '46311918137', '21312312312', 'NAO', '123', 'BRAISLEIRO', '(54) 5744-5454', '', '(12) 3123-1231', '12/12/2007', 'MASCULINO', 'SOLTEIRO(A)', 'SSP', 'BA', '12/12/2001', '', '', 'SIM', 'SIM', '0', '4631201', NULL, 'SIM', '', 'SIM', 'NAO', 'NAO', 3, '', 57, 0.0, '2011-09-02', '2011-09-03', '1'),
(204, 'LANA MIRANDA LUCAS REZENDE', 'RUA PROFESSOR SABINO SILVA', 'JARDIM APIPEMA', '45425-424', 'SALVAODR', 'BA', 'ANDRE.LUIZ.REZENDE@GMAIL.COM', '37818088822', '98987987987', 'NAO', '123', 'BRAISLEIRO', '(54) 2542-5424', '', '88888888', '12/03/1976', 'FEMININO', 'SOLTEIRO(A)', 'SSP', 'BA', '12/12/2001', '', '', 'NAO', 'SIM', '1', '3781202', NULL, 'NAO', '', 'NAO', 'NAO', 'NAO', 10, '', 64, NULL, '2011-09-05', '2011-09-05', NULL),
(206, 'MEIO AMBIENTE', 'RUA PROFESSOR SABINO SILVA', 'BAIROO', '45822-555', 'SALVAODR', 'BA', 'ANDRE.REZENDE@IFBAIANO.EDU.BR', '23783829798', '968546545', 'NAO', '123', 'BRAISLEIRO', '(88) 5454-5121', '', '(54) 5454-5454', '12/03/1976', 'FEMININO', 'SOLTEIRO(A)', 'AAP', 'BA', '12/12/2001', '', '', 'NAO', 'SIM', '1', '2378206', NULL, 'NAO', '', 'NAO', 'NAO', 'NAO', 10, '', 64, 0.0, '2011-09-05', '2011-09-05', NULL),
(207, 'HUMBERTO DA SILVA SAURO', 'AV. PEIXE', 'JARDIM APIPEMA', '45822-555', 'CIDADE', 'ES', 'ANDRE.REZENDE@IFBAIANO.EDU.BR', '62335334069', '55157646546', 'NAO', '123', 'BRAISLEIRO', '(88) 5454-5121', '', '(54) 5454-5454', '12/12/2007', 'MASCULINO', 'DIVORCIADO(A)', 'SSP', 'DF', '12/12/2001', '', '', 'NAO', 'SIM', '1', '6233207', NULL, 'NAO', '', 'NAO', 'NAO', 'NAO', 10, '', 64, 0.0, '2011-09-05', '2011-09-05', NULL),
(208, 'ANDRÉ LUIZ ANDRADE REZENDE', 'AV. DOUTORADO NA UNEB - PEXIE', 'JARDIM APIPEMA', '41720052', 'SALVADOR', 'CE', 'ANDRE.LUIZ.REZENDE@GMAIL.COM', '88656810553', '635560909', 'NAO', '123', 'BRASILEIRO', '(22) 3423-2323', '', '(23) 2323-2323', '13/03/1976', 'MASCULINO', 'CASADO(A)', 'SSP', 'BA', '12/12/2005', '', '', 'NAO', 'SIM', '1', '8865208', NULL, 'NAO', '', 'NAO', 'NAO', 'NAO', 10, '', 67, 0.0, '2011-09-06', '2011-09-06', NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `localprova`
--

INSERT INTO `localprova` (`id`, `nome`, `ativo`, `campus`) VALUES
(1, 'escola monte sinal', NULL, 10);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

--
-- Extraindo dados da tabela `pagamentos`
--

INSERT INTO `pagamentos` (`id`, `id_inscrito`, `arqretorno`, `datapagamento`, `dataretorno`, `dataimportacao`) VALUES
(1, 6860169, 'IEDCBR2211908201120512.ret', '2011-08-19', '2011-08-23', '2011-08-22'),
(3, 7, 'CBR7242242208201133433.ret', '0000-00-00', '0000-00-00', '2011-08-23'),
(4, 0, 'CBR7242242208201133433.ret', '0000-00-00', '0000-00-00', '2011-08-23'),
(9, 1, 'CBR7242242208201133433.ret', '0000-00-00', '0000-00-00', '2011-08-23'),
(17, 77170, 'IEDCBR2232208201125254.ret', '2011-08-22', '2011-08-24', '2011-08-23'),
(18, 244175, 'IEDCBR2232208201125254.ret', '2011-08-22', '2011-08-24', '2011-08-23'),
(19, 302179, 'IEDCBR2232208201125254.ret', '2011-08-22', '2011-08-24', '2011-08-23'),
(20, 440176, 'IEDCBR2232208201125254.ret', '2011-08-22', '2011-08-24', '2011-08-23'),
(21, 8235185, 'IEDCBR2232208201125254.ret', '2011-08-22', '2011-08-24', '2011-08-23'),
(34, 15178, 'IEDCBR2252308201113922.ret', '2011-08-23', '2011-08-25', '2011-08-24'),
(35, 194187, 'IEDCBR2252308201113922.ret', '2011-08-23', '2011-08-25', '2011-08-24'),
(36, 232172, 'IEDCBR2252308201113922.ret', '2011-08-23', '2011-08-25', '2011-08-24'),
(37, 1001192, 'IEDCBR2252308201113922.ret', '2011-08-23', '2011-08-25', '2011-08-24'),
(38, 5467177, 'IEDCBR2252308201113922.ret', '2011-08-23', '2011-08-25', '2011-08-24'),
(39, 6319186, 'IEDCBR2252308201113922.ret', '2011-08-23', '2011-08-25', '2011-08-24'),
(40, 7252189, 'IEDCBR2252308201113922.ret', '2011-08-23', '2011-08-25', '2011-08-24'),
(41, 8212191, 'IEDCBR2252308201113922.ret', '2011-08-23', '2011-08-25', '2011-08-24'),
(42, 8903188, 'IEDCBR2252308201113922.ret', '2011-08-23', '2011-08-25', '2011-08-24'),
(43, 8925190, 'IEDCBR2252308201113922.ret', '2011-08-23', '2011-08-25', '2011-08-24'),
(44, 329194, 'IEDCBR2333008201113809.ret', '2011-08-30', '2011-09-01', '2011-09-01'),
(50, 234193, 'IEDCBR236109201113933.ret', '2011-09-01', '2011-09-05', '2011-09-02');

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
('@dm', '123456');

--
-- Restrições para as tabelas dumpadas
--

--
-- Restrições para a tabela `inscrito`
--
ALTER TABLE `inscrito`
  ADD CONSTRAINT `inscrito_ibfk_2` FOREIGN KEY (`campus`) REFERENCES `campus` (`id`),
  ADD CONSTRAINT `inscrito_ibfk_1` FOREIGN KEY (`curso`) REFERENCES `curso` (`cod_curso`);
