-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 15-Ago-2018 às 20:23
-- Versão do servidor: 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `advogado`
--

CREATE TABLE `advogado` (
  `idAdvogado` int(11) NOT NULL,
  `OAB` varchar(45) NOT NULL,
  `Usuario_idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `andamento`
--

CREATE TABLE `andamento` (
  `idAndamento` int(11) NOT NULL,
  `Andamento` varchar(45) NOT NULL,
  `Descricao` varchar(45) NOT NULL,
  `Data` datetime NOT NULL,
  `Processo_idProcesso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `arquivo`
--

CREATE TABLE `arquivo` (
  `idArquivo` int(11) NOT NULL,
  `Arquivo` varchar(45) NOT NULL,
  `Descricao` varchar(45) DEFAULT NULL,
  `idProcesso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `comarca`
--

CREATE TABLE `comarca` (
  `idComarca` int(11) NOT NULL,
  `Nome` varchar(45) NOT NULL,
  `Endereco` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `comarca`
--

INSERT INTO `comarca` (`idComarca`, `Nome`, `Endereco`) VALUES
(1, 'Niterói', 'Visconde de Sepetiba 519 9º andar');

-- --------------------------------------------------------

--
-- Estrutura da tabela `compromisso`
--

CREATE TABLE `compromisso` (
  `idCompromisso` int(11) NOT NULL,
  `Compromisso` varchar(45) NOT NULL,
  `Data inicio` date NOT NULL,
  `Data Final` date NOT NULL,
  `Cor` int(11) NOT NULL,
  `Hora Inicio` datetime NOT NULL,
  `Comentario` varchar(45) DEFAULT NULL,
  `idUsuario_usu` int(11) NOT NULL,
  `idAdv` int(11) DEFAULT NULL,
  `idContato` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `conclusao`
--

CREATE TABLE `conclusao` (
  `idConclusao` int(11) NOT NULL,
  `Nome` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `contato`
--

CREATE TABLE `contato` (
  `idContato` int(11) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `idEndereco` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `contato`
--

INSERT INTO `contato` (`idContato`, `Email`, `idEndereco`) VALUES
(2, 'admin@mail.com', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `despesas`
--

CREATE TABLE `despesas` (
  `idDespesas` int(11) NOT NULL,
  `Valor` decimal(10,0) DEFAULT NULL,
  `Descricao` varchar(45) DEFAULT NULL,
  `Data` datetime DEFAULT NULL,
  `idUsua_desp` int(11) DEFAULT NULL,
  `idTipo_Despesa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `despesas`
--

INSERT INTO `despesas` (`idDespesas`, `Valor`, `Descricao`, `Data`, `idUsua_desp`, `idTipo_Despesa`) VALUES
(1, '1000', NULL, NULL, NULL, 1),
(2, '8000', NULL, NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `idEndereco` int(11) NOT NULL,
  `CEP` varchar(45) NOT NULL,
  `Endereco` varchar(45) NOT NULL,
  `Cidade` varchar(45) NOT NULL,
  `Estado` varchar(45) NOT NULL,
  `Complemento` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `endereco`
--

INSERT INTO `endereco` (`idEndereco`, `CEP`, `Endereco`, `Cidade`, `Estado`, `Complemento`) VALUES
(1, '23123123', 'Rua Admin', 'Rio de Janeiro', 'RJ', 'Rua');

-- --------------------------------------------------------

--
-- Estrutura da tabela `instancia`
--

CREATE TABLE `instancia` (
  `idInstancia` int(11) NOT NULL,
  `Nome` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `instancia`
--

INSERT INTO `instancia` (`idInstancia`, `Nome`) VALUES
(1, '1ª Instância');

-- --------------------------------------------------------

--
-- Estrutura da tabela `perfil`
--

CREATE TABLE `perfil` (
  `idPerfil` int(11) NOT NULL,
  `Nome_Perfil` varchar(45) NOT NULL,
  `Descrição` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `perfil`
--

INSERT INTO `perfil` (`idPerfil`, `Nome_Perfil`, `Descrição`) VALUES
(1, 'Admin', 'Administrador');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoa_fisica`
--

CREATE TABLE `pessoa_fisica` (
  `idPessoa_Fisica` int(11) NOT NULL,
  `CPF` varchar(45) NOT NULL,
  `Nome` varchar(45) NOT NULL,
  `Data_Nasc` date NOT NULL,
  `CNH` int(11) DEFAULT NULL,
  `Titulo de Eleitor` int(11) DEFAULT NULL,
  `RG` int(11) DEFAULT NULL,
  `Contato_idContato` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pessoa_fisica`
--

INSERT INTO `pessoa_fisica` (`idPessoa_Fisica`, `CPF`, `Nome`, `Data_Nasc`, `CNH`, `Titulo de Eleitor`, `RG`, `Contato_idContato`) VALUES
(1, '111.222.333-44', 'Admin', '2018-08-14', 0, 0, 121234562, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoa_juridica`
--

CREATE TABLE `pessoa_juridica` (
  `idPessoa_Juridica` int(11) NOT NULL,
  `Nome_Fantasia` varchar(45) NOT NULL,
  `CNPJ` varchar(45) NOT NULL,
  `Insc_Estadual` varchar(45) NOT NULL,
  `Insc_Municipal` varchar(45) NOT NULL,
  `Contato_idContato` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `posicao`
--

CREATE TABLE `posicao` (
  `idPosicao` int(11) NOT NULL,
  `Posicao` varchar(45) NOT NULL,
  `idInstancia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `posicao`
--

INSERT INTO `posicao` (`idPosicao`, `Posicao`, `idInstancia`) VALUES
(1, 'Réu', 1),
(2, 'Autor', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `processo`
--

CREATE TABLE `processo` (
  `idProcesso` int(11) NOT NULL,
  `NumeroProcesso` int(11) NOT NULL,
  `Juiz` varchar(45) NOT NULL,
  `advogado2` varchar(45) DEFAULT NULL,
  `idPosicao` int(11) NOT NULL,
  `idContato` int(11) NOT NULL,
  `idDespesas` int(11) NOT NULL,
  `idStatus_Processo` int(11) NOT NULL,
  `idComarca` int(11) NOT NULL,
  `idAdvogado` int(11) NOT NULL,
  `Conclusao_idConclusao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `status_processo`
--

CREATE TABLE `status_processo` (
  `idStatus` int(11) NOT NULL,
  `Status` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `telefone`
--

CREATE TABLE `telefone` (
  `idTelefone` int(11) NOT NULL,
  `Celular` varchar(45) NOT NULL,
  `Residencial` varchar(45) NOT NULL,
  `Comercial` varchar(45) DEFAULT NULL,
  `Contato_idContato` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_despesas`
--

CREATE TABLE `tipo_despesas` (
  `idTipo_Despesas` int(11) NOT NULL,
  `Tipo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tipo_despesas`
--

INSERT INTO `tipo_despesas` (`idTipo_Despesas`, `Tipo`) VALUES
(1, 'Valor das Custas'),
(2, 'Valor Causa'),
(3, 'Valor de Sucumbencias'),
(4, 'Valores Contratuais'),
(5, 'Despesa Fixa');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `Login` varchar(45) NOT NULL,
  `Senha` varchar(45) NOT NULL,
  `idPerfil` int(11) NOT NULL,
  `Pessoa_Fisica_idPessoa_Fisica` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `Login`, `Senha`, `idPerfil`, `Pessoa_Fisica_idPessoa_Fisica`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vara`
--

CREATE TABLE `vara` (
  `idVara` int(11) NOT NULL,
  `Nome` varchar(45) DEFAULT NULL,
  `Comarca_idComarca` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `vara`
--

INSERT INTO `vara` (`idVara`, `Nome`, `Comarca_idComarca`) VALUES
(1, '8ª Vara Cível', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advogado`
--
ALTER TABLE `advogado`
  ADD PRIMARY KEY (`idAdvogado`),
  ADD KEY `fk_Advogado_Usuario1` (`Usuario_idUsuario`);

--
-- Indexes for table `andamento`
--
ALTER TABLE `andamento`
  ADD PRIMARY KEY (`idAndamento`,`Processo_idProcesso`),
  ADD KEY `fk_Andamento_Processo1` (`Processo_idProcesso`);

--
-- Indexes for table `arquivo`
--
ALTER TABLE `arquivo`
  ADD PRIMARY KEY (`idArquivo`),
  ADD KEY `Processo` (`idProcesso`);

--
-- Indexes for table `comarca`
--
ALTER TABLE `comarca`
  ADD PRIMARY KEY (`idComarca`);

--
-- Indexes for table `compromisso`
--
ALTER TABLE `compromisso`
  ADD PRIMARY KEY (`idCompromisso`),
  ADD KEY `idUsuario_usu` (`idUsuario_usu`),
  ADD KEY `idAdvogado` (`idAdv`),
  ADD KEY `idContato` (`idContato`);

--
-- Indexes for table `conclusao`
--
ALTER TABLE `conclusao`
  ADD PRIMARY KEY (`idConclusao`);

--
-- Indexes for table `contato`
--
ALTER TABLE `contato`
  ADD PRIMARY KEY (`idContato`),
  ADD KEY `fk_Endereco` (`idEndereco`);

--
-- Indexes for table `despesas`
--
ALTER TABLE `despesas`
  ADD PRIMARY KEY (`idDespesas`),
  ADD KEY `idUsua_desp` (`idUsua_desp`),
  ADD KEY `idTipoDespesa` (`idTipo_Despesa`);

--
-- Indexes for table `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`idEndereco`);

--
-- Indexes for table `instancia`
--
ALTER TABLE `instancia`
  ADD PRIMARY KEY (`idInstancia`);

--
-- Indexes for table `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`idPerfil`);

--
-- Indexes for table `pessoa_fisica`
--
ALTER TABLE `pessoa_fisica`
  ADD PRIMARY KEY (`idPessoa_Fisica`),
  ADD KEY `fk_Pessoa_Fisica_Contato1` (`Contato_idContato`);

--
-- Indexes for table `pessoa_juridica`
--
ALTER TABLE `pessoa_juridica`
  ADD PRIMARY KEY (`idPessoa_Juridica`),
  ADD KEY `fk_Pessoa_Juridica_Contato1` (`Contato_idContato`);

--
-- Indexes for table `posicao`
--
ALTER TABLE `posicao`
  ADD PRIMARY KEY (`idPosicao`),
  ADD KEY `idInstancia` (`idInstancia`);

--
-- Indexes for table `processo`
--
ALTER TABLE `processo`
  ADD PRIMARY KEY (`idProcesso`),
  ADD KEY `Posicao` (`idPosicao`),
  ADD KEY `Despesas` (`idDespesas`),
  ADD KEY `CStatus` (`idStatus_Processo`),
  ADD KEY `CComarca` (`idComarca`),
  ADD KEY `Cadvogado` (`idAdvogado`),
  ADD KEY `CidContato` (`idContato`),
  ADD KEY `Cfk_Processo_Conclusao` (`Conclusao_idConclusao`);

--
-- Indexes for table `status_processo`
--
ALTER TABLE `status_processo`
  ADD PRIMARY KEY (`idStatus`);

--
-- Indexes for table `telefone`
--
ALTER TABLE `telefone`
  ADD PRIMARY KEY (`idTelefone`),
  ADD KEY `fk_Telefone_Contato1` (`Contato_idContato`);

--
-- Indexes for table `tipo_despesas`
--
ALTER TABLE `tipo_despesas`
  ADD PRIMARY KEY (`idTipo_Despesas`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`),
  ADD KEY `idPerfil` (`idPerfil`),
  ADD KEY `fk_Usuario_Pessoa_Fisica1` (`Pessoa_Fisica_idPessoa_Fisica`);

--
-- Indexes for table `vara`
--
ALTER TABLE `vara`
  ADD PRIMARY KEY (`idVara`),
  ADD KEY `fk_Vara_Comarca1` (`Comarca_idComarca`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advogado`
--
ALTER TABLE `advogado`
  MODIFY `idAdvogado` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `andamento`
--
ALTER TABLE `andamento`
  MODIFY `idAndamento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `arquivo`
--
ALTER TABLE `arquivo`
  MODIFY `idArquivo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comarca`
--
ALTER TABLE `comarca`
  MODIFY `idComarca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `compromisso`
--
ALTER TABLE `compromisso`
  MODIFY `idCompromisso` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `conclusao`
--
ALTER TABLE `conclusao`
  MODIFY `idConclusao` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contato`
--
ALTER TABLE `contato`
  MODIFY `idContato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `despesas`
--
ALTER TABLE `despesas`
  MODIFY `idDespesas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `endereco`
--
ALTER TABLE `endereco`
  MODIFY `idEndereco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `instancia`
--
ALTER TABLE `instancia`
  MODIFY `idInstancia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `perfil`
--
ALTER TABLE `perfil`
  MODIFY `idPerfil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pessoa_fisica`
--
ALTER TABLE `pessoa_fisica`
  MODIFY `idPessoa_Fisica` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pessoa_juridica`
--
ALTER TABLE `pessoa_juridica`
  MODIFY `idPessoa_Juridica` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posicao`
--
ALTER TABLE `posicao`
  MODIFY `idPosicao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `processo`
--
ALTER TABLE `processo`
  MODIFY `idProcesso` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `status_processo`
--
ALTER TABLE `status_processo`
  MODIFY `idStatus` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `telefone`
--
ALTER TABLE `telefone`
  MODIFY `idTelefone` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tipo_despesas`
--
ALTER TABLE `tipo_despesas`
  MODIFY `idTipo_Despesas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vara`
--
ALTER TABLE `vara`
  MODIFY `idVara` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `advogado`
--
ALTER TABLE `advogado`
  ADD CONSTRAINT `fk_Advogado_Usuario1` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `andamento`
--
ALTER TABLE `andamento`
  ADD CONSTRAINT `fk_Andamento_Processo1` FOREIGN KEY (`Processo_idProcesso`) REFERENCES `processo` (`idProcesso`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `arquivo`
--
ALTER TABLE `arquivo`
  ADD CONSTRAINT `Processo` FOREIGN KEY (`idProcesso`) REFERENCES `processo` (`idProcesso`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `compromisso`
--
ALTER TABLE `compromisso`
  ADD CONSTRAINT `idAdvogado` FOREIGN KEY (`idAdv`) REFERENCES `advogado` (`idAdvogado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `idContato` FOREIGN KEY (`idContato`) REFERENCES `contato` (`idContato`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `idUsuario_usu` FOREIGN KEY (`idUsuario_usu`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `contato`
--
ALTER TABLE `contato`
  ADD CONSTRAINT `fk_Endereco` FOREIGN KEY (`idEndereco`) REFERENCES `endereco` (`idEndereco`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `despesas`
--
ALTER TABLE `despesas`
  ADD CONSTRAINT `idTipoDespesa` FOREIGN KEY (`idTipo_Despesa`) REFERENCES `tipo_despesas` (`idTipo_Despesas`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `idUsua_desp` FOREIGN KEY (`idUsua_desp`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `pessoa_fisica`
--
ALTER TABLE `pessoa_fisica`
  ADD CONSTRAINT `fk_Pessoa_Fisica_Contato1` FOREIGN KEY (`Contato_idContato`) REFERENCES `contato` (`idContato`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `pessoa_juridica`
--
ALTER TABLE `pessoa_juridica`
  ADD CONSTRAINT `fk_Pessoa_Juridica_Contato1` FOREIGN KEY (`Contato_idContato`) REFERENCES `contato` (`idContato`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `posicao`
--
ALTER TABLE `posicao`
  ADD CONSTRAINT `idInstancia` FOREIGN KEY (`idInstancia`) REFERENCES `instancia` (`idInstancia`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `processo`
--
ALTER TABLE `processo`
  ADD CONSTRAINT `CComarca` FOREIGN KEY (`idComarca`) REFERENCES `comarca` (`idComarca`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `CStatus` FOREIGN KEY (`idStatus_Processo`) REFERENCES `status_processo` (`idStatus`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `Cadvogado` FOREIGN KEY (`idAdvogado`) REFERENCES `advogado` (`idAdvogado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `Cfk_Processo_Conclusao` FOREIGN KEY (`Conclusao_idConclusao`) REFERENCES `conclusao` (`idConclusao`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `CidContato` FOREIGN KEY (`idContato`) REFERENCES `contato` (`idContato`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `Despesas` FOREIGN KEY (`idDespesas`) REFERENCES `despesas` (`idDespesas`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `Posicao` FOREIGN KEY (`idPosicao`) REFERENCES `posicao` (`idPosicao`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `telefone`
--
ALTER TABLE `telefone`
  ADD CONSTRAINT `fk_Telefone_Contato1` FOREIGN KEY (`Contato_idContato`) REFERENCES `contato` (`idContato`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_Usuario_Pessoa_Fisica1` FOREIGN KEY (`Pessoa_Fisica_idPessoa_Fisica`) REFERENCES `pessoa_fisica` (`idPessoa_Fisica`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `idPerfil` FOREIGN KEY (`idPerfil`) REFERENCES `perfil` (`idPerfil`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `vara`
--
ALTER TABLE `vara`
  ADD CONSTRAINT `fk_Vara_Comarca1` FOREIGN KEY (`Comarca_idComarca`) REFERENCES `comarca` (`idComarca`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
