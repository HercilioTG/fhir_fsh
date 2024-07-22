Instance: situacao-mercado-trabalho
InstanceOf: NamingSystem
Usage: #definition
Description: """A situação de uma pessoa no mercado de trabalho refere-se ao seu status ocupacional e às condições em que ela se encontra em relação ao emprego."""

Title: "SituacaoMercadoTrabalho"

* name = "SituacaoMercadoTrabalho"
* status = #active
* kind = #codesystem
* date = "2023-07-31T14:24:34.711Z"
* uniqueId[0].type = #uri
* uniqueId[0].value = $csSituacaoMercadoTrabalho
* publisher = "Secretaria Estadual de Saúde de Goiás (SES-GO)"
* responsible = "Secretaria Estadual de Saúde de Goiás (SES-GO)"
* description = """A situação de uma pessoa no mercado de trabalho refere-se ao seu status ocupacional e às condições em que ela se encontra em relação ao emprego."""
* jurisdiction[0].coding[0].system = "urn:iso:std:iso:3166"
* jurisdiction[0].coding[0].code = #BR
* usage = "Identificação da situação no mercado de trabalho."

CodeSystem: SituacaoMercadoTrabalho
Id: situacao-mercado-trabalho
Title: "SituacaoMercadoTrabalho"
Description: """A situação de uma pessoa no mercado de trabalho refere-se ao seu status ocupacional e às condições em que ela se encontra em relação ao emprego."""

* ^status = #active
* ^experimental = false
* ^caseSensitive = true

* #66 "Empregado" "Pessoa que trabalha explorando o seu próprio empreendimento com, pelo menos, um empregado."
* #67 "Assalariado com carteira de trabalho" "Pessoa que trabalha com carteira assinada para um empregador (pessoa física ou jurídica), geralmente, obrigando-se ao cumprimento de jornada de trabalho e recebendo, em contrapartida, remuneração em dinheiro."
* #68 "Assalariado sem carteira de trabalho" "Pessoa que trabalha sem carteira assinada para um empregador (pessoa física ou jurídica), geralmente, obrigando-se ao cumprimento de jornada de trabalho e recebendo, em contrapartida, remuneração em dinheiro. Considere, também, neste quesito, a pessoa que presta serviço militar obrigatório."
* #69 "Autônomo com previdência social" "Pessoa que contribui com a Previdência Social e trabalha explorando seu próprio empreendimento, sozinha ou com sócio, sem ter empregado, ainda que contando com ajuda de trabalhador não remunerado. São exemplos de trabalhador por conta própria taxistas, camelôs, manicures em domicílio. Também se encontram nesta categoria os trabalhadores eventuais, ou seja, aquelas pessoas que prestam serviço em caráter esporádico, para exercer tarefa específica em uma ou mais empresas/pessoas (encanadores, eletricistas, pedreiros)."
* #70 "Autônomo sem previdência social" "Pessoa que trabalha explorando seu próprio empreendimento, sozinha ou com sócio, sem ter empregado, ainda que contando com ajuda de trabalhador não remunerado. São exemplos de trabalhador por conta própria taxistas, camelôs, manicures em domicílio. Também se encontram nesta categoria os trabalhadores eventuais, ou seja, aquelas pessoas que prestam serviço em caráter esporádico, para exercer tarefa específica em/a uma ou mais empresas/pessoas (encanadores, eletricistas, pedreiros) e que não contribuem com a Previdência Social."
* #71 "Aposentado pensionista" "Pessoa que tem remuneração recebida do Plano de Seguridade Social da União (PSS), do Instituto Nacional de Seguro Social (INSS) e de institutos oficiais de previdência estadual ou municipal, a título de aposentadoria, jubilação ou reforma ou também deixado por pessoa da qual era beneficiária, no caso de pensionista."
* #72 "Desempregado" "Pessoa que se encontra desempregada, sem nenhuma fonte de renda ou recebendo seguro-desemprego e à procura de trabalho."
* #73 "Não trabalha" "Pessoa que não procura trabalho."
* #147 "Servidor público/militar" "Pessoa que mantém vínculo de trabalho profissional com os órgãos e entidades governamentais, integrados em cargos ou empregos de qualquer delas: União, estados, Distrito Federal, municípios e suas respectivas autarquias, fundações, empresas públicas e sociedades de economia mista."
* #74 "Outra" "Pessoa que não se enquadra em nenhuma das situações de trabalho referidas acima."