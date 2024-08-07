Instance: tipoestabelecimento
InstanceOf: NamingSystem
Usage: #definition
Description: """Definição do tipo de estabelecimento."""

Title: "Tipo de Estabelecimento"

* name = "Tipo de Estabelecimento"
* status = #active
* kind = #codesystem
* date = "2023-07-31T14:24:34.711Z" //dt criacao
* uniqueId[0].type = #uri
* uniqueId[0].value = $csTipoEstabelecimento
* publisher = "Secretaria Estadual de Saúde de Goiás (SES-GO)"
* responsible = "Secretaria Estadual de Saúde de Goiás (SES-GO)"
* description = """
Tipo de estabelecimento de Saude."""
* jurisdiction[0].coding[0].system = "urn:iso:std:iso:3166"
* jurisdiction[0].coding[0].code = #BR
* usage = "Identificação do tipo de estabelecimento de Saude"

CodeSystem: TipoEstabelecimento
Id: tipoestabelecimento
Title: "Tipo de Estabelecimento"
Description: """
Tipo do estabelecimento da Unidade de Saude."""

* ^status = #active
* ^experimental = false
* ^caseSensitive = true

* #1	 "POSTO DE SAÚDE"
* #2	 "CENTRO DE SAUDE/UNIDADE BASICA"
* #4	 "POLICLINICA"
* #5	 "HOSPITAL GERAL"
* #7	 "HOSPITAL ESPECIALIZADO"
* #15	 "UNIDADE MISTA"
* #20	 "PRONTO SOCORRO GERAL"
* #21	 "PRONTO SOCORRO ESPECIALIZADO"
* #22	 "CONSULTORIO ISOLADO"
* #32	 "UNIDADE MOVEL FLUVIAL"
* #36	 "CLINICA/CENTRO DE ESPECIALIDADE"
* #39	 "UNIDADE DE APOIO DIAGNOSE E TERAPIA (SADT ISOLADO)"
* #40	 "UNIDADE MOVEL TERRESTRE"
* #42	 "UNIDADE MOVEL DE NIVEL PRE-HOSPITALAR NA AREA DE URGENCIA"
* #43	 "FARMACIA"
* #50	 "UNIDADE DE VIGILANCIA EM SAUDE"
* #60	 "COOPERATIVA OU EMPRESA DE CESSAO DE TRABALHADORES NA SAUDE"
* #61	 "CENTRO DE PARTO NORMAL - ISOLADO"
* #62	 "HOSPITAL/DIA - ISOLADO"
* #67	 "LABORATORIO CENTRAL DE SAUDE PUBLICA LACEN"
* #68	 "CENTRAL DE GESTAO EM SAUDE"
* #69	 "CENTRO DE ATENCAO HEMOTERAPIA E OU HEMATOLOGICA"
* #70	 "CENTRO DE ATENCAO PSICOSSOCIAL"
* #71	 "CENTRO DE APOIO A SAUDE DA FAMILIA"
* #72	 "UNIDADE DE ATENCAO A SAUDE INDIGENA"
* #73	 "PRONTO ATENDIMENTO"
* #74	 "POLO ACADEMIA DA SAUDE"
* #75	 "TELESSAUDE"
* #76	 "CENTRAL DE REGULACAO MEDICA DAS URGENCIAS"
* #77	 "SERVICO DE ATENCAO DOMICILIAR ISOLADO(HOME CARE)"
* #79	 "OFICINA ORTOPEDICA"
* #80	 "LABORATORIO DE SAUDE PUBLICA"
* #81	 "CENTRAL DE REGULACAO DO ACESSO"
* #82	 "CENTRAL DE NOTIFICACAO,CAPTACAO E DISTRIB DE ORGAOS ESTADUAL"
* #83	 "POLO DE PREVENCAO DE DOENCAS E AGRAVOS E PROMOCAO DA SAUDE"
* #84	 "CENTRAL DE ABASTECIMENTO"
* #85	 "CENTRO DE IMUNIZACAO"