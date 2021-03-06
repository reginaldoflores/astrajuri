-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
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
  KEY `fk_Advogado_Usuario1` (`Usuario_idUsuario`),
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
  `Data` datetime NOT NULL,
  `Processo_idProcesso` int(11) NOT NULL,
  PRIMARY KEY (`idAndamento`,`Processo_idProcesso`),
  KEY `fk_Andamento_Processo1` (`Processo_idProcesso`),
  CONSTRAINT `fk_Andamento_Processo1` FOREIGN KEY (`Processo_idProcesso`) REFERENCES `processo` (`idProcesso`) ON DELETE NO ACTION ON UPDATE NO ACTION
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
  `Descricao` varchar(45) DEFAULT NULL,
  `idProcesso` int(11) NOT NULL,
  PRIMARY KEY (`idArquivo`),
  KEY `Processo` (`idProcesso`),
  CONSTRAINT `Processo` FOREIGN KEY (`idProcesso`) REFERENCES `processo` (`idProcesso`) ON DELETE NO ACTION ON UPDATE NO ACTION
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
  `Endereco` varchar(45) NOT NULL,
  PRIMARY KEY (`idComarca`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comarca`
--

LOCK TABLES `comarca` WRITE;
/*!40000 ALTER TABLE `comarca` DISABLE KEYS */;
INSERT INTO `comarca` VALUES (1,'Niterói','Visconde de Sepetiba 519 9º andar, Niterói - ');
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
  KEY `idUsuario_usu` (`idUsuario_usu`),
  KEY `idAdvogado` (`idAdv`),
  KEY `idContato` (`idContato`),
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
-- Table structure for table `conclusao`
--

DROP TABLE IF EXISTS `conclusao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conclusao` (
  `idConclusao` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(45) NOT NULL,
  PRIMARY KEY (`idConclusao`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conclusao`
--

LOCK TABLES `conclusao` WRITE;
/*!40000 ALTER TABLE `conclusao` DISABLE KEYS */;
INSERT INTO `conclusao` VALUES (1,'Causa Ganha'),(2,'Causa Perdida');
/*!40000 ALTER TABLE `conclusao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contato`
--

DROP TABLE IF EXISTS `contato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contato` (
  `idContato` int(11) NOT NULL AUTO_INCREMENT,
  `Email` varchar(45) NOT NULL,
  `idEndereco` int(11) NOT NULL,
  PRIMARY KEY (`idContato`),
  KEY `fk_Endereco` (`idEndereco`),
  CONSTRAINT `fk_Endereco` FOREIGN KEY (`idEndereco`) REFERENCES `endereco` (`idEndereco`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contato`
--

LOCK TABLES `contato` WRITE;
/*!40000 ALTER TABLE `contato` DISABLE KEYS */;
INSERT INTO `contato` VALUES (2,'admin@mail.com',1),(3,'carlos@gmail.com',2),(5,'walter@gmail.com',6);
/*!40000 ALTER TABLE `contato` ENABLE KEYS */;
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
  `Descricao` varchar(45) NOT NULL,
  `Data` date NOT NULL,
  `idUsua_desp` int(11) NOT NULL,
  `idTipo_Despesa` int(11) NOT NULL,
  PRIMARY KEY (`idDespesas`),
  KEY `idUsua_desp` (`idUsua_desp`),
  KEY `idTipoDespesa` (`idTipo_Despesa`),
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
  `UF` varchar(2) NOT NULL,
  `CEP` varchar(45) NOT NULL,
  `Logradouro` varchar(45) NOT NULL,
  `Numero` int(11) NOT NULL,
  `Cidade` varchar(45) NOT NULL,
  `Bairro` varchar(45) NOT NULL,
  `Complemento` varchar(45) DEFAULT NULL,
  `Estado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idEndereco`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (1,'RJ','23123123','Rua Admin',2,'Rio de Janeiro','Realengo','Rua','RJ'),(2,'RJ','26129986','rua tal tal',179,'Rio de Janeiro','Realengo','Fundo',NULL),(4,'RJ','26180-290','Rua Avenida',90,'Rio de Janeiro','Deodoro','Qd 22',NULL),(5,'RJ','12345-123','Rua 123',123,'Rio de Janeiro','Deodoro','Esquina',NULL),(6,'RJ','15189120','Rua Do Ipiranga',998,'Rio de Janeiro','Madureira','Morro Brabo',NULL);
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instancia`
--

LOCK TABLES `instancia` WRITE;
/*!40000 ALTER TABLE `instancia` DISABLE KEYS */;
INSERT INTO `instancia` VALUES (1,'1ª Instância ');
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
INSERT INTO `perfil` VALUES (1,'Admin','Administrador');
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
  `Nome` varchar(45) NOT NULL,
  `Data_Nasc` date NOT NULL,
  `CNH` int(11) DEFAULT NULL,
  `Titulo de Eleitor` int(11) DEFAULT NULL,
  `RG` int(11) DEFAULT NULL,
  `Contato_idContato` int(11) NOT NULL,
  PRIMARY KEY (`idPessoa_Fisica`),
  KEY `fk_Pessoa_Fisica_Contato1` (`Contato_idContato`),
  CONSTRAINT `fk_Pessoa_Fisica_Contato1` FOREIGN KEY (`Contato_idContato`) REFERENCES `contato` (`idContato`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa_fisica`
--

LOCK TABLES `pessoa_fisica` WRITE;
/*!40000 ALTER TABLE `pessoa_fisica` DISABLE KEYS */;
INSERT INTO `pessoa_fisica` VALUES (2,'11122233344','Admin','2018-08-14',NULL,NULL,121234562,2),(3,'12309845612','Carlos Eduardo','2018-08-15',NULL,NULL,129086731,3),(6,'12390789112','Walter Silva','2018-08-15',NULL,NULL,123987891,5);
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
  KEY `fk_Pessoa_Juridica_Contato1` (`Contato_idContato`),
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
  KEY `idInstancia` (`idInstancia`),
  CONSTRAINT `idInstancia` FOREIGN KEY (`idInstancia`) REFERENCES `instancia` (`idInstancia`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posicao`
--

LOCK TABLES `posicao` WRITE;
/*!40000 ALTER TABLE `posicao` DISABLE KEYS */;
INSERT INTO `posicao` VALUES (1,'Réu',1),(2,'Autor',1);
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
  `Juiz` varchar(45) NOT NULL,
  `advogado2` varchar(45) DEFAULT NULL,
  `idPosicao` int(11) NOT NULL,
  `idContato` int(11) NOT NULL,
  `idDespesas` int(11) NOT NULL,
  `idStatus_Processo` int(11) NOT NULL,
  `idComarca` int(11) NOT NULL,
  `idAdvogado` int(11) NOT NULL,
  `Conclusao_idConclusao` int(11) NOT NULL,
  PRIMARY KEY (`idProcesso`),
  KEY `Posicao` (`idPosicao`),
  KEY `Despesas` (`idDespesas`),
  KEY `CStatus` (`idStatus_Processo`),
  KEY `CComarca` (`idComarca`),
  KEY `Cadvogado` (`idAdvogado`),
  KEY `CidContato` (`idContato`),
  KEY `Cfk_Processo_Conclusao` (`Conclusao_idConclusao`),
  CONSTRAINT `CComarca` FOREIGN KEY (`idComarca`) REFERENCES `comarca` (`idComarca`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `CStatus` FOREIGN KEY (`idStatus_Processo`) REFERENCES `status_processo` (`idStatus`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Cadvogado` FOREIGN KEY (`idAdvogado`) REFERENCES `advogado` (`idAdvogado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Cfk_Processo_Conclusao` FOREIGN KEY (`Conclusao_idConclusao`) REFERENCES `conclusao` (`idConclusao`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `CidContato` FOREIGN KEY (`idContato`) REFERENCES `contato` (`idContato`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Despesas` FOREIGN KEY (`idDespesas`) REFERENCES `despesas` (`idDespesas`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Posicao` FOREIGN KEY (`idPosicao`) REFERENCES `posicao` (`idPosicao`) ON DELETE NO ACTION ON UPDATE NO ACTION
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
-- Table structure for table `status_processo`
--

DROP TABLE IF EXISTS `status_processo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status_processo` (
  `idStatus` int(11) NOT NULL AUTO_INCREMENT,
  `Status` varchar(45) NOT NULL,
  PRIMARY KEY (`idStatus`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_processo`
--

LOCK TABLES `status_processo` WRITE;
/*!40000 ALTER TABLE `status_processo` DISABLE KEYS */;
INSERT INTO `status_processo` VALUES (1,'Encerrado');
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
  KEY `fk_Telefone_Contato1` (`Contato_idContato`),
  CONSTRAINT `fk_Telefone_Contato1` FOREIGN KEY (`Contato_idContato`) REFERENCES `contato` (`idContato`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone`
--

LOCK TABLES `telefone` WRITE;
/*!40000 ALTER TABLE `telefone` DISABLE KEYS */;
INSERT INTO `telefone` VALUES (2,'','(21)2728-2829',NULL,3),(5,'','2190902190',NULL,5);
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
  `Valor_Custas` varchar(45) DEFAULT NULL,
  `Valor_Causa` varchar(45) DEFAULT NULL,
  `Sucumbencias` varchar(45) DEFAULT NULL,
  `Contratuais` varchar(45) DEFAULT NULL,
  `Despesa_Fixa` varchar(45) DEFAULT NULL,
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
  KEY `idPerfil` (`idPerfil`),
  KEY `fk_Usuario_Pessoa_Fisica1` (`Pessoa_Fisica_idPessoa_Fisica`),
  CONSTRAINT `fk_Usuario_Pessoa_Fisica1` FOREIGN KEY (`Pessoa_Fisica_idPessoa_Fisica`) REFERENCES `pessoa_fisica` (`idPessoa_Fisica`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `idPerfil` FOREIGN KEY (`idPerfil`) REFERENCES `perfil` (`idPerfil`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'admin','202cb962ac59075b964b07152d234b70',1,2);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vara`
--

DROP TABLE IF EXISTS `vara`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vara` (
  `idVara` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(45) DEFAULT NULL,
  `Comarca_idComarca` int(11) NOT NULL,
  PRIMARY KEY (`idVara`),
  KEY `fk_Vara_Comarca1` (`Comarca_idComarca`),
  CONSTRAINT `fk_Vara_Comarca1` FOREIGN KEY (`Comarca_idComarca`) REFERENCES `comarca` (`idComarca`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vara`
--

LOCK TABLES `vara` WRITE;
/*!40000 ALTER TABLE `vara` DISABLE KEYS */;
INSERT INTO `vara` VALUES (1,'8ª Vara Civel',1);
/*!40000 ALTER TABLE `vara` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-19 14:48:28
