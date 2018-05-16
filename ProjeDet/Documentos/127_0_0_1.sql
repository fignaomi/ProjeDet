-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 16-Maio-2018 às 17:27
-- Versão do servidor: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bd_projedet`
--
CREATE DATABASE IF NOT EXISTS `bd_projedet` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bd_projedet`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `COD_ALUNO` int(11) NOT NULL,
  `NOME` varchar(50) NOT NULL,
  `SENHA` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`COD_ALUNO`, `NOME`, `SENHA`) VALUES
(1, 'maria', '123');

-- --------------------------------------------------------

--
-- Estrutura da tabela `atividade`
--

CREATE TABLE `atividade` (
  `COD_ATIVIDADE` int(11) NOT NULL,
  `TITULO` varchar(30) NOT NULL,
  `STATUS` int(1) NOT NULL,
  `TEMPO` time NOT NULL,
  `COD_PROFESSOR` int(11) NOT NULL,
  `COD_CATEGORIA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `atividade`
--

INSERT INTO `atividade` (`COD_ATIVIDADE`, `TITULO`, `STATUS`, `TEMPO`, `COD_PROFESSOR`, `COD_CATEGORIA`) VALUES
(1, 'PROJETOS MECÂNICOS', 1, '00:20:00', 1, 1),
(2, 'MATEMATICA B', 1, '00:10:00', 1, 2),
(3, 'INFORMÁTICA BASICA', 1, '00:10:00', 1, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `COD_CATEGORIA` int(11) NOT NULL,
  `TITULO` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`COD_CATEGORIA`, `TITULO`) VALUES
(1, 'TECNICO INDUSTRIAL'),
(2, 'MATEMATICA'),
(3, 'INFORMÁTICA');

-- --------------------------------------------------------

--
-- Estrutura da tabela `inscricao`
--

CREATE TABLE `inscricao` (
  `COD_INSCRICAO` int(11) NOT NULL,
  `COD_ATIVIDADE` int(11) NOT NULL,
  `COD_ALUNO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `inscricao`
--

INSERT INTO `inscricao` (`COD_INSCRICAO`, `COD_ATIVIDADE`, `COD_ALUNO`) VALUES
(1, 1, 1),
(2, 2, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `materia`
--

CREATE TABLE `materia` (
  `COD_MATERIA` int(11) NOT NULL,
  `NOME` varchar(30) NOT NULL,
  `DESCRICAO` text NOT NULL,
  `COD_PROFESSOR` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pergunta`
--

CREATE TABLE `pergunta` (
  `COD_PERGUNTA` int(11) NOT NULL,
  `DESCRICAO` varchar(255) NOT NULL,
  `RESPOSTA_CERTA` varchar(200) NOT NULL,
  `RESPOSTA_ERRADA1` varchar(200) NOT NULL,
  `RESPOSTA_ERRADA2` varchar(200) NOT NULL,
  `RESPOSTA_ERRADA3` varchar(200) NOT NULL,
  `RESPOSTA_ERRADA4` varchar(200) NOT NULL,
  `COD_PROFESSOR` int(11) NOT NULL,
  `COD_ATIVIDADE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pergunta`
--

INSERT INTO `pergunta` (`COD_PERGUNTA`, `DESCRICAO`, `RESPOSTA_CERTA`, `RESPOSTA_ERRADA1`, `RESPOSTA_ERRADA2`, `RESPOSTA_ERRADA3`, `RESPOSTA_ERRADA4`, `COD_PROFESSOR`, `COD_ATIVIDADE`) VALUES
(1, 'O Autocad utiliza, como recurso para desenhar, com\r\nprecisão, comandos de atração de objetos geométricos,\r\no Object Snap, que é uma maneira rápida de localizar\r\numa posição exata de um objeto, sem precisar conhecer\r\nas coordenadas ou criar linhas de const', 'um ponto extremo de um arco.', 'um dos extremos de um retângulo ou quadrado.', 'o cursor para a interseção entre duas linhas ou arcos', ' o ponto mais próximo do centro de uma linha reta que\r\npossua outra linha reta em uma de suas extremidades.', 'o centro de uma linha reta.', 1, 1),
(2, 'A NBR 8402:1994 fixa as condições exigíveis para a escrita\r\nusada em desenhos técnicos e documentos semelhantes.\r\nSegundo essa norma, as principais exigências na\r\nescrita em desenhos técnicos são: legibilidade; uniformidade\r\ne adequação a processos de rep', ' I e II, apenas', ' I e III, apenas.', ' II e III, apenas.', ' I, II e III, apenas.', ' I, II, III e IV.', 1, 1),
(3, 'O AutoCad organiza os comandos, com características\r\ncomuns, em barras de ferramentas que apresentam botões\r\ncom ícones que, normalmente, são imagens que intuem\r\na utilidade dos botões, Devido à grande quantidade de comandos, muitas barras\r\nnão ficam visí', ' Pressionar “enter” no teclado. ', ') Clicar o botão esquerdo do mouse sobre uma barra\r\nde ferramentas que esteja visível, visualizar o menu\r\nde barras de ferramentas e escolher a barra de ferramentas\r\ndesejada.', ' Clicar o botão direito do mouse sobre uma barra de\r\nferramentas que esteja visível, visualizar o menu de\r\nbarras de ferramentas e escolher a barra de ferramentas\r\ndesejada.', 'Clicar o botão do meio do mouse sobre uma barra de\r\nferramentas que esteja visível, visualizar o menu de\r\nbarras de ferramentas e escolher a barra de ferramentas\r\ndesejada', 'Digitar “open barra” na linha de comando.', 1, 1),
(4, 'Marta e Roberta participaram de um concurso, e seus\r\nrespectivos tempos gastos para completar a prova foram\r\nde 9900 segundos e de 2,6 horas.\r\nA diferença entre os tempos, em minutos, gastos pelas\r\ncandidatas nessa prova, foi de', '9', '15', '39', '69', '90', 1, 2),
(5, 'Qual é o menor valor inteiro que satisfaz a desigualdade\r\napresentada a seguir?\r\n9x + 2(3x ? 4) > 11x ? 14', '-2', '-1', '0', '1', '2', 1, 2),
(6, 'No país X, a moeda é o PAFE e, no país Y, a moeda é o\r\nLUVE.\r\nSe 1,00 PAFE é equivalente a 0,85 LUVES, então 17,00\r\nLUVES equivalem a quantos PAFES?', '14,45 ', '17,00 ', '20,00', ' 144,50', '200,00 ', 1, 2),
(7, 'O Microsoft Word 2007 produz documentos com aparência profissional, oferecendo um conjunto abrangente de ferramentas\r\ne comandos para criação e formatação de textos.\r\nNesse aplicativo, por padrão, o(a)', ' comando para impressão de um documento pode ser acessado a partir da guia Revisão, na faixa de opções Impressão.', ' comando Linha de Saudação encontra-se na faixa de opções Gravar e Inserir Campos, na guia Correspondências.', ' faixa de opções Controle contém os comandos Aceitar, Rejeitar, Anterior e Próximo e encontra-se na guia Revisão.', ' ferramenta para verificar a ortografia e a gramática do texto no documento encontra-se na guia Referências.\r\n', ' visualização dos tópicos de ajuda pode ser feita por meio das teclas F8, F9 ou Ctrl+Alt+A.', 1, 3),
(8, 'As pastas Painel de Controle constantes nos sistemas operacionais Windows XP e Windows 7 possuem em comum, por\r\npadrão, os seguintes comandos:', ' Atualizações Automáticas, Central de Segurança e Controle dos Pais ', ' Central de Ações, Grupo Doméstico e Solução de problemas', 'Firewall do Windows, Opções da Internet e Windows CardSpace\r\n', 'Gadgets da Área de Trabalho, Programas Padrão e Fontes', 'Windows Defender, Opções de Energia e Reprodução Automática', 1, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor`
--

CREATE TABLE `professor` (
  `COD_PROFESSOR` int(11) NOT NULL,
  `NOME` varchar(50) NOT NULL,
  `SENHA` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `professor`
--

INSERT INTO `professor` (`COD_PROFESSOR`, `NOME`, `SENHA`) VALUES
(1, 'jose', 123);

-- --------------------------------------------------------

--
-- Estrutura da tabela `resp_aluno`
--

CREATE TABLE `resp_aluno` (
  `COD_RESP_ALUNO` int(11) NOT NULL,
  `COD_INSCRICAO` int(11) NOT NULL,
  `COD_PERGUNTA` int(11) NOT NULL,
  `RESPOSTA` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `resp_aluno`
--

INSERT INTO `resp_aluno` (`COD_RESP_ALUNO`, `COD_INSCRICAO`, `COD_PERGUNTA`, `RESPOSTA`) VALUES
(1, 1, 1, ''),
(2, 2, 5, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`COD_ALUNO`);

--
-- Indexes for table `atividade`
--
ALTER TABLE `atividade`
  ADD PRIMARY KEY (`COD_ATIVIDADE`),
  ADD KEY `COD_CATEGORIA` (`COD_CATEGORIA`),
  ADD KEY `COD_PROFESSOR` (`COD_PROFESSOR`);

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`COD_CATEGORIA`);

--
-- Indexes for table `inscricao`
--
ALTER TABLE `inscricao`
  ADD PRIMARY KEY (`COD_INSCRICAO`),
  ADD KEY `COD_ATIVIDADE` (`COD_ATIVIDADE`),
  ADD KEY `COD_ALUNO` (`COD_ALUNO`);

--
-- Indexes for table `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`COD_MATERIA`),
  ADD KEY `COD_PROFESSOR` (`COD_PROFESSOR`);

--
-- Indexes for table `pergunta`
--
ALTER TABLE `pergunta`
  ADD PRIMARY KEY (`COD_PERGUNTA`),
  ADD KEY `COD_ATIVIDADE` (`COD_ATIVIDADE`),
  ADD KEY `COD_PROFESSOR` (`COD_PROFESSOR`);

--
-- Indexes for table `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`COD_PROFESSOR`);

--
-- Indexes for table `resp_aluno`
--
ALTER TABLE `resp_aluno`
  ADD PRIMARY KEY (`COD_RESP_ALUNO`),
  ADD KEY `COD_PERGUNTA` (`COD_PERGUNTA`),
  ADD KEY `COD_INSCRICAO` (`COD_INSCRICAO`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aluno`
--
ALTER TABLE `aluno`
  MODIFY `COD_ALUNO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `atividade`
--
ALTER TABLE `atividade`
  MODIFY `COD_ATIVIDADE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `COD_CATEGORIA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `inscricao`
--
ALTER TABLE `inscricao`
  MODIFY `COD_INSCRICAO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `materia`
--
ALTER TABLE `materia`
  MODIFY `COD_MATERIA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pergunta`
--
ALTER TABLE `pergunta`
  MODIFY `COD_PERGUNTA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `professor`
--
ALTER TABLE `professor`
  MODIFY `COD_PROFESSOR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `resp_aluno`
--
ALTER TABLE `resp_aluno`
  MODIFY `COD_RESP_ALUNO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `atividade`
--
ALTER TABLE `atividade`
  ADD CONSTRAINT `atividade_ibfk_1` FOREIGN KEY (`COD_CATEGORIA`) REFERENCES `categoria` (`COD_CATEGORIA`),
  ADD CONSTRAINT `atividade_ibfk_2` FOREIGN KEY (`COD_PROFESSOR`) REFERENCES `professor` (`COD_PROFESSOR`);

--
-- Limitadores para a tabela `inscricao`
--
ALTER TABLE `inscricao`
  ADD CONSTRAINT `inscricao_ibfk_1` FOREIGN KEY (`COD_ATIVIDADE`) REFERENCES `atividade` (`COD_ATIVIDADE`),
  ADD CONSTRAINT `inscricao_ibfk_2` FOREIGN KEY (`COD_ALUNO`) REFERENCES `aluno` (`COD_ALUNO`);

--
-- Limitadores para a tabela `materia`
--
ALTER TABLE `materia`
  ADD CONSTRAINT `materia_ibfk_1` FOREIGN KEY (`COD_PROFESSOR`) REFERENCES `professor` (`COD_PROFESSOR`);

--
-- Limitadores para a tabela `pergunta`
--
ALTER TABLE `pergunta`
  ADD CONSTRAINT `pergunta_ibfk_1` FOREIGN KEY (`COD_ATIVIDADE`) REFERENCES `atividade` (`COD_ATIVIDADE`),
  ADD CONSTRAINT `pergunta_ibfk_2` FOREIGN KEY (`COD_PROFESSOR`) REFERENCES `professor` (`COD_PROFESSOR`);

--
-- Limitadores para a tabela `resp_aluno`
--
ALTER TABLE `resp_aluno`
  ADD CONSTRAINT `resp_aluno_ibfk_1` FOREIGN KEY (`COD_PERGUNTA`) REFERENCES `pergunta` (`COD_PERGUNTA`),
  ADD CONSTRAINT `resp_aluno_ibfk_2` FOREIGN KEY (`COD_INSCRICAO`) REFERENCES `inscricao` (`COD_INSCRICAO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
