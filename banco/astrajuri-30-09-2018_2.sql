-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: astrajuri
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
-- Dumping data for table `advogado`
--

LOCK TABLES `advogado` WRITE;
/*!40000 ALTER TABLE `advogado` DISABLE KEYS */;
INSERT INTO `advogado` VALUES (1,'RJ147538 ',3),(2,'RJ137748 ',4),(3,'RJ131545',1);
/*!40000 ALTER TABLE `advogado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `andamento`
--

LOCK TABLES `andamento` WRITE;
/*!40000 ALTER TABLE `andamento` DISABLE KEYS */;
INSERT INTO `andamento` VALUES (3,'2018-09-24 18:30:00','teste2',13),(4,'2018-02-12 18:20:00','teste',11);
/*!40000 ALTER TABLE `andamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `arquivo`
--

LOCK TABLES `arquivo` WRITE;
/*!40000 ALTER TABLE `arquivo` DISABLE KEYS */;
INSERT INTO `arquivo` VALUES (2,'2018-09-30','cce3cac6f55599e835dad19183cd2277.pdf','teste real2',11),(3,'2018-09-30','42a803b866f92bbb5b5bcb0693dc9a79.pdf','Contrato',13);
/*!40000 ALTER TABLE `arquivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `comarca`
--

LOCK TABLES `comarca` WRITE;
/*!40000 ALTER TABLE `comarca` DISABLE KEYS */;
INSERT INTO `comarca` VALUES (1,'Niterói','Visconde de Sepetiba 519 9º andar, Niterói '),(3,'Regional de Campo Grande','R. Carlos da Silva Costa, 141 - Campo Grande');
/*!40000 ALTER TABLE `comarca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `compromisso`
--

LOCK TABLES `compromisso` WRITE;
/*!40000 ALTER TABLE `compromisso` DISABLE KEYS */;
INSERT INTO `compromisso` VALUES (58,'Audiência','2018-10-02 18:30:00','2018-10-02 20:00:00','#FF4500','teste',1,3,21),(59,'Reunião','2018-10-03 20:10:00','2018-10-03 21:00:00','#FFD700','teste',1,3,23),(60,'Palesta','2018-10-03 17:15:00','2018-10-03 18:00:00','#436EEE','teste',1,3,15);
/*!40000 ALTER TABLE `compromisso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `conclusao`
--

LOCK TABLES `conclusao` WRITE;
/*!40000 ALTER TABLE `conclusao` DISABLE KEYS */;
INSERT INTO `conclusao` VALUES (1,'Causa Ganha'),(2,'Causa Perdida');
/*!40000 ALTER TABLE `conclusao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `contato`
--

LOCK TABLES `contato` WRITE;
/*!40000 ALTER TABLE `contato` DISABLE KEYS */;
INSERT INTO `contato` VALUES (2,'admin@mail.com',1),(3,'carlos@gmail.com2',2),(5,'walter@gmail.com',6),(6,'empresa@mail.com',7),(7,'eduardo@gmail.com',8),(8,'supremo@mail.com',9),(9,'baixada@mail.com',10),(10,'carlos2@gmail.com',11),(11,'juridico2@mail.com',12),(12,'teste2@gmail.com',16),(13,'marcelokaiquemigueldasneves_@alkbrasil.com.br',17),(15,'kaue@teste.com',19),(16,'arthurcalebeaugustomoreira-79@adherminer.com.br',20),(17,'enricofabiodavimonteiro__enricofabiodavimonteiro@deltaturismo.com.br',21),(18,'ggaelgustavonicolassales@psq.med.br',22),(19,'ccalebdavirenanfreitas@contjulioroberto.com.br',23),(20,'ccaueyagonelsondasneves@ciaimoveissjc.com',24),(21,'manuelgiovannirenanmoraes@itatiaia.net',25),(22,'',26),(23,'yagomarcosviniciusnascimento@nacirembalagens.com.br',27),(24,'levierickhenrymoreira@ovale.com.br',28),(25,'carloseduardo@softcia.com.br',29);
/*!40000 ALTER TABLE `contato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `despesas`
--

LOCK TABLES `despesas` WRITE;
/*!40000 ALTER TABLE `despesas` DISABLE KEYS */;
INSERT INTO `despesas` VALUES (1,'512,99','nota inicial','2018-09-30',NULL,1,13),(2,'999,99','teste 2','2018-09-30',NULL,1,13),(3,'564,78','teste 3','2018-09-30',NULL,3,13),(5,'20.000,00','teste','2018-09-30',NULL,3,13),(6,'2.000,00','Valor acertado com o cliente','2018-02-01',NULL,4,11);
/*!40000 ALTER TABLE `despesas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (1,'RJ','23123123','Rua Admin',2,'Rio de Janeiro','Realengo','Rua'),(2,'RJ','26129986','rua tal tal',179,'Rio de Janeiro','Realengo','Fundo'),(4,'RJ','26180-290','Rua Avenida',90,'Rio de Janeiro','Deodoro','Qd 22'),(5,'RJ','12345-123','Rua 123',123,'Rio de Janeiro','Deodoro','Esquina'),(6,'RJ','15189120','Rua Do Ipiranga',998,'Rio de Janeiro','Madureira','Morro Brabo'),(7,'RJ','26456789','Rua do Tribunal',45,'Rio de Janeiro','Centro','Zero'),(8,'RJ','23678195','Rua do Edu',0,'São João de Meriti','Bairro da Paz','Qd 22'),(9,'RJ','37458456','Rua do Supremo',7,'Rio de Janeiro','Bairro da Justiça',''),(10,'RJ','26154231','Rua Baixada',12,'Nova Iguaçu','Baixada','Baixada'),(11,'RJ','54352','354352',12,'carlos2','carlos2','carlos2'),(12,'RJ','12843552','juridico2',12332,'juridico2','juridico2','juridico2'),(15,'RJ','123','juiz',123,'juiz','juiz','juiz'),(16,'RJ','26150150','Rua Dona Marlene',22,'Belford Roxo','Shangri-lá','Qd 22'),(17,'MS','68911155','Passagem Dona Márcia',22,'Campo Grande','Jardim Sumatra','Casa'),(19,'RJ','69313122','Rua Luiz Orlandi',409,'Tubarão','Lar São Paulo','Casa'),(20,'DF','71100078','EPTG QE 2 Bloco B-13',450,'Brasília','Quadras Econômicas Lúcio Costa (Guará)','Sem Complemento'),(21,'RN','59052410','Vila Oliveira',128,'Natal','Dix-Sept Rosado','S Complemtento'),(22,'AC','69911164','Travessa São Paulo',396,'Rio Branco','Pista','Casa'),(23,'MG','38038050','Rodovia BR-050',563,'Uberaba','Jardim Santa Clara','Casa'),(24,'RS','94110300','Rua Costa e Silva',22,'Gravataí','Parque Ipiranga','Casa'),(25,'AP','68909167','Rua Abelardo Barbosa',22,'Macapá','Boné Azul','casa'),(26,'','','',0,'','',''),(27,'CE','60192010','Rua Vilebaldo Aguiar',759,'Fortaleza','Cocó','Casa'),(28,'MS','79006741','Avenida Constantino',735,'Campo Grande','Vila Bandeirante',''),(29,'SP','13254241','Rua Romano Massaretto',909,'Itatiba','Parque São Francisco','');
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,'Reuniao','#0071c5','2017-11-23 09:00:00','2017-11-23 11:00:00'),(2,'Palestra','#40e0d0','2017-11-13 14:00:00','2017-11-13 17:00:00'),(3,'Reuniao 1','#FFD700','2017-11-23 08:00:00','2017-11-23 09:00:00'),(4,'Reuniao 3','#40e0d0','2017-11-23 10:00:00','2017-11-23 11:00:00'),(5,'Reuniao 4','#0071c5','2017-11-23 11:00:00','2017-11-13 12:00:00'),(6,'Reuniao 5','#FFD700','2017-11-23 13:00:00','2017-11-23 14:00:00'),(7,'Reuniao 6','#0071c5','2017-11-23 14:00:00','2017-11-23 15:00:00'),(8,'Reuniao 7','#FFD700','2017-11-23 16:00:00','2017-11-23 17:00:00'),(9,'teste','#FF4500','2018-09-04 00:00:00','2018-09-05 00:00:00'),(10,'teste2','#0071c5','2018-09-04 01:00:00','2018-09-05 02:00:00'),(11,'Novo Compromisso','#FF4500','2018-08-29 12:00:00',NULL),(12,'Teste','#FFD700','2018-08-29 02:00:00',NULL);
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `instancia`
--

LOCK TABLES `instancia` WRITE;
/*!40000 ALTER TABLE `instancia` DISABLE KEYS */;
INSERT INTO `instancia` VALUES (1,'1ª Instância '),(2,'2ª Instância');
/*!40000 ALTER TABLE `instancia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `perfil`
--

LOCK TABLES `perfil` WRITE;
/*!40000 ALTER TABLE `perfil` DISABLE KEYS */;
INSERT INTO `perfil` VALUES (1,'Recepcionista'),(2,'Advogado'),(3,'Administrador');
/*!40000 ALTER TABLE `perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pessoa_fisica`
--

LOCK TABLES `pessoa_fisica` WRITE;
/*!40000 ALTER TABLE `pessoa_fisica` DISABLE KEYS */;
INSERT INTO `pessoa_fisica` VALUES (2,'11122233344','Admin','2018-08-14',NULL,NULL,'121234562',2),(4,'','','0000-00-00','','','',12),(5,'52712708237','Marcelo Kaique Miguel das Neves','0000-00-00','98332185890','583317420116','197354245',13),(7,'45211379705','Kauê João Carvalho','1991-03-02','35726478247','654138330183','109466639',15),(8,'04181394824','Arthur Calebe Augusto Moreira','1996-08-01','56404573786','353326730191','168696137',16),(9,'94486391128','Enrico Fábio Davi Monteiro','1996-07-20','73759261410','031435230183','147881717',17),(10,'20598577084','Gael Gustavo Nicolas Sales','1991-02-02','324','345','505018895',18),(11,'67319749947','Caleb Davi Renan Freitas','1987-07-06','1134000','7273000','340602624',19),(12,'21543664300','Cauê Yago Nelson das Neves','1997-08-10','662','755','132135851',20),(13,'46354925836','Manuel Giovanni Renan Moraes','2001-09-07','026','227','463549258',21),(14,'','','0000-00-00','','','',22),(15,'64373682763','Yago Marcos Vinicius Nascimento','1991-03-09','31432025193','354426830140','179655346',23),(16,'27687079027','Levi Erick Henry Moreira','1996-08-11','','','267537451',24),(17,'89047294408','Carlos Eduardo Vinicius ','1996-02-24','79154783524','353046760108','234711036',25);
/*!40000 ALTER TABLE `pessoa_fisica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pessoa_juridica`
--

LOCK TABLES `pessoa_juridica` WRITE;
/*!40000 ALTER TABLE `pessoa_juridica` DISABLE KEYS */;
INSERT INTO `pessoa_juridica` VALUES (1,'Empresa LTDA','27471810000182',45691551,12345,6);
/*!40000 ALTER TABLE `pessoa_juridica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `posicao`
--

LOCK TABLES `posicao` WRITE;
/*!40000 ALTER TABLE `posicao` DISABLE KEYS */;
INSERT INTO `posicao` VALUES (1,'Réu',1),(2,'Autor',1),(3,'Requerente',2),(4,'Requerido',2);
/*!40000 ALTER TABLE `posicao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `processo`
--

LOCK TABLES `processo` WRITE;
/*!40000 ALTER TABLE `processo` DISABLE KEYS */;
INSERT INTO `processo` VALUES (7,'13151848438438434844','Fábio Luiz','Marcos Moreira','Patrícia Santos',1,6,NULL,2,3,1,NULL),(8,'12513513543484383844','Marcos Pereira','Jorge da Silva','Lavi Motta',1,6,NULL,2,1,1,NULL),(10,'31351385438438643846','João Bastos','Flávio Santos','Lívia Santos',1,12,NULL,7,1,3,1),(11,'52135135135438432348','Fabiano Teixeira','João Freire','Felipe da Silva',1,17,NULL,2,3,3,NULL),(13,'70770909809887987907','José Marcos ','Jorge Salles','Jorge Mattos',3,3,NULL,7,3,3,1);
/*!40000 ALTER TABLE `processo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `status_processo`
--

LOCK TABLES `status_processo` WRITE;
/*!40000 ALTER TABLE `status_processo` DISABLE KEYS */;
INSERT INTO `status_processo` VALUES (2,'conhecimento'),(3,'recurso'),(4,'execução'),(5,'sentença'),(6,'arquivado'),(7,'encerrado');
/*!40000 ALTER TABLE `status_processo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `telefone`
--

LOCK TABLES `telefone` WRITE;
/*!40000 ALTER TABLE `telefone` DISABLE KEYS */;
INSERT INTO `telefone` VALUES (6,'21988784512','2137458945',NULL,6),(8,'','2137351245',NULL,8),(9,'21879878722','2178979222',NULL,12),(10,'96994092911','9635331149',NULL,13),(12,'2323232323','1243541542',NULL,15),(13,'61981898293','6138361838',NULL,16),(14,'84997973685','8429307884',NULL,17),(15,'68982473365','6827464161',NULL,18),(16,'34995107925','3435262091',NULL,19),(17,'51983710693','5137751046',NULL,20),(18,'96991684637','9628471319',NULL,21),(19,'','',NULL,22),(20,'85982365739','8537937063',NULL,23),(21,'67992187803','6725963965',NULL,24),(22,'11993948224','1139749592',NULL,25);
/*!40000 ALTER TABLE `telefone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tipo_despesas`
--

LOCK TABLES `tipo_despesas` WRITE;
/*!40000 ALTER TABLE `tipo_despesas` DISABLE KEYS */;
INSERT INTO `tipo_despesas` VALUES (1,'Valor_Custas'),(2,'Valor_Causa'),(3,'Sucumbencias'),(4,'Contratuais'),(5,'Despesa_Fixa');
/*!40000 ALTER TABLE `tipo_despesas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'admin','202cb962ac59075b964b07152d234b70',3,2),(2,'recepcionista','202cb962ac59075b964b07152d234b70',1,15),(3,'advogado','202cb962ac59075b964b07152d234b70',2,11),(4,'levi','202cb962ac59075b964b07152d234b70',2,16);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `vara`
--

LOCK TABLES `vara` WRITE;
/*!40000 ALTER TABLE `vara` DISABLE KEYS */;
INSERT INTO `vara` VALUES (1,'8ª Vara Civel',1),(2,'9ª vara',1),(3,'10ª Vara',1),(4,'12º vara',1),(6,'13ª Vara',3);
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

-- Dump completed on 2018-09-30 21:37:39
