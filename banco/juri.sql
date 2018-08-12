CREATE DATABASE  IF NOT EXISTS `astrajuri` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `astrajuri`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: astrajuri
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `advogado`
--

DROP TABLE IF EXISTS `advogado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `advogado` (
  `idAdvogado` int(11) NOT NULL AUTO_INCREMENT,
  `OAB` varchar(45) NOT NULL,
  `Usuario_idUsuario` int(11) NOT NULL,
  PRIMARY KEY (`idAdvogado`),
  KEY `fk_Advogado_Usuario1_idx` (`Usuario_idUsuario`),
  CONSTRAINT `fk_Advogado_Usuario1` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advogado`
--

LOCK TABLES `advogado` WRITE;
/*!40000 ALTER TABLE `advogado` DISABLE KEYS */;
/*!40000 ALTER TABLE `advogado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `andamento`
--

DROP TABLE IF EXISTS `andamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `andamento` (
  `idAndamento` int(11) NOT NULL AUTO_INCREMENT,
  `Andamento` varchar(45) NOT NULL,
  `Descricao` varchar(45) NOT NULL,
  `idData` int(11) NOT NULL,
  PRIMARY KEY (`idAndamento`),
  KEY `Data_idx` (`idData`),
  CONSTRAINT `Data` FOREIGN KEY (`idData`) REFERENCES `data` (`idData`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `andamento`
--

LOCK TABLES `andamento` WRITE;
/*!40000 ALTER TABLE `andamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `andamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arquivo`
--

DROP TABLE IF EXISTS `arquivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arquivo` (
  `idArquivo` int(11) NOT NULL AUTO_INCREMENT,
  `Arquivo` varchar(45) NOT NULL,
  `Descrição` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idArquivo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arquivo`
--

LOCK TABLES `arquivo` WRITE;
/*!40000 ALTER TABLE `arquivo` DISABLE KEYS */;
/*!40000 ALTER TABLE `arquivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comarca`
--

DROP TABLE IF EXISTS `comarca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comarca` (
  `idComarca` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(45) NOT NULL,
  `idEstado` int(11) NOT NULL,
  `endereco` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idComarca`),
  KEY `idEstado_idx` (`idEstado`),
  CONSTRAINT `idEstado` FOREIGN KEY (`idEstado`) REFERENCES `estado` (`idEstado`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comarca`
--

LOCK TABLES `comarca` WRITE;
/*!40000 ALTER TABLE `comarca` DISABLE KEYS */;
INSERT INTO `comarca` VALUES (94,'Regional da Barra da Tijuca ',1,NULL),(95,'Regional da Ilha do Governador ',1,NULL),(96,'Regional da Leopoldina ',1,NULL),(97,'Regional da Pavuna ',1,NULL),(98,'Regional de Alcântara ',1,NULL),(99,'Regional de Bangu ',1,NULL),(100,'Regional de Campo Grande ',1,NULL),(101,'Regional de Itaipava ',1,NULL),(102,'Regional de Jacarepaguá ',1,NULL),(103,'Regional de Madureira ',1,NULL),(104,'Regional de Santa Cruz ',1,NULL),(105,'Regional do Méier ',1,NULL),(106,'Comarca de Angra dos Reis ',1,NULL),(107,'Comarca de Araruama ',1,NULL),(108,'Comarca de Arraial do Cabo ',1,NULL),(109,'Comarca de Barra do Piraí ',1,NULL),(110,'Comarca de Barra Mansa ',1,NULL),(111,'Comarca de Belford Roxo ',1,NULL),(112,'Comarca de Bom Jardim ',1,NULL),(113,'Comarca de Bom Jesus de Itabapoana ',1,NULL),(114,'Comarca de Búzios ',1,NULL),(115,'Comarca de Cabo Frio ',1,NULL),(116,'Comarca de Cachoeiras de Macacu ',1,NULL),(117,'Comarca de Cambuci ',1,NULL),(118,'Comarca de Campos dos Goytacazes ',1,NULL),(119,'Comarca de Cantagalo ',1,NULL),(120,'Comarca de Carapebus / Quissamã ',1,NULL),(121,'Comarca de Carmo ',1,NULL),(122,'Comarca de Casimiro de Abreu ',1,NULL),(123,'Comarca de Conceição de Macabu ',1,NULL),(124,'Comarca de Cordeiro ',1,NULL),(125,'Comarca de Duas Barras ',1,NULL),(126,'Comarca de Duque de Caxias ',1,NULL),(127,'Comarca de Engenheiro Paulo de Frontin ',1,NULL),(128,'Comarca de Guapimirim ',1,NULL),(129,'Comarca de Iguaba Grande ',1,NULL),(130,'Comarca de Itaboraí ',1,NULL),(131,'Comarca de Itaguaí ',1,NULL),(132,'Comarca de Italva ',1,NULL),(133,'Comarca de Itaocara ',1,NULL),(134,'Comarca de Itaperuna ',1,NULL),(135,'Comarca de Itatiaia ',1,NULL),(136,'Comarca de Japeri ',1,NULL),(137,'Comarca de Laje do Muriaé ',1,NULL),(138,'Comarca de Macaé ',1,NULL),(139,'Regional de Inhomirim ',1,NULL),(140,'Comarca de Mangaratiba ',1,NULL),(141,'Comarca de Maricá ',1,NULL),(142,'Comarca de Mendes ',1,NULL),(143,'Comarca de Miguel Pereira ',1,NULL),(144,'Comarca de Miracema ',1,NULL),(145,'Comarca de Natividade ',1,NULL),(146,'Comarca de Nilópolis ',1,NULL),(147,'Regional da Região Oceânica ',1,NULL),(148,'Comarca de Nova Friburgo ',1,NULL),(149,'Comarca de Nova Iguaçu ',1,NULL),(150,'Comarca de Paracambi ',1,NULL),(151,'Comarca de Paraíba do Sul ',1,NULL),(152,'Comarca de Paraty ',1,NULL),(153,'Comarca de Paty do Alferes ',1,NULL),(154,'Comarca de Petrópolis ',1,NULL),(155,'Comarca de Pinheiral ',1,NULL),(156,'Comarca de Piraí ',1,NULL),(157,'Comarca de Porciúncula ',1,NULL),(158,'Comarca de Porto Real - Quatis ',1,NULL),(159,'Comarca de Queimados ',1,NULL),(160,'Comarca de Resende ',1,NULL),(161,'Comarca de Rio Bonito ',1,NULL),(162,'Comarca de Rio Claro ',1,NULL),(163,'Comarca de Rio das Flores ',1,NULL),(164,'Comarca de Rio das Ostras ',1,NULL),(165,'Comarca de Santa Maria Madalena ',1,NULL),(166,'Comarca de Santo Antônio de Pádua ',1,NULL),(167,'Comarca de São Fidelis ',1,NULL),(168,'Comarca de São Francisco do Itabapoana ',1,NULL),(169,'Comarca de São Gonçalo ',1,NULL),(170,'Comarca de São João da Barra ',1,NULL),(171,'Comarca de São João de Meriti ',1,NULL),(172,'Comarca de São José do Vale do Rio Preto ',1,NULL),(173,'Comarca de São Pedro da Aldeia ',1,NULL),(174,'Comarca de São Sebastião do Alto ',1,NULL),(175,'Comarca de Sapucaia ',1,NULL),(176,'Comarca de Saquarema ',1,NULL),(177,'Comarca de Seropédica ',1,NULL),(178,'Comarca de Silva Jardim ',1,NULL),(179,'Comarca de Sumidouro ',1,NULL),(180,'Comarca de Teresópolis ',1,NULL),(181,'Comarca de Trajano de Moraes ',1,NULL),(182,'Comarca de Três Rios ',1,NULL),(183,'Comarca de Valença ',1,NULL),(184,'Comarca de Vassouras ',1,NULL),(185,'Comarca de Volta Redonda ',1,NULL);
/*!40000 ALTER TABLE `comarca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compromisso`
--

DROP TABLE IF EXISTS `compromisso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compromisso` (
  `idCompromisso` int(11) NOT NULL AUTO_INCREMENT,
  `Compromisso` varchar(45) NOT NULL,
  `Data inicio` date NOT NULL,
  `Data Final` date NOT NULL,
  `Cor` int(11) NOT NULL,
  `Hora Inicio` datetime NOT NULL,
  `Comentario` varchar(45) DEFAULT NULL,
  `idUsuario_usu` int(11) NOT NULL,
  `idAdv` int(11) DEFAULT NULL,
  `idContato` int(11) DEFAULT NULL,
  PRIMARY KEY (`idCompromisso`),
  KEY `idUsuario_usu_idx` (`idUsuario_usu`),
  KEY `idAdvogado_idx` (`idAdv`),
  KEY `idContato_idx` (`idContato`),
  CONSTRAINT `idAdvogado` FOREIGN KEY (`idAdv`) REFERENCES `advogado` (`idAdvogado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `idContato` FOREIGN KEY (`idContato`) REFERENCES `contato` (`idContato`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `idUsuario_usu` FOREIGN KEY (`idUsuario_usu`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compromisso`
--

LOCK TABLES `compromisso` WRITE;
/*!40000 ALTER TABLE `compromisso` DISABLE KEYS */;
/*!40000 ALTER TABLE `compromisso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contato`
--

DROP TABLE IF EXISTS `contato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contato` (
  `idContato` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(45) NOT NULL,
  `E-mail` varchar(45) NOT NULL,
  `Cliente` tinyint(1) NOT NULL,
  `idEndereco` int(11) NOT NULL,
  PRIMARY KEY (`idContato`),
  KEY `Endereço_idx` (`idEndereco`),
  CONSTRAINT `Endereço` FOREIGN KEY (`idEndereco`) REFERENCES `endereco` (`idEndereco`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contato`
--

LOCK TABLES `contato` WRITE;
/*!40000 ALTER TABLE `contato` DISABLE KEYS */;
INSERT INTO `contato` VALUES (1,'Carlos','carlos@gmail.com',1,1),(4,'Reginaldo da Silva','reginaldo@gmail.com',0,6),(5,'Reginaldo Silva','reginaldo@gmail.com',0,7),(6,'Teste','teste@teste.com',0,8);
/*!40000 ALTER TABLE `contato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data`
--

DROP TABLE IF EXISTS `data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data` (
  `idData` int(11) NOT NULL AUTO_INCREMENT,
  `Hora` datetime NOT NULL,
  `Data` date NOT NULL,
  PRIMARY KEY (`idData`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data`
--

LOCK TABLES `data` WRITE;
/*!40000 ALTER TABLE `data` DISABLE KEYS */;
/*!40000 ALTER TABLE `data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `despesas`
--

DROP TABLE IF EXISTS `despesas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `despesas` (
  `idDespesas` int(11) NOT NULL AUTO_INCREMENT,
  `Valor` float NOT NULL,
  `Descrição` varchar(45) NOT NULL,
  `Data` date NOT NULL,
  `idUsua_desp` int(11) NOT NULL,
  `idTipo_Despesa` int(11) NOT NULL,
  PRIMARY KEY (`idDespesas`),
  KEY `idUsua_desp_idx` (`idUsua_desp`),
  KEY `idTipoDespesa_idx` (`idTipo_Despesa`),
  CONSTRAINT `idTipoDespesa` FOREIGN KEY (`idTipo_Despesa`) REFERENCES `tipo_despesas` (`idTipo_Despesas`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `idUsua_desp` FOREIGN KEY (`idUsua_desp`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `despesas`
--

LOCK TABLES `despesas` WRITE;
/*!40000 ALTER TABLE `despesas` DISABLE KEYS */;
/*!40000 ALTER TABLE `despesas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `endereco` (
  `idEndereco` int(11) NOT NULL AUTO_INCREMENT,
  `UF` tinyint(3) NOT NULL,
  `CEP` varchar(45) NOT NULL,
  `Logradouro` varchar(45) NOT NULL,
  `Numero` int(11) NOT NULL,
  `Cidade` varchar(45) NOT NULL,
  `Bairro` varchar(45) NOT NULL,
  `Complemento` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idEndereco`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (1,1,'26123890','Rua Tal',156,'Rio de Janeiro','Realengo','Pesado'),(2,1,'','rua a',12,'Rio de janeiro','bangu','quente'),(3,1,'12345-568','Rua Esquerda',456,'Laranjeira','Madureira','Mais'),(4,1,'45678-985','Rua Logradouro',1459,'Belford','Tal Tal','tal coisa'),(5,1,'12345-456','Rua tal',45,'maca','jajak','makaklam'),(6,1,'12345789','Rua Avenida',489,'Rio','Rua','Tal'),(7,1,'12345789','Rua Avenida',123,'Rio de Janeiro','Rua Aqui','Lá'),(8,1,'23456123','teste',12,'teste','teste','teste');
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado` (
  `idEstado` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(45) NOT NULL,
  PRIMARY KEY (`idEstado`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
INSERT INTO `estado` VALUES (1,'RJ'),(2,'SP'),(3,'MG');
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `idForum` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(45) NOT NULL,
  `Endereco` varchar(45) NOT NULL,
  `Numero` int(11) NOT NULL,
  `Cidade` varchar(45) NOT NULL,
  `Bairro` varchar(45) NOT NULL,
  `CEP` int(11) NOT NULL,
  PRIMARY KEY (`idForum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instancia`
--

DROP TABLE IF EXISTS `instancia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instancia` (
  `idInstancia` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(45) NOT NULL,
  PRIMARY KEY (`idInstancia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instancia`
--

LOCK TABLES `instancia` WRITE;
/*!40000 ALTER TABLE `instancia` DISABLE KEYS */;
/*!40000 ALTER TABLE `instancia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil`
--

DROP TABLE IF EXISTS `perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perfil` (
  `idPerfil` int(11) NOT NULL AUTO_INCREMENT,
  `Nome_Perfil` varchar(45) NOT NULL,
  `Descrição` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idPerfil`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil`
--

LOCK TABLES `perfil` WRITE;
/*!40000 ALTER TABLE `perfil` DISABLE KEYS */;
INSERT INTO `perfil` VALUES (1,'Administrador','Administrador o Sistema');
/*!40000 ALTER TABLE `perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa_fisica`
--

DROP TABLE IF EXISTS `pessoa_fisica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pessoa_fisica` (
  `idPessoa_Fisica` int(11) NOT NULL AUTO_INCREMENT,
  `CPF` varchar(45) NOT NULL,
  `Data_Nasc` date NOT NULL,
  `CNH` int(11) DEFAULT NULL,
  `Titulo de Eleitor` int(11) DEFAULT NULL,
  `RG` int(11) DEFAULT NULL,
  `Contato_idContato` int(11) NOT NULL,
  PRIMARY KEY (`idPessoa_Fisica`),
  KEY `fk_Pessoa_Fisica_Contato1_idx` (`Contato_idContato`),
  CONSTRAINT `fk_Pessoa_Fisica_Contato1` FOREIGN KEY (`Contato_idContato`) REFERENCES `contato` (`idContato`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa_fisica`
--

LOCK TABLES `pessoa_fisica` WRITE;
/*!40000 ALTER TABLE `pessoa_fisica` DISABLE KEYS */;
INSERT INTO `pessoa_fisica` VALUES (1,'11122233344','1990-01-01',NULL,NULL,123456781,1);
/*!40000 ALTER TABLE `pessoa_fisica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa_juridica`
--

DROP TABLE IF EXISTS `pessoa_juridica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pessoa_juridica` (
  `idPessoa_Juridica` int(11) NOT NULL AUTO_INCREMENT,
  `Nome_Fantasia` varchar(45) NOT NULL,
  `CNPJ` varchar(45) NOT NULL,
  `Insc_Estadual` varchar(45) NOT NULL,
  `Insc_Municipal` varchar(45) NOT NULL,
  `Contato_idContato` int(11) NOT NULL,
  PRIMARY KEY (`idPessoa_Juridica`),
  KEY `fk_Pessoa_Juridica_Contato1_idx` (`Contato_idContato`),
  CONSTRAINT `fk_Pessoa_Juridica_Contato1` FOREIGN KEY (`Contato_idContato`) REFERENCES `contato` (`idContato`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa_juridica`
--

LOCK TABLES `pessoa_juridica` WRITE;
/*!40000 ALTER TABLE `pessoa_juridica` DISABLE KEYS */;
/*!40000 ALTER TABLE `pessoa_juridica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posicao`
--

DROP TABLE IF EXISTS `posicao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posicao` (
  `idPosicao` int(11) NOT NULL AUTO_INCREMENT,
  `Posicao` varchar(45) NOT NULL,
  `idInstancia` int(11) NOT NULL,
  PRIMARY KEY (`idPosicao`),
  KEY `idInstancia_idx` (`idInstancia`),
  CONSTRAINT `idInstancia` FOREIGN KEY (`idInstancia`) REFERENCES `instancia` (`idInstancia`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posicao`
--

LOCK TABLES `posicao` WRITE;
/*!40000 ALTER TABLE `posicao` DISABLE KEYS */;
/*!40000 ALTER TABLE `posicao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `processo`
--

DROP TABLE IF EXISTS `processo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `processo` (
  `idProcesso` int(11) NOT NULL AUTO_INCREMENT,
  `NumeroProcesso` int(11) NOT NULL,
  `Orgao` varchar(45) NOT NULL,
  `Juiz` varchar(45) NOT NULL,
  `idPosicao` int(11) NOT NULL,
  `idContato` int(11) NOT NULL,
  `idDespesas` int(11) NOT NULL,
  `idStatus` int(11) NOT NULL,
  `idComarca` int(11) NOT NULL,
  `idForum` int(11) NOT NULL,
  `idAdvogado` int(11) NOT NULL,
  `idValores` int(11) NOT NULL,
  `idArquivo` int(11) NOT NULL,
  PRIMARY KEY (`idProcesso`),
  KEY `idDespesas_idx` (`idDespesas`),
  KEY `Status_idx` (`idStatus`),
  KEY `Forum_idx` (`idForum`),
  KEY `Comarca_idx` (`idComarca`),
  KEY `advogado_idx` (`idAdvogado`),
  KEY `idContato_idx` (`idContato`),
  KEY `fk_Processo_Valores1_idx` (`idValores`),
  KEY `idArquivo_idx` (`idArquivo`),
  KEY `idPosicao_idx` (`idPosicao`),
  CONSTRAINT `advogado` FOREIGN KEY (`idAdvogado`) REFERENCES `advogado` (`idAdvogado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `arquivo` FOREIGN KEY (`idArquivo`) REFERENCES `arquivo` (`idArquivo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `comarca` FOREIGN KEY (`idComarca`) REFERENCES `comarca` (`idComarca`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `contato` FOREIGN KEY (`idContato`) REFERENCES `contato` (`idContato`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `despesas` FOREIGN KEY (`idDespesas`) REFERENCES `despesas` (`idDespesas`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Processo_Valores1` FOREIGN KEY (`idValores`) REFERENCES `valores` (`idValores`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `forum` FOREIGN KEY (`idForum`) REFERENCES `forum` (`idForum`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `posicao` FOREIGN KEY (`idPosicao`) REFERENCES `posicao` (`idPosicao`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `status` FOREIGN KEY (`idStatus`) REFERENCES `status_processo` (`idStatus`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `processo`
--

LOCK TABLES `processo` WRITE;
/*!40000 ALTER TABLE `processo` DISABLE KEYS */;
/*!40000 ALTER TABLE `processo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `processo_andamento`
--

DROP TABLE IF EXISTS `processo_andamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `processo_andamento` (
  `idProcesso_Andamento` int(11) NOT NULL AUTO_INCREMENT,
  `Processo_idProcesso` int(11) NOT NULL,
  `Andamento_idAndamento` int(11) NOT NULL,
  PRIMARY KEY (`idProcesso_Andamento`),
  KEY `fk_Processo_Andamento_Processo1_idx` (`Processo_idProcesso`),
  KEY `fk_Processo_Andamento_Andamento1_idx` (`Andamento_idAndamento`),
  CONSTRAINT `fk_Processo_Andamento_Andamento1` FOREIGN KEY (`Andamento_idAndamento`) REFERENCES `andamento` (`idAndamento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Processo_Andamento_Processo1` FOREIGN KEY (`Processo_idProcesso`) REFERENCES `processo` (`idProcesso`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `processo_andamento`
--

LOCK TABLES `processo_andamento` WRITE;
/*!40000 ALTER TABLE `processo_andamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `processo_andamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_processo`
--

DROP TABLE IF EXISTS `status_processo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status_processo` (
  `idStatus` int(11) NOT NULL AUTO_INCREMENT,
  `Status` varchar(45) NOT NULL,
  PRIMARY KEY (`idStatus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_processo`
--

LOCK TABLES `status_processo` WRITE;
/*!40000 ALTER TABLE `status_processo` DISABLE KEYS */;
/*!40000 ALTER TABLE `status_processo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefone`
--

DROP TABLE IF EXISTS `telefone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `telefone` (
  `idTelefone` int(11) NOT NULL AUTO_INCREMENT,
  `Celular` varchar(45) NOT NULL,
  `Residencial` varchar(45) NOT NULL,
  `Comercial` varchar(45) DEFAULT NULL,
  `Contato_idContato` int(11) NOT NULL,
  PRIMARY KEY (`idTelefone`),
  KEY `fk_Telefone_Contato1_idx` (`Contato_idContato`),
  CONSTRAINT `fk_Telefone_Contato1` FOREIGN KEY (`Contato_idContato`) REFERENCES `contato` (`idContato`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone`
--

LOCK TABLES `telefone` WRITE;
/*!40000 ALTER TABLE `telefone` DISABLE KEYS */;
/*!40000 ALTER TABLE `telefone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_despesas`
--

DROP TABLE IF EXISTS `tipo_despesas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_despesas` (
  `idTipo_Despesas` int(11) NOT NULL AUTO_INCREMENT,
  `Titulo` varchar(45) NOT NULL,
  PRIMARY KEY (`idTipo_Despesas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_despesas`
--

LOCK TABLES `tipo_despesas` WRITE;
/*!40000 ALTER TABLE `tipo_despesas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_despesas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `Login` varchar(45) NOT NULL,
  `Senha` varchar(45) NOT NULL,
  `idPerfil` int(11) NOT NULL,
  `Pessoa_Fisica_idPessoa_Fisica` int(11) NOT NULL,
  PRIMARY KEY (`idUsuario`),
  KEY `idPerfil_idx` (`idPerfil`),
  KEY `fk_Usuario_Pessoa_Fisica1_idx` (`Pessoa_Fisica_idPessoa_Fisica`),
  CONSTRAINT `fk_Usuario_Pessoa_Fisica1` FOREIGN KEY (`Pessoa_Fisica_idPessoa_Fisica`) REFERENCES `pessoa_fisica` (`idPessoa_Fisica`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `idPerfil` FOREIGN KEY (`idPerfil`) REFERENCES `perfil` (`idPerfil`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'carlos@gmail.com','202cb962ac59075b964b07152d234b70',1,1);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `valores`
--

DROP TABLE IF EXISTS `valores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `valores` (
  `idValores` int(11) NOT NULL AUTO_INCREMENT,
  `Valore_Custas` float DEFAULT NULL,
  `Valore_Causa` float DEFAULT NULL,
  `Sucumbencias` float DEFAULT NULL,
  `Contratuais` float DEFAULT NULL,
  PRIMARY KEY (`idValores`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `valores`
--

LOCK TABLES `valores` WRITE;
/*!40000 ALTER TABLE `valores` DISABLE KEYS */;
/*!40000 ALTER TABLE `valores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-12 19:37:41
