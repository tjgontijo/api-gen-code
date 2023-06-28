SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "-03:00";

-- --------------------------------------------------------

--
-- Estrutura para tabela `classes`
--

CREATE TABLE `classes` (
  `id` int NOT NULL,
  `group_id` int NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `classes`
--

INSERT INTO `classes` (`id`, `group_id`, `name`) VALUES
(1, 1, 'Acessórios de Pontaria'),
(2, 1, 'Arma Curta'),
(3, 1, 'Arma Longa'),
(4, 2, 'Equipamentos Individuais'),
(5, 3, 'Vestuário Operacional e Acessórios'),
(6, 4, 'Combate a Incêndio Florestal'),
(7, 4, 'Combate a Incêndio Urbano'),
(8, 4, 'Proteção Individual para Combate a Incêndio Florestal'),
(9, 4, 'Proteção Individual para Combate a Incêndio Urbano'),
(10, 4, 'Proteção Individual para Resgate e Salvamento'),
(11, 4, 'Proteção Respiratória'),
(12, 4, 'Resgate e Salvamento Aéreo'),
(13, 4, 'Resgate e Salvamento Aquático'),
(14, 4, 'Resgate e Salvamento Terrestre'),
(15, 4, 'Resposta a Desastres'),
(16, 5, 'Equipamentos e Aparelhos'),
(17, 6, 'Eletrodoméstico'),
(18, 6, 'Mobiliário'),
(19, 7, 'Aeronave'),
(20, 7, 'Embarcação de Pequeno Porte'),
(21, 7, 'Embarcação, Rígida e Semirígida'),
(22, 7, 'Motocicleta, Motoneta e Bicicleta'),
(23, 7, 'Veículo Especial'),
(24, 7, 'Veículo Leve'),
(25, 7, 'Veículo Pesado'),
(26, 8, 'Munição Letal'),
(27, 8, 'Munição Não-letal'),
(28, 9, 'Equipamentos de comunicação'),
(29, 10, 'Equipamentos e Aparelhos'),
(30, 11, 'Animal de Grande Porte'),
(31, 11, 'Animal de Pequeno Porte'),
(32, 12, 'Áudio e Vídeo'),
(33, 12, 'Computador'),
(34, 12, 'Impressão'),
(35, 12, 'Redes'),
(36, 12, 'Software'),
(37, 13, 'Arquitetura e Serviços de Engenharia'),
(38, 13, 'Comunicação Social'),
(39, 13, 'Eventos'),
(40, 13, 'Formação e Capacitação'),
(41, 13, 'Gestão e Governança'),
(42, 13, 'Obras e Manutenção Predial'),
(43, 13, 'Radiocomunicação'),
(44, 13, 'Segurança e Saúde no Trabalho, do Profissional de Segurança Pública'),
(45, 13, 'Tecnologia da Informação');

-- --------------------------------------------------------

--
-- Estrutura para tabela `groups`
--

CREATE TABLE `groups` (
  `id` int NOT NULL,
  `type_id` int NOT NULL,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `groups`
--

INSERT INTO `groups` (`id`, `type_id`, `name`) VALUES
(1, 1, 'Armamento Letal'),
(2, 1, 'Armamento Não-letal'),
(3, 1, 'Equipamento de Proteção Individual'),
(4, 1, 'Equipamento Próprio de Socorrista'),
(5, 1, 'Instrumentos e Equipamentos de Laboratório'),
(6, 1, 'Mobiliário e Eletrodoméstico'),
(7, 1, 'Mobilidade'),
(8, 1, 'Munição'),
(9, 1, 'Radiocomunicação'),
(10, 1, 'Saúde no Trabalho'),
(11, 1, 'Semoventes'),
(12, 1, 'Tecnologia da Informação'),
(13, 2, 'Contratação de Empresa Especializada');

-- --------------------------------------------------------

--
-- Estrutura para tabela `materials`
--

CREATE TABLE `materials` (
  `id` int NOT NULL,
  `class_id` int NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `cod_senasp` varchar(20) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `materials`
--

INSERT INTO `materials` (`id`, `class_id`, `name`, `cod_senasp`) VALUES
(1, 1, 'Aparelho do tipo: Luneta | Óptico | Red Dot | Optrônicos em Geral', 'MAT.01.001.0001'),
(2, 2, 'Pistola', 'MAT.01.002.0002'),
(3, 3, 'Carabina', 'MAT.01.003.0003'),
(4, 3, 'Espingarda', 'MAT.01.003.0004'),
(5, 3, 'Fuzil', 'MAT.01.003.0005'),
(6, 3, 'Sub-metralhadora', 'MAT.01.003.0006'),
(7, 4, 'Algema Metálica', 'MAT.02.004.0007'),
(8, 4, 'Algema Plástica', 'MAT.02.004.0008'),
(9, 4, 'Arma Eletroeletrônica de Incapacitação Neuromuscular (NT SENASP nº 02/2020 | inclui Coldre)', 'MAT.02.004.0009'),
(10, 4, 'Bastão Antitumulto (Tonfa e Bastão Retrátil)', 'MAT.02.004.0010'),
(11, 4, 'Escudo (Proteção Balística e Controle de Distúrbios)', 'MAT.02.004.0011'),
(12, 4, 'Espargidor em Geral', 'MAT.02.004.0012'),
(13, 4, 'Granada em Geral', 'MAT.02.004.0013'),
(14, 4, 'Lançador de Granadas', 'MAT.02.004.0014'),
(15, 4, 'Sinalizadores e Iluminadores', 'MAT.02.004.0015'),
(16, 5, 'Bota Operacional', 'MAT.03.005.0016'),
(17, 5, 'Calça Operacional', 'MAT.03.005.0017'),
(18, 5, 'Camisa Operacional', 'MAT.03.005.0018'),
(19, 5, 'Capacete em Geral (Motociclista | Antitumulto e Balístico)', 'MAT.03.005.0019'),
(20, 5, 'Coldre para Pistola', 'MAT.03.005.0020'),
(21, 5, 'Colete de Proteção Balística (NT SENASP nº 03/2021 | inclui Capa)', 'MAT.03.005.0021'),
(22, 5, 'Cotoveleira  Operacional', 'MAT.03.005.0022'),
(23, 5, 'Gandola Operacional', 'MAT.03.005.0023'),
(24, 5, 'Joelheira Operacional', 'MAT.03.005.0024'),
(25, 5, 'Lanterna Operacional', 'MAT.03.005.0025'),
(26, 5, 'Luva em Geral (Motociclista | Antitumulto e Tática)', 'MAT.03.005.0026'),
(27, 5, 'Macacão de Voo', 'MAT.03.005.0027'),
(28, 5, 'Óculos em Geral (Motociclista e Tático)', 'MAT.03.005.0028'),
(29, 5, 'Perneira Operacional', 'MAT.03.005.0029'),
(30, 5, 'Traje Anti-Fragmentação', 'MAT.03.005.0030'),
(31, 6, 'Combate a Incêndio Florestal', 'MAT.04.006.0031'),
(32, 7, 'Combate a Incêndio Urbano', 'MAT.04.007.0032'),
(33, 8, 'Proteção Individual para Combate a Incêndio Florestal', 'MAT.04.008.0033'),
(34, 9, 'Proteção Individual para Combate a Incêndio Urbano', 'MAT.04.009.0034'),
(35, 10, 'Proteção Individual para Resgate e Salvamento', 'MAT.04.010.0035'),
(36, 11, 'Proteção Respiratória', 'MAT.04.011.0036'),
(37, 12, 'Resgate e Salvamento Aéreo', 'MAT.04.012.0037'),
(38, 13, 'Resgate e Salvamento Aquático', 'MAT.04.013.0038'),
(39, 14, 'Resgate e Salvamento Terrestre', 'MAT.04.014.0039'),
(40, 15, 'Resposta a Desastres', 'MAT.04.015.0040'),
(41, 16, 'Equipamentos e Aparelhos para Instituto de Criminalística e seus Insumos ', 'MAT.05.016.0041'),
(42, 16, 'Equipamentos e Aparelhos para Instituto de Genética Forense e seus Insumos ', 'MAT.05.016.0042'),
(43, 16, 'Equipamentos e Aparelhos para Instituto de Identificação e seus Insumos ', 'MAT.05.016.0043'),
(44, 16, 'Equipamentos e Aparelhos para Instituto de Laboratórios Forense e seus Insumos ', 'MAT.05.016.0044'),
(45, 16, 'Equipamentos e Aparelhos para Instituto de Medicina Legal e seus Insumos ', 'MAT.05.016.0045'),
(46, 17, 'Bebedouro de Água', 'MAT.06.017.0046'),
(47, 17, 'Condicionador de Ar (Ar-Condicionado)', 'MAT.06.017.0047'),
(48, 17, 'Fogão a Gás', 'MAT.06.017.0048'),
(49, 17, 'Forno a Gás', 'MAT.06.017.0049'),
(50, 17, 'Forno de Micro-ondas', 'MAT.06.017.0050'),
(51, 17, 'Refrigerador (Geladeira)', 'MAT.06.017.0051'),
(52, 17, 'Televisor', 'MAT.06.017.0052'),
(53, 18, 'Armário em Geral (Escritório e Vestiário)', 'MAT.06.018.0053'),
(54, 18, 'Beliche Metálica (com 02 leitos)', 'MAT.06.018.0054'),
(55, 18, 'Cadeira em Geral (Escritório e Refeitório)', 'MAT.06.018.0055'),
(56, 18, 'Gaveteiro para Escritório', 'MAT.06.018.0056'),
(57, 18, 'Longarina em Geral (Escritório e Refeitório)', 'MAT.06.018.0057'),
(58, 18, 'Mesa em Geral (Escritório e Refeitório)', 'MAT.06.018.0058'),
(59, 19, 'Aeronave de Asa Fixa', 'MAT.07.019.0059'),
(60, 19, 'Aeronave de Asa Rotativa', 'MAT.07.019.0060'),
(61, 19, 'Aeronave Remotamente Controlada', 'MAT.07.019.0061'),
(62, 20, 'Bote', 'MAT.07.020.0062'),
(63, 20, 'Moto Aquática', 'MAT.07.020.0063'),
(64, 21, 'Lancha', 'MAT.07.021.0064'),
(65, 22, 'Bicicleta | Diciclo ou Patinete Elétrico', 'MAT.07.022.0065'),
(66, 22, 'Motocicleta | com mínimo de | 250 CC', 'MAT.07.022.0066'),
(67, 23, 'Veículo Especial  tipo: Resgate', 'MAT.07.023.0067'),
(68, 23, 'Veículo Especial tipo: Ambulância', 'MAT.07.023.0068'),
(69, 23, 'Veículo Especial tipo: Autobomba Tanque', 'MAT.07.023.0069'),
(70, 23, 'Veículo Especial tipo: Autoescada', 'MAT.07.023.0070'),
(71, 24, 'Veículo leve para emprego operacional de busca e apoio para aplicação fora de estrada com tração 4x4 (NT SENASP nº 06/2022)', 'MAT.07.024.0071'),
(72, 24, 'Veículo leve para emprego operacional de busca e apoio para aplicação mista urbana e rural com tração 4x2 ou 4x4 (NT SENASP nº 06/2022)', 'MAT.07.024.0072'),
(73, 24, 'Veículo leve para emprego operacional de busca e apoio para aplicação rodoviária e urbana com tração 4x2 (NT SENASP nº 06/2022)', 'MAT.07.024.0073'),
(74, 24, 'Veículo leve para emprego operacional do tipo descaracterizado com tração 4x2 ou 4x4 para aplicação rodoviária urbana rural ou fora de estrada (NT SENASP nº 06/2022)', 'MAT.07.024.0074'),
(75, 24, 'Veículo leve para emprego operacional geral para aplicação fora de estrada com tração 4x4 (NT SENASP nº 06/2022)', 'MAT.07.024.0075'),
(76, 24, 'Veículo leve para emprego operacional geral para aplicação mista urbana e rural com tração 4x2 ou 4x4 (NT SENASP nº 06/2022)', 'MAT.07.024.0076'),
(77, 24, 'Veículo leve para emprego operacional geral para aplicação rodoviária e urbana com tração 4x2 (NT SENASP nº 06/2022)', 'MAT.07.024.0077'),
(78, 25, 'Veículo Pesado tipo: Caminhão', 'MAT.07.025.0078'),
(79, 25, 'Veículo Pesado tipo: Micro-Ônibus', 'MAT.07.025.0079'),
(80, 25, 'Veículo Pesado tipo: Ônibus', 'MAT.07.025.0080'),
(81, 26, 'Munição Letal | para Arma de Alma Lisa', 'MAT.08.026.0081'),
(82, 26, 'Munição Letal | para Calibre de Alta Velocidade', 'MAT.08.026.0082'),
(83, 26, 'Munição Letal | para Calibre de Baixa Velocidade', 'MAT.08.026.0083'),
(84, 27, 'Munição Não-Letal | para Arma de Alma Lisa', 'MAT.08.027.0084'),
(85, 28, 'Radiocomunicação Crítica | preferencialmente (não mandatório) no protocolo TETRA | ou do tipo: Long Term Evolution - LTE | ou de Tecnologia Similar', 'MAT.09.028.0085'),
(86, 29, 'Equipamentos | Aparelhos e Materiais à Prática de Atividade Física (Ginástica e Musculação)', 'MAT.10.029.0086'),
(87, 29, 'Equipamentos | Aparelhos e Materiais Ambulatoriais', 'MAT.10.029.0087'),
(88, 29, 'Equipamentos | Aparelhos e Materiais de Fisioterapia', 'MAT.10.029.0088'),
(89, 29, 'Equipamentos | Aparelhos e Materiais Médico-Hospitalares', 'MAT.10.029.0089'),
(90, 29, 'Equipamentos | Aparelhos e Materiais Odontológicos', 'MAT.10.029.0090'),
(91, 29, 'Kit para APH-Tático (Atendimento Pré-Hospitalar Tático) e seus Insumos', 'MAT.10.029.0091'),
(92, 30, 'Equino', 'MAT.11.030.0092'),
(93, 31, 'Canino', 'MAT.11.031.0093'),
(94, 32, 'Câmera IP (Móvel e Fixa)', 'MAT.12.032.0094'),
(95, 32, 'Câmeras Corporais', 'MAT.12.032.0095'),
(96, 32, 'Videomonitoramento', 'MAT.12.032.0096'),
(97, 33, 'Microcomputador', 'MAT.12.033.0097'),
(98, 33, 'Notebook', 'MAT.12.033.0098'),
(99, 33, 'Servidor', 'MAT.12.033.0099'),
(100, 34, 'Impressora 3D', 'MAT.12.034.0100'),
(101, 34, 'Impressora Cartão/Crachá', 'MAT.12.034.0101'),
(102, 34, 'Impressora Jato de Tinta', 'MAT.12.034.0102'),
(103, 34, 'Impressora Laser', 'MAT.12.034.0103'),
(104, 35, 'Firewall', 'MAT.12.035.0104'),
(105, 35, 'Roteador', 'MAT.12.035.0105'),
(106, 35, 'Switch', 'MAT.12.035.0106'),
(107, 36, 'Licença de Software', 'MAT.12.036.0107'),
(108, 37, 'Desenvolvimento de Documentos Técnicos e Projetos Gráficos', 'SER.13.037.0108'),
(109, 38, 'Serviço Áudiovisual', 'SER.13.038.0109'),
(110, 38, 'Serviço de Publicidade', 'SER.13.038.0110'),
(111, 38, 'Serviço Gráfico', 'SER.13.038.0111'),
(112, 39, 'Seminários | Congressos | Palestras | etc', 'SER.13.039.0112'),
(113, 40, 'Cursos | Pós-Graduação | Instrução/Hora-Aula | etc', 'SER.13.040.0113'),
(114, 41, 'Planejamento | Financiamento | Prestação de Contas | Transparência | Risco e Compliance | etc', 'SER.13.041.0114'),
(115, 42, 'Execução de Obra (Construção | Reforma e/ou Ampliação) ou Manutenção Predial', 'SER.13.042.0115'),
(116, 43, 'Desenvolvimento | Instalação e Suporte para Radiocomunicação Crítica | entre outros sistemas', 'SER.13.043.0116'),
(117, 44, 'Atendimento em Segurança e Saúde no Trabalho', 'SER.13.044.0117'),
(118, 44, 'Atendimento Fisioterapeutico', 'SER.13.044.0118'),
(119, 44, 'Atendimento Médico', 'SER.13.044.0119'),
(120, 44, 'Atendimento Odontológico', 'SER.13.044.0120'),
(121, 44, 'Atendimento Psicossocial', 'SER.13.044.0121'),
(122, 45, 'Desenvolvimento de Software', 'SER.13.045.0122'),
(123, 45, 'Licenças Diversas', 'SER.13.045.0123'),
(124, 45, 'Operadora para Transmissão de Dados (Internet)', 'SER.13.045.0124'),
(125, 45, 'Solução Integrada de Gerenciamento de Projetos | Programas e Portfólio', 'SER.13.045.0125');

-- --------------------------------------------------------

--
-- Estrutura para tabela `types`
--

CREATE TABLE `types` (
  `id` int NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `types`
--

INSERT INTO `types` (`id`, `name`) VALUES
(1, 'Material'),
(2, 'Serviço');

-- --------------------------------------------------------

--
-- Índices de tabela `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`);

--
-- Índices de tabela `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type_id`);

--
-- Índices de tabela `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id` (`class_id`);

--
-- Índices de tabela `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Restrições para tabelas `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `class_group` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `groups`
--
ALTER TABLE `groups`
  ADD CONSTRAINT `type` FOREIGN KEY (`group_type`) REFERENCES `types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `materials`
--
ALTER TABLE `materials`
  ADD CONSTRAINT `material_class` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;
