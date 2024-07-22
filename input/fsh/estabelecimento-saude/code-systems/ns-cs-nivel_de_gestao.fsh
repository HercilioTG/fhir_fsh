Instance: nivelgestao
InstanceOf: NamingSystem
Usage: #definition
Description: """Definição do tipo de Nivel de Gestão."""

Title: "Tipo de Nivel de Gestão"

* name = "Tipo de Nivel de Gestão"
* status = #active
* kind = #codesystem
* date = "2023-07-31T14:24:34.711Z" //dt criacao
* uniqueId[0].type = #uri
* uniqueId[0].value = $csNivelGestao
* publisher = "Secretaria Estadual de Saúde de Goiás (SES-GO)"
* responsible = "Secretaria Estadual de Saúde de Goiás (SES-GO)"
* description = """
Tipo de organizacao de Saude."""
* jurisdiction[0].coding[0].system = "urn:iso:std:iso:3166"
* jurisdiction[0].coding[0].code = #BR
* usage = "Identificação do tipo de Nivel de Gestão"

CodeSystem: NivelGestao
Id: nivelgestao
Title: "Tipo de Organizacao"
Description: """
Tipo do estabelecimento da Unidade de Saude."""

* ^status = #active
* ^experimental = false
* ^caseSensitive = true

* #M "Municipal" "O Estabelecimento de Saúde é gerido pelo Município"
* #E "Estadual" "Estabelecimento de Saúde é gerido pelo Estado"
* #D "Dupla" "A gestão é composta pelo Estado e Município"
* #S "Sem Gestão" "O Estabelecimento não possui gestão estabelecida"
* #N "Não informado" "O nível de gestão não foi informado (N pode ser Null ou Não)"
