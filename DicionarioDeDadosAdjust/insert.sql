CREATE VIEW public.carros AS
 SELECT veiculos.pkveiculo AS pkcarro,
    veiculos.ukplaca,
    veiculos.fkmodeloveiculo,
    veiculos.fkfuncionario,
    veiculos.aotipocarro,
    veiculos.qtcapacidade,
    veiculos.nuanofabricacao,
    veiculos.dtcadveiculo AS dtcarro
   FROM public.veiculos
  WHERE (veiculos.aocategoria = 'C'::bpchar);
ALTER TABLE public.carros OWNER TO postgres;
CREATE VIEW public.onibus WITH (security_barrier='false') AS
 SELECT veiculos.pkveiculo AS pkonibus,
    veiculos.ukplaca,
    veiculos.fkmodeloveiculo,
    veiculos.txapelido,
    veiculos.qtcapacidade,
    veiculos.nuanofabricacao,
    veiculos.dtcadveiculo AS dtcadonibus
   FROM public.veiculos
  WHERE (veiculos.aocategoria = 'O'::bpchar);
ALTER TABLE public.onibus OWNER TO postgres;
INSERT INTO public.agencias VALUES ('001', '6632X ', 'Nove de Julho', 10, '452', '01478529', '2010-10-05');
INSERT INTO public.agencias VALUES ('001', '6633X ', 'Antonio Mori', 10, '745', '14521521', '2010-10-05');
INSERT INTO public.agencias VALUES ('001', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('002', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('003', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('004', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('007', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('021', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('023', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('025', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('033', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('037', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('041', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('046', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('047', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('070', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('075', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('077', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('082', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('102', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('104', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('107', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('121', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('184', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('208', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('212', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('218', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('224', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('237', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('260', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('263', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('265', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('318', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('320', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('341', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('389', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('422', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('473', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('479', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('505', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('604', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('611', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('612', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('623', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('637', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('643', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('653', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('654', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('655', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('707', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('719', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('721', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('735', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('738', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('741', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('745', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('746', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('748', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('756', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');
INSERT INTO public.agencias VALUES ('M09', '0001X ', 'Matriz', 620, '14564 - Bloco 1', '04452160', '2020-09-15');


--
-- Data for Name: agenciastels; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: aplicacoesdascontas; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: aplicacoesfinanceiras; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.aplicacoesfinanceiras VALUES (5, 'RDB', 'Investimento de 5000 (mínimo) por um período de 30 dias (mínimo).', 3.5, 5.5, '2016-10-18');
INSERT INTO public.aplicacoesfinanceiras VALUES (10, 'Poupança', 'Investimento de 500 (mínimo) com liquidez diária a partir de 30 dias do depósito inicial.', 1, 1.5, '2016-10-18');


--
-- Data for Name: areadeestudocursos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.areadeestudocursos VALUES (20, 4, 30, '2001-05-10');
INSERT INTO public.areadeestudocursos VALUES (15, 3, 35, '2001-05-10');
INSERT INTO public.areadeestudocursos VALUES (5, 1, 15, '2001-06-10');
INSERT INTO public.areadeestudocursos VALUES (10, 3, 20, '2001-05-10');
INSERT INTO public.areadeestudocursos VALUES (12, 1, 35, '2010-10-10');


--
-- Data for Name: areadeestudodisciplinas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.areadeestudodisciplinas VALUES (20, 1, 25, '2011-05-10');
INSERT INTO public.areadeestudodisciplinas VALUES (25, 1, 35, '2005-05-05');
INSERT INTO public.areadeestudodisciplinas VALUES (5, 1, 5, '1980-01-01');
INSERT INTO public.areadeestudodisciplinas VALUES (30, 2, 5, '1980-01-01');
INSERT INTO public.areadeestudodisciplinas VALUES (40, 3, 10, '1980-01-01');
INSERT INTO public.areadeestudodisciplinas VALUES (10, 1, 10, '1980-01-01');
INSERT INTO public.areadeestudodisciplinas VALUES (35, 2, 10, '2010-10-10');
INSERT INTO public.areadeestudodisciplinas VALUES (15, 1, 20, '2004-02-04');


--
-- Data for Name: areadeestudolivros; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.areadeestudolivros VALUES (10, 20, 25, 1, '2010-10-10');
INSERT INTO public.areadeestudolivros VALUES (15, 70, 25, 2, '2010-10-10');
INSERT INTO public.areadeestudolivros VALUES (5, 20, 5, 10, '2010-10-10');


--
-- Data for Name: areadeestudos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.areadeestudos VALUES (25, 'Gestão e Administração', '', '2010-12-16');
INSERT INTO public.areadeestudos VALUES (30, 'Tecnologias da Informação e Comunicação', '', '2010-12-16');
INSERT INTO public.areadeestudos VALUES (35, 'Astronomia', 'agrupa os estudos de fisica astronomica, geoestatistica quantica aplicada', '2010-10-10');
INSERT INTO public.areadeestudos VALUES (5, 'Exatas', 'Agrupa as áreas de matemática, física, quimica e engenharias', '2001-01-01');
INSERT INTO public.areadeestudos VALUES (10, 'Humanas', '', '2001-01-01');
INSERT INTO public.areadeestudos VALUES (15, 'Biomédicas', '', '2001-01-01');
INSERT INTO public.areadeestudos VALUES (20, 'Ciências Ambientais', '', '2001-01-01');


--
-- Data for Name: armazens; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.armazens VALUES (2, 'Sao Sebastiao', '', 470, ' 1492', 10, '            ', '        ', 50000, '1980-01-01');
INSERT INTO public.armazens VALUES (5, 'Dois Irmaos', '', 470, ' 234', 10, '            ', '        ', 15000, '1980-01-01');
INSERT INTO public.armazens VALUES (15, 'Big Warehouse Bahia', 'Galpão Único com pé direito de 15Metros', 240, '456', 55, '123         ', '12313212', 35000, '2010-10-10');
INSERT INTO public.armazens VALUES (3, 'Rio de Janeiro - 01', 'Galpão Único com pé direito de 15Metros - Lojas Americanas', 470, ' 234', 10, '2174857485  ', '12345678', 20000, '1980-01-01');
INSERT INTO public.armazens VALUES (1, 'Americanas V', 'Galpão Único com pé direito de 15Metros - Lojas Americanas', 100, 'Km 30', 10, '1145124512  ', '12345678', 150000, '2015-12-07');


--
-- Data for Name: armazenstels; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: atividades; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.atividades VALUES (25, 'Implementação de programas', 'Programação, testes, implantação e treinamento dos usuários', '2010-10-10');
INSERT INTO public.atividades VALUES (5, 'Estudos de Viabilidade', 'Analisa as condições de exequibilidade de projetos', '2011-06-11');
INSERT INTO public.atividades VALUES (10, 'Levantamentos de Requisitos', 'Determina as características centrais do Sistema', '2011-06-11');
INSERT INTO public.atividades VALUES (15, 'Modelagem do sistema', 'Definição de modelos de dados e processos', '2010-10-10');
INSERT INTO public.atividades VALUES (20, 'Especificação técnica de Dados e processos', 'Definição do Modelo Físico. Determinação dos Modelos de Dados e Processos', '2010-10-10');
INSERT INTO public.atividades VALUES (30, 'Construção dos Bancos de Dados', 'Implantação do SGBD e construção dos BDs.', '2010-10-10');


--
-- Data for Name: atribuicoes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.atribuicoes VALUES (1, 1, 1, 10, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (2, 1, 2, 12, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (3, 1, 3, 8, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (4, 1, 4, 20, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (5, 2, 1, 15, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (6, 2, 2, 10, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (7, 2, 3, 5, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (8, 2, 4, 10, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (9, 3, 5, 0, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (10, 3, 6, 0, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (11, 3, 7, 0, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (12, 3, 8, 0, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (13, 4, 5, 0, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (14, 4, 6, 0, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (15, 4, 7, 0, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (16, 4, 8, 0, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (17, 5, 5, 0, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (18, 5, 6, 0, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (19, 5, 7, 0, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (20, 5, 8, 0, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (21, 6, 9, 0, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (22, 6, 10, 0, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (23, 7, 9, 0, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (24, 7, 10, 0, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (25, 7, 17, 0, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (26, 7, 18, 0, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (27, 7, 19, 0, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (28, 7, 20, 0, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (29, 7, 21, 0, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (30, 7, 22, 0, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (31, 8, 11, 0, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (32, 8, 12, 0, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (33, 9, 11, 0, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (34, 9, 12, 0, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (35, 10, 11, 0, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (36, 11, 13, 0, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (37, 11, 14, 0, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (38, 12, 13, 0, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (39, 12, 14, 0, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (40, 13, 13, 0, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (41, 13, 14, 0, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (42, 14, 13, 0, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (43, 14, 14, 0, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (44, 15, 15, 0, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (45, 15, 16, 0, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (46, 16, 15, 0, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (47, 16, 16, 0, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (48, 17, 15, 0, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (49, 17, 16, 0, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (50, 18, 15, 0, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (51, 18, 16, 0, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (52, 19, 17, 0, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (53, 19, 18, 0, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (54, 20, 17, 0, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (55, 20, 18, 0, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (56, 21, 17, 0, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (57, 22, 19, 0, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (58, 22, 20, 0, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (59, 23, 19, 10, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (60, 23, 20, 10, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (61, 24, 19, 20, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (62, 24, 20, 20, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (63, 25, 19, 10, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (64, 25, 20, 15, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (65, 27, 21, 10, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (66, 27, 22, 20, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (67, 28, 21, 10, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (68, 28, 22, 15, '1980-01-01', NULL);
INSERT INTO public.atribuicoes VALUES (69, 29, 1, 6, '2013-11-25', NULL);
INSERT INTO public.atribuicoes VALUES (70, 29, 2, 6, '2013-11-25', NULL);
INSERT INTO public.atribuicoes VALUES (71, 29, 3, 6, '2013-11-25', NULL);
INSERT INTO public.atribuicoes VALUES (72, 29, 4, 6, '2013-11-25', NULL);
INSERT INTO public.atribuicoes VALUES (73, 29, 5, 6, '2013-11-25', NULL);
INSERT INTO public.atribuicoes VALUES (74, 29, 6, 6, '2013-11-25', NULL);
INSERT INTO public.atribuicoes VALUES (75, 29, 7, 6, '2013-11-25', NULL);
INSERT INTO public.atribuicoes VALUES (76, 29, 8, 6, '2013-11-25', NULL);
INSERT INTO public.atribuicoes VALUES (77, 29, 9, 6, '2013-11-25', NULL);
INSERT INTO public.atribuicoes VALUES (78, 29, 10, 6, '2013-11-25', NULL);
INSERT INTO public.atribuicoes VALUES (79, 29, 11, 6, '2013-11-25', NULL);
INSERT INTO public.atribuicoes VALUES (80, 29, 12, 6, '2013-11-25', NULL);
INSERT INTO public.atribuicoes VALUES (81, 29, 13, 6, '2013-11-25', NULL);
INSERT INTO public.atribuicoes VALUES (82, 29, 14, 6, '2013-11-25', NULL);
INSERT INTO public.atribuicoes VALUES (83, 29, 15, 6, '2013-11-25', NULL);
INSERT INTO public.atribuicoes VALUES (84, 29, 16, 6, '2013-11-25', NULL);
INSERT INTO public.atribuicoes VALUES (85, 29, 17, 6, '2013-11-25', NULL);
INSERT INTO public.atribuicoes VALUES (86, 29, 18, 6, '2013-11-25', NULL);
INSERT INTO public.atribuicoes VALUES (87, 29, 19, 6, '2013-11-25', NULL);
INSERT INTO public.atribuicoes VALUES (88, 29, 20, 6, '2013-11-25', NULL);
INSERT INTO public.atribuicoes VALUES (89, 29, 21, 6, '2013-11-25', NULL);
INSERT INTO public.atribuicoes VALUES (90, 29, 22, 6, '2013-11-25', NULL);


--
-- Data for Name: atuacoes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.atuacoes VALUES (1, 1, 10, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (2, 2, 10, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (3, 3, 10, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (4, 4, 10, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (5, 5, 10, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (6, 6, 10, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (7, 7, 10, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (8, 8, 10, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (9, 9, 10, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (10, 10, 10, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (11, 11, 10, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (12, 12, 10, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (13, 13, 10, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (14, 14, 10, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (15, 15, 10, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (16, 16, 10, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (17, 17, 10, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (18, 18, 10, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (19, 19, 10, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (20, 20, 10, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (21, 21, 10, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (22, 22, 10, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (23, 23, 10, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (24, 24, 10, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (25, 25, 10, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (26, 26, 10, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (27, 27, 10, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (28, 28, 10, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (29, 29, 10, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (30, 30, 10, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (31, 31, 10, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (32, 32, 10, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (33, 33, 10, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (34, 34, 10, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (35, 35, 10, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (36, 36, 10, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (37, 37, 10, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (38, 38, 10, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (39, 39, 10, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (40, 40, 10, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (41, 41, 10, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (42, 42, 10, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (43, 43, 10, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (44, 44, 10, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (45, 45, 10, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (46, 46, 10, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (47, 47, 10, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (48, 48, 10, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (49, 49, 10, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (50, 50, 10, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (51, 51, 10, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (52, 52, 10, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (53, 53, 10, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (54, 54, 10, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (55, 55, 10, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (56, 56, 10, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (57, 8, 20, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (58, 9, 20, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (59, 10, 20, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (60, 11, 20, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (61, 12, 20, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (62, 13, 20, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (63, 14, 20, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (64, 15, 20, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (65, 16, 20, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (66, 17, 20, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (67, 18, 20, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (68, 19, 20, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (69, 20, 20, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (70, 21, 20, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (71, 22, 20, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (72, 23, 20, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (73, 24, 20, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (74, 25, 20, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (75, 26, 20, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (76, 27, 20, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (77, 28, 20, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (78, 29, 20, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (79, 30, 20, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (80, 31, 20, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (81, 32, 20, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (82, 33, 20, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (83, 34, 20, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (84, 35, 20, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (85, 36, 20, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (86, 37, 20, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (87, 38, 20, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (88, 39, 20, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (89, 40, 20, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (90, 41, 20, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (91, 42, 20, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (92, 43, 20, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (93, 44, 20, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (94, 45, 20, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (95, 46, 20, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (96, 47, 20, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (97, 48, 20, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (98, 49, 20, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (99, 50, 20, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (100, 51, 20, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (101, 52, 20, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (102, 53, 20, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (103, 54, 20, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (104, 55, 20, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (105, 56, 20, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (106, 1, 30, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (107, 2, 30, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (108, 3, 30, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (109, 4, 30, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (110, 5, 30, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (111, 6, 30, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (112, 7, 30, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (113, 8, 30, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (114, 9, 30, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (115, 10, 30, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (116, 11, 30, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (117, 19, 30, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (118, 20, 30, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (119, 21, 30, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (120, 22, 30, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (121, 23, 30, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (122, 24, 30, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (123, 25, 30, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (124, 26, 30, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (125, 27, 30, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (126, 28, 30, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (127, 29, 30, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (128, 30, 30, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (129, 31, 30, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (130, 32, 30, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (131, 33, 30, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (132, 34, 30, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (133, 35, 30, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (134, 36, 30, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (135, 37, 30, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (136, 38, 30, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (137, 39, 30, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (138, 40, 30, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (139, 41, 30, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (140, 42, 30, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (141, 43, 30, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (142, 44, 30, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (143, 45, 30, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (144, 46, 30, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (145, 47, 30, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (146, 48, 30, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (147, 49, 30, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (148, 50, 30, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (149, 51, 30, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (150, 35, 40, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (151, 36, 40, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (152, 37, 40, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (153, 38, 40, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (154, 39, 40, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (155, 40, 40, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (156, 41, 40, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (157, 42, 40, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (158, 43, 40, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (159, 44, 40, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (160, 45, 40, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (161, 46, 40, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (162, 47, 40, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (163, 48, 40, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (164, 49, 40, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (165, 50, 40, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (166, 51, 40, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (167, 52, 40, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (168, 53, 40, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (169, 54, 40, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (170, 55, 40, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (171, 56, 40, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (172, 1, 50, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (173, 2, 50, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (174, 3, 50, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (175, 4, 50, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (176, 5, 50, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (177, 6, 50, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (178, 7, 50, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (179, 8, 50, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (180, 9, 50, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (181, 10, 50, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (182, 11, 50, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (183, 12, 50, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (184, 13, 50, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (185, 14, 50, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (186, 15, 50, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (187, 16, 50, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (188, 17, 50, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (189, 18, 50, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (190, 19, 50, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (191, 20, 50, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (192, 21, 50, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (193, 22, 50, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (194, 23, 50, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (195, 24, 50, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (196, 25, 50, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (197, 26, 50, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (198, 27, 50, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (199, 28, 50, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (200, 29, 50, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (201, 30, 50, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (202, 31, 50, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (203, 32, 50, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (204, 33, 50, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (205, 34, 50, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (206, 35, 50, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (207, 36, 50, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (208, 37, 50, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (209, 38, 50, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (210, 39, 50, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (211, 40, 50, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (212, 41, 50, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (213, 42, 50, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (214, 43, 50, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (215, 44, 50, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (216, 45, 50, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (217, 46, 50, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (218, 47, 50, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (219, 48, 50, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (220, 49, 50, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (221, 50, 50, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (222, 51, 50, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (223, 52, 50, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (224, 53, 50, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (225, 54, 50, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (226, 55, 50, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (227, 56, 50, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (228, 9, 70, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (229, 10, 70, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (230, 11, 70, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (231, 12, 70, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (232, 13, 70, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (233, 14, 70, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (234, 15, 70, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (235, 16, 70, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (236, 17, 70, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (237, 18, 70, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (238, 19, 70, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (239, 20, 70, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (240, 21, 70, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (241, 22, 70, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (242, 23, 70, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (243, 24, 70, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (244, 25, 70, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (245, 26, 70, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (246, 27, 70, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (247, 28, 70, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (248, 29, 70, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (249, 30, 70, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (250, 31, 70, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (251, 32, 70, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (252, 33, 70, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (253, 34, 70, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (254, 35, 70, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (255, 36, 70, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (256, 37, 70, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (257, 38, 70, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (258, 39, 70, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (259, 40, 70, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (260, 41, 70, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (261, 42, 70, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (262, 43, 70, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (263, 44, 70, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (264, 45, 70, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (265, 46, 70, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (266, 47, 70, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (267, 48, 70, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (268, 49, 70, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (269, 50, 70, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (270, 51, 70, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (271, 8, 80, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (272, 9, 80, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (273, 10, 80, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (274, 11, 80, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (275, 12, 80, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (276, 13, 80, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (277, 14, 80, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (278, 15, 80, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (279, 16, 80, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (280, 17, 80, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (281, 18, 80, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (282, 19, 80, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (283, 20, 80, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (284, 21, 80, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (285, 22, 80, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (286, 23, 80, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (287, 24, 80, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (288, 25, 80, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (289, 33, 80, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (290, 34, 80, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (291, 35, 80, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (292, 36, 80, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (293, 37, 80, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (294, 38, 80, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (295, 39, 80, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (296, 40, 80, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (297, 41, 80, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (298, 42, 80, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (299, 43, 80, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (300, 44, 80, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (301, 45, 80, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (302, 46, 80, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (303, 47, 80, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (304, 48, 80, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (305, 49, 80, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (306, 50, 80, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (307, 43, 90, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (308, 44, 90, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (309, 45, 90, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (310, 46, 90, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (311, 47, 90, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (312, 48, 90, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (313, 49, 90, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (314, 50, 90, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (315, 51, 90, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (316, 52, 90, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (317, 53, 90, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (318, 54, 90, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (319, 55, 90, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (320, 56, 90, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (321, 1, 100, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (322, 2, 100, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (323, 3, 100, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (324, 4, 100, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (325, 5, 100, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (326, 6, 100, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (327, 7, 100, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (328, 8, 100, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (329, 9, 100, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (330, 10, 100, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (331, 11, 100, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (332, 12, 100, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (333, 13, 100, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (334, 14, 100, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (335, 15, 100, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (336, 16, 100, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (337, 17, 100, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (338, 18, 100, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (339, 19, 100, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (340, 20, 100, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (341, 21, 100, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (342, 22, 100, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (343, 23, 100, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (344, 24, 100, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (345, 25, 100, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (346, 26, 100, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (347, 27, 100, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (348, 28, 100, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (349, 29, 100, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (350, 30, 100, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (351, 31, 100, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (352, 32, 100, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (353, 33, 100, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (354, 34, 100, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (355, 35, 100, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (356, 36, 100, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (357, 37, 100, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (358, 38, 100, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (359, 39, 100, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (360, 40, 100, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (361, 41, 100, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (362, 42, 100, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (363, 43, 100, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (364, 44, 100, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (365, 45, 100, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (366, 46, 100, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (367, 47, 100, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (368, 48, 100, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (369, 49, 100, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (370, 50, 100, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (371, 51, 100, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (372, 52, 100, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (373, 53, 100, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (374, 54, 100, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (375, 55, 100, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (376, 56, 100, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (377, 37, 110, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (378, 38, 110, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (379, 39, 110, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (380, 40, 110, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (381, 41, 110, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (382, 42, 110, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (383, 43, 110, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (384, 44, 110, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (385, 45, 110, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (386, 46, 110, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (387, 47, 110, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (388, 48, 110, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (389, 49, 110, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (390, 50, 110, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (391, 51, 110, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (392, 52, 110, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (393, 53, 110, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (394, 54, 110, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (395, 55, 110, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (396, 56, 110, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (397, 1, 120, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (398, 2, 120, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (399, 3, 120, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (400, 4, 120, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (401, 12, 130, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (402, 13, 130, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (403, 14, 130, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (404, 15, 130, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (405, 16, 130, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (406, 17, 130, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (407, 18, 130, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (408, 19, 130, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (409, 20, 130, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (410, 21, 130, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (411, 22, 130, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (412, 23, 130, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (413, 24, 130, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (414, 25, 130, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (415, 26, 130, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (416, 27, 130, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (417, 28, 130, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (418, 29, 130, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (419, 30, 130, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (420, 31, 130, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (421, 32, 130, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (422, 33, 130, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (423, 34, 130, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (424, 35, 130, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (425, 36, 130, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (426, 37, 130, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (427, 41, 150, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (428, 42, 150, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (429, 43, 150, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (430, 44, 150, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (431, 45, 150, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (432, 46, 150, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (433, 47, 150, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (434, 48, 150, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (435, 49, 150, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (436, 50, 150, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (437, 51, 150, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (438, 52, 150, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (439, 53, 150, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (440, 54, 150, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (441, 55, 150, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (442, 56, 150, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (443, 9, 170, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (444, 10, 170, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (445, 11, 170, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (446, 12, 170, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (447, 13, 170, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (448, 14, 170, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (449, 15, 170, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (450, 16, 170, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (451, 17, 170, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (452, 18, 170, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (453, 19, 170, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (454, 20, 170, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (455, 21, 170, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (456, 22, 170, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (457, 23, 170, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (458, 24, 170, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (459, 25, 170, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (460, 26, 170, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (461, 27, 170, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (462, 28, 170, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (463, 29, 170, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (464, 30, 170, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (465, 31, 170, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (466, 32, 170, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (467, 33, 170, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (468, 34, 170, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (469, 39, 170, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (470, 40, 170, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (471, 41, 170, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (472, 42, 170, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (473, 43, 170, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (474, 44, 170, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (475, 45, 170, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (476, 46, 170, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (477, 47, 170, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (478, 48, 170, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (479, 49, 170, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (480, 51, 170, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (481, 52, 170, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (482, 53, 170, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (483, 54, 170, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (484, 55, 170, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (485, 56, 170, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (486, 1, 190, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (487, 2, 190, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (488, 3, 190, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (489, 4, 190, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (490, 5, 190, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (491, 6, 190, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (492, 7, 190, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (493, 8, 190, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (494, 9, 190, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (495, 10, 190, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (496, 11, 190, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (497, 12, 190, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (498, 13, 190, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (499, 14, 190, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (500, 29, 190, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (501, 30, 190, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (502, 31, 190, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (503, 32, 190, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (504, 33, 190, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (505, 34, 190, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (506, 35, 190, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (507, 36, 190, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (508, 37, 190, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (509, 38, 190, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (510, 39, 190, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (511, 40, 190, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (512, 41, 190, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (513, 42, 190, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (514, 43, 190, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (515, 44, 190, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (516, 45, 190, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (517, 46, 190, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (518, 47, 190, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (519, 48, 190, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (520, 49, 190, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (521, 50, 190, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (522, 51, 190, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (523, 52, 190, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (524, 9, 200, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (525, 10, 200, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (526, 11, 200, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (527, 12, 200, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (528, 13, 200, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (529, 14, 200, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (530, 15, 200, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (531, 16, 200, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (532, 17, 200, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (533, 18, 200, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (534, 19, 200, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (535, 20, 200, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (536, 21, 200, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (537, 22, 200, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (538, 23, 200, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (539, 24, 200, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (540, 25, 200, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (541, 26, 200, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (542, 27, 200, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (543, 28, 200, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (544, 29, 200, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (545, 30, 200, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (546, 31, 200, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (547, 32, 200, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (548, 33, 200, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (549, 38, 200, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (550, 39, 200, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (551, 40, 200, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (552, 41, 200, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (553, 42, 200, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (554, 43, 200, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (555, 44, 200, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (556, 45, 200, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (557, 46, 200, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (558, 47, 200, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (559, 48, 200, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (560, 49, 200, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (561, 50, 200, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (562, 51, 200, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (563, 52, 200, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (564, 38, 210, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (565, 39, 210, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (566, 40, 210, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (567, 41, 210, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (568, 42, 210, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (569, 43, 210, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (570, 44, 210, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (571, 45, 210, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (572, 46, 210, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (573, 47, 210, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (574, 48, 210, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (575, 49, 210, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (576, 50, 210, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (577, 51, 210, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (578, 52, 210, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (579, 53, 210, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (580, 54, 210, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (581, 55, 210, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (582, 56, 210, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (583, 1, 220, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (584, 9, 220, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (585, 10, 220, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (586, 11, 220, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (587, 12, 220, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (588, 13, 220, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (589, 14, 220, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (590, 15, 220, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (591, 16, 220, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (592, 17, 220, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (593, 18, 220, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (594, 19, 220, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (595, 20, 220, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (596, 21, 220, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (597, 37, 220, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (598, 38, 220, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (599, 39, 220, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (600, 40, 220, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (601, 41, 220, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (602, 42, 220, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (603, 43, 220, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (604, 9, 230, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (605, 10, 230, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (606, 11, 230, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (607, 12, 230, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (608, 13, 230, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (609, 14, 230, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (610, 15, 230, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (611, 16, 230, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (612, 17, 230, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (613, 18, 230, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (614, 19, 230, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (615, 20, 230, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (616, 21, 230, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (617, 22, 230, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (618, 23, 230, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (619, 24, 230, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (620, 45, 230, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (621, 46, 230, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (622, 47, 230, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (623, 48, 230, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (624, 49, 230, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (625, 50, 230, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (626, 51, 230, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (627, 52, 230, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (628, 53, 230, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (629, 54, 230, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (630, 55, 230, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (631, 56, 230, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (632, 1, 240, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (633, 2, 240, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (634, 3, 240, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (635, 4, 240, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (636, 24, 240, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (637, 25, 240, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (638, 26, 240, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (639, 27, 240, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (640, 28, 240, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (641, 29, 240, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (642, 30, 240, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (643, 31, 240, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (644, 32, 240, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (645, 33, 240, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (646, 34, 240, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (647, 35, 240, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (648, 36, 240, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (649, 37, 240, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (650, 1, 250, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (651, 2, 250, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (652, 3, 250, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (653, 4, 250, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (654, 5, 250, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (655, 6, 250, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (656, 7, 250, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (657, 8, 250, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (658, 9, 250, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (659, 10, 250, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (660, 11, 250, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (661, 12, 250, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (662, 13, 250, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (663, 14, 250, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (664, 15, 250, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (665, 37, 250, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (666, 38, 250, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (667, 39, 250, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (668, 40, 250, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (669, 41, 250, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (670, 42, 250, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (671, 43, 250, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (672, 44, 250, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (673, 45, 250, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (674, 46, 250, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (675, 47, 250, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (676, 48, 250, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (677, 49, 250, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (678, 50, 250, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (679, 51, 250, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (680, 52, 250, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (681, 53, 250, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (682, 54, 250, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (683, 55, 250, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (684, 56, 250, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (685, 1, 260, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (686, 2, 260, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (687, 24, 260, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (688, 25, 260, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (689, 26, 260, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (690, 27, 260, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (691, 28, 260, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (692, 29, 260, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (693, 30, 260, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (694, 31, 260, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (695, 32, 260, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (696, 33, 260, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (697, 34, 260, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (698, 35, 260, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (699, 36, 260, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (700, 37, 260, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (701, 38, 260, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (702, 39, 260, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (703, 40, 260, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (704, 41, 260, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (705, 42, 260, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (706, 43, 260, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (707, 44, 260, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (708, 11, 270, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (709, 12, 270, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (710, 13, 270, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (711, 14, 270, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (712, 15, 270, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (713, 16, 270, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (714, 17, 270, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (715, 18, 270, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (716, 19, 270, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (717, 20, 270, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (718, 21, 270, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (719, 22, 270, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (720, 23, 270, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (721, 24, 270, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (722, 25, 270, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (723, 26, 270, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (724, 27, 270, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (725, 28, 270, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (726, 52, 270, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (727, 53, 270, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (728, 54, 270, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (729, 55, 270, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (730, 56, 270, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (731, 1, 280, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (732, 2, 280, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (733, 3, 280, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (734, 4, 280, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (735, 5, 280, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (736, 6, 280, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (737, 7, 280, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (738, 34, 280, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (739, 35, 280, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (740, 36, 280, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (741, 37, 280, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (742, 38, 280, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (743, 39, 280, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (744, 40, 280, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (745, 41, 280, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (746, 42, 280, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (747, 12, 290, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (748, 13, 290, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (749, 14, 290, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (750, 15, 290, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (751, 16, 290, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (752, 17, 290, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (753, 18, 290, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (754, 19, 290, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (755, 20, 290, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (756, 21, 290, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (757, 22, 290, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (758, 23, 290, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (759, 24, 290, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (760, 25, 290, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (761, 26, 290, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (762, 27, 290, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (763, 28, 290, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (764, 29, 290, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (765, 30, 290, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (766, 31, 290, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (767, 32, 290, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (768, 33, 290, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (769, 1, 300, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (770, 2, 300, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (771, 3, 300, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (772, 4, 300, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (773, 5, 300, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (774, 6, 300, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (775, 7, 300, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (776, 8, 300, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (777, 9, 300, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (778, 10, 300, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (779, 11, 300, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (780, 12, 300, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (781, 13, 300, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (782, 14, 300, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (783, 15, 300, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (784, 16, 300, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (785, 17, 300, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (786, 18, 300, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (787, 19, 300, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (788, 20, 300, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (789, 21, 300, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (790, 22, 300, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (791, 23, 300, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (792, 24, 300, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (793, 25, 300, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (794, 26, 300, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (795, 27, 300, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (796, 28, 300, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (797, 29, 300, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (798, 30, 300, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (799, 31, 300, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (800, 32, 300, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (801, 33, 300, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (802, 34, 300, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (803, 35, 300, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (804, 36, 300, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (805, 37, 300, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (806, 38, 300, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (807, 39, 300, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (808, 40, 300, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (809, 41, 300, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (810, 42, 300, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (811, 43, 300, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (812, 44, 300, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (813, 45, 300, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (814, 46, 300, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (815, 47, 300, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (816, 48, 300, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (817, 49, 300, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (818, 50, 300, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (819, 51, 300, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (820, 52, 300, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (821, 53, 300, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (822, 54, 300, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (823, 55, 300, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (824, 56, 300, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (825, 1, 310, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (826, 2, 310, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (827, 19, 310, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (828, 20, 310, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (829, 21, 310, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (830, 22, 310, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (831, 23, 310, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (832, 24, 310, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (833, 25, 310, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (834, 26, 310, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (835, 27, 310, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (836, 28, 310, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (837, 29, 310, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (838, 30, 310, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (839, 31, 310, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (840, 32, 310, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (841, 33, 310, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (842, 34, 310, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (843, 35, 310, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (844, 36, 310, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (845, 37, 310, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (846, 38, 310, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (847, 54, 310, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (848, 55, 310, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (849, 56, 310, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (850, 1, 320, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (851, 2, 320, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (852, 3, 320, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (853, 4, 320, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (854, 5, 320, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (855, 6, 320, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (856, 7, 320, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (857, 8, 320, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (858, 9, 320, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (859, 10, 320, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (860, 11, 320, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (861, 12, 320, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (862, 13, 320, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (863, 14, 320, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (864, 15, 320, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (865, 16, 320, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (866, 35, 320, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (867, 36, 320, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (868, 37, 320, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (869, 38, 320, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (870, 39, 320, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (871, 40, 320, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (872, 41, 320, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (873, 42, 320, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (874, 43, 320, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (875, 44, 320, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (876, 45, 320, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (877, 46, 320, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (878, 47, 320, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (879, 48, 320, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (880, 49, 320, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (881, 50, 320, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (882, 51, 320, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (883, 52, 320, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (884, 53, 320, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (885, 54, 320, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (886, 55, 320, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (887, 56, 320, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (888, 1, 330, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (889, 2, 330, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (890, 3, 330, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (891, 4, 330, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (892, 22, 330, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (893, 23, 330, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (894, 24, 330, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (895, 25, 330, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (896, 26, 330, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (897, 27, 330, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (898, 28, 330, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (899, 29, 330, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (900, 30, 330, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (901, 31, 330, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (902, 32, 330, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (903, 33, 330, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (904, 34, 330, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (905, 35, 330, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (906, 36, 330, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (907, 37, 330, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (908, 38, 330, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (909, 39, 330, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (910, 40, 330, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (911, 8, 340, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (912, 9, 340, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (913, 10, 340, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (914, 11, 340, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (915, 12, 340, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (916, 13, 340, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (917, 14, 340, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (918, 15, 340, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (919, 16, 340, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (920, 17, 340, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (921, 18, 340, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (922, 19, 340, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (923, 20, 340, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (924, 21, 340, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (925, 22, 340, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (926, 23, 340, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (927, 24, 340, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (928, 25, 340, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (929, 26, 340, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (930, 27, 340, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (931, 28, 340, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (932, 29, 340, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (933, 30, 340, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (934, 31, 340, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (935, 32, 340, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (936, 33, 340, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (937, 34, 340, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (938, 35, 340, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (939, 36, 340, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (940, 37, 340, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (941, 38, 340, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (942, 39, 340, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (943, 40, 340, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (944, 41, 340, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (945, 42, 340, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (946, 43, 340, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (947, 44, 340, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (948, 45, 340, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (949, 46, 340, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (950, 47, 340, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (951, 48, 340, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (952, 49, 340, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (953, 50, 340, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (954, 51, 340, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (955, 52, 340, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (956, 53, 340, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (957, 54, 340, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (958, 55, 340, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (959, 56, 340, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (960, 1, 350, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (961, 2, 350, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (962, 22, 350, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (963, 23, 350, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (964, 24, 350, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (965, 25, 350, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (966, 26, 350, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (967, 27, 350, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (968, 28, 350, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (969, 29, 350, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (970, 30, 350, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (971, 31, 350, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (972, 32, 350, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (973, 33, 350, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (974, 34, 350, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (975, 35, 350, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (976, 36, 350, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (977, 37, 350, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (978, 38, 350, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (979, 39, 350, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (980, 40, 350, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (981, 41, 350, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (982, 42, 350, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (983, 43, 350, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (984, 44, 350, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (985, 45, 350, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (986, 46, 350, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (987, 47, 350, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (988, 48, 350, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (989, 49, 350, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (990, 50, 350, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (991, 15, 360, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (992, 16, 360, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (993, 17, 360, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (994, 18, 360, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (995, 19, 360, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (996, 20, 360, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (997, 21, 360, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (998, 22, 360, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (999, 23, 360, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1000, 24, 360, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1001, 25, 360, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1002, 26, 360, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1003, 27, 360, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1004, 28, 360, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1005, 29, 360, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1006, 30, 360, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1007, 31, 360, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1008, 32, 360, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1009, 33, 360, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1010, 34, 360, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1011, 35, 360, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1012, 36, 360, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1013, 55, 360, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1014, 56, 360, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1015, 1, 370, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1016, 2, 370, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1017, 3, 370, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1018, 4, 370, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1019, 5, 370, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1020, 6, 370, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1021, 7, 370, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1022, 8, 370, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1023, 9, 370, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1024, 10, 370, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1025, 11, 370, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1026, 12, 370, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1027, 13, 370, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1028, 14, 370, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1029, 15, 370, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1030, 16, 370, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1031, 41, 370, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1032, 42, 370, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1033, 43, 370, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1034, 44, 370, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1035, 45, 370, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1036, 46, 370, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1037, 47, 370, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1038, 48, 370, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1039, 49, 370, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1040, 50, 370, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1041, 51, 370, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1042, 52, 370, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1043, 53, 370, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1044, 54, 370, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1045, 55, 370, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1046, 56, 370, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1047, 1, 380, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1048, 2, 380, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1049, 3, 380, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1050, 4, 380, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1051, 5, 380, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1052, 6, 380, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1053, 7, 380, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1054, 8, 380, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1055, 9, 380, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1056, 10, 380, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1057, 11, 380, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1058, 12, 380, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1059, 13, 380, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1060, 34, 380, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1061, 35, 380, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1062, 36, 380, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1063, 37, 380, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1064, 38, 380, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1065, 39, 380, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1066, 40, 380, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1067, 41, 380, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1068, 42, 380, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1069, 43, 380, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1070, 44, 380, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1071, 45, 380, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1072, 46, 380, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1073, 47, 380, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1074, 48, 380, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1075, 49, 380, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1076, 50, 380, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1077, 51, 380, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1078, 52, 380, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1079, 53, 380, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1080, 54, 380, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1081, 55, 380, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1082, 56, 380, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1083, 1, 390, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1084, 2, 390, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1085, 3, 390, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1086, 4, 390, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1087, 5, 390, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1088, 6, 390, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1089, 7, 390, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1090, 8, 390, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1091, 9, 390, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1092, 10, 390, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1093, 11, 390, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1094, 12, 390, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1095, 13, 390, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1096, 14, 390, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1097, 15, 390, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1098, 16, 390, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1099, 17, 390, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1100, 18, 390, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1101, 19, 390, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1102, 20, 390, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1103, 21, 390, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1104, 22, 390, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1105, 23, 390, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1106, 24, 390, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1107, 25, 390, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1108, 26, 390, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1109, 27, 390, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1110, 28, 390, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1111, 29, 390, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1112, 30, 390, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1113, 31, 390, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1114, 32, 390, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1115, 33, 390, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1116, 34, 390, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1117, 35, 390, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1118, 36, 390, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1119, 37, 390, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1120, 38, 390, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1121, 39, 390, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1122, 40, 390, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1123, 41, 390, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1124, 42, 390, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1125, 43, 390, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1126, 44, 390, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1127, 45, 390, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1128, 46, 390, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1129, 47, 390, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1130, 48, 390, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1131, 49, 390, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1132, 50, 390, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1133, 51, 390, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1134, 52, 390, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1135, 53, 390, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1136, 54, 390, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1137, 55, 390, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1138, 56, 390, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1139, 17, 400, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1140, 18, 400, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1141, 19, 400, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1142, 20, 400, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1143, 21, 400, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1144, 22, 400, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1145, 23, 400, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1146, 24, 400, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1147, 25, 400, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1148, 26, 400, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1149, 27, 400, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1150, 28, 400, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1151, 29, 400, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1152, 30, 400, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1153, 53, 400, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1154, 54, 400, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1155, 55, 400, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1156, 56, 400, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1157, 1, 410, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1158, 2, 410, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1159, 3, 410, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1160, 4, 410, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1161, 5, 410, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1162, 6, 410, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1163, 7, 410, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1164, 8, 410, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1165, 9, 410, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1166, 10, 410, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1167, 11, 410, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1168, 12, 410, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1169, 13, 410, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1170, 14, 410, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1171, 15, 410, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1172, 16, 410, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1173, 17, 410, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1174, 18, 410, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1175, 19, 410, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1176, 42, 410, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1177, 43, 410, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1178, 44, 410, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1179, 45, 410, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1180, 46, 410, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1181, 47, 410, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1182, 48, 410, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1183, 49, 410, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1184, 50, 410, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1185, 51, 410, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1186, 52, 410, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1187, 53, 410, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1188, 54, 410, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1189, 55, 410, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1190, 56, 410, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1191, 1, 420, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1192, 2, 420, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1193, 3, 420, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1194, 4, 420, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1195, 5, 420, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1196, 6, 420, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1197, 7, 420, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1198, 8, 420, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1199, 9, 420, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1200, 10, 420, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1201, 11, 420, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1202, 33, 420, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1203, 34, 420, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1204, 35, 420, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1205, 36, 420, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1206, 37, 420, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1207, 38, 420, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1208, 39, 420, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1209, 40, 420, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1210, 41, 420, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1211, 42, 420, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1212, 43, 420, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1213, 44, 420, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1214, 45, 420, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1215, 46, 420, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1216, 47, 420, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1217, 48, 420, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1218, 49, 420, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1219, 50, 420, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1220, 51, 420, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1221, 52, 420, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1222, 53, 420, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1223, 54, 420, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1224, 15, 430, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1225, 16, 430, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1226, 17, 430, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1227, 18, 430, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1228, 19, 430, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1229, 20, 430, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1230, 21, 430, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1231, 22, 430, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1232, 23, 430, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1233, 24, 430, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1234, 25, 430, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1235, 26, 430, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1236, 27, 430, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1237, 28, 430, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1238, 29, 430, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1239, 30, 430, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1240, 31, 430, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1241, 32, 430, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1242, 33, 430, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1243, 34, 430, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1244, 35, 430, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1245, 36, 430, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1246, 37, 430, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1247, 38, 430, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1248, 39, 430, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1249, 40, 430, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1250, 41, 430, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1251, 42, 430, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1252, 43, 430, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1253, 44, 430, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1254, 45, 430, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1255, 46, 430, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1256, 47, 430, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1257, 48, 430, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1258, 49, 430, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1259, 50, 430, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1260, 51, 430, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1261, 52, 430, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1262, 53, 430, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1263, 54, 430, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1264, 55, 430, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1265, 56, 430, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1266, 1, 440, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1267, 2, 440, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1268, 3, 440, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1269, 4, 440, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1270, 5, 440, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1271, 6, 440, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1272, 7, 440, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1273, 8, 440, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1274, 9, 440, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1275, 10, 440, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1276, 11, 440, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1277, 12, 440, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1278, 13, 440, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1279, 14, 440, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1280, 15, 440, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1281, 16, 440, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1282, 17, 440, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1283, 18, 440, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1284, 19, 440, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1285, 20, 440, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1286, 21, 440, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1287, 22, 440, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1288, 23, 440, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1289, 24, 440, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1290, 25, 440, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1291, 26, 440, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1292, 27, 440, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1293, 28, 440, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1294, 29, 440, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1295, 30, 440, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1296, 31, 440, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1297, 32, 440, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1298, 33, 440, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1299, 34, 440, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1300, 35, 440, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1301, 36, 440, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1302, 37, 440, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1303, 38, 440, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1304, 39, 440, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1305, 40, 440, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1306, 41, 440, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1307, 42, 440, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1308, 43, 440, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1309, 44, 440, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1310, 45, 440, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1311, 46, 440, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1312, 47, 440, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1313, 48, 440, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1314, 49, 440, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1315, 50, 440, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1316, 51, 440, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1317, 52, 440, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1318, 53, 440, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1319, 54, 440, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1320, 55, 440, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1321, 56, 440, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1322, 49, 460, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1323, 50, 460, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1324, 51, 460, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1325, 52, 460, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1326, 53, 460, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1327, 54, 460, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1328, 55, 460, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1329, 56, 460, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1330, 1, 470, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1331, 2, 470, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1332, 3, 470, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1333, 4, 470, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1334, 5, 470, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1335, 6, 470, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1336, 7, 470, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1337, 8, 470, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1338, 9, 470, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1339, 10, 470, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1340, 11, 470, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1341, 12, 470, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1342, 13, 470, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1343, 14, 470, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1344, 15, 470, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1345, 16, 470, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1346, 17, 470, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1347, 18, 470, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1348, 19, 470, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1349, 20, 470, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1350, 21, 470, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1351, 22, 470, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1352, 23, 470, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1353, 24, 470, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1354, 25, 470, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1355, 26, 470, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1356, 27, 470, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1357, 28, 470, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1358, 29, 470, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1359, 30, 470, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1360, 31, 470, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1361, 32, 470, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1362, 33, 470, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1363, 34, 470, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1364, 35, 470, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1365, 36, 470, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1366, 37, 470, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1367, 38, 470, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1368, 39, 470, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1369, 40, 470, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1370, 41, 470, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1371, 42, 470, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1372, 43, 470, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1373, 44, 470, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1374, 45, 470, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1375, 46, 470, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1376, 47, 470, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1377, 48, 470, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1378, 49, 470, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1379, 50, 470, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1380, 51, 470, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1381, 52, 470, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1382, 53, 470, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1383, 54, 470, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1384, 55, 470, '2017-10-05', '2017-10-30', 100, '2017-11-05');
INSERT INTO public.atuacoes VALUES (1385, 56, 470, '2017-10-05', '2017-10-30', 100, '2017-11-05');


--
-- Data for Name: autores; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.autores VALUES (10, 'João Maurício Hypólito                                                                    ', 600, ' 985', '12345678', '1980-01-01', '2013-03-20');
INSERT INTO public.autores VALUES (20, 'Liev Tolstoi                                                                              ', 460, ' 1254', '15452145', '1980-01-01', '2010-10-10');
INSERT INTO public.autores VALUES (40, 'José do Patrocínio                                                                        ', 20, '45', '19906160', '1984-05-20', '2010-10-10');
INSERT INTO public.autores VALUES (50, 'Chico Buarque                                                                             ', 20, '45', '04512412', '1951-05-20', '1995-02-20');
INSERT INTO public.autores VALUES (70, 'César Camargo Mariano                                                                     ', 40, '15', '41524152', '1955-08-09', '1995-05-05');
INSERT INTO public.autores VALUES (80, 'Vinicius de Morais                                                                        ', 490, '2324', '04512451', '1935-05-10', '1985-10-10');
INSERT INTO public.autores VALUES (130, 'Cecilia Meireles da silva                                                                 ', 590, ' Km 289', '02342345', '1980-01-01', '2009-10-10');


--
-- Data for Name: autorestels; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.autorestels VALUES (5, 10, 5, '1433522653     ', '2016-10-18');
INSERT INTO public.autorestels VALUES (10, 10, 10, '14985641452    ', '2016-10-18');


--
-- Data for Name: autorias; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.autorias VALUES (5, 10, 10, '2011-10-10');
INSERT INTO public.autorias VALUES (10, 10, 20, '2010-10-10');


--
-- Data for Name: bairros; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.bairros VALUES (1, 'Centro', 10, '2014-03-29');
INSERT INTO public.bairros VALUES (2, 'Centro', 5, '2014-03-29');
INSERT INTO public.bairros VALUES (3, 'Centro', 20, '2014-03-29');
INSERT INTO public.bairros VALUES (4, 'Bela Vista', 5, '2014-03-29');
INSERT INTO public.bairros VALUES (5, 'Bexiga', 5, '2014-03-29');
INSERT INTO public.bairros VALUES (6, 'Liberdade', 5, '2014-03-29');
INSERT INTO public.bairros VALUES (7, 'Vila Musa', 35, '2014-03-29');
INSERT INTO public.bairros VALUES (8, 'Vila Matilde', 5, '2014-03-29');
INSERT INTO public.bairros VALUES (9, 'Vila Esperança', 5, '2014-03-29');


--
-- Data for Name: bairroslogradouros; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: bancos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.bancos VALUES ('001', 'Banco do Brasil', '1940-05-02', 'F', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('002', 'Banco Central do Brasil', '1940-05-02', 'F', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('003', 'Banco da Amazônia', '1940-05-02', 'F', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('004', 'Banco do Nordeste do Brasil', '1940-05-02', 'F', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('007', 'Banco Nacional de Desenvolvimento Econômico e Social', '1940-05-02', 'F', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('021', 'Banco do Estado do Espírito Santo', '1940-05-02', 'E', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('023', 'Banco de Desenvolvimento de Minas Gerais', '1940-05-02', 'E', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('025', 'Banco Alfa', '1940-05-02', 'P', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('033', 'Banco Santander', '1940-05-02', 'P', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('037', 'Banco do Estado do Pará', '1940-05-02', 'E', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('041', 'Banco do Estado do Rio Grande do Sul', '1940-05-02', 'E', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('046', 'Banco Regional de Desenvolvimento do Extremo Sul', '1940-05-02', 'I', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('047', 'Banco do Estado de Sergipe', '1940-05-02', 'E', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('070', 'Banco de Brasília', '1940-05-02', 'E', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('075', 'Banco ABN Amro S.A.', '1940-05-02', 'P', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('077', 'Banco Inter', '1940-05-02', 'P', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('082', 'Banco Topázio', '1940-05-02', 'P', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('102', 'XP Investimentos Corretora de Câmbio Títulos e Valores Mobiliários S.A', '1940-05-02', 'P', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('104', 'Caixa Econômica Federal', '1940-05-02', 'F', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('107', 'Banco BBM', '1940-05-02', 'P', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('121', 'Agibank', '1940-05-02', 'P', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('184', 'Banco Itaú BBA', '1940-05-02', 'P', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('208', 'Banco BTG Pactual', '1940-05-02', 'P', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('212', 'Banco Original', '1940-05-02', 'P', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('218', 'Banco Bonsucesso', '1940-05-02', 'P', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('224', 'Banco Fibra', '1940-05-02', 'P', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('237', 'Bradesco', '1940-05-02', 'P', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('260', 'Nu Pagamentos S.A', '1940-05-02', 'P', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('263', 'Banco Cacique', '1940-05-02', 'P', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('265', 'Banco Fator', '1940-05-02', 'P', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('318', 'Banco BMG', '1940-05-02', 'P', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('320', 'Banco Industrial e Comercial', '1940-05-02', 'P', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('341', 'Itaú Unibanco', '1940-05-02', 'P', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('389', 'Banco Mercantil do Brasil', '1940-05-02', 'P', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('422', 'Banco Safra', '1940-05-02', 'P', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('473', 'Banco Caixa Geral', '1940-05-02', 'P', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('479', 'Banco ItaúBank', '1940-05-02', 'P', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('505', 'Banco Credit Suisse', '1940-05-02', 'P', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('604', 'Banco Industrial do Brasil', '1940-05-02', 'P', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('611', 'Banco Paulista', '1940-05-02', 'P', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('612', 'Banco Guanabara', '1940-05-02', 'P', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('623', 'Banco Pan', '1940-05-02', 'P', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('637', 'Banco Sofisa', '1940-05-02', 'P', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('643', 'Banco Pine', '1940-05-02', 'P', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('653', 'Banco Indusval', '1940-05-02', 'P', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('654', 'Banco Renner', '1940-05-02', 'P', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('655', 'Banco Votorantim', '1940-05-02', 'P', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('707', 'Góis Monteiro & Co', '1940-05-02', 'P', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('719', 'Banco Banif', '1940-05-02', 'P', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('721', 'Banco Credibel', '1940-05-02', 'P', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('735', 'Banco Neon', '1940-05-02', 'P', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('738', 'Banco Morada', '1940-05-02', 'P', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('741', 'Banco Ribeirão Preto', '1940-05-02', 'P', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('745', 'Banco Citibank', '1940-05-02', 'P', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('746', 'Banco Modal', '1940-05-02', 'P', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('748', 'Banco Cooperativo Sicredi - BANSICREDI', '1940-05-02', 'C', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('756', 'Banco Cooperativo do Brasil - BANCOOB', '1940-05-02', 'C', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');
INSERT INTO public.bancos VALUES ('M09', 'Banco Itaucred Financiamentos', '1940-05-02', 'P', 10, '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-02');


--
-- Data for Name: bibliografias; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.bibliografias VALUES (5, 1, 50, 'B', '1980-01-01', '2016-08-01');
INSERT INTO public.bibliografias VALUES (10, 4, 40, 'C', '2011-06-02', '2016-08-01');
INSERT INTO public.bibliografias VALUES (15, 11, 20, 'B', '2011-10-26', '2016-04-05');
INSERT INTO public.bibliografias VALUES (20, 11, 30, 'B', '2011-05-20', '2011-06-10');
INSERT INTO public.bibliografias VALUES (25, 11, 70, 'B', '2011-10-26', '2011-10-26');
INSERT INTO public.bibliografias VALUES (30, 11, 90, 'C', '2010-10-10', '2010-10-10');
INSERT INTO public.bibliografias VALUES (35, 12, 60, 'C', '2011-10-26', '2016-05-02');
INSERT INTO public.bibliografias VALUES (40, 13, 20, 'B', '2015-10-23', '2015-10-23');
INSERT INTO public.bibliografias VALUES (45, 13, 40, 'C', '2015-10-23', '2015-10-23');
INSERT INTO public.bibliografias VALUES (50, 14, 60, 'B', '2010-10-10', '2010-10-10');


--
-- Data for Name: capacitacoes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.capacitacoes VALUES (5, 1, 10, '2016-10-01', NULL, '20016-10-01', '2016-10-18');
INSERT INTO public.capacitacoes VALUES (10, 3, 20, '2016-10-01', NULL, '2016-10-10', '2016-10-18');


--
-- Data for Name: cidades; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.cidades VALUES (5, 'Sao Paulo', 'SP', 'aeroporto, rodovia, ferrovia e hidrovia', 12000000, 780, '1980-10-10', '2019-01-21');
INSERT INTO public.cidades VALUES (10, 'Osasco', 'SP', 'rodovia e ferrovia', 1000000, 0, '1980-10-10', '2019-01-21');
INSERT INTO public.cidades VALUES (15, 'Barueri', 'SP', 'rodovia e ferrovia', 1000000, 0, '1980-10-10', '2019-01-21');
INSERT INTO public.cidades VALUES (20, 'Sao Bernardo', 'SP', 'rodovia e ferrovia', 800000, 0, '1980-10-10', '2019-01-21');
INSERT INTO public.cidades VALUES (25, 'Sao Caetano', 'SP', 'rodovia e ferrovia', 750000, 0, '1980-10-10', '2019-01-21');
INSERT INTO public.cidades VALUES (30, 'Diadema', 'SP', 'rodovia e ferrovia', 900000, 0, '1980-10-10', '2019-01-21');
INSERT INTO public.cidades VALUES (35, 'Guarulhos', 'SP', 'aeroporto, rodovia e ferrovia', 2200000, 0, '1980-10-10', '2019-01-21');
INSERT INTO public.cidades VALUES (40, 'Ourinhos', 'SP', 'rodovia e ferrovia', 105000, 280, '2008-10-10', '1918-12-13');


--
-- Data for Name: clientes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.clientes VALUES (5, 'Mecânica Marreco', 'Vendas e Trocas de Moveis Dragão Imperial S/C Ltda.', 290, '8560', '04514512', 20000, 'B', '2015-11-05');
INSERT INTO public.clientes VALUES (10, 'Tratoria do Sargento', 'Ristoranti Il Tratoria do Sargento', 600, ' 985', '        ', 25000, 'B', '2007-02-02');
INSERT INTO public.clientes VALUES (25, 'Tratoria do Pirata', 'Ristoranti tre fratelli S.A.', 470, ' 1492', '12345678', 30000, 'A', '2007-01-20');
INSERT INTO public.clientes VALUES (30, 'Mc Donalds', 'Rest Com S/A ', 610, ' 6500', '        ', 100000, 'B', '2008-01-20');
INSERT INTO public.clientes VALUES (35, 'La Traviatta Ripante', 'Rest Com S/A ', 380, ' 125 - 15And Ap 156', '        ', 100000, 'B', '2008-01-20');
INSERT INTO public.clientes VALUES (40, 'Bistro Ratatui', 'sdf sdgf', 520, ' 1245', '        ', 3456, 'A', '2011-10-22');
INSERT INTO public.clientes VALUES (50, 'Restaurante Latitude Zero', 'Restaurante e Lanches Latitude Zero S/C Ltda.', 260, '8560', '04514512', 5000, 'A', '2015-10-28');
INSERT INTO public.clientes VALUES (20, 'Tratoria do General', 'Restaurante da Tratoria do General S/C Ltda.', 310, ' 1254', '12345678', 12000, 'A', '2011-06-01');
INSERT INTO public.clientes VALUES (15, 'Restaurante Bom Vivan', 'Restaurante "O Bom Vivan" S/C Ltda.', 550, ' 567', '12345678', 7000, 'A', '2009-12-10');
INSERT INTO public.clientes VALUES (65, 'Mecânica Marreco', 'Cooperativa de mecânicos Marreco e Associados S/C Ltda.', 20, '451', '19845745', 10000, 'A', '2015-11-05');
INSERT INTO public.clientes VALUES (70, 'Tarecapis', 'Mecânica de Automóveis Tarecapis S/C Ltda.', 300, '4500', '04512142', 6000, 'A', '2016-10-10');
INSERT INTO public.clientes VALUES (75, 'Sterling Software', 'Sterling Software S/C Ltda.', 180, '2456', '04156145', 25000, 'A', '2016-11-01');
INSERT INTO public.clientes VALUES (80, 'Vingadores', 'Associação dos vingadores de vovós desamparadas S/C Ltda.', 290, '1234', '23523453', 2000, 'A', '2016-11-10');
INSERT INTO public.clientes VALUES (55, 'Autoposto São Luiz', 'Companhia de Abastecimento Autoposto São Luiz S/C Ltda.', 350, '4512', '45781245', 20000, 'A', '2015-10-28');
INSERT INTO public.clientes VALUES (85, 'EdUEL', 'Editora da Universidade Estadual de Londrina S/C Ltda.', 490, '2650', '45121452', 25000, 'A', '2017-03-06');


--
-- Data for Name: clientestels; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.clientestels VALUES (1, 25, 5, '1232323434     ', NULL, NULL);
INSERT INTO public.clientestels VALUES (6, 25, 5, '114528562      ', NULL, NULL);
INSERT INTO public.clientestels VALUES (2, 25, 15, '1141524152     ', NULL, NULL);
INSERT INTO public.clientestels VALUES (3, 25, 15, '1144141412     ', NULL, NULL);
INSERT INTO public.clientestels VALUES (4, 25, 15, '114528562      ', NULL, NULL);
INSERT INTO public.clientestels VALUES (5, 40, 15, '114528562      ', NULL, NULL);


--
-- Data for Name: consultas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.consultas VALUES (2, 20, 1, '2013-03-20 08:20:00', NULL, 2, 'A', '2013-03-10');
INSERT INTO public.consultas VALUES (3, 30, 1, '2013-03-20 09:20:00', NULL, 2, 'A', '2013-03-10');
INSERT INTO public.consultas VALUES (4, 40, 1, '2013-03-21 07:00:00', NULL, 2, 'A', '2013-03-10');
INSERT INTO public.consultas VALUES (5, 70, 1, '2013-03-21 07:20:00', NULL, 2, 'A', '2013-03-10');
INSERT INTO public.consultas VALUES (6, 80, 1, '2013-03-21 07:40:00', NULL, 2, 'A', '2013-03-10');
INSERT INTO public.consultas VALUES (7, 90, 1, '2016-03-21 08:00:00', NULL, 2, 'A', '2016-03-10');
INSERT INTO public.consultas VALUES (8, 100, 1, '2016-03-21 10:00:00', NULL, 2, 'A', '2016-03-10');
INSERT INTO public.consultas VALUES (9, 110, 1, '2016-03-21 10:20:00', NULL, 2, 'A', '2016-03-10');
INSERT INTO public.consultas VALUES (10, 120, 1, '2016-03-21 10:40:00', NULL, 2, 'A', '2016-03-10');
INSERT INTO public.consultas VALUES (11, 130, 1, '2016-03-21 11:00:00', NULL, 2, 'A', '2016-03-10');
INSERT INTO public.consultas VALUES (12, 150, 1, '2016-03-21 08:20:00', NULL, 2, 'A', '2016-03-10');
INSERT INTO public.consultas VALUES (13, 160, 1, '2016-03-21 08:40:00', NULL, 2, 'A', '2016-03-10');


--
-- Data for Name: contas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.contas VALUES ('001  ', '6632X ', '153052', 10, NULL, '2016-10-18');
INSERT INTO public.contas VALUES ('001  ', '6632X ', '153060', 10, NULL, '2016-10-18');
INSERT INTO public.contas VALUES ('001  ', '6633X ', '109520', 20, NULL, '2016-10-18');
INSERT INTO public.contas VALUES ('001  ', '6633X ', '145241', 20, NULL, '2016-10-18');
INSERT INTO public.contas VALUES ('001  ', '6632X ', '451254', 30, NULL, '2016-10-18');
INSERT INTO public.contas VALUES ('001  ', '6632X ', '124527', 30, NULL, '2016-10-18');


--
-- Data for Name: cores; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.cores VALUES (1, 'abobora', '234    ', '2012-03-26');
INSERT INTO public.cores VALUES (2, 'Verde', '23452  ', '2012-03-26');
INSERT INTO public.cores VALUES (3, 'Vermelho', '1452   ', '2010-10-10');
INSERT INTO public.cores VALUES (4, 'Branco', '14785  ', '2010-10-10');
INSERT INTO public.cores VALUES (5, 'Abobora', '451256 ', '2010-10-10');
INSERT INTO public.cores VALUES (6, 'Amarelo', '451256 ', '2010-10-10');
INSERT INTO public.cores VALUES (7, 'Azul', '415636 ', '2010-10-10');
INSERT INTO public.cores VALUES (8, 'roxo', '234    ', '2012-03-26');
INSERT INTO public.cores VALUES (9, 'verde limão', '234    ', '2012-03-26');
INSERT INTO public.cores VALUES (10, 'DASDFASD', '12313  ', '2010-10-15');
INSERT INTO public.cores VALUES (15, 'ashdfahsdf', '23123  ', '2013-09-18');


--
-- Data for Name: corescarros; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: cursos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.cursos VALUES (1, 'Conhecimentos de química fundamental na arte culinária.', 1, 50, '2013-03-12');
INSERT INTO public.cursos VALUES (3, 'conceitos fundamentais de astronomia', 2, 80, '2010-10-10');
INSERT INTO public.cursos VALUES (4, 'Administrando Sistemas de Informação com o PostgreSQL', 4, 120, '1996-01-01');
INSERT INTO public.cursos VALUES (5, 'Como Desenvolver um Software com Gambiarra', 3, 60, '2010-10-10');
INSERT INTO public.cursos VALUES (6, 'Avaliação de Mercados emergentes de hipermidias', 4, 60, '2010-10-10');
INSERT INTO public.cursos VALUES (7, 'Fundamentos de Engenharia de Software', 3, 80, '2010-05-10');


--
-- Data for Name: departamentos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.departamentos VALUES ('A02', 'Desenvolvimento de Rotinas de Biblio', 150, 'A01', 'Polo de Desenvolvimento de TI', 450, '2010-10-10', '2010-10-10');
INSERT INTO public.departamentos VALUES ('A01', 'Desenvolvimento de Software', 160, 'A01', 'Av. Luis Carlos Berrini, 2340', 8000, '2010-10-10', '2010-10-10');
INSERT INTO public.departamentos VALUES ('A11', 'Desenvolvimento de Lixo reciclável', 170, 'A01', 'Av. Luis Carlos Berrini, 2340', 8000, '2010-10-10', '2010-10-10');
INSERT INTO public.departamentos VALUES ('B01', 'Desenvolvimento de processos gerenci', 180, 'A01', 'Av. Luis Carlos Berrini, 2340', 8000, '2010-10-10', '2010-10-10');
INSERT INTO public.departamentos VALUES ('C01', 'Pesquisa de Mercado para tendências ', 190, 'A01', 'Av. Luis Carlos Berrini, 2340', 8000, '2010-10-10', '2010-10-10');
INSERT INTO public.departamentos VALUES ('D01', 'Pesquisa em Biociências', 200, 'A01', 'Av. Luis Carlos Berrini, 2340', 8000, '2010-10-10', '2010-10-10');
INSERT INTO public.departamentos VALUES ('D11', 'Oceanografia aplicada em des. de sof', 210, 'A01', 'Av. Luis Carlos Berrini, 2340', 8000, '2010-10-10', '2010-10-10');
INSERT INTO public.departamentos VALUES ('D91', 'Pesquisa e desenvolvimento de soluçõ', 220, 'B01', 'centro', 1500, '2016-03-10', '2016-03-10');
INSERT INTO public.departamentos VALUES ('E01', 'Des. de ambientes de escritórios sus', 230, 'A01', 'Av. Luis Carlos Berrini, 2340', 8000, '2010-10-10', '2010-10-10');
INSERT INTO public.departamentos VALUES ('E11', 'Des. de processos de construção civi', 240, 'A01', 'Av. Luis Carlos Berrini, 2340', 8000, '2010-10-10', '2010-10-10');
INSERT INTO public.departamentos VALUES ('E21', 'Pesquisa de ferramentas de arquitetu', 260, 'A01', 'Av. Luis Carlos Berrini, 2340', 8000, '2010-10-10', '2010-10-10');
INSERT INTO public.departamentos VALUES ('F22', 'Des. de Sists Computacionais', 250, 'A01', 'Av. Circular, 3200', 2500, '2010-10-15', '2011-05-20');
INSERT INTO public.departamentos VALUES ('Z97', 'Desenvolvimento de polos de energia', 290, 'Z97', 'Av. Copernico, 23-456', 7500, '2010-10-10', '2010-10-10');
INSERT INTO public.departamentos VALUES ('Z98', 'Desenvolvimento de Usinas Solares.', 120, 'Z97', 'Campus da Universidade de Ourinhos - SP', 900, '2010-10-10', '2010-10-10');
INSERT INTO public.departamentos VALUES ('Z99', 'Desenvolvimento de Usinas eólicas', 100, 'Z97', 'Centro Empresarial de Fortaleza - CE', 150, '2010-10-10', '2010-10-10');


--
-- Data for Name: departamentostels; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.departamentostels VALUES (2, 'F22', 15, '1145874567     ', NULL, NULL);
INSERT INTO public.departamentostels VALUES (4, 'A01', 15, '1425412145     ', NULL, NULL);
INSERT INTO public.departamentostels VALUES (5, 'A01', 15, '14 33256214    ', NULL, NULL);
INSERT INTO public.departamentostels VALUES (3, 'F22', 20, '11452145241    ', NULL, NULL);


--
-- Data for Name: disciplinas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.disciplinas VALUES (1, 1, 'CALCULO I', '', 0, NULL, '1980-01-01');
INSERT INTO public.disciplinas VALUES (2, 1, 'CALCULO II', '', 0, NULL, '1980-01-01');
INSERT INTO public.disciplinas VALUES (3, 1, 'CALCULO IV', '', 0, NULL, '1980-01-01');
INSERT INTO public.disciplinas VALUES (4, 1, 'CALCULO III', '', 0, NULL, '1980-01-01');
INSERT INTO public.disciplinas VALUES (5, 1, 'FISICA I', 'Desenvolvimento dos conceitos fundamentais da Física: Força, ação e reação, inércia, campos de força', 100, NULL, '2010-10-10');
INSERT INTO public.disciplinas VALUES (6, 1, 'FISICA II', '', 0, NULL, '1980-01-01');
INSERT INTO public.disciplinas VALUES (7, 1, 'FISICA III', '', 0, NULL, '1980-01-01');
INSERT INTO public.disciplinas VALUES (8, 3, 'FISICA IV', 'asdfasf', 100, NULL, '2012-10-05');
INSERT INTO public.disciplinas VALUES (9, 1, 'PORTUGUES I', '', 0, NULL, '1980-01-01');
INSERT INTO public.disciplinas VALUES (10, 1, 'PORTUGUES II', '', 0, NULL, '1980-01-01');
INSERT INTO public.disciplinas VALUES (11, 1, 'ALGORITMOS DE PROGRAMACAO I', '', 0, NULL, '1980-01-01');
INSERT INTO public.disciplinas VALUES (12, 1, 'ALGORITMOS DE PROGRAMACAO II', '', 0, NULL, '1980-01-01');
INSERT INTO public.disciplinas VALUES (13, 1, 'LINGUAGEM DE PROGRAMACAO I', '', 0, NULL, '1980-01-01');
INSERT INTO public.disciplinas VALUES (14, 1, 'LINGUAGEM DE PROGRAMACAO II', '', 0, NULL, '1980-01-01');
INSERT INTO public.disciplinas VALUES (15, 1, 'LINGUAGEM DE PROGRAMACAO III', '', 0, NULL, '1980-01-01');
INSERT INTO public.disciplinas VALUES (16, 1, 'LINGUAGEM DE PROGRAMACAO IV', '', 0, NULL, '1980-01-01');
INSERT INTO public.disciplinas VALUES (17, 1, 'CALCULO NUMERICO', '', 0, NULL, '1980-01-01');
INSERT INTO public.disciplinas VALUES (18, 1, 'APLICACOES DE CALCULO NUMERICO I', '', 0, NULL, '1980-01-01');
INSERT INTO public.disciplinas VALUES (19, 1, 'ETICA NA TECNOLOGIA DA INFORMA', '', 0, NULL, '1980-01-01');
INSERT INTO public.disciplinas VALUES (20, 1, 'TECNICAS DE APRESENTA', '', 0, NULL, '1980-01-01');
INSERT INTO public.disciplinas VALUES (21, 1, 'Avaliação de Qualidade em Fábrica de Software', 'Apresenta métricas e métodos de avaliação de Qualidade de So', 120, NULL, '2010-10-10');
INSERT INTO public.disciplinas VALUES (22, 1, 'ENGENHARIA DE SOFTWARE I', '', 0, NULL, '1980-01-01');
INSERT INTO public.disciplinas VALUES (27, 7, 'Antropologia moderna', 'Estudos dos comportamentos humanos no contexto dos séculos 20 e 21.', 120, NULL, '2010-10-10');


--
-- Data for Name: duplicatas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.duplicatas VALUES (10, 13, '2016-01-10', NULL, 50, 5, 45, 5, '2015-12-10');
INSERT INTO public.duplicatas VALUES (15, 13, '2016-02-10', NULL, 50, 5, 45, 5, '2015-12-10');
INSERT INTO public.duplicatas VALUES (5, 8, '2015-10-10', NULL, 50, 0, 50, 10, '2015-10-10');
INSERT INTO public.duplicatas VALUES (20, 8, '2016-01-10', NULL, 50, 5, 45, 10, '2015-12-10');


--
-- Data for Name: editoras; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.editoras VALUES (1, 'Abril                                                                 ', 'Abril Editora S/C Ltda.', NULL, 450, ' 1234', '12345678', NULL, NULL, NULL, '2010-10-10');
INSERT INTO public.editoras VALUES (2, 'McGraw-Books                                                          ', 'Editora McGraw-Books S.A.', NULL, 290, ' 234', '1245124 ', NULL, NULL, NULL, '2005-05-20');
INSERT INTO public.editoras VALUES (3, 'Nova                                                                  ', 'Nova Editora S.A.', NULL, 330, ' 1450', '1452142 ', NULL, NULL, NULL, '2006-04-20');
INSERT INTO public.editoras VALUES (4, 'FDT Editores                                                          ', 'FDT - Editores Associados S/C Ltda.', NULL, 460, ' 1254', '98765432', NULL, NULL, NULL, '2010-10-10');
INSERT INTO public.editoras VALUES (5, 'Ericas                                                                ', 'Editora e produtora Erica S/C Ltda.', NULL, 430, ' 234', '14512412', NULL, NULL, NULL, '2010-10-10');


--
-- Data for Name: editorastels; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.editorastels VALUES (5, 1, 10, '11856985221    ', 'Luiz                          ', '2019-02-20');
INSERT INTO public.editorastels VALUES (6, 1, 10, '1145152463     ', 'Antonio Lima                  ', '2019-02-10');
INSERT INTO public.editorastels VALUES (1, 4, 15, '4345124512     ', 'Marsilla                      ', '2018-12-10');
INSERT INTO public.editorastels VALUES (2, 4, 15, '4389562356     ', 'Edivaldo                      ', '2019-03-15');
INSERT INTO public.editorastels VALUES (3, 4, 15, '4356234556     ', 'Guimarães                     ', '2019-03-15');
INSERT INTO public.editorastels VALUES (7, 2, 15, '11451552144    ', 'Carlos Molina                 ', '2019-02-04');
INSERT INTO public.editorastels VALUES (8, 2, 15, '11748451254    ', 'Marilice                      ', '2019-02-04');


--
-- Data for Name: empresas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.empresas VALUES (2, 'Lorenzetti', 'Fabrica de Produtos Elétricos Lorenzetti S/C Ltda.', '4567646546546   ', 420, ' 234', '11452145', 1, 'P', '1986-05-20', '2010-10-10');
INSERT INTO public.empresas VALUES (3, 'Supermack', 'Equipamentos Frigoríficos  Supermack S/C Ltda.', '34564643456     ', 560, ' 234', '11451245', 1, 'G', '1996-04-20', '2012-10-10');
INSERT INTO public.empresas VALUES (4, 'TecMon', 'Tecnica de Montagens e Ajustes de Equip. Domiciliares S/C Ltda', '3456354675467856', 440, ' 456', '41452145', 1, 'G', '1966-06-20', '2010-10-10');
INSERT INTO public.empresas VALUES (1, 'FAME', 'Fabrica Americana de Materiais Elétricos S.A.', '45674567456     ', 530, ' 1456', '11452145', 2, 'M', '2005-08-10', '2011-06-10');


--
-- Data for Name: empresastels; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.empresastels VALUES (5, 1, 15, '1145265236     ', 'José', '2016-05-02');
INSERT INTO public.empresastels VALUES (6, 1, 20, '154221512150221', 'Nabucodonosor', '2016-05-02');
INSERT INTO public.empresastels VALUES (7, 1, 20, '4152241251121  ', 'Ana', '2016-05-20');


--
-- Data for Name: especialidadesmedicas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.especialidadesmedicas VALUES (1, 'Clínica Geral', '', '2010-10-05');
INSERT INTO public.especialidadesmedicas VALUES (2, 'Pediatria', '', '2010-10-05');
INSERT INTO public.especialidadesmedicas VALUES (3, 'Geriatria', '', '2010-10-05');
INSERT INTO public.especialidadesmedicas VALUES (4, 'Cardiolgia', '', '2010-10-05');
INSERT INTO public.especialidadesmedicas VALUES (5, 'Ortopedia', '', '2010-10-05');
INSERT INTO public.especialidadesmedicas VALUES (6, 'Gastroenterologia', '', '2010-10-05');
INSERT INTO public.especialidadesmedicas VALUES (7, 'Infectologista', '', '2010-12-10');
INSERT INTO public.especialidadesmedicas VALUES (8, 'Oncolologista', '', '2010-12-10');


--
-- Data for Name: estadosdospaises; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.estadosdospaises VALUES ('AC ', 'Acre', 'Rio Branco', NULL, 100, NULL, NULL, '2018-09-30');
INSERT INTO public.estadosdospaises VALUES ('AL ', 'Alagoas', 'Maceio', NULL, 150, NULL, NULL, '2018-09-30');
INSERT INTO public.estadosdospaises VALUES ('AM ', 'Amazonas', 'Manaus', NULL, 250, NULL, NULL, '2018-09-30');
INSERT INTO public.estadosdospaises VALUES ('BA ', 'Bahia', 'Salvador', NULL, 400, NULL, NULL, '2018-09-30');
INSERT INTO public.estadosdospaises VALUES ('ES ', 'Espírito Santo', 'Vitória', NULL, 150, NULL, NULL, '2018-09-30');
INSERT INTO public.estadosdospaises VALUES ('DF ', 'Distrito Federal', 'Brasilia', NULL, 10, NULL, NULL, '2018-09-30');
INSERT INTO public.estadosdospaises VALUES ('SP ', 'São Paulo', 'São Paulo', NULL, 500, NULL, NULL, '2018-09-30');


--
-- Data for Name: fabricantes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.fabricantes VALUES (1, 'Volkswagen', 'Fábrica de Veículos Brasileiros VolksWagen S.A.', NULL, 100, ' 34000', '14512413', NULL, NULL, NULL, '2001-05-20');
INSERT INTO public.fabricantes VALUES (2, 'FIAT', 'Fabrica Italiana de Automóveis S.A', NULL, 90, ' 3450', '12987456', NULL, NULL, NULL, '2001-05-20');
INSERT INTO public.fabricantes VALUES (3, 'GM', 'Montador de Veículos General Motors Cia. Ltda.', NULL, 100, ' Km 50', '0232345 ', NULL, NULL, NULL, '1962-10-10');
INSERT INTO public.fabricantes VALUES (4, 'Autolatina', 'Fabrica de veículos automotivos Autolatina S.A.', NULL, 460, '4500', '0451245 ', NULL, NULL, NULL, '2010-10-10');
INSERT INTO public.fabricantes VALUES (5, 'Nissan', 'Fábrica de automóveis Nissan do Brasil S.A.', NULL, 170, '1452', '12345678', NULL, NULL, NULL, '2010-10-10');


--
-- Data for Name: fabricantestels; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.fabricantestels VALUES (5, 1, 10, '1178754745     ', 'Hermann', '2019-05-10');
INSERT INTO public.fabricantestels VALUES (4, 2, 10, '1144566776     ', 'Ennio', '2019-04-20');
INSERT INTO public.fabricantestels VALUES (1, 2, 20, '1144566776     ', 'Ennio', '2019-04-20');
INSERT INTO public.fabricantestels VALUES (2, 2, 20, '1144566776     ', 'Ennio', '2019-04-21');
INSERT INTO public.fabricantestels VALUES (3, 2, 20, '1144566776     ', 'Ennio', '2019-05-10');
INSERT INTO public.fabricantestels VALUES (6, 3, 10, '1197654678     ', 'Smith', '2019-09-01');
INSERT INTO public.fabricantestels VALUES (7, 4, 10, '1147574845     ', 'Joselva', '2019-09-01');
INSERT INTO public.fabricantestels VALUES (8, 5, 10, '1174851245     ', 'Jose Kualker', '2019-09-01');


--
-- Data for Name: faturas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.faturas VALUES (5, 1, '2016-11-10', NULL, 2105, 0, 2255, 150, '2016-11-12');
INSERT INTO public.faturas VALUES (10, 1, '2016-12-10', NULL, 850, 0, 850, 0, '2016-10-10');
INSERT INTO public.faturas VALUES (15, 2, '2016-11-10', NULL, 2500, 0, 2500, 0, '2016-11-10');
INSERT INTO public.faturas VALUES (20, 3, '2016-11-10', NULL, 2500, 0, 2500, 0, '2016-11-10');
INSERT INTO public.faturas VALUES (25, 3, '2015-12-10', NULL, 650, 0, 650, 0, '2016-11-10');
INSERT INTO public.faturas VALUES (30, 1, '2010-10-10', NULL, 500, 80, 420, 120, '2010-10-05');


--
-- Data for Name: fornecedores; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.fornecedores VALUES (1, 'Fazenda Rio Branco', 'Latic', NULL, 370, ' Km 350', '12345678', 1, 100000, NULL, NULL, NULL, '2008-01-20');
INSERT INTO public.fornecedores VALUES (2, 'Leite Mont Blanc', 'Laticinio Mont Blanc S/C Ltda.', NULL, 590, ' Km 289', '12345678', 2, 120000, NULL, NULL, NULL, '2010-10-10');
INSERT INTO public.fornecedores VALUES (5, 'Hamburgueria Girafa', 'Restaurante Franco-Italiano Girafa S/C Ltda.', NULL, 70, ' 4345', '12345678', 2, 5000, NULL, NULL, NULL, '1998-10-10');
INSERT INTO public.fornecedores VALUES (10, 'Fazenda Rio Claro', 'Fazenda de produtos laticionios Rio Claro S/C Ltda.', NULL, 240, 'Km 35', '74512845', 2, 50000, NULL, NULL, NULL, '2010-10-10');


--
-- Data for Name: fornecedorestels; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.fornecedorestels VALUES (1, 1, 10, '1174185296     ', NULL, '2019-09-02');
INSERT INTO public.fornecedorestels VALUES (2, 2, 10, '5474185296     ', NULL, '2019-09-02');
INSERT INTO public.fornecedorestels VALUES (3, 5, 10, '1196385274     ', NULL, '2019-09-02');
INSERT INTO public.fornecedorestels VALUES (4, 10, 10, '3145124512     ', NULL, '2019-09-02');
INSERT INTO public.fornecedorestels VALUES (5, 1, 15, '43985264521    ', NULL, '2019-09-02');


--
-- Data for Name: fornecimentos; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: funcionarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.funcionarios VALUES (40, 'MAUDE', 'SETRIGHT', 'E11', 10, 99, 470, ' 234', '3332', '1994-09-12', 'F', '1961-04-21', '', 35900, 300, 1272, '        ', '1980-01-01');
INSERT INTO public.funcionarios VALUES (60, 'IRVING', 'STERN', 'D11', 4, 16, 380, ' 125 - 15And Ap 156', '6423', '2003-09-14', 'M', '1975-07-07', '', 72250, 500, 2580, '        ', '1980-01-01');
INSERT INTO public.funcionarios VALUES (100, 'THEODORE', 'SPENSER', 'E21', 6, 14, 600, ' 985', '0972', '2000-06-19', 'M', '1980-12-18', '', 86150, 500, 2092, '        ', '1980-01-01');
INSERT INTO public.funcionarios VALUES (110, 'VINCENZO', 'LUCCHESSI', 'A01', 7, 19, 570, ' 25 - Vila Siqueira', '3490', '1988-05-16', 'M', '1959-11-05', '', 66500, 900, 3720, '        ', '1980-01-01');
INSERT INTO public.funcionarios VALUES (160, 'ELIZABETH', 'PIANKA', 'D11', 6, 17, 550, ' 567', '3782', '2006-10-11', 'F', '1980-04-12', '', 62250, 400, 1780, '        ', '1980-01-01');
INSERT INTO public.funcionarios VALUES (170, 'MASATOSHI', 'YOSHIMURA', 'D11', 7, 16, 540, ' 234', '2890', '1999-09-15', 'M', '1981-01-05', '', 44680, 500, 1974, '        ', '1980-01-01');
INSERT INTO public.funcionarios VALUES (180, 'MARILYN', 'SCOUTTEN', 'D11', 7, 17, 450, ' 1234', '1682', '2003-07-07', 'F', '1979-02-21', '', 51340, 500, 1707, '        ', '1980-01-01');
INSERT INTO public.funcionarios VALUES (210, 'WILLIAM', 'JONES', 'D11', 10, 17, 460, ' 1254', '0942', '1998-04-11', 'M', '2003-02-23', '', 68270, 400, 1462, '        ', '1980-01-01');
INSERT INTO public.funcionarios VALUES (220, 'JENNIFER', 'LUTZ', 'D11', 10, 18, 430, ' 234', '0672', '1998-08-29', 'F', '1978-03-19', '', 49840, 600, 2387, '        ', '1980-01-01');
INSERT INTO public.funcionarios VALUES (230, 'JAMES', 'JEFFERSON', 'A11', 7, 16, 530, ' 1456', '2094', '1996-11-21', 'M', '1980-05-30', '', 42180, 400, 1774, '        ', '1980-01-01');
INSERT INTO public.funcionarios VALUES (240, 'SALVATORE', 'MARINO', 'D01', 10, 17, 420, ' 234', '3780', '2004-12-05', 'M', '2002-03-31', '', 48760, 600, 2301, '        ', '1980-01-01');
INSERT INTO public.funcionarios VALUES (250, 'DANIEL', 'SMITH', 'D01', 9, 15, 560, ' 234', '0961', '1999-10-30', 'M', '1969-11-12', '', 49180, 400, 1534, '        ', '1980-01-01');
INSERT INTO public.funcionarios VALUES (260, 'SYBIL', 'JOHNSON', 'D01', 9, 16, 440, ' 456', '8953', '2005-09-11', 'F', '1976-10-05', '', 47250, 300, 1380, '        ', '1980-01-01');
INSERT INTO public.funcionarios VALUES (270, 'MARIA', 'PEREZ', 'D01', 10, 15, 100, ' 34000', '9001', '2006-09-30', 'F', '2003-05-26', '', 37380, 500, 2190, '        ', '1980-01-01');
INSERT INTO public.funcionarios VALUES (280, 'ETHEL', 'SCHNEidER', 'E11', 10, 17, 490, ' 452', '8997', '1997-03-24', 'F', '1980-01-01', 'Um teste de troca', 36250, 500, 2100, '12345678', '2010-10-10');
INSERT INTO public.funcionarios VALUES (330, 'DIAN', 'HEMMINGER', 'A01', 8, 18, 470, ' 1492', '3978', '1995-01-01', 'F', '1973-08-14', '', 46500, 1000, 4220, '        ', '1980-01-01');
INSERT INTO public.funcionarios VALUES (340, 'GREG', 'ORLANDO', 'A01', 7, 14, 470, ' 234', '2167', '2002-05-05', 'M', '1972-10-18', '', 39250, 600, 2340, '        ', '1980-01-01');
INSERT INTO public.funcionarios VALUES (350, 'KIM', 'NATZ', 'C01', 8, 18, 470, ' 234', '1793', '2006-12-15', 'F', '1976-01-19', '', 68420, 600, 2274, '        ', '1980-01-01');
INSERT INTO public.funcionarios VALUES (360, 'KIYOSHI', 'YAMAMOTO', 'D11', 7, 16, 470, ' 234', '2890', '2005-09-15', 'M', '1981-01-05', '', 64680, 500, 1974, '        ', '1980-01-01');
INSERT INTO public.funcionarios VALUES (370, 'REBA', 'JOHN', 'D11', 8, 18, 610, ' 6500', '0672', '2005-08-29', 'F', '1978-03-19', '', 69840, 600, 2387, '        ', '1980-01-01');
INSERT INTO public.funcionarios VALUES (380, 'ROBERT', 'MONTEVERDE', 'D01', 8, 17, 610, ' 6500', '3780', '2004-12-05', 'M', '1984-03-31', '', 37760, 600, 2301, '        ', '1980-01-01');
INSERT INTO public.funcionarios VALUES (390, 'EILEEN', 'SCHWARTZ', 'E11', 9, 17, 360, ' 1400', '8997', '1997-03-24', 'F', '1966-03-28', '', 46250, 500, 2100, '        ', '1980-01-01');
INSERT INTO public.funcionarios VALUES (400, 'MICHELLE', 'SPRINGER', 'E11', 9, 99, 520, ' 1245', '3332', '1994-09-12', 'F', '1961-04-21', '', 35900, 300, 1272, '        ', '1980-01-01');
INSERT INTO public.funcionarios VALUES (410, 'HELENA', 'WONG', 'E21', 9, 14, 600, ' 985', '2103', '2006-02-23', 'F', '1971-07-18', '', 35370, 500, 2030, '        ', '1980-01-01');
INSERT INTO public.funcionarios VALUES (420, 'ROY', 'ALONZO', 'E21', 10, 16, 590, ' 35 - Camp', '5698', '1997-07-05', 'M', '1956-05-17', '', 31840, 500, 1907, '        ', '1980-01-01');
INSERT INTO public.funcionarios VALUES (430, 'JOSE', 'BUENO', 'D01', 9, 14, 570, ' 25 - Vila Siqueira', '2145', '1980-01-01', 'M', '1980-01-01', '', 1250, 100, 500, '        ', '1980-01-01');
INSERT INTO public.funcionarios VALUES (440, 'Teste', 'Silva', 'A01', 12, 14, 570, ' 25 - Vila Siqueira', '3232', '2010-05-10', 'M', '1985-10-20', '', 1600, 200, 200, '        ', '1980-01-01');
INSERT INTO public.funcionarios VALUES (450, 'Louis', 'Armstrong', 'A01', 1, 18, 590, ' 35 - Camp', '452 ', '2002-10-20', 'M', '1958-05-15', 'Músico', 2500, 500, 400, '1452151 ', '2002-10-20');
INSERT INTO public.funcionarios VALUES (460, 'Ella', 'Frintgerald', 'B01', 1, 18, 600, ' 985', '452 ', '2002-10-20', 'F', '1958-05-14', 'Cantora', 2500, 500, 400, '14511254', '2002-10-05');
INSERT INTO public.funcionarios VALUES (470, 'Leonidas', 'Spartacus', 'D11', 5, 20, 600, ' 985', '666 ', '1901-10-10', 'M', '1960-05-05', 'Forte pacas', 12000, 1000, 500, '0451245 ', '1902-10-10');
INSERT INTO public.funcionarios VALUES (310, 'WING WONG', 'LEE', 'E21', 8, 14, 600, ' 985', '2103', '2006-02-23', 'M', '1971-07-18', '', 45370, 500, 2030, '        ', '1980-01-01');
INSERT INTO public.funcionarios VALUES (20, 'MICHAEL', 'THOMPSON', 'B01', 3, 18, 470, ' 1492', '3476', '2003-10-10', 'M', '1978-02-02', '', 94250, 800, 3300, '        ', '1980-01-01');
INSERT INTO public.funcionarios VALUES (30, 'SALLY', 'KWAN', 'C01', 2, 20, 470, ' 234', '4738', '2005-04-05', 'F', '1971-05-11', '', 98250, 800, 3060, '        ', '1980-01-01');
INSERT INTO public.funcionarios VALUES (320, 'JASON MORISON', 'GOUNOT', 'E21', 9, 16, 590, ' 35 - Camp', '5698', '1977-05-05', 'M', '1956-05-17', '', 43840, 500, 1907, '        ', '1980-01-01');
INSERT INTO public.funcionarios VALUES (10, 'CHRISTINE MARIE', 'HAAS', 'A01', 1, 18, 350, ' 1243', '3978', '1995-01-01', 'F', '1963-08-24', '', 152750, 1000, 4220, '        ', '1980-01-01');
INSERT INTO public.funcionarios VALUES (290, 'JOHN CARPENTER', 'PARKER', 'E11', 10, 99, 350, ' 1243', '4502', '2006-05-30', 'M', '1985-07-09', '', 35340, 300, 1227, '        ', '1980-01-01');
INSERT INTO public.funcionarios VALUES (300, 'PHILIP MORIS', 'SMITH', 'E11', 10, 14, 550, ' 567', '2095', '2002-06-19', 'M', '1976-10-27', '', 37750, 400, 1420, '        ', '1980-01-01');
INSERT INTO public.funcionarios VALUES (120, 'SEAN PEAN', 'O CONNELL', 'A01', 8, 14, 590, ' 35 - Camp', '2167', '1993-12-05', 'M', '1972-10-18', '', 49250, 600, 2340, '        ', '1980-01-01');
INSERT INTO public.funcionarios VALUES (130, 'DOLORES MARIA', 'QUINTANA', 'C01', 7, 16, 580, ' 345', '4578', '2001-07-28', 'F', '1955-09-15', '', 73800, 500, 1904, '        ', '1980-01-01');
INSERT INTO public.funcionarios VALUES (150, 'BRUCE TAYLOR', 'ADAMSON', 'A01', 7, 16, 490, ' 452', '4510', '2002-02-12', 'M', '1977-05-17', NULL, 55280, 500, 2022, '12312312', '2010-10-10');
INSERT INTO public.funcionarios VALUES (190, 'JAMES PAUL', 'WALKER', 'D11', 9, 16, 290, ' 234', '2986', '2004-07-26', 'M', '1982-06-25', '', 50450, 400, 1636, '        ', '1980-01-01');
INSERT INTO public.funcionarios VALUES (200, 'DAVID CHARLES', 'BROWN', 'D11', 9, 16, 330, ' 1450', '4501', '2002-03-03', 'M', '1971-05-29', '', 57740, 600, 2217, '        ', '1980-01-01');
INSERT INTO public.funcionarios VALUES (50, 'JOHN SILVESTER', 'GEYER', 'E01', 5, 16, 610, ' 6500', '6789', '1979-08-17', 'M', '1955-09-15', '', 80175, 800, 3214, '        ', '1980-01-01');
INSERT INTO public.funcionarios VALUES (70, 'EVA MARIA', 'PULASKI', 'D01', 10, 16, 360, ' 1400', '7831', '2005-09-30', 'F', '2003-05-26', '', 96170, 700, 2893, '        ', '1980-01-01');
INSERT INTO public.funcionarios VALUES (80, 'RAMLAL ABDUL', 'MEHTA', 'E21', 10, 16, 520, ' 1245', '9990', '1995-07-07', 'M', '1962-08-11', '', 39950, 400, 1596, '        ', '1980-01-01');
INSERT INTO public.funcionarios VALUES (90, 'EILEEN B''ORGN', 'HENDERSON', 'E11', 10, 16, 390, ' 150', '5498', '2000-08-15', 'F', '1971-05-15', '', 89750, 600, 2380, '        ', '1980-01-01');
INSERT INTO public.funcionarios VALUES (480, 'HELENA', 'WONG', 'E21', 9, 14, 600, ' 985', '2103', '2006-02-23', 'F', '1971-07-18', '', 35370, 500, 2030, '        ', '1980-01-01');


--
-- Data for Name: funcionariosplanos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.funcionariosplanos VALUES (5, 10, 1, '2016-12-07', '2016-12-07', '2016-12-07');
INSERT INTO public.funcionariosplanos VALUES (10, 20, 1, '2016-12-07', '2016-12-07', '2016-12-07');
INSERT INTO public.funcionariosplanos VALUES (15, 10, 2, '2016-12-07', '2016-12-07', '2016-12-07');
INSERT INTO public.funcionariosplanos VALUES (20, 10, 4, '2016-12-07', '2016-12-07', '2016-12-07');


--
-- Data for Name: funcionariostels; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.funcionariostels VALUES (4, 20, 5, '2345345        ', 'José', '2017-05-20');
INSERT INTO public.funcionariostels VALUES (2, 10, 10, '2342345        ', 'Ana', '2018-04-10');
INSERT INTO public.funcionariostels VALUES (3, 10, 15, '23453245       ', 'Rui', '2018-05-10');
INSERT INTO public.funcionariostels VALUES (1, 10, 20, '1231313        ', 'Abel', '2018-06-25');


--
-- Data for Name: funcoes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.funcoes VALUES (1, 'Presidente', '', 15, '1980-01-01');
INSERT INTO public.funcoes VALUES (2, 'Diretor Comercial', '', 5, '1980-01-01');
INSERT INTO public.funcoes VALUES (3, 'Diretor Administrativo', '', 5, '1980-01-01');
INSERT INTO public.funcoes VALUES (4, 'Diretor Produ', '', 5, '1980-01-01');
INSERT INTO public.funcoes VALUES (5, 'Gerente De Vendas', '', 1, '1980-01-01');
INSERT INTO public.funcoes VALUES (6, 'Gerente de Compras', '', 1, '1980-01-01');
INSERT INTO public.funcoes VALUES (7, 'Gerente de contas', '', 1, '1980-01-01');
INSERT INTO public.funcoes VALUES (8, 'Gerente de Recursos Humanos', '', 1, '1980-01-01');
INSERT INTO public.funcoes VALUES (9, 'Gerente de Rela', '', 1, '1980-01-01');
INSERT INTO public.funcoes VALUES (10, 'Gerente de Opera', '', 1, '1980-01-01');
INSERT INTO public.funcoes VALUES (11, 'Professor', '', 2, '1980-01-01');
INSERT INTO public.funcoes VALUES (12, 'Auxiliar Administrativo', '', 1, '1980-01-01');


--
-- Data for Name: grausdeescolaridade; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.grausdeescolaridade VALUES (14, 'Ensino fundamental I', 4, 1, '1980-01-01');
INSERT INTO public.grausdeescolaridade VALUES (15, 'Ensino Fundamental II', 4, 1, '1980-01-01');
INSERT INTO public.grausdeescolaridade VALUES (16, 'Jardim I', 1, 1, '1980-01-01');
INSERT INTO public.grausdeescolaridade VALUES (17, 'Jardim II', 2, 1, '1980-01-01');
INSERT INTO public.grausdeescolaridade VALUES (18, 'Ensino Medio', 3, 1, '1980-01-01');
INSERT INTO public.grausdeescolaridade VALUES (19, 'Superior', 5, 1, '1980-01-01');
INSERT INTO public.grausdeescolaridade VALUES (20, 'Pos-Graduacao (Mestrado)', 3, 1, '1980-01-01');
INSERT INTO public.grausdeescolaridade VALUES (99, 'Pos-Graduacao (Doutorado)', 5, 1, '1980-01-01');
INSERT INTO public.grausdeescolaridade VALUES (30, 'Pos-Graduacao (MBA)', 1, 1, '1980-01-01');
INSERT INTO public.grausdeescolaridade VALUES (31, 'Mestrado', 3, 1, '2011-12-10');


--
-- Data for Name: habilitacoes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.habilitacoes VALUES (10, 3, 2, '2010-05-05', '2010-05-05', '2010-05-10');
INSERT INTO public.habilitacoes VALUES (15, 3, 2, '2010-10-10', '2010-10-10', '2010-10-10');
INSERT INTO public.habilitacoes VALUES (20, 3, 2, '2012-10-10', '2012-10-10', '2012-10-15');
INSERT INTO public.habilitacoes VALUES (30, 3, 4, '2010-05-05', '2010-05-05', '2010-05-10');
INSERT INTO public.habilitacoes VALUES (35, 3, 4, '2012-10-10', '2012-10-10', '2012-10-15');
INSERT INTO public.habilitacoes VALUES (40, 3, 6, '2012-10-10', '2012-10-10', '2012-10-15');
INSERT INTO public.habilitacoes VALUES (45, 3, 21, '2012-10-10', '2012-10-10', '2012-10-15');
INSERT INTO public.habilitacoes VALUES (55, 3, 24, '2012-10-10', '2012-10-10', '2012-10-15');
INSERT INTO public.habilitacoes VALUES (60, 4, 2, '2010-10-10', '2010-10-10', '2010-10-10');
INSERT INTO public.habilitacoes VALUES (70, 5, 1, '2012-10-10', '2012-10-10', '2012-10-15');


--
-- Data for Name: historicoprofissional; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.historicoprofissional VALUES (4, 90, 1, 25, '2002-06-26', '2004-07-30', '2012-10-01');
INSERT INTO public.historicoprofissional VALUES (11, 150, 1, 5, '2007-05-10', '2007-09-10', '2007-05-10');
INSERT INTO public.historicoprofissional VALUES (1, 10, NULL, 15, '2001-01-20', '2002-06-25', '2010-10-01');
INSERT INTO public.historicoprofissional VALUES (3, 60, 1, 20, '2001-01-20', '2002-06-25', '2012-08-12');
INSERT INTO public.historicoprofissional VALUES (5, 70, 1, 30, '2012-10-10', '2013-11-10', '2013-06-19');
INSERT INTO public.historicoprofissional VALUES (6, 150, 1, 30, '2010-10-10', '2011-10-10', '2013-06-21');


--
-- Data for Name: idiomas; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: idiomasfalados; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: instituicoesdeensino; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.instituicoesdeensino VALUES (1, 'Faculdade de Belas Artes', 60, ' 1500', 'P', '1958-05-10', '12767890', '2001-01-10');
INSERT INTO public.instituicoesdeensino VALUES (2, 'Faculdade de Arqitetura de Urbanismo de S', 120, ' 500', 'G', '1952-05-10', '        ', '2001-01-10');
INSERT INTO public.instituicoesdeensino VALUES (3, 'Escola Politecnica da USP', 10, ' 564 - sob a escada', 'G', '1892-01-10', '14514251', '2001-10-10');
INSERT INTO public.instituicoesdeensino VALUES (4, 'Escola de 1 e 2 Grau Amadeu Amaral', 500, ' 1200', 'G', '1918-06-20', '14215125', '1996-01-01');
INSERT INTO public.instituicoesdeensino VALUES (5, 'Escola Superior de Propaganda e Marketing', 470, ' 3456', 'P', '1950-01-10', '15642854', '2010-10-10');


--
-- Data for Name: instituicoesdeensinotels; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.instituicoesdeensinotels VALUES (1, 5, 15, '1433526523     ', NULL, '2016-08-28');
INSERT INTO public.instituicoesdeensinotels VALUES (2, 5, 20, '1545124512     ', NULL, '2016-08-28');
INSERT INTO public.instituicoesdeensinotels VALUES (3, 5, 20, '1124512542     ', NULL, '2016-08-28');
INSERT INTO public.instituicoesdeensinotels VALUES (4, 3, 20, '1425252541     ', NULL, '2016-08-28');
INSERT INTO public.instituicoesdeensinotels VALUES (5, 3, 20, '1145215213     ', NULL, '2016-08-28');
INSERT INTO public.instituicoesdeensinotels VALUES (7, 3, 20, '545454         ', NULL, '2016-08-28');


--
-- Data for Name: inventarios; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: livros; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.livros VALUES (10, 'Preparando pratos com Lagostas', NULL, 1, '2010-10-12', '2010', NULL, 20, 2, '2011-08-01');
INSERT INTO public.livros VALUES (20, 'Cálculo Diferencial e Integral', NULL, 1, '2010-10-12', '2010', NULL, 40, 10, '2011-08-01');
INSERT INTO public.livros VALUES (30, 'exercicios de matematica', NULL, 3, '2008-10-10', '2008', NULL, 50, 10, '2011-08-01');
INSERT INTO public.livros VALUES (50, 'Física Quantica', NULL, 3, '2008-10-10', '2008', NULL, 60, 20, '2011-08-01');
INSERT INTO public.livros VALUES (60, 'Introdução a Bancos de Dados', NULL, 1, '2008-10-10', '2008', NULL, 80, 20, '2011-08-01');
INSERT INTO public.livros VALUES (70, 'Cálculo Diferencial e Integral', NULL, 2, '2010-10-12', '2010', NULL, 120, 20, '2011-08-01');
INSERT INTO public.livros VALUES (80, 'Projetos de Grandes Estruturas', NULL, 3, '2010-10-10', '2010', NULL, 150, 25, '2011-08-01');
INSERT INTO public.livros VALUES (90, 'Cálculo Estrutural I', NULL, 1, '2010-10-12', '2010', NULL, 200, 50, '2011-08-01');
INSERT INTO public.livros VALUES (40, 'O Alfabeto dos Numeros', NULL, 1, '2008-10-10', '2008', NULL, 20, 5, '2011-08-01');
INSERT INTO public.livros VALUES (92, 'A Menina que roubava Livros', NULL, 1, '2007-04-10', '2007', NULL, 75, 10, '2007-05-10');


--
-- Data for Name: logradouros; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.logradouros VALUES (10, 'R. dos alfineiros', NULL, 2, NULL, '1996-01-01');
INSERT INTO public.logradouros VALUES (20, 'Av. Horacio Soares', NULL, 1, NULL, '1998-10-10');
INSERT INTO public.logradouros VALUES (40, 'R. Luiz Antonio', NULL, 5, NULL, '2000-05-29');
INSERT INTO public.logradouros VALUES (50, 'Av. Ricardo Berrini', NULL, 4, NULL, '2000-06-14');
INSERT INTO public.logradouros VALUES (60, 'Av. Universitária', NULL, 2, NULL, '2001-01-10');
INSERT INTO public.logradouros VALUES (70, 'R. Brigadeiro Luis Antonio', NULL, 1, NULL, '2001-01-10');
INSERT INTO public.logradouros VALUES (80, 'R. 12 de Outubro', NULL, 5, NULL, '2001-05-16');
INSERT INTO public.logradouros VALUES (90, 'R. Troncoso', NULL, 4, NULL, '2001-05-20');
INSERT INTO public.logradouros VALUES (100, 'Rod. Anchieta', NULL, 5, NULL, '2001-05-20');
INSERT INTO public.logradouros VALUES (110, 'R. Miguel Faria Lima', NULL, 1, NULL, '2001-08-21');
INSERT INTO public.logradouros VALUES (120, 'Av. Politécnica', NULL, 1, NULL, '2001-10-10');
INSERT INTO public.logradouros VALUES (130, 'R. das Laranjeiras', NULL, 3, NULL, '2002-01-21');
INSERT INTO public.logradouros VALUES (140, 'R. Direita', NULL, 1, NULL, '2002-05-13');
INSERT INTO public.logradouros VALUES (150, 'R. Roberto Simonsen', NULL, 3, NULL, '2002-05-16');
INSERT INTO public.logradouros VALUES (160, 'R. dos Alfineiros', NULL, 4, NULL, '2002-05-28');
INSERT INTO public.logradouros VALUES (170, 'R Quintino Bocaiuva', NULL, 4, NULL, '2002-10-21');
INSERT INTO public.logradouros VALUES (180, 'Av. João Cabral de Mello Netto', NULL, 6, NULL, '2003-04-23');
INSERT INTO public.logradouros VALUES (190, 'R. Sta Maria da Conceição', NULL, 6, NULL, '2003-05-27');
INSERT INTO public.logradouros VALUES (200, 'R. Tavares de Miranda', NULL, 1, NULL, '2004-02-10');
INSERT INTO public.logradouros VALUES (210, 'R. MMDC', NULL, 1, NULL, '2004-02-14');
INSERT INTO public.logradouros VALUES (220, 'Av. Celso Garcia', NULL, 3, NULL, '2005-01-10');
INSERT INTO public.logradouros VALUES (230, 'R. Circular', NULL, 2, NULL, '2005-02-16');
INSERT INTO public.logradouros VALUES (240, 'Al. das Trombetas', NULL, 2, NULL, '2005-03-12');
INSERT INTO public.logradouros VALUES (250, 'R. Celso Garcia', NULL, 3, NULL, '2005-03-25');
INSERT INTO public.logradouros VALUES (260, 'Av. dos Autonomistas', NULL, 3, NULL, '2005-05-12');
INSERT INTO public.logradouros VALUES (270, 'R. Brigadeiro Faria Lima', NULL, 6, NULL, '2005-05-14');
INSERT INTO public.logradouros VALUES (280, 'R. Troncoso Perez', NULL, 3, NULL, '2005-05-20');
INSERT INTO public.logradouros VALUES (290, 'Av. dos Timbiras', NULL, 1, NULL, '2005-05-20');
INSERT INTO public.logradouros VALUES (300, 'Av. Campos Elíseos', NULL, 1, NULL, '2005-05-28');
INSERT INTO public.logradouros VALUES (310, 'Av. Filadélfia', NULL, 5, NULL, '2005-09-18');
INSERT INTO public.logradouros VALUES (320, 'Av. Maranhão', NULL, 2, NULL, '2005-12-13');
INSERT INTO public.logradouros VALUES (330, 'Av. Liberdade', NULL, 1, NULL, '2006-04-20');
INSERT INTO public.logradouros VALUES (340, 'R. Almeida Lima Gutemberg', NULL, 1, NULL, '2006-05-13');
INSERT INTO public.logradouros VALUES (350, 'Al. Pamplona', NULL, 2, NULL, '2007-01-20');
INSERT INTO public.logradouros VALUES (360, 'R. Augusta', NULL, 1, NULL, '2007-02-02');
INSERT INTO public.logradouros VALUES (370, 'Estrada Ibitirama', NULL, 6, NULL, '2008-01-20');
INSERT INTO public.logradouros VALUES (380, 'Praça Pérola Bygton', NULL, 2, NULL, '2009-10-10');
INSERT INTO public.logradouros VALUES (390, 'R. Paulo Sá', NULL, 1, NULL, '2009-12-10');
INSERT INTO public.logradouros VALUES (400, 'R. Altino Arantes', NULL, 4, NULL, '2010-02-12');
INSERT INTO public.logradouros VALUES (410, 'R. Rui Barbosa', NULL, 6, NULL, '2010-02-12');
INSERT INTO public.logradouros VALUES (420, 'R. dos Alfineiros', NULL, 1, NULL, '2010-10-10');
INSERT INTO public.logradouros VALUES (430, 'R. São Joaquim', NULL, 3, NULL, '2010-10-10');
INSERT INTO public.logradouros VALUES (440, 'R. Alba', NULL, 4, NULL, '2010-10-10');
INSERT INTO public.logradouros VALUES (450, 'Av. Rubens de Almeida Falcão', NULL, 1, NULL, '2010-10-10');
INSERT INTO public.logradouros VALUES (460, 'Av. Rio Branco', NULL, 7, NULL, '2010-10-10');
INSERT INTO public.logradouros VALUES (470, 'Av. Ruben Berta', NULL, 2, NULL, '2010-10-10');
INSERT INTO public.logradouros VALUES (480, 'R. dos Maias', NULL, 1, NULL, '2010-10-10');
INSERT INTO public.logradouros VALUES (490, 'Av. Arthur Thomas', NULL, 2, NULL, '2010-10-10');
INSERT INTO public.logradouros VALUES (500, 'R. Bela Cintra', NULL, 1, NULL, '2010-10-10');
INSERT INTO public.logradouros VALUES (510, 'R. Quintino Bocaiuva', NULL, 5, NULL, '2010-10-10');
INSERT INTO public.logradouros VALUES (520, 'R. Pamplona', NULL, 1, NULL, '2011-06-01');
INSERT INTO public.logradouros VALUES (530, 'R. Bresser', NULL, 1, NULL, '2011-06-10');
INSERT INTO public.logradouros VALUES (540, 'R. Cristóvão Bueno', NULL, 3, NULL, '2011-10-22');
INSERT INTO public.logradouros VALUES (550, 'R. Gaspar Bueno de Almeida', NULL, 2, NULL, '2011-10-24');
INSERT INTO public.logradouros VALUES (560, 'R. Paraisópolis', NULL, 1, NULL, '2012-10-10');
INSERT INTO public.logradouros VALUES (570, 'Rod. Anhaguera', NULL, 1, NULL, '2012-10-10');
INSERT INTO public.logradouros VALUES (580, 'R. Alvarenga Peixoto', NULL, 2, NULL, '2013-03-20');
INSERT INTO public.logradouros VALUES (590, 'Rod. Castelo Branco', NULL, 1, NULL, '2014-01-20');
INSERT INTO public.logradouros VALUES (600, 'R. Pelotas', NULL, 1, NULL, '2014-03-10');
INSERT INTO public.logradouros VALUES (610, 'Av. Vital Brasil', NULL, 1, NULL, '2014-03-14');
INSERT INTO public.logradouros VALUES (620, 'Av das Nações Unidas', NULL, 5, NULL, '2013-10-10');


--
-- Data for Name: logradourostipos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.logradourostipos VALUES (1, 'Rua', '2025-09-21');
INSERT INTO public.logradourostipos VALUES (2, 'Avenida', '2025-09-21');
INSERT INTO public.logradourostipos VALUES (3, 'Rodovia', '2025-09-21');
INSERT INTO public.logradourostipos VALUES (4, 'Alameda', '2025-09-21');
INSERT INTO public.logradourostipos VALUES (5, 'Travessa', '2025-09-21');
INSERT INTO public.logradourostipos VALUES (6, ' Praça', '2025-09-21');
INSERT INTO public.logradourostipos VALUES (7, 'Fazenda', '2025-09-21');


--
-- Data for Name: matriculas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.matriculas VALUES (2, 1, 20, '2014-08-01', '2015-06-30', '2015-07-05');
INSERT INTO public.matriculas VALUES (3, 1, 30, '2014-08-01', '2015-06-30', '2015-07-05');
INSERT INTO public.matriculas VALUES (4, 1, 40, '2014-08-01', '2015-06-30', '2015-07-05');
INSERT INTO public.matriculas VALUES (5, 2, 10, '2014-08-01', '2015-06-30', '2015-07-05');
INSERT INTO public.matriculas VALUES (6, 2, 20, '2014-08-01', '2015-06-30', '2015-07-05');
INSERT INTO public.matriculas VALUES (7, 2, 30, '2014-08-01', '2015-06-30', '2015-07-05');
INSERT INTO public.matriculas VALUES (8, 2, 40, '2014-08-01', '2015-06-30', '2015-07-05');
INSERT INTO public.matriculas VALUES (9, 3, 10, '2014-08-01', '2015-06-30', '2015-07-05');
INSERT INTO public.matriculas VALUES (10, 3, 20, '2014-08-01', '2015-06-30', '2015-07-05');
INSERT INTO public.matriculas VALUES (11, 3, 30, '2014-08-01', '2015-06-30', '2015-07-05');
INSERT INTO public.matriculas VALUES (12, 3, 40, '2014-08-01', '2015-06-30', '2015-07-05');
INSERT INTO public.matriculas VALUES (13, 4, 10, '2014-08-01', '2015-06-30', '2015-07-05');
INSERT INTO public.matriculas VALUES (14, 4, 20, '2014-08-01', '2015-06-30', '2015-07-05');
INSERT INTO public.matriculas VALUES (15, 4, 30, '2014-08-01', '2015-06-30', '2015-07-05');
INSERT INTO public.matriculas VALUES (16, 4, 40, '2014-08-01', '2015-06-30', '2015-07-05');
INSERT INTO public.matriculas VALUES (21, 5, 230, '2012-10-10', '2013-10-10', '2012-10-05');
INSERT INTO public.matriculas VALUES (1, 1, 70, '2014-08-01', '2015-06-30', '2015-07-05');


--
-- Data for Name: medicos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.medicos VALUES (1, 'Sebastião', 1234, 5, NULL, 350, '', NULL, 350, '', NULL, NULL, '2010-10-05');
INSERT INTO public.medicos VALUES (2, 'Franco da Rocha', 1233, 1, NULL, 470, '', NULL, 350, '', NULL, NULL, '2010-10-05');
INSERT INTO public.medicos VALUES (3, 'Rogerio Albuquerque de Oliveira', 1235678, 2, NULL, 240, '', NULL, 350, '', NULL, NULL, '1986-05-10');
INSERT INTO public.medicos VALUES (7, 'Natalia', 123123, 2, NULL, 470, '', NULL, 470, '', NULL, NULL, '2010-10-10');
INSERT INTO public.medicos VALUES (9, 'Geraldo Luiz Albuquerque Ramos', 7765765, 1, NULL, 610, '', NULL, 300, '', NULL, NULL, '2010-10-10');
INSERT INTO public.medicos VALUES (8, 'Alberto Clementino dos Santos', 332222, 3, NULL, 20, '500', NULL, 470, '456', NULL, NULL, '2001-10-05');
INSERT INTO public.medicos VALUES (16, 'Marina Emanuela Carolina Bizeo', 123452, 4, NULL, 240, '450', NULL, 620, '540', NULL, NULL, '2010-10-10');


--
-- Data for Name: medicostels; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: movimentos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.movimentos VALUES (1, 10, 50, '2010-10-10', 10, '2010-10-10', '2010-10-10', '2010-10-15');
INSERT INTO public.movimentos VALUES (2, 40, 80, '2011-08-25', 10, '2011-08-25', '2011-08-25', '2011-08-25');
INSERT INTO public.movimentos VALUES (3, 40, 70, '2011-08-31', 20, '2011-08-31', '2011-08-31', '2011-08-31');
INSERT INTO public.movimentos VALUES (4, 40, 200, '2011-08-31', 30, '2011-08-31', '2011-08-31', '2011-08-31');
INSERT INTO public.movimentos VALUES (5, 10, 50, '2010-10-11', 30, '2010-10-11', '2010-10-11', '2010-10-15');
INSERT INTO public.movimentos VALUES (7, 10, 50, '2010-10-10', 20, '2010-10-10', '2010-10-10', '2010-10-15');
INSERT INTO public.movimentos VALUES (6, 20, 150, '2010-10-10', 20, '2010-10-15', '2010-10-14', '2010-10-10');


--
-- Data for Name: movimentostipos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.movimentostipos VALUES (10, 'Entrada em Tombamento', 'A', '2011-08-20');
INSERT INTO public.movimentostipos VALUES (20, 'Saida de Tombamento', 'A', '2011-08-20');
INSERT INTO public.movimentostipos VALUES (30, 'Disponibilização em Acervo', 'A', '2011-08-20');
INSERT INTO public.movimentostipos VALUES (40, 'Retirada da Acervo', 'S', '2011-08-20');
INSERT INTO public.movimentostipos VALUES (50, 'Devolução de Retirada do Acervo', 'E', '2011-08-20');
INSERT INTO public.movimentostipos VALUES (60, 'Consulta do Acervo', 'S', '2011-08-20');
INSERT INTO public.movimentostipos VALUES (70, 'Devolução de Consulta do Acervo', 'E', '2014-05-26');
INSERT INTO public.movimentostipos VALUES (80, 'Empréstimo entre Bibliotecas', 'S', '2014-03-29');
INSERT INTO public.movimentostipos VALUES (90, 'Devolução de Empréstimo entre Bibliotecas', 'E', '2014-03-29');
INSERT INTO public.movimentostipos VALUES (100, 'Retirada para Manutenção da Peça do Acervo', 'A', '2014-03-29');
INSERT INTO public.movimentostipos VALUES (110, 'Devolução de Manutenção de Peça do Acervo', 'A', '2014-03-29');


--
-- Data for Name: nfcompras; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.nfcompras VALUES (2, 2, 10, '2016-10-10', 2500, 'A', 'Bons profutos na última compra', '2016-10-10');
INSERT INTO public.nfcompras VALUES (1, 5, 10, '2016-10-10', 3105, 'A', 'Fornecedor com bom histórico de compra', '2016-10-10');
INSERT INTO public.nfcompras VALUES (3, 1, 20, '2016-10-10', 3150, 'A', 'Ótimo gado de Corte', '2016-10-10');


--
-- Data for Name: nfcomprasitens; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.nfcomprasitens VALUES (1, '001001001001', 10, 38);
INSERT INTO public.nfcomprasitens VALUES (1, '001001001002', 25, 45);
INSERT INTO public.nfcomprasitens VALUES (1, '001001001003', 40, 40);
INSERT INTO public.nfcomprasitens VALUES (2, '001003001001', 50, 40);
INSERT INTO public.nfcomprasitens VALUES (2, '001002001004', 10, 50);
INSERT INTO public.nfcomprasitens VALUES (3, '001001001001', 20, 45);
INSERT INTO public.nfcomprasitens VALUES (3, '001001001003', 50, 45);


--
-- Data for Name: nfvendas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.nfvendas VALUES (41, 5, 50, 1, 90, '2012-05-01', '2012-05-01', '2012-05-01');
INSERT INTO public.nfvendas VALUES (42, 30, 50, 3, 90, '2012-05-01', '2012-05-01', '2012-05-01');
INSERT INTO public.nfvendas VALUES (43, 25, 50, 2, 53, '2012-05-01', '2012-05-01', '2012-05-01');
INSERT INTO public.nfvendas VALUES (44, 25, 50, 1, 90, '2012-05-01', '2012-05-01', '2012-05-01');
INSERT INTO public.nfvendas VALUES (45, 30, 60, 2, 90, '2012-05-01', '2012-05-01', '2012-05-01');
INSERT INTO public.nfvendas VALUES (46, 10, 60, 3, 90, '2012-05-01', '2012-05-01', '2012-05-01');
INSERT INTO public.nfvendas VALUES (47, 30, 50, 1, 90, '2012-05-01', '2012-05-01', '2012-05-01');
INSERT INTO public.nfvendas VALUES (48, 35, 200, 2, 65.5, '2012-05-02', '2012-05-02', '2012-05-02');
INSERT INTO public.nfvendas VALUES (49, 20, 90, 3, 90, '2012-05-02', '2012-05-02', '2012-05-02');
INSERT INTO public.nfvendas VALUES (50, 10, 50, 2, 90, '2012-05-02', '2012-05-02', '2012-05-02');
INSERT INTO public.nfvendas VALUES (51, 10, 60, 1, 90, '2012-05-02', '2012-05-02', '2012-05-02');
INSERT INTO public.nfvendas VALUES (53, 5, 200, 3, 90, '2012-05-02', '2012-05-02', '2012-05-02');
INSERT INTO public.nfvendas VALUES (54, 25, 50, 1, 90, '2012-05-02', '2012-05-02', '2012-05-02');
INSERT INTO public.nfvendas VALUES (55, 30, 50, 2, 90, '2012-05-02', '2012-05-02', '2012-05-02');
INSERT INTO public.nfvendas VALUES (56, 30, 60, 1, 90, '2012-05-02', '2012-05-02', '2012-05-02');
INSERT INTO public.nfvendas VALUES (57, 5, 200, 2, 56, '2012-05-02', '2012-05-02', '2012-05-02');
INSERT INTO public.nfvendas VALUES (58, 35, 150, 3, 90, '2012-05-02', '2012-05-02', '2012-05-02');
INSERT INTO public.nfvendas VALUES (59, 35, 200, 3, 90, '2012-05-02', '2012-05-02', '2012-05-02');
INSERT INTO public.nfvendas VALUES (60, 35, 190, 3, 90, '2012-05-02', '2012-05-02', '2012-05-02');
INSERT INTO public.nfvendas VALUES (61, 40, 190, 1, 44, '2012-05-02', '2012-05-02', '2012-05-02');
INSERT INTO public.nfvendas VALUES (62, 35, 190, 1, 90, '2012-05-03', '2012-05-03', '2012-05-03');
INSERT INTO public.nfvendas VALUES (63, 40, 170, 2, 90, '2012-05-03', '2012-05-03', '2012-05-03');
INSERT INTO public.nfvendas VALUES (64, 35, 200, 3, 90, '2012-05-03', '2012-05-03', '2012-05-03');
INSERT INTO public.nfvendas VALUES (65, 5, 170, 1, 90, '2012-05-03', '2012-05-03', '2012-05-03');
INSERT INTO public.nfvendas VALUES (66, 10, 170, 2, 58.5, '2012-05-03', '2012-05-03', '2012-05-03');
INSERT INTO public.nfvendas VALUES (67, 15, 180, 2, 56, '2012-05-03', '2012-05-03', '2012-05-03');
INSERT INTO public.nfvendas VALUES (68, 10, 170, 3, 90, '2012-05-03', '2012-05-03', '2012-05-03');
INSERT INTO public.nfvendas VALUES (69, 10, 150, 1, 90, '2012-05-03', '2012-05-03', '2012-05-03');
INSERT INTO public.nfvendas VALUES (70, 10, 190, 2, 90, '2012-05-03', '2012-05-03', '2012-05-03');
INSERT INTO public.nfvendas VALUES (101, 40, 470, 2, 37, '2012-05-09', '2012-05-09', '2012-05-09');
INSERT INTO public.nfvendas VALUES (102, 10, 460, 3, 77.5, '2012-05-09', '2012-05-09', '2012-05-09');
INSERT INTO public.nfvendas VALUES (103, 10, 200, 1, 77.5, '2012-05-10', '2012-05-10', '2012-05-10');
INSERT INTO public.nfvendas VALUES (104, 10, 470, 2, 46, '2012-05-10', '2012-05-10', '2012-05-10');
INSERT INTO public.nfvendas VALUES (105, 5, 460, 2, 37, '2012-05-10', '2012-05-10', '2012-05-10');
INSERT INTO public.nfvendas VALUES (106, 35, 460, 3, 65.5, '2012-05-10', '2012-05-10', '2012-05-10');
INSERT INTO public.nfvendas VALUES (107, 40, 450, 1, 58.5, '2012-05-11', '2012-05-11', '2012-05-11');
INSERT INTO public.nfvendas VALUES (108, 40, 370, 2, 90, '2012-05-11', '2012-05-11', '2012-05-11');
INSERT INTO public.nfvendas VALUES (109, 40, 200, 3, 77.5, '2012-05-11', '2012-05-11', '2012-05-11');
INSERT INTO public.nfvendas VALUES (110, 40, 350, 1, 90, '2012-05-11', '2012-05-11', '2012-05-11');
INSERT INTO public.nfvendas VALUES (111, 10, 360, 3, 90, '2012-05-11', '2012-05-11', '2012-05-11');
INSERT INTO public.nfvendas VALUES (112, 35, 200, 2, 65.5, '2012-05-12', '2012-05-12', '2012-05-12');
INSERT INTO public.nfvendas VALUES (113, 40, 450, 2, 65.5, '2012-05-12', '2012-05-12', '2012-05-12');
INSERT INTO public.nfvendas VALUES (114, 40, 450, 1, 68.5, '2012-05-12', '2012-05-12', '2012-05-12');
INSERT INTO public.nfvendas VALUES (115, 30, 450, 1, 58.5, '2012-05-13', '2012-05-13', '2012-05-13');
INSERT INTO public.nfvendas VALUES (116, 10, 440, 1, 77.5, '2012-05-13', '2012-05-13', '2012-05-13');
INSERT INTO public.nfvendas VALUES (117, 10, 200, 1, 90, '2012-05-13', '2012-05-13', '2012-05-13');
INSERT INTO public.nfvendas VALUES (118, 15, 370, 3, 56, '2012-05-14', '2012-05-14', '2012-05-14');
INSERT INTO public.nfvendas VALUES (119, 35, 200, 2, 90, '2012-05-14', '2012-05-14', '2012-05-14');
INSERT INTO public.nfvendas VALUES (120, 15, 200, 1, 56, '2012-05-14', '2012-05-14', '2012-05-14');
INSERT INTO public.nfvendas VALUES (121, 20, 370, 2, 58.5, '2012-05-14', '2012-05-14', '2012-05-14');
INSERT INTO public.nfvendas VALUES (122, 10, 200, 3, 77.5, '2012-05-15', '2012-05-15', '2012-05-15');
INSERT INTO public.nfvendas VALUES (123, 20, 200, 1, 56, '2012-05-15', '2012-05-15', '2012-05-15');
INSERT INTO public.nfvendas VALUES (124, 30, 350, 2, 58.5, '2012-05-15', '2012-05-15', '2012-05-15');
INSERT INTO public.nfvendas VALUES (125, 15, 360, 3, 77.5, '2012-05-15', '2012-05-15', '2012-05-15');
INSERT INTO public.nfvendas VALUES (126, 10, 460, 2, 34, '2012-05-15', '2012-05-15', '2012-05-15');
INSERT INTO public.nfvendas VALUES (127, 5, 200, 1, 90, '2012-05-16', '2012-05-16', '2012-05-16');
INSERT INTO public.nfvendas VALUES (129, 10, 450, 3, 90, '2012-05-16', '2012-05-16', '2012-05-16');
INSERT INTO public.nfvendas VALUES (130, 10, 370, 1, 90, '2012-05-16', '2012-05-16', '2012-05-16');
INSERT INTO public.nfvendas VALUES (131, 10, 200, 2, 90, '2012-05-16', '2012-05-16', '2012-05-16');
INSERT INTO public.nfvendas VALUES (132, 30, 360, 1, 34, '2012-05-16', '2012-05-16', '2012-05-16');
INSERT INTO public.nfvendas VALUES (133, 10, 200, 2, 90, '2012-05-17', '2012-05-17', '2012-05-17');
INSERT INTO public.nfvendas VALUES (134, 20, 190, 3, 56, '2012-05-17', '2012-05-17', '2012-05-17');
INSERT INTO public.nfvendas VALUES (135, 25, 200, 3, 90, '2012-05-17', '2012-05-17', '2012-05-17');
INSERT INTO public.nfvendas VALUES (136, 35, 350, 3, 56, '2012-05-17', '2012-05-17', '2012-05-17');
INSERT INTO public.nfvendas VALUES (137, 40, 460, 1, 90, '2012-05-17', '2012-05-17', '2012-05-17');
INSERT INTO public.nfvendas VALUES (138, 5, 200, 1, 56, '2012-05-17', '2012-05-17', '2012-05-17');
INSERT INTO public.nfvendas VALUES (139, 20, 440, 2, 90, '2012-05-18', '2012-05-18', '2012-05-18');
INSERT INTO public.nfvendas VALUES (140, 5, 350, 3, 68.5, '2012-05-18', '2012-05-18', '2012-05-18');
INSERT INTO public.nfvendas VALUES (141, 15, 340, 1, 68.5, '2012-05-18', '2012-05-18', '2012-05-18');
INSERT INTO public.nfvendas VALUES (142, 10, 180, 2, 58.5, '2012-05-19', '2012-05-19', '2012-05-19');
INSERT INTO public.nfvendas VALUES (143, 5, 120, 2, 58.5, '2012-05-19', '2012-05-19', '2012-05-19');
INSERT INTO public.nfvendas VALUES (145, 10, 200, 1, 65.5, '2012-05-20', '2012-05-20', '2012-05-20');
INSERT INTO public.nfvendas VALUES (146, 35, 350, 2, 90, '2012-05-20', '2012-05-20', '2012-05-20');
INSERT INTO public.nfvendas VALUES (147, 35, 450, 3, 90, '2012-05-20', '2012-05-20', '2012-05-20');
INSERT INTO public.nfvendas VALUES (149, 35, 170, 3, 90, '2012-05-22', '2012-05-22', '2012-05-22');
INSERT INTO public.nfvendas VALUES (150, 30, 460, 2, 56, '2012-05-22', '2012-05-22', '2012-05-22');
INSERT INTO public.nfvendas VALUES (151, 30, 360, 2, 90, '2012-05-22', '2012-05-22', '2012-05-22');
INSERT INTO public.nfvendas VALUES (152, 30, 150, 3, 132, '2010-10-10', '2010-10-10', '2010-10-10');
INSERT INTO public.nfvendas VALUES (1, 35, 170, 1, 55.5, '2012-04-24', '2012-04-24', '2012-04-24');
INSERT INTO public.nfvendas VALUES (2, 35, 160, 1, 68.5, '2012-04-24', '2012-04-24', '2012-04-24');
INSERT INTO public.nfvendas VALUES (3, 10, 150, 1, 90, '2012-04-25', '2012-04-25', '2012-04-25');
INSERT INTO public.nfvendas VALUES (4, 5, 110, 3, 68.5, '2012-04-25', '2012-04-25', '2012-04-25');
INSERT INTO public.nfvendas VALUES (5, 20, 200, 2, 65.5, '2012-04-25', '2012-04-25', '2012-04-25');
INSERT INTO public.nfvendas VALUES (6, 40, 200, 1, 65.5, '2012-04-25', '2012-04-25', '2012-04-25');
INSERT INTO public.nfvendas VALUES (7, 5, 150, 2, 34, '2012-04-25', '2012-04-25', '2012-04-25');
INSERT INTO public.nfvendas VALUES (8, 10, 160, 3, 90, '2012-04-25', '2012-04-25', '2012-04-25');
INSERT INTO public.nfvendas VALUES (9, 10, 200, 1, 90, '2012-04-25', '2012-04-25', '2012-04-25');
INSERT INTO public.nfvendas VALUES (10, 25, 200, 2, 90, '2012-04-27', '2012-04-27', '2012-04-27');
INSERT INTO public.nfvendas VALUES (11, 10, 50, 3, 90, '2012-04-27', '2012-04-27', '2012-04-27');
INSERT INTO public.nfvendas VALUES (12, 10, 50, 2, 58.5, '2012-04-27', '2012-04-27', '2012-04-27');
INSERT INTO public.nfvendas VALUES (13, 40, 200, 1, 90, '2012-04-28', '2012-04-28', '2012-04-28');
INSERT INTO public.nfvendas VALUES (15, 5, 50, 3, 90, '2012-04-28', '2012-04-28', '2012-04-28');
INSERT INTO public.nfvendas VALUES (16, 5, 200, 1, 58.5, '2012-04-28', '2012-04-28', '2012-04-28');
INSERT INTO public.nfvendas VALUES (17, 40, 200, 2, 90, '2012-04-28', '2012-04-28', '2012-04-28');
INSERT INTO public.nfvendas VALUES (18, 10, 100, 1, 90, '2012-04-28', '2012-04-28', '2012-04-28');
INSERT INTO public.nfvendas VALUES (19, 10, 100, 2, 90, '2012-04-29', '2012-04-29', '2012-04-29');
INSERT INTO public.nfvendas VALUES (20, 10, 100, 3, 90, '2012-04-29', '2012-04-29', '2012-04-29');
INSERT INTO public.nfvendas VALUES (21, 10, 100, 3, 90, '2012-04-29', '2012-04-29', '2012-04-29');
INSERT INTO public.nfvendas VALUES (22, 10, 100, 3, 90, '2012-04-29', '2012-04-29', '2012-04-29');
INSERT INTO public.nfvendas VALUES (23, 10, 90, 1, 90, '2012-04-29', '2012-04-29', '2012-04-29');
INSERT INTO public.nfvendas VALUES (24, 10, 100, 1, 90, '2012-04-29', '2012-04-29', '2012-04-29');
INSERT INTO public.nfvendas VALUES (25, 5, 100, 2, 68.5, '2012-04-30', '2012-04-30', '2012-04-30');
INSERT INTO public.nfvendas VALUES (26, 25, 100, 3, 68.5, '2012-04-30', '2012-04-30', '2012-04-30');
INSERT INTO public.nfvendas VALUES (27, 25, 100, 1, 90, '2012-04-30', '2012-04-30', '2012-04-30');
INSERT INTO public.nfvendas VALUES (28, 20, 100, 2, 90, '2012-04-30', '2012-04-30', '2012-04-30');
INSERT INTO public.nfvendas VALUES (29, 5, 100, 2, 90, '2012-04-30', '2012-04-30', '2012-04-30');
INSERT INTO public.nfvendas VALUES (30, 15, 100, 3, 90, '2012-04-30', '2012-04-30', '2012-04-30');
INSERT INTO public.nfvendas VALUES (31, 25, 50, 1, 90, '2012-04-30', '2012-04-30', '2012-04-30');
INSERT INTO public.nfvendas VALUES (32, 5, 200, 2, 90, '2012-04-30', '2012-04-30', '2012-04-30');
INSERT INTO public.nfvendas VALUES (33, 10, 200, 3, 90, '2012-04-30', '2012-04-30', '2012-04-30');
INSERT INTO public.nfvendas VALUES (34, 10, 50, 1, 90, '2012-04-30', '2012-04-30', '2012-04-30');
INSERT INTO public.nfvendas VALUES (35, 15, 50, 3, 77.5, '2012-04-30', '2012-04-30', '2012-04-30');
INSERT INTO public.nfvendas VALUES (36, 10, 200, 2, 77.5, '2012-04-30', '2012-04-30', '2012-04-30');
INSERT INTO public.nfvendas VALUES (37, 10, 50, 2, 90, '2012-04-30', '2012-04-30', '2012-04-30');
INSERT INTO public.nfvendas VALUES (38, 10, 50, 1, 90, '2012-04-30', '2012-04-30', '2012-04-30');
INSERT INTO public.nfvendas VALUES (39, 10, 200, 1, 90, '2012-05-01', '2012-05-01', '2012-05-01');
INSERT INTO public.nfvendas VALUES (40, 10, 200, 1, 90, '2012-05-01', '2012-05-01', '2012-05-01');
INSERT INTO public.nfvendas VALUES (71, 15, 180, 3, 58.5, '2012-05-04', '2012-05-04', '2012-05-04');
INSERT INTO public.nfvendas VALUES (72, 10, 180, 1, 77.5, '2012-05-04', '2012-05-04', '2012-05-04');
INSERT INTO public.nfvendas VALUES (73, 10, 200, 3, 90, '2012-05-04', '2012-05-04', '2012-05-04');
INSERT INTO public.nfvendas VALUES (74, 25, 180, 2, 90, '2012-05-04', '2012-05-04', '2012-05-04');
INSERT INTO public.nfvendas VALUES (75, 30, 130, 2, 90, '2012-05-04', '2012-05-04', '2012-05-04');
INSERT INTO public.nfvendas VALUES (76, 15, 180, 1, 90, '2012-05-05', '2012-05-05', '2012-05-05');
INSERT INTO public.nfvendas VALUES (77, 10, 360, 1, 56, '2012-05-05', '2012-05-05', '2012-05-05');
INSERT INTO public.nfvendas VALUES (78, 40, 50, 1, 90, '2012-05-05', '2012-05-05', '2012-05-05');
INSERT INTO public.nfvendas VALUES (79, 15, 200, 1, 90, '2012-05-05', '2012-05-05', '2012-05-05');
INSERT INTO public.nfvendas VALUES (80, 35, 160, 3, 90, '2012-05-06', '2012-05-06', '2012-05-06');
INSERT INTO public.nfvendas VALUES (81, 15, 160, 2, 65.5, '2012-05-06', '2012-05-06', '2012-05-06');
INSERT INTO public.nfvendas VALUES (82, 20, 200, 1, 68.5, '2012-05-06', '2012-05-06', '2012-05-06');
INSERT INTO public.nfvendas VALUES (83, 25, 120, 2, 68.5, '2012-05-06', '2012-05-06', '2012-05-06');
INSERT INTO public.nfvendas VALUES (84, 30, 110, 3, 90, '2012-05-06', '2012-05-06', '2012-05-06');
INSERT INTO public.nfvendas VALUES (85, 25, 190, 1, 90, '2012-05-07', '2012-05-07', '2012-05-07');
INSERT INTO public.nfvendas VALUES (86, 35, 90, 2, 68.5, '2012-05-07', '2012-05-07', '2012-05-07');
INSERT INTO public.nfvendas VALUES (87, 5, 60, 3, 58.5, '2012-05-07', '2012-05-07', '2012-05-07');
INSERT INTO public.nfvendas VALUES (88, 40, 200, 2, 58.5, '2012-05-07', '2012-05-07', '2012-05-07');
INSERT INTO public.nfvendas VALUES (89, 10, 360, 1, 90, '2012-05-07', '2012-05-07', '2012-05-07');
INSERT INTO public.nfvendas VALUES (91, 40, 200, 3, 90, '2012-05-07', '2012-05-07', '2012-05-07');
INSERT INTO public.nfvendas VALUES (92, 15, 200, 1, 90, '2012-05-07', '2012-05-07', '2012-05-07');
INSERT INTO public.nfvendas VALUES (93, 20, 200, 2, 90, '2012-05-08', '2012-05-08', '2012-05-08');
INSERT INTO public.nfvendas VALUES (94, 20, 180, 1, 34, '2012-05-08', '2012-05-08', '2012-05-08');
INSERT INTO public.nfvendas VALUES (95, 15, 360, 2, 90, '2012-05-08', '2012-05-08', '2012-05-08');
INSERT INTO public.nfvendas VALUES (96, 10, 200, 3, 44, '2012-05-08', '2012-05-08', '2012-05-08');
INSERT INTO public.nfvendas VALUES (97, 30, 200, 3, 68.5, '2012-05-08', '2012-05-08', '2012-05-08');
INSERT INTO public.nfvendas VALUES (98, 20, 200, 3, 68.5, '2012-05-09', '2012-05-09', '2012-05-09');
INSERT INTO public.nfvendas VALUES (99, 15, 440, 1, 68.5, '2012-05-09', '2012-05-09', '2012-05-09');
INSERT INTO public.nfvendas VALUES (100, 40, 360, 1, 68.5, '2012-05-09', '2012-05-09', '2012-05-09');


--
-- Data for Name: nfvendasitens; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.nfvendasitens VALUES (1, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (1, '001001001002', 20, 2.15);
INSERT INTO public.nfvendasitens VALUES (2, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (2, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (2, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (3, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (3, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (3, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (3, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (4, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (4, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (4, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (5, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (5, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (5, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (6, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (6, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (6, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (7, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (7, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (8, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (8, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (8, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (8, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (9, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (9, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (9, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (9, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (10, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (10, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (10, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (10, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (11, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (11, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (11, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (11, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (12, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (12, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (12, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (13, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (13, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (13, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (13, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (15, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (15, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (15, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (15, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (16, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (16, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (16, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (17, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (17, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (17, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (17, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (18, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (18, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (18, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (18, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (19, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (19, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (19, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (19, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (20, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (20, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (20, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (20, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (21, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (21, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (21, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (21, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (22, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (22, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (22, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (22, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (23, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (23, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (23, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (23, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (24, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (24, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (24, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (24, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (25, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (25, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (25, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (26, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (26, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (26, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (27, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (27, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (27, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (27, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (28, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (28, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (28, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (28, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (29, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (29, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (29, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (29, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (30, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (30, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (30, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (30, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (31, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (31, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (31, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (31, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (32, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (32, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (32, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (32, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (33, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (33, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (33, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (33, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (34, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (34, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (34, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (34, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (35, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (35, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (35, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (36, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (36, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (36, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (37, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (37, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (37, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (37, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (38, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (38, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (38, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (38, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (39, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (39, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (39, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (39, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (40, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (40, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (40, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (40, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (41, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (41, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (41, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (41, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (42, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (42, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (42, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (42, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (43, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (43, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (44, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (44, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (44, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (44, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (45, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (45, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (45, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (45, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (46, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (46, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (46, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (46, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (47, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (47, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (47, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (47, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (48, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (48, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (48, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (49, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (49, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (49, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (49, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (50, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (50, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (50, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (50, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (51, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (51, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (51, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (51, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (53, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (53, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (53, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (53, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (54, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (54, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (54, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (54, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (55, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (55, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (55, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (55, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (56, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (56, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (56, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (56, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (57, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (57, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (58, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (58, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (58, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (58, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (59, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (59, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (59, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (59, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (60, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (60, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (60, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (60, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (61, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (61, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (62, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (62, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (62, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (62, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (63, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (63, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (63, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (63, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (64, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (64, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (64, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (64, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (65, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (65, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (65, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (65, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (66, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (66, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (66, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (67, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (67, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (68, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (68, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (68, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (68, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (69, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (69, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (69, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (69, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (70, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (70, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (70, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (70, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (71, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (71, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (71, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (72, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (72, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (72, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (73, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (73, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (73, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (73, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (74, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (74, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (74, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (74, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (75, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (75, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (75, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (75, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (76, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (76, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (76, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (76, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (77, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (77, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (78, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (78, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (78, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (78, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (79, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (79, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (79, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (79, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (80, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (80, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (80, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (80, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (81, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (81, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (81, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (82, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (82, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (82, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (83, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (83, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (83, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (84, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (84, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (84, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (84, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (85, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (85, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (85, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (85, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (86, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (86, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (86, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (87, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (87, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (87, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (88, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (88, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (88, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (89, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (89, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (89, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (89, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (91, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (91, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (91, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (91, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (92, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (92, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (92, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (92, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (93, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (93, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (93, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (93, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (94, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (94, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (95, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (95, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (95, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (95, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (96, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (96, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (97, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (97, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (97, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (98, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (98, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (98, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (99, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (99, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (99, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (100, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (100, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (100, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (101, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (101, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (102, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (102, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (102, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (103, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (103, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (103, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (104, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (104, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (105, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (105, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (106, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (106, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (106, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (107, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (107, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (107, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (108, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (108, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (108, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (108, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (109, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (109, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (109, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (110, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (110, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (110, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (110, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (111, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (111, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (111, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (111, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (112, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (112, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (112, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (113, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (113, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (113, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (114, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (114, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (114, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (115, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (115, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (115, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (116, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (116, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (116, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (117, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (117, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (117, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (117, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (118, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (118, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (119, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (119, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (119, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (119, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (120, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (120, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (121, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (121, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (121, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (122, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (122, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (122, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (123, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (123, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (124, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (124, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (124, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (125, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (125, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (125, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (126, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (126, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (127, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (127, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (127, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (127, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (129, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (129, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (129, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (129, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (130, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (130, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (130, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (130, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (131, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (131, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (131, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (131, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (132, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (132, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (133, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (133, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (133, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (133, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (134, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (134, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (135, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (135, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (135, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (135, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (136, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (136, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (137, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (137, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (137, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (137, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (138, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (138, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (139, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (139, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (139, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (139, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (140, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (140, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (140, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (141, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (141, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (141, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (142, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (142, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (142, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (143, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (143, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (143, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (145, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (145, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (145, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (146, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (146, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (146, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (146, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (147, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (147, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (147, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (147, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (149, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (149, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (149, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (149, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (150, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (150, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (151, '001001001001', 10, 1.25);
INSERT INTO public.nfvendasitens VALUES (151, '001001001002', 10, 2.15);
INSERT INTO public.nfvendasitens VALUES (151, '001001001003', 10, 2.45);
INSERT INTO public.nfvendasitens VALUES (151, '001001001005', 10, 3.15);
INSERT INTO public.nfvendasitens VALUES (152, '001001001003', 20, 2.45);
INSERT INTO public.nfvendasitens VALUES (152, '001001001005', 20, 3.15);
INSERT INTO public.nfvendasitens VALUES (152, '001002001004', 10, 2);


--
-- Data for Name: ocorrencias; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.ocorrencias VALUES (5, 1, 5, 145241, 120, 130, 'Colisão lateral dos veículos trafegando pela Av. Politécnica e logo a seguir colindo com um muro e um poste no cruzamento da R. das Laranjeiras.', '2010-10-10');
INSERT INTO public.ocorrencias VALUES (6, 3, 8, 145241, 170, 300, 'Roubo com uso de arma de fogo por volta das 23h00', '2010-10-10');


--
-- Data for Name: oficinas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.oficinas VALUES (1, 'Oficina Mecânica de Reparos Gerais Luiz Porto S/C Ltda.', '01245241521   ', 'Luizinho', 520, NULL, '2010-10-10');
INSERT INTO public.oficinas VALUES (2, 'Oficina de Reparos Gerais "Marreco" S/C Ltda.', '123123        ', 'Marreco', 240, NULL, '2015-10-10');


--
-- Data for Name: oficinastels; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.oficinastels VALUES (1, 1, 10, '1174185296     ', NULL, '2019-09-02');
INSERT INTO public.oficinastels VALUES (2, 2, 10, '5474185296     ', NULL, '2019-09-02');
INSERT INTO public.oficinastels VALUES (3, 2, 10, '1196385274     ', NULL, '2019-09-02');
INSERT INTO public.oficinastels VALUES (4, 1, 10, '3145124512     ', NULL, '2019-09-02');
INSERT INTO public.oficinastels VALUES (5, 2, 15, '43985264521    ', NULL, '2019-09-02');


--
-- Data for Name: paises; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: palavraschaves; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.palavraschaves VALUES (1, 'Amor', '2010-12-13');
INSERT INTO public.palavraschaves VALUES (2, 'Carinho', '2010-12-13');
INSERT INTO public.palavraschaves VALUES (3, 'Amizade', '2010-12-13');
INSERT INTO public.palavraschaves VALUES (4, 'Convivencia', '2010-12-13');
INSERT INTO public.palavraschaves VALUES (7, 'Solidariedade', '2010-12-10');
INSERT INTO public.palavraschaves VALUES (5, 'Compreensão', '2010-12-10');
INSERT INTO public.palavraschaves VALUES (6, 'Confiança', '2010-12-10');
INSERT INTO public.palavraschaves VALUES (8, 'Lógica', '2016-12-07');
INSERT INTO public.palavraschaves VALUES (9, 'Matemática', '2016-12-07');
INSERT INTO public.palavraschaves VALUES (10, 'Física', '2016-12-07');
INSERT INTO public.palavraschaves VALUES (11, 'Cálculo Diferencial', '2016-12-07');


--
-- Data for Name: palavraslivros; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.palavraslivros VALUES (1, 92, '2016-12-07');
INSERT INTO public.palavraslivros VALUES (2, 92, '2016-12-07');
INSERT INTO public.palavraslivros VALUES (11, 90, '2016-12-07');
INSERT INTO public.palavraslivros VALUES (9, 90, '2016-12-07');
INSERT INTO public.palavraslivros VALUES (9, 40, '2016-12-07');
INSERT INTO public.palavraslivros VALUES (10, 50, '2016-12-07');


--
-- Data for Name: passagens; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: pedcompras; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: pedcomprasitens; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: pedvendas; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: pedvendasitens; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: planosdesaude; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.planosdesaude VALUES (1, 'Unimed', 'zvfzxfasdfsdfasdf', NULL, 350, ' 1243', '2354235 ', '2010-10-27');
INSERT INTO public.planosdesaude VALUES (2, 'SulAmericana', 'Trocando os valores', NULL, 470, ' 1492', '14524515', '2010-10-27');
INSERT INTO public.planosdesaude VALUES (4, 'MedialSaude', NULL, NULL, 470, ' 1492', NULL, '2010-10-27');
INSERT INTO public.planosdesaude VALUES (5, 'teter', 'sadfsdf', NULL, 470, ' 234', '12313123', '2010-10-10');


--
-- Data for Name: planosdesaudemedicos; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: planosdesaudetels; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.planosdesaudetels VALUES (5, 2, 5, '12341234       ', NULL, '2016-06-10');
INSERT INTO public.planosdesaudetels VALUES (8, 4, 5, '141514541242   ', NULL, '2016-07-05');
INSERT INTO public.planosdesaudetels VALUES (2, 4, 10, '1452451255     ', NULL, '2016-05-20');
INSERT INTO public.planosdesaudetels VALUES (3, 4, 15, '5642151651     ', NULL, '2016-06-20');
INSERT INTO public.planosdesaudetels VALUES (1, 4, 20, '1421254412     ', NULL, '2016-05-20');
INSERT INTO public.planosdesaudetels VALUES (4, 2, 20, '12341234       ', NULL, '2016-05-25');
INSERT INTO public.planosdesaudetels VALUES (7, 1, 20, '2134523453     ', NULL, '2016-07-08');


--
-- Data for Name: produtos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.produtos VALUES ('001003001002', 'Trocando de Valor na Descricao Curta', 123.00, 120.00, 120.00, 0.00, 15, 'Trocando de Valor na Descricao completa', '2010-10-10');
INSERT INTO public.produtos VALUES ('001001001001', 'metafluocoreto de potássio', 40.00, 35.00, 26.00, 0.00, 0, 'o metafluocoreto ', '1980-01-01');
INSERT INTO public.produtos VALUES ('001001001002', 'sulfito de sódio', 45.00, 20.00, 10.00, 0.00, 0, 'asdfasdfadsf', '2010-10-10');
INSERT INTO public.produtos VALUES ('001001001003', 'enxofre', 42.00, 12.00, 23.00, 0.00, 0, 'laskfjsdf', '1980-01-01');
INSERT INTO public.produtos VALUES ('001001001005', 'Permanganato de Silício', 35.00, 1450.00, 1400.00, 0.00, 0, NULL, '2011-01-20');
INSERT INTO public.produtos VALUES ('001002001004', 'amianto de sódio', 40.00, 22.00, 20.00, 0.00, 0, 'asdfsadf', '1980-01-01');
INSERT INTO public.produtos VALUES ('001002003001', 'Acido Sulfúrico', 15.00, 1100.00, 950.00, 0.00, 0, 'Este ', '1980-01-01');
INSERT INTO public.produtos VALUES ('001003001001', 'Resfriador de Sódio', 40.00, 1450.00, 1100.00, 0.00, 0, NULL, '2010-10-20');


--
-- Data for Name: professores; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.professores VALUES (1, 'ANA MARIA VERDIM', 470, ' 3456', '3436567 ', '1960-12-19', '2005-05-11');
INSERT INTO public.professores VALUES (2, 'ABEL DA SILVA', 110, ' 234', '1233536 ', '1964-07-11', '2001-08-21');
INSERT INTO public.professores VALUES (3, 'ABRAO ABUJANRA', 240, ' 451', '1342545 ', '1975-06-12', '2005-03-12');
INSERT INTO public.professores VALUES (4, 'CARLOS TAKESHI UENDO', 340, ' 475', '1865456 ', '1984-07-19', '2006-05-13');
INSERT INTO public.professores VALUES (5, 'DAVid GUTEMBERG', 260, ' 4521', '5680567 ', '1966-06-16', '2005-05-12');
INSERT INTO public.professores VALUES (6, 'FRANCISCO ROMEU DA CRUZ', 140, ' 75 23And, Cj 23', '5670479 ', '1974-12-05', '2002-05-13');
INSERT INTO public.professores VALUES (7, 'GERALDO BANDEIRAS PONTES', 170, ' 234', '4656589 ', '1987-09-06', '2002-10-21');
INSERT INTO public.professores VALUES (8, 'HEITOR DE TROIA', 120, ' 7458', '5656745 ', '1964-10-08', '2003-02-21');
INSERT INTO public.professores VALUES (9, 'HERCULES OLIMPIANO', 130, ' 345', '7643587 ', '1976-07-29', '2002-01-21');
INSERT INTO public.professores VALUES (10, 'IRINEU EVANGELISTA DE SOUZA', 270, ' 456', '4669908 ', '1984-11-28', '2005-05-14');
INSERT INTO public.professores VALUES (11, 'JOAO HEULALIO DE BUENO VIDIGAL', 360, ' 2569', '4794477 ', '1967-08-24', '2005-05-27');
INSERT INTO public.professores VALUES (12, 'JAIME DE ABREU POMPEU DE LIMA', 150, ' 75', '6298666 ', '1975-12-19', '2002-05-16');
INSERT INTO public.professores VALUES (13, 'JOSE RAMOS DE ALMEIDA', 160, ' 54', '7489455 ', '1988-07-29', '2002-05-28');
INSERT INTO public.professores VALUES (14, 'LEONIDAS DE PERCEPOLIS', 80, ' 345', '8405674 ', '1964-10-11', '2001-05-16');
INSERT INTO public.professores VALUES (15, 'LEOPOLDO DE COUTO E SILVA', 250, ' 3879', '8486453 ', '1976-10-10', '2005-03-25');
INSERT INTO public.professores VALUES (16, 'MARIA MAURA CORREIA ALVES LIMA', 310, ' 25', '8504467 ', '1984-12-21', '2005-09-18');
INSERT INTO public.professores VALUES (17, 'MARCIA DE ALBUQUERQUE LIMA', NULL, ' 25415', '8674645 ', '1966-09-21', '2000-05-25');
INSERT INTO public.professores VALUES (18, 'MARIO QUINTANA DRUMOND DE ANDRADE', 50, ' 345', '7605555 ', '1974-06-30', '2000-06-14');
INSERT INTO public.professores VALUES (19, 'NAIR DE MELLO CUNHA', 180, ' 4521', '6407626 ', '1987-05-30', '2003-04-23');
INSERT INTO public.professores VALUES (20, 'NEIRE GONCALVES DE ALBUQUERQUE LINS', 230, ' 345', '5567715 ', '1965-11-29', '2005-02-16');
INSERT INTO public.professores VALUES (21, 'OLIVIA CRUZ DO NASCIMENTO', 300, ' 657', '5456600 ', '1977-11-13', '2005-05-28');
INSERT INTO public.professores VALUES (22, 'ODUVALDO VIANNA', 460, ' 456', '5235683 ', '1966-09-24', '2004-05-15');
INSERT INTO public.professores VALUES (23, 'PASCOAL DE LIMA ROSA CRUZ', 190, ' 190', '5329444 ', '1987-10-25', '2003-05-27');
INSERT INTO public.professores VALUES (24, 'RENATO CORTE REAL', 210, ' 3456', '5444753 ', '1965-05-06', '2004-02-14');
INSERT INTO public.professores VALUES (25, 'SEBASTIAO MELLO DA SILVA CRUZ', 280, ' 867', '6534756 ', '1987-12-07', '2005-05-20');
INSERT INTO public.professores VALUES (26, 'TADEU BUARQUE DE HOLANDA', 320, ' 2145', '5644642 ', '1965-07-19', '2005-12-13');
INSERT INTO public.professores VALUES (27, 'ULISSES ODEBRECHT', 40, ' 2767', '5744548 ', '1987-11-17', '2000-05-29');
INSERT INTO public.professores VALUES (28, 'VINICIUS HUMBRTO PINHEIRO DA SILVA', 220, ' 4512', '5844426 ', '1965-11-05', '2005-01-10');
INSERT INTO public.professores VALUES (29, 'VERA ADRIANA HUANG AZEVEDO', 200, ' 745', '15122222', '1970-02-10', '2010-10-10');
INSERT INTO public.professores VALUES (35, 'EURIPEDES SOARES DE ALMEIDA', 170, '450', '12345678', '1957-05-10', '1975-10-10');


--
-- Data for Name: professorestels; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.professorestels VALUES (4, 1, 5, '99999777       ', NULL);
INSERT INTO public.professorestels VALUES (3, 7, 20, '88887777       ', NULL);


--
-- Data for Name: projetos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.projetos VALUES ('AD3100', 'ADMIN SERVICES       ', 'A01', 10, 6.50, '2002-01-01', '2003-02-01', 'AD3100', '1980-01-01');
INSERT INTO public.projetos VALUES ('AD3110', 'GENERAL ADMIN SYSTEMS', 'A01', 20, 6.00, '2002-01-01', '2003-02-01', 'AD3100', '1980-01-01');
INSERT INTO public.projetos VALUES ('AD3112', 'PERSONNEL PROGRAMMING', 'B01', 20, 1.00, '2002-01-01', '2003-02-01', 'AD3110', '1980-01-01');
INSERT INTO public.projetos VALUES ('AD3113', 'ACCOUNT PROGRAMMING  ', 'B01', 20, 2.00, '2002-01-01', '2003-02-01', 'AD3110', '1980-01-01');
INSERT INTO public.projetos VALUES ('IF1000', 'QUERY SERVICES       ', 'B01', 30, 2.00, '2002-01-01', '2003-02-01', 'IF1000', '1980-01-01');
INSERT INTO public.projetos VALUES ('IF2000', 'USER EDUCATION       ', 'C01', 30, 1.00, '2002-01-01', '2003-02-01', 'IF2000', '1980-01-01');
INSERT INTO public.projetos VALUES ('MA2100', 'WELD LINE AUTOMATION ', 'C01', 20, 12.00, '2002-01-01', '2003-02-01', 'MA2100', '1980-01-01');
INSERT INTO public.projetos VALUES ('MA2110', 'W L PROGRAMMING      ', 'D01', 10, 9.00, '2002-01-01', '2003-02-01', 'MA2100', '1980-01-01');
INSERT INTO public.projetos VALUES ('MA2111', 'W L PROGRAM DESIGN   ', 'D01', 40, 2.00, '2002-01-01', '1982-12-01', 'MA2110', '1980-01-01');
INSERT INTO public.projetos VALUES ('MA2112', 'W L ROBOT DESIGN     ', 'D91', 50, 3.00, '2002-01-01', '1982-12-01', 'MA2110', '1980-01-01');
INSERT INTO public.projetos VALUES ('MA2113', 'W L PROD CONT PROGS  ', 'D91', 40, 3.00, '2002-02-15', '1982-12-01', 'MA2110', '1980-01-01');
INSERT INTO public.projetos VALUES ('OP2000', 'GEN SYSTEMS SERVICES ', 'E01', 50, 999.99, '2002-01-01', '2003-02-01', 'OP2000', '1980-01-01');
INSERT INTO public.projetos VALUES ('OP2010', 'SYSTEMS SUPPORT      ', 'E01', 50, 4.00, '2002-01-01', '2003-02-01', 'OP2000', '1980-01-01');
INSERT INTO public.projetos VALUES ('OP2011', 'SCP SYSTEMS SUPPORT  ', 'E11', 30, 1.00, '2002-01-01', '2003-02-01', 'OP2010', '1980-01-01');
INSERT INTO public.projetos VALUES ('OP2012', 'APPLICATIONS SUPPORT ', 'E11', 10, 1.00, '2002-01-01', '2003-02-01', 'OP2010', '1980-01-01');
INSERT INTO public.projetos VALUES ('OP2013', 'DB/DC SUPPORT        ', 'E21', 40, 1.00, '2002-01-01', '2003-02-01', 'OP2010', '1980-01-01');
INSERT INTO public.projetos VALUES ('123457', 'alterando', 'Z97', 200, 280000.00, '2010-10-10', '2010-10-10', 'AD3112', '2010-10-10');
INSERT INTO public.projetos VALUES ('AD2323', 'BIG DATA/SSP', 'E21', 40, 850.00, '2016-03-01', '2017-02-28', 'OP2010', '2016-02-10');
INSERT INTO public.projetos VALUES ('Z90   ', 'teste', 'B01', 160, 45000.00, '2011-10-10', '2010-10-10', 'AD3100', '2010-10-10');


--
-- Data for Name: rotasviarias; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.rotasviarias VALUES (1, 'Rota 1', 'passa em Chavantes, Ipaussu, Sta Cruz do Rio Pardo e vai pela Castelo Brancos', 40, 5, '2010-10-10');
INSERT INTO public.rotasviarias VALUES (2, 'Rota 2', 'passa em Chavantes, Ipaussu, Sta Cruz do Rio Pardo e vai pela Raposo Tavares até Avaré depois pela Castelo Branco', 40, 5, '2010-10-10');
INSERT INTO public.rotasviarias VALUES (3, 'Rota 3', 'Passa por Cambará, Andirá, Bandeirantes, Cornélio Procópio, Ibaití pela BR153 (Transbrasiliana)', 40, 35, '2010-10-10');
INSERT INTO public.rotasviarias VALUES (4, 'Rota 66', 'asdasdsa as asd sd ffads', 40, 5, '2012-10-10');
INSERT INTO public.rotasviarias VALUES (8, 'Rota 88', 'Rod. Castelo Branco (até Avaré), Rod. Ildebrando Castanho (até a Rod. Raposo Tavares), Rod', 5, 40, '2013-12-11');


--
-- Data for Name: roteiros; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: seguradoras; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.seguradoras VALUES (1, 'Transamerica', 200, ' 745', '        ', '2004-02-10');
INSERT INTO public.seguradoras VALUES (5, 'Porto Seguro', 510, ' 450', '123132  ', '2010-10-10');
INSERT INTO public.seguradoras VALUES (6, 'Altavista Seguros', 160, '224', '12345678', '2010-10-10');
INSERT INTO public.seguradoras VALUES (2, 'Bradesco Seguros', 200, '1452', NULL, '2016-03-28');
INSERT INTO public.seguradoras VALUES (11, 'Seguros Lunares S/C Ltda.', 260, '1452', '04512456', '2016-11-11');
INSERT INTO public.seguradoras VALUES (3, 'Mapfre Seguros', 400, ' 2345', '14512412', '2010-02-12');


--
-- Data for Name: seguradorastels; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.seguradorastels VALUES (1, 2, 20, '1452112212     ', NULL, NULL);
INSERT INTO public.seguradorastels VALUES (2, 2, 20, '14421151       ', NULL, NULL);
INSERT INTO public.seguradorastels VALUES (3, 3, 20, '1452155122     ', NULL, NULL);
INSERT INTO public.seguradorastels VALUES (4, 3, 20, '1122323231     ', NULL, NULL);


--
-- Data for Name: seguros; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.seguros VALUES (145241, 5, 1, '2010-10-10', '2011-10-10', 15000, '2010-10-10');
INSERT INTO public.seguros VALUES (145246, 4, 2, '2010-10-10', '2011-10-10', 15000, '2010-10-07');
INSERT INTO public.seguros VALUES (145251, 6, 11, '2000-05-05', '2001-05-05', 25000, '2000-05-02');


--
-- Data for Name: servicos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.servicos VALUES (5, 'Funilaria', 'serviços de ajuste da lataria de veículos', 300, '2010-10-10');
INSERT INTO public.servicos VALUES (10, 'Pintura', 'Pintura simples de veículos', 350, '2010-10-10');
INSERT INTO public.servicos VALUES (15, 'Mecânica de suspensão', 'Substituição ou ajustes do conjunto de suspensão', 500, '2010-10-10');
INSERT INTO public.servicos VALUES (20, 'Mecânica do Motor', 'Sustituição ou ajustes de partes do motor', 600, '2010-10-10');


--
-- Data for Name: servicosfeitospor; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: servicosprestados; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: setoresdeatuacao; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.setoresdeatuacao VALUES (1, 'Industria', 'Manufaturados', '2011-06-10');
INSERT INTO public.setoresdeatuacao VALUES (2, 'Comercio', 'Lojas de vendas em Atacado', '2011-06-10');


--
-- Data for Name: sinistros; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.sinistros VALUES (1, 'colisão com um ou mais veículos em via publica', 'colisão em via publica envolvendo um ou mais veículos além do segurado', '2013-03-20');
INSERT INTO public.sinistros VALUES (2, 'Colisão com um ou mais veículos em via privada', 'colisão em via privada (pátios de estacionamento, rampa de garagem, acesso à sítios ou chacaras), envolvendo um ou mais veículos além do segurado', '2013-03-20');
INSERT INTO public.sinistros VALUES (3, 'Roubo simples', 'Veículo foi roubado sem a presença do proprietário em via pública', '2013-03-20');
INSERT INTO public.sinistros VALUES (4, 'Roubo privado', 'Veículo roubado de dentro de casa ou estacionamento particular sem a presença do proprietário', '2013-03-20');


--
-- Data for Name: tarefas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tarefas VALUES (10, 'Gerenciar                               ', 'Gerenciar/Advertir', 80, '2011-10-05');
INSERT INTO public.tarefas VALUES (20, 'Orçar                                   ', 'Estimar orçamentos de Projetos', 80, '2011-10-05');
INSERT INTO public.tarefas VALUES (30, 'Definir                                 ', 'Definir Especifica', 80, '2011-10-05');
INSERT INTO public.tarefas VALUES (40, 'Liderar                                 ', 'Liderar times de programação', 80, '2011-10-05');
INSERT INTO public.tarefas VALUES (50, 'Especificar                             ', 'Documentador de Especifica', 80, '2011-10-05');
INSERT INTO public.tarefas VALUES (60, 'An.Neg                                  ', 'Descritor das regras de neg', 80, '2011-10-05');
INSERT INTO public.tarefas VALUES (70, 'Codificar                               ', 'Codificar linhas de programas', 80, '2011-10-05');
INSERT INTO public.tarefas VALUES (80, 'Testar Progrszd                         ', 'Teste de programas conclu', 80, '2011-10-05');
INSERT INTO public.tarefas VALUES (90, 'AdmPesqSist                             ', 'Administrar o Sistema de Pesquisa (Prospec', 80, '2011-10-05');
INSERT INTO public.tarefas VALUES (100, 'Ensinar                                 ', 'Dar aulas de TI', 80, '2011-10-05');
INSERT INTO public.tarefas VALUES (110, 'Montar Cursos                           ', 'Desenvolver material de Cursos', 80, '2011-10-05');
INSERT INTO public.tarefas VALUES (120, 'Suporte Pessoal                         ', 'Surporte de Pessoal', 80, '2011-10-05');
INSERT INTO public.tarefas VALUES (130, 'Operar                                  ', 'Operar sistemas de informa', 80, '2011-10-05');
INSERT INTO public.tarefas VALUES (140, 'Manutenir                               ', 'Fazer a manuten', 80, '2011-10-05');
INSERT INTO public.tarefas VALUES (150, 'AdmSistInfor                            ', 'Administrar Sistemas de Informa', 80, '2011-10-05');
INSERT INTO public.tarefas VALUES (160, 'AdmDataBase                             ', 'Administrar Bases de Dados', 80, '2011-10-05');
INSERT INTO public.tarefas VALUES (170, 'Adm Com. Dados                          ', 'Administrar a rede de Dados', 80, '2011-10-05');
INSERT INTO public.tarefas VALUES (180, 'troca                                   ', 'troca', 80, '2011-10-05');
INSERT INTO public.tarefas VALUES (190, 'Treinar                                 ', 'Treinamento de Usuários', 80, '2011-10-05');
INSERT INTO public.tarefas VALUES (200, 'Portar Dados                            ', 'Efetuar porte de dados existentes em sistemas', 80, '2011-10-05');
INSERT INTO public.tarefas VALUES (210, 'Desenvolvimento                         ', 'Desenvolvimento', 80, '2011-10-05');
INSERT INTO public.tarefas VALUES (230, 'aDSas                                   ', 'ASDasd', 234, '2010-10-10');


--
-- Data for Name: tarefasprojetos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tarefasprojetos VALUES (1, 'AD2323', 10, 200, 1, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (2, 'AD2323', 20, 200, 2, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (3, 'AD3100', 10, 200, 1, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (4, 'AD3100', 20, 200, 2, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (5, 'AD3100', 30, 200, 3, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (6, 'AD3100', 40, 200, 4, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (7, 'AD3100', 50, 200, 5, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (8, 'AD3100', 60, 200, 6, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (9, 'AD3100', 70, 200, 7, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (10, 'AD3100', 80, 200, 8, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (11, 'AD3100', 140, 200, 9, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (12, 'AD3100', 100, 200, 10, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (13, 'AD3100', 110, 200, 11, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (14, 'AD3100', 120, 200, 12, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (15, 'AD3100', 130, 200, 13, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (16, 'AD3100', 140, 200, 14, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (17, 'AD3100', 150, 200, 15, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (18, 'AD3100', 160, 200, 16, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (19, 'AD3100', 170, 200, 17, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (20, 'AD3110', 10, 200, 1, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (21, 'AD3110', 20, 200, 2, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (22, 'AD3112', 10, 200, 1, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (23, 'AD3112', 20, 200, 2, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (24, 'AD3112', 60, 200, 6, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (25, 'AD3112', 70, 200, 7, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (26, 'AD3112', 80, 200, 8, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (27, 'AD3113', 10, 200, 1, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (28, 'AD3113', 20, 200, 2, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (29, 'AD3113', 60, 200, 6, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (30, 'AD3113', 70, 200, 7, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (31, 'AD3113', 80, 200, 8, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (32, 'IF1000', 10, 200, 1, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (33, 'IF1000', 20, 200, 2, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (34, 'IF1000', 30, 200, 3, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (35, 'IF1000', 40, 200, 4, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (36, 'IF1000', 50, 200, 5, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (37, 'IF1000', 60, 200, 6, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (38, 'IF1000', 70, 200, 7, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (39, 'IF1000', 80, 200, 8, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (40, 'IF1000', 90, 200, 9, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (41, 'IF1000', 100, 200, 10, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (42, 'IF1000', 110, 200, 11, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (43, 'IF1000', 120, 200, 12, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (44, 'IF1000', 130, 200, 13, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (45, 'IF1000', 140, 200, 14, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (46, 'IF1000', 150, 200, 15, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (47, 'IF1000', 160, 200, 16, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (48, 'IF1000', 170, 200, 17, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (49, 'IF2000', 10, 200, 1, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (50, 'IF2000', 20, 200, 2, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (51, 'IF2000', 100, 200, 10, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (52, 'IF2000', 110, 200, 11, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (53, 'MA2100', 10, 200, 1, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (54, 'MA2100', 20, 200, 2, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (55, 'MA2100', 30, 200, 3, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (56, 'MA2100', 40, 200, 4, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (57, 'MA2100', 50, 200, 5, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (58, 'MA2100', 60, 200, 6, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (59, 'MA2100', 70, 200, 7, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (60, 'MA2100', 80, 200, 8, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (61, 'MA2100', 90, 200, 9, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (62, 'MA2100', 100, 200, 10, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (63, 'MA2100', 110, 200, 11, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (64, 'MA2100', 120, 200, 12, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (65, 'MA2100', 130, 200, 13, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (66, 'MA2100', 140, 200, 14, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (67, 'MA2100', 150, 200, 15, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (68, 'MA2100', 160, 200, 16, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (69, 'MA2100', 170, 200, 17, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (70, 'MA2110', 10, 200, 1, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (71, 'MA2110', 20, 200, 2, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (72, 'MA2110', 30, 200, 3, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (73, 'MA2110', 40, 200, 4, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (74, 'MA2110', 50, 200, 5, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (75, 'MA2110', 60, 200, 6, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (76, 'MA2110', 70, 200, 7, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (77, 'MA2110', 80, 200, 8, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (78, 'MA2110', 90, 200, 9, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (79, 'MA2110', 100, 200, 10, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (80, 'MA2110', 110, 200, 11, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (81, 'MA2110', 120, 200, 12, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (82, 'MA2110', 130, 200, 13, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (83, 'MA2110', 140, 200, 14, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (84, 'MA2110', 150, 200, 15, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (85, 'MA2110', 160, 200, 16, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (86, 'MA2110', 170, 200, 17, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (87, 'MA2111', 10, 200, 1, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (88, 'MA2111', 20, 200, 2, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (89, 'MA2111', 40, 200, 4, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (90, 'MA2111', 50, 200, 5, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (91, 'MA2111', 60, 200, 6, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (92, 'MA2112', 10, 200, 1, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (93, 'MA2112', 20, 200, 2, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (94, 'MA2112', 30, 200, 3, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (95, 'MA2112', 40, 200, 4, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (96, 'MA2112', 50, 200, 5, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (97, 'MA2112', 60, 200, 6, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (98, 'MA2112', 70, 200, 7, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (99, 'MA2112', 80, 200, 8, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (100, 'MA2112', 90, 200, 9, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (101, 'MA2112', 100, 200, 10, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (102, 'MA2112', 110, 200, 11, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (103, 'MA2112', 120, 200, 12, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (104, 'MA2112', 130, 200, 13, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (105, 'MA2112', 140, 200, 14, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (106, 'MA2112', 150, 200, 15, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (107, 'MA2112', 160, 200, 16, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (108, 'MA2112', 170, 200, 17, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (109, 'MA2113', 10, 200, 1, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (110, 'MA2113', 20, 200, 2, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (111, 'MA2113', 60, 200, 6, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (112, 'MA2113', 70, 200, 7, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (114, 'OP2000', 10, 200, 1, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (115, 'OP2000', 20, 200, 2, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (116, 'OP2010', 10, 200, 1, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (117, 'OP2010', 20, 200, 2, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (118, 'OP2011', 10, 200, 1, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (119, 'OP2011', 20, 200, 2, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (120, 'OP2012', 10, 120, 1, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (121, 'OP2012', 20, 100, 2, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (122, 'OP2013', 10, 120, 1, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (123, 'OP2013', 20, 90, 2, '2010-10-10');
INSERT INTO public.tarefasprojetos VALUES (124, 'MA2110', 40, 200, 1, '2010-10-10');


--
-- Data for Name: telefonestipos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.telefonestipos VALUES (5, 'Fixo - Residencial', '2011-10-25');
INSERT INTO public.telefonestipos VALUES (10, 'Celular Particular', '2011-10-25');
INSERT INTO public.telefonestipos VALUES (15, 'Fixo - Comercial', '2011-10-25');
INSERT INTO public.telefonestipos VALUES (20, 'Celular Empresa', '2011-10-25');


--
-- Data for Name: titulacoes; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: turmas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.turmas VALUES (1, '2025 ', 1, '2025-09-21');
INSERT INTO public.turmas VALUES (2, '2025 ', 1, '2025-09-21');
INSERT INTO public.turmas VALUES (5, '2025 ', 1, '2025-09-21');
INSERT INTO public.turmas VALUES (4, '2025 ', 1, '2025-09-21');
INSERT INTO public.turmas VALUES (3, '2025 ', 1, '2025-09-21');


--
-- Data for Name: veiculos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.veiculos VALUES (1, 'ABC1593', 1, 1, 40, 'P', NULL, 5, '2015', 'C', '2018-02-20');
INSERT INTO public.veiculos VALUES (2, 'BBC1593', 2, 1, 50, 'P', NULL, 5, '2010', 'C', '2017-02-20');
INSERT INTO public.veiculos VALUES (3, 'CBC1593', 1, 1, 60, 'P', NULL, 5, '1999', 'C', '2018-02-20');
INSERT INTO public.veiculos VALUES (4, 'DBC1593', 2, 1, 90, 'P', NULL, 5, '2012', 'C', '2016-02-20');
INSERT INTO public.veiculos VALUES (5, 'EBC2604', 1, 1, 110, 'P', NULL, 4, '2015', 'C', '2016-02-20');
INSERT INTO public.veiculos VALUES (6, 'FBC1593', 2, 1, 90, 'P', NULL, 5, '2013', 'C', '2016-02-20');
INSERT INTO public.veiculos VALUES (7, 'ABC3715', 1, 1, 120, 'P', NULL, 5, '2015', 'C', '2015-04-20');
INSERT INTO public.veiculos VALUES (8, 'ABC4826', 2, 1, 110, 'P', NULL, 5, '2016', 'C', '2015-05-04');
INSERT INTO public.veiculos VALUES (9, 'ABD4826', 2, 1, NULL, NULL, 'Orion', 45, '2016', 'O', '2015-05-04');
INSERT INTO public.veiculos VALUES (10, 'AYH4826', 2, 1, NULL, NULL, 'Morpheus', 45, '2016', 'O', '2015-05-04');
INSERT INTO public.veiculos VALUES (11, 'AUJ4826', 2, 1, NULL, NULL, 'Centauro', 45, '2016', 'O', '2015-05-04');
INSERT INTO public.veiculos VALUES (12, 'AJO4826', 2, 1, NULL, NULL, 'Vega', 45, '2016', 'O', '2015-05-04');


--
-- Data for Name: veiculosmarcas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.veiculosmarcas VALUES (1, 'Chevrolet', 1, '2025-09-21');


--
-- Data for Name: veiculosmodelos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.veiculosmodelos VALUES (2, 1, 'Santana 2.0', 'A', '2002-02-02');
INSERT INTO public.veiculosmodelos VALUES (4, 1, 'Golf 2.0', 'Z', '2002-02-02');
INSERT INTO public.veiculosmodelos VALUES (1, 1, 'Bravo Cellera 2.2', 'G', '2002-05-20');
INSERT INTO public.veiculosmodelos VALUES (3, 1, 'voyage 1.6', 'Z', '2002-02-02');
INSERT INTO public.veiculosmodelos VALUES (9, 1, 'Elba WeekEnd 1.8 turbo', 'G', '2010-10-10');
INSERT INTO public.veiculosmodelos VALUES (14, 1, 'Bravo Pallas 2.2', 'F', '2010-10-10');


--
-- Data for Name: veiculostipos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.veiculostipos VALUES (1, 'Automóvel', '2013-01-20');
INSERT INTO public.veiculostipos VALUES (2, 'Embarcação Fluvial', '2013-01-20');
INSERT INTO public.veiculostipos VALUES (3, 'Embarcação Marítima', '2013-01-20');
INSERT INTO public.veiculostipos VALUES (4, 'Avião Comercial para até 20 passageiros', '2013-01-20');


--
-- Data for Name: viagens; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.viagens VALUES (1, 1, '2012-06-23', '00:00:00', '2012-06-23', NULL, NULL);
INSERT INTO public.viagens VALUES (2, 1, '2012-06-24', '00:00:00', '2012-06-23', NULL, NULL);
INSERT INTO public.viagens VALUES (3, 1, '2012-06-25', '00:00:00', '2012-06-23', NULL, NULL);
INSERT INTO public.viagens VALUES (4, 1, '2012-06-26', '00:00:00', '2012-06-23', NULL, NULL);
INSERT INTO public.viagens VALUES (5, 2, '2012-06-23', '16:50:00', '2012-06-23', NULL, NULL);
INSERT INTO public.viagens VALUES (6, 2, '2012-06-24', '00:00:00', '2012-06-23', NULL, NULL);
INSERT INTO public.viagens VALUES (7, 1, '2012-06-30', '23:59:00', '2012-06-23', NULL, NULL);
INSERT INTO public.viagens VALUES (8, 2, '2012-06-30', '23:59:00', '2012-06-23', NULL, NULL);