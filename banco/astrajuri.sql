-- MySQL Script generated by MySQL Workbench
-- Tue Aug 14 18:50:56 2018
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Endereço`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Endereco` (
  `idEndereco` INT NOT NULL auto_increment,
  `UF` VARCHAR(2) NOT NULL,
  `CEP` VARCHAR(45) NOT NULL,
  `Logradouro` VARCHAR(45) NOT NULL,
  `Numero` INT NOT NULL,
  `Cidade` VARCHAR(45) NOT NULL,
  `Bairro` VARCHAR(45) NOT NULL,
  `Complemento` VARCHAR(45) NULL,
  `Estado` VARCHAR(45) NULL,
  PRIMARY KEY (`idEndereco`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Contato`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Contato` (
  `idContato` INT NOT NULL auto_increment,
  `Email` VARCHAR(45) NOT NULL,
  `idEndereco` INT NOT NULL,
  PRIMARY KEY (`idContato`),
  
  CONSTRAINT `fk_Endereco`
    FOREIGN KEY (`idEndereco`)
    REFERENCES `mydb`.`Endereco` (`idEndereco`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Pessoa_Juridica`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Pessoa_Juridica` (
  `idPessoa_Juridica` INT NOT NULL auto_increment,
  `Nome_Fantasia` VARCHAR(45) NOT NULL,
  `CNPJ` VARCHAR(45) NOT NULL,
  `Insc_Estadual` VARCHAR(45) NOT NULL,
  `Insc_Municipal` VARCHAR(45) NOT NULL,
  `Contato_idContato` INT NOT NULL,
  PRIMARY KEY (`idPessoa_Juridica`),
  
  CONSTRAINT `fk_Pessoa_Juridica_Contato1`
    FOREIGN KEY (`Contato_idContato`)
    REFERENCES `mydb`.`Contato` (`idContato`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Pessoa_Fisica`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Pessoa_Fisica` (
  `idPessoa_Fisica` INT NOT NULL auto_increment,
  `CPF` VARCHAR(45) NOT NULL,
  `Nome` VARCHAR(45) NOT NULL,
  `Data_Nasc` DATE NOT NULL,
  `CNH` INT NULL,
  `Titulo de Eleitor` INT NULL,
  `RG` INT NULL,
  `Contato_idContato` INT NOT NULL,
  PRIMARY KEY (`idPessoa_Fisica`),
  
  CONSTRAINT `fk_Pessoa_Fisica_Contato1`
    FOREIGN KEY (`Contato_idContato`)
    REFERENCES `mydb`.`Contato` (`idContato`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Perfil`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Perfil` (
  `idPerfil` INT NOT NULL auto_increment,
  `Nome_Perfil` VARCHAR(45) NOT NULL,
  `Descrição` VARCHAR(45) NULL,
  PRIMARY KEY (`idPerfil`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Usuario` (
  `idUsuario` INT NOT NULL auto_increment,
  `Login` VARCHAR(45) NOT NULL,
  `Senha` VARCHAR(45) NOT NULL,
  `idPerfil` INT NOT NULL,
  `Pessoa_Fisica_idPessoa_Fisica` INT NOT NULL,
  PRIMARY KEY (`idUsuario`),
  
  CONSTRAINT `idPerfil`
    FOREIGN KEY (`idPerfil`)
    REFERENCES `mydb`.`Perfil` (`idPerfil`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Usuario_Pessoa_Fisica1`
    FOREIGN KEY (`Pessoa_Fisica_idPessoa_Fisica`)
    REFERENCES `mydb`.`Pessoa_Fisica` (`idPessoa_Fisica`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Advogado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Advogado` (
  `idAdvogado` INT NOT NULL auto_increment,
  `OAB` VARCHAR(45) NOT NULL,
  `Usuario_idUsuario` INT NOT NULL,
  PRIMARY KEY (`idAdvogado`),
  
  CONSTRAINT `fk_Advogado_Usuario1`
    FOREIGN KEY (`Usuario_idUsuario`)
    REFERENCES `mydb`.`Usuario` (`idUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Compromisso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Compromisso` (
  `idCompromisso` INT NOT NULL auto_increment,
  `Compromisso` VARCHAR(45) NOT NULL,
  `Data inicio` DATE NOT NULL,
  `Data Final` DATE NOT NULL,
  `Cor` INT NOT NULL,
  `Hora Inicio` DATETIME NOT NULL,
  `Comentario` VARCHAR(45) NULL,
  `idUsuario_usu` INT NOT NULL,
  `idAdv` INT NULL,
  `idContato` INT NULL,
  PRIMARY KEY (`idCompromisso`),
  
  CONSTRAINT `idUsuario_usu`
    FOREIGN KEY (`idUsuario_usu`)
    REFERENCES `mydb`.`Usuario` (`idUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idAdvogado`
    FOREIGN KEY (`idAdv`)
    REFERENCES `mydb`.`Advogado` (`idAdvogado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idContato`
    FOREIGN KEY (`idContato`)
    REFERENCES `mydb`.`Contato` (`idContato`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Tipo_Despesas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Tipo_Despesas` (
  `idTipo_Despesas` INT NOT NULL auto_increment,
  `Valor_Custas` VARCHAR(45) NULL,
  `Valor_Causa` VARCHAR(45) NULL,
  `Sucumbencias` VARCHAR(45) NULL,
  `Contratuais` VARCHAR(45) NULL,
  `Despesa_Fixa` VARCHAR(45) NULL,
  PRIMARY KEY (`idTipo_Despesas`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Despesas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Despesas` (
  `idDespesas` INT NOT NULL auto_increment,
  `Valor` FLOAT NOT NULL,
  `Descricao` VARCHAR(45) NOT NULL,
  `Data` DATE NOT NULL,
  `idUsua_desp` INT NOT NULL,
  `idTipo_Despesa` INT NOT NULL,
  PRIMARY KEY (`idDespesas`),
  
  CONSTRAINT `idUsua_desp`
    FOREIGN KEY (`idUsua_desp`)
    REFERENCES `mydb`.`Usuario` (`idUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idTipoDespesa`
    FOREIGN KEY (`idTipo_Despesa`)
    REFERENCES `mydb`.`Tipo_Despesas` (`idTipo_Despesas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Instancia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Instancia` (
  `idInstancia` INT NOT NULL auto_increment,
  `Nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idInstancia`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Posição`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Posicao` (
  `idPosicao` INT NOT NULL auto_increment,
  `Posicao` VARCHAR(45) NOT NULL,
  `idInstancia` INT NOT NULL,
  PRIMARY KEY (`idPosicao`),
  
  CONSTRAINT `idInstancia`
    FOREIGN KEY (`idInstancia`)
    REFERENCES `mydb`.`Instancia` (`idInstancia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Status_Processo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Status_Processo` (
  `idStatus` INT NOT NULL auto_increment,
  `Status` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idStatus`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Comarca`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Comarca` (
  `idComarca` INT NOT NULL auto_increment,
  `Nome` VARCHAR(45) NOT NULL,
  `Endereco` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idComarca`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Conclusao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Conclusao` (
  `idConclusao` INT NOT NULL auto_increment,
  `Nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idConclusao`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Processo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Processo` (
  `idProcesso` INT NOT NULL auto_increment,
  `NumeroProcesso` INT NOT NULL,
  `Juiz` VARCHAR(45) NOT NULL,
  `advogado2` VARCHAR(45) NULL,
  `idPosicao` INT NOT NULL,
  `idContato` INT NOT NULL,
  `idDespesas` INT NOT NULL,
  `idStatus_Processo` INT NOT NULL,
  `idComarca` INT NOT NULL,
  `idAdvogado` INT NOT NULL,
  `Conclusao_idConclusao` INT NOT NULL,
  PRIMARY KEY (`idProcesso`),
  
  CONSTRAINT `Posicao`
    FOREIGN KEY (`idPosicao`)
    REFERENCES `mydb`.`Posicao` (`idPosicao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    
  CONSTRAINT `Despesas`
    FOREIGN KEY (`idDespesas`)
    REFERENCES `mydb`.`Despesas` (`idDespesas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    
  CONSTRAINT `CStatus`
    FOREIGN KEY (`idStatus_Processo`)
    REFERENCES `mydb`.`Status_Processo` (`idStatus`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    
  CONSTRAINT `CComarca`
    FOREIGN KEY (`idComarca`)
    REFERENCES `mydb`.`Comarca` (`idComarca`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    
  CONSTRAINT `Cadvogado`
    FOREIGN KEY (`idAdvogado`)
    REFERENCES `mydb`.`Advogado` (`idAdvogado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    
  CONSTRAINT `CidContato`
    FOREIGN KEY (`idContato`)
    REFERENCES `mydb`.`Contato` (`idContato`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    
  CONSTRAINT `Cfk_Processo_Conclusao`
    FOREIGN KEY (`Conclusao_idConclusao`)
    REFERENCES `mydb`.`Conclusao` (`idConclusao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Andamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Andamento` (
  `idAndamento` INT NOT NULL auto_increment,
  `Andamento` VARCHAR(45) NOT NULL,
  `Descricao` VARCHAR(45) NOT NULL,
  `Data` DATETIME NOT NULL,
  `Processo_idProcesso` INT NOT NULL,
  PRIMARY KEY (`idAndamento`, `Processo_idProcesso`),
  
  CONSTRAINT `fk_Andamento_Processo1`
    FOREIGN KEY (`Processo_idProcesso`)
    REFERENCES `mydb`.`Processo` (`idProcesso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Arquivo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Arquivo` (
  `idArquivo` INT NOT NULL auto_increment,
  `Arquivo` VARCHAR(45) NOT NULL,
  `Descricao` VARCHAR(45) NULL,
  `idProcesso` INT NOT NULL,
  PRIMARY KEY (`idArquivo`),
  
  CONSTRAINT `Processo`
    FOREIGN KEY (`idProcesso`)
    REFERENCES `mydb`.`Processo` (`idProcesso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Telefone`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Telefone` (
  `idTelefone` INT NOT NULL auto_increment,
  `Celular` VARCHAR(45) NOT NULL,
  `Residencial` VARCHAR(45) NOT NULL,
  `Comercial` VARCHAR(45) NULL,
  `Contato_idContato` INT NOT NULL,
  PRIMARY KEY (`idTelefone`),
  
  CONSTRAINT `fk_Telefone_Contato1`
    FOREIGN KEY (`Contato_idContato`)
    REFERENCES `mydb`.`Contato` (`idContato`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



-- -----------------------------------------------------
-- Table `mydb`.`Vara`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Vara` (
  `idVara` INT NOT NULL auto_increment,
  `Nome` VARCHAR(45) NULL,
  `Comarca_idComarca` INT NOT NULL,
  PRIMARY KEY (`idVara`),
  
  CONSTRAINT `fk_Vara_Comarca1`
    FOREIGN KEY (`Comarca_idComarca`)
    REFERENCES `mydb`.`Comarca` (`idComarca`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;