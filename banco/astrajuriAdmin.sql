-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.1.34-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win32
-- HeidiSQL Versão:              9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para mydb
CREATE DATABASE IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `mydb`;

-- Copiando estrutura para tabela mydb.advogado
CREATE TABLE IF NOT EXISTS `advogado` (
  `idAdvogado` int(11) NOT NULL AUTO_INCREMENT,
  `OAB` varchar(45) NOT NULL,
  `Usuario_idUsuario` int(11) NOT NULL,
  PRIMARY KEY (`idAdvogado`),
  KEY `fk_Advogado_Usuario1` (`Usuario_idUsuario`),
  CONSTRAINT `fk_Advogado_Usuario1` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela mydb.advogado: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `advogado` DISABLE KEYS */;
/*!40000 ALTER TABLE `advogado` ENABLE KEYS */;

-- Copiando estrutura para tabela mydb.andamento
CREATE TABLE IF NOT EXISTS `andamento` (
  `idAndamento` int(11) NOT NULL AUTO_INCREMENT,
  `Andamento` varchar(45) NOT NULL,
  `Descricao` varchar(45) NOT NULL,
  `Data` datetime NOT NULL,
  `Processo_idProcesso` int(11) NOT NULL,
  PRIMARY KEY (`idAndamento`,`Processo_idProcesso`),
  KEY `fk_Andamento_Processo1` (`Processo_idProcesso`),
  CONSTRAINT `fk_Andamento_Processo1` FOREIGN KEY (`Processo_idProcesso`) REFERENCES `processo` (`idProcesso`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela mydb.andamento: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `andamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `andamento` ENABLE KEYS */;

-- Copiando estrutura para tabela mydb.arquivo
CREATE TABLE IF NOT EXISTS `arquivo` (
  `idArquivo` int(11) NOT NULL AUTO_INCREMENT,
  `Arquivo` varchar(45) NOT NULL,
  `Descricao` varchar(45) DEFAULT NULL,
  `idProcesso` int(11) NOT NULL,
  PRIMARY KEY (`idArquivo`),
  KEY `Processo` (`idProcesso`),
  CONSTRAINT `Processo` FOREIGN KEY (`idProcesso`) REFERENCES `processo` (`idProcesso`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela mydb.arquivo: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `arquivo` DISABLE KEYS */;
/*!40000 ALTER TABLE `arquivo` ENABLE KEYS */;

-- Copiando estrutura para tabela mydb.comarca
CREATE TABLE IF NOT EXISTS `comarca` (
  `idComarca` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(45) NOT NULL,
  `Endereco` varchar(45) NOT NULL,
  PRIMARY KEY (`idComarca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela mydb.comarca: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `comarca` DISABLE KEYS */;
/*!40000 ALTER TABLE `comarca` ENABLE KEYS */;

-- Copiando estrutura para tabela mydb.compromisso
CREATE TABLE IF NOT EXISTS `compromisso` (
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

-- Copiando dados para a tabela mydb.compromisso: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `compromisso` DISABLE KEYS */;
/*!40000 ALTER TABLE `compromisso` ENABLE KEYS */;

-- Copiando estrutura para tabela mydb.conclusao
CREATE TABLE IF NOT EXISTS `conclusao` (
  `idConclusao` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(45) NOT NULL,
  PRIMARY KEY (`idConclusao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela mydb.conclusao: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `conclusao` DISABLE KEYS */;
/*!40000 ALTER TABLE `conclusao` ENABLE KEYS */;

-- Copiando estrutura para tabela mydb.contato
CREATE TABLE IF NOT EXISTS `contato` (
  `idContato` int(11) NOT NULL AUTO_INCREMENT,
  `Email` varchar(45) NOT NULL,
  `idEndereco` int(11) NOT NULL,
  PRIMARY KEY (`idContato`),
  KEY `fk_Endereco` (`idEndereco`),
  CONSTRAINT `fk_Endereco` FOREIGN KEY (`idEndereco`) REFERENCES `endereco` (`idEndereco`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela mydb.contato: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `contato` DISABLE KEYS */;
INSERT IGNORE INTO `contato` (`idContato`, `Email`, `idEndereco`) VALUES
	(2, 'admin@mail.com', 1);
/*!40000 ALTER TABLE `contato` ENABLE KEYS */;

-- Copiando estrutura para tabela mydb.despesas
CREATE TABLE IF NOT EXISTS `despesas` (
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

-- Copiando dados para a tabela mydb.despesas: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `despesas` DISABLE KEYS */;
/*!40000 ALTER TABLE `despesas` ENABLE KEYS */;

-- Copiando estrutura para tabela mydb.endereco
CREATE TABLE IF NOT EXISTS `endereco` (
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela mydb.endereco: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT IGNORE INTO `endereco` (`idEndereco`, `UF`, `CEP`, `Logradouro`, `Numero`, `Cidade`, `Bairro`, `Complemento`, `Estado`) VALUES
	(1, 'RJ', '23123123', 'Rua Admin', 2, 'Rio de Janeiro', 'Realengo', 'Rua', 'RJ');
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;

-- Copiando estrutura para tabela mydb.instancia
CREATE TABLE IF NOT EXISTS `instancia` (
  `idInstancia` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(45) NOT NULL,
  PRIMARY KEY (`idInstancia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela mydb.instancia: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `instancia` DISABLE KEYS */;
/*!40000 ALTER TABLE `instancia` ENABLE KEYS */;

-- Copiando estrutura para tabela mydb.perfil
CREATE TABLE IF NOT EXISTS `perfil` (
  `idPerfil` int(11) NOT NULL AUTO_INCREMENT,
  `Nome_Perfil` varchar(45) NOT NULL,
  `Descrição` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idPerfil`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela mydb.perfil: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `perfil` DISABLE KEYS */;
INSERT IGNORE INTO `perfil` (`idPerfil`, `Nome_Perfil`, `Descrição`) VALUES
	(1, 'Admin', 'Administrador');
/*!40000 ALTER TABLE `perfil` ENABLE KEYS */;

-- Copiando estrutura para tabela mydb.pessoa_fisica
CREATE TABLE IF NOT EXISTS `pessoa_fisica` (
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela mydb.pessoa_fisica: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `pessoa_fisica` DISABLE KEYS */;
INSERT IGNORE INTO `pessoa_fisica` (`idPessoa_Fisica`, `CPF`, `Nome`, `Data_Nasc`, `CNH`, `Titulo de Eleitor`, `RG`, `Contato_idContato`) VALUES
	(2, '11122233344', 'Admin', '2018-08-14', NULL, NULL, 121234562, 2);
/*!40000 ALTER TABLE `pessoa_fisica` ENABLE KEYS */;

-- Copiando estrutura para tabela mydb.pessoa_juridica
CREATE TABLE IF NOT EXISTS `pessoa_juridica` (
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

-- Copiando dados para a tabela mydb.pessoa_juridica: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `pessoa_juridica` DISABLE KEYS */;
/*!40000 ALTER TABLE `pessoa_juridica` ENABLE KEYS */;

-- Copiando estrutura para tabela mydb.posicao
CREATE TABLE IF NOT EXISTS `posicao` (
  `idPosicao` int(11) NOT NULL AUTO_INCREMENT,
  `Posicao` varchar(45) NOT NULL,
  `idInstancia` int(11) NOT NULL,
  PRIMARY KEY (`idPosicao`),
  KEY `idInstancia` (`idInstancia`),
  CONSTRAINT `idInstancia` FOREIGN KEY (`idInstancia`) REFERENCES `instancia` (`idInstancia`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela mydb.posicao: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `posicao` DISABLE KEYS */;
/*!40000 ALTER TABLE `posicao` ENABLE KEYS */;

-- Copiando estrutura para tabela mydb.processo
CREATE TABLE IF NOT EXISTS `processo` (
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

-- Copiando dados para a tabela mydb.processo: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `processo` DISABLE KEYS */;
/*!40000 ALTER TABLE `processo` ENABLE KEYS */;

-- Copiando estrutura para tabela mydb.status_processo
CREATE TABLE IF NOT EXISTS `status_processo` (
  `idStatus` int(11) NOT NULL AUTO_INCREMENT,
  `Status` varchar(45) NOT NULL,
  PRIMARY KEY (`idStatus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela mydb.status_processo: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `status_processo` DISABLE KEYS */;
/*!40000 ALTER TABLE `status_processo` ENABLE KEYS */;

-- Copiando estrutura para tabela mydb.telefone
CREATE TABLE IF NOT EXISTS `telefone` (
  `idTelefone` int(11) NOT NULL AUTO_INCREMENT,
  `Celular` varchar(45) NOT NULL,
  `Residencial` varchar(45) NOT NULL,
  `Comercial` varchar(45) DEFAULT NULL,
  `Contato_idContato` int(11) NOT NULL,
  PRIMARY KEY (`idTelefone`),
  KEY `fk_Telefone_Contato1` (`Contato_idContato`),
  CONSTRAINT `fk_Telefone_Contato1` FOREIGN KEY (`Contato_idContato`) REFERENCES `contato` (`idContato`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela mydb.telefone: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `telefone` DISABLE KEYS */;
/*!40000 ALTER TABLE `telefone` ENABLE KEYS */;

-- Copiando estrutura para tabela mydb.tipo_despesas
CREATE TABLE IF NOT EXISTS `tipo_despesas` (
  `idTipo_Despesas` int(11) NOT NULL AUTO_INCREMENT,
  `Valor_Custas` varchar(45) DEFAULT NULL,
  `Valor_Causa` varchar(45) DEFAULT NULL,
  `Sucumbencias` varchar(45) DEFAULT NULL,
  `Contratuais` varchar(45) DEFAULT NULL,
  `Despesa_Fixa` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idTipo_Despesas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela mydb.tipo_despesas: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tipo_despesas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_despesas` ENABLE KEYS */;

-- Copiando estrutura para tabela mydb.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
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

-- Copiando dados para a tabela mydb.usuario: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT IGNORE INTO `usuario` (`idUsuario`, `Login`, `Senha`, `idPerfil`, `Pessoa_Fisica_idPessoa_Fisica`) VALUES
	(1, 'admin', '202cb962ac59075b964b07152d234b70', 1, 1);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

-- Copiando estrutura para tabela mydb.vara
CREATE TABLE IF NOT EXISTS `vara` (
  `idVara` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(45) DEFAULT NULL,
  `Comarca_idComarca` int(11) NOT NULL,
  PRIMARY KEY (`idVara`),
  KEY `fk_Vara_Comarca1` (`Comarca_idComarca`),
  CONSTRAINT `fk_Vara_Comarca1` FOREIGN KEY (`Comarca_idComarca`) REFERENCES `comarca` (`idComarca`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela mydb.vara: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `vara` DISABLE KEYS */;
/*!40000 ALTER TABLE `vara` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
