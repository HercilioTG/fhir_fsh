Instance: cpf
InstanceOf: NamingSystem
Usage: #definition
Description: """É um número de identificação individual fornecido pela Receita Federal do Brasil a todos os cidadãos brasileiros 
e residentes estrangeiros no Brasil. O CPF é utilizado para uma variedade de fins, incluindo identificação fiscal, 
abertura de contas bancárias, obtenção de crédito, realização de transações financeiras, entre outros. 
Cada pessoa física tem um único número de CPF, que é utilizado ao longo de toda a vida."""
Title: "CPF"

* name = "CPF"
* status = #active
* kind = #identifier // IDENTIFICADOR DE NEGÓCIO
* date = "2023-07-31T14:24:34.711Z"
* uniqueId[0].type = #uri
* uniqueId[0].value = $cpf
* publisher = "Secretaria Estadual de Saúde de Goiás (SES-GO)"
* responsible = "Receita Federal (Brasil)"
* type.coding[0].system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* type.coding[0].code = #PRN
* description = """É um número de identificação individual fornecido pela Receita Federal do Brasil a todos os cidadãos brasileiros 
e residentes estrangeiros no Brasil. O CPF é utilizado para uma variedade de fins, incluindo identificação fiscal, 
abertura de contas bancárias, obtenção de crédito, realização de transações financeiras, entre outros. 
Cada pessoa física tem um único número de CPF, que é utilizado ao longo de toda a vida."""
* jurisdiction[0].coding[0].system = "urn:iso:std:iso:3166"
* jurisdiction[0].coding[0].code = #BR
* usage = "Código único do Cadastro de Pessoa Física."