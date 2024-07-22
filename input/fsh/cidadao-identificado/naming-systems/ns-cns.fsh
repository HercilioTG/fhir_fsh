Instance: cns
InstanceOf: NamingSystem
Usage: #definition
Description: """No Brasil, o Cartão Nacional de Saúde é um documento utilizado no sistema de saúde pública 
(SUS - Sistema Único de Saúde). Ele contém um número de identificação individual que permite o acesso aos 
serviços de saúde oferecidos pelo SUS."""
Title: "CNS"

* name = "CNS"
* status = #active
* kind = #identifier // IDENTIFICADOR DE NEGÓCIO
* date = "2023-07-31T14:24:34.711Z"
* uniqueId[0].type = #uri
* uniqueId[0].value = $cns
* publisher = "Secretaria Estadual de Saúde de Goiás (SES-GO)"
* responsible = "Ministério da Saúde (Brasil)"
* type.coding[0].system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* type.coding[0].code = #PRN
* description = """No Brasil, o Cartão Nacional de Saúde é um documento utilizado no sistema de saúde pública 
(SUS - Sistema Único de Saúde). Ele contém um número de identificação individual que permite o acesso aos 
serviços de saúde oferecidos pelo SUS."""
* jurisdiction[0].coding[0].system = "urn:iso:std:iso:3166"
* jurisdiction[0].coding[0].code = #BR
* usage = "Código único do Cartão Nacional de Saúde."