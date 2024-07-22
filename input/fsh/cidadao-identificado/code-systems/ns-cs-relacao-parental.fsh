Instance: relacao-parental
InstanceOf: NamingSystem
Usage: #definition
Description: """Uma relação parental é qualquer tipo de relação entre parentes, geralmente entre pais e filhos.
Essas relações envolvem uma série de interações emocionais, 
financeiras e sociais que contribuem para o desenvolvimento e o bem-estar das crianças e dos adultos envolvidos."""

Title: "Relação Parental"

* name = "RelacaoParental"
* status = #active
* kind = #codesystem
* date = "2023-07-31T14:24:34.711Z"
* uniqueId[0].type = #uri
* uniqueId[0].value = $csRelacaoParental
* publisher = "Secretaria Estadual de Saúde de Goiás (SES-GO)"
* responsible = "Secretaria Estadual de Saúde de Goiás (SES-GO)"
* description = """Uma relação parental é qualquer tipo de relação entre parentes, geralmente entre pais e filhos.
Essas relações envolvem uma série de interações emocionais, 
financeiras e sociais que contribuem para o desenvolvimento e o bem-estar das crianças e dos adultos envolvidos."""

* jurisdiction[0].coding[0].system = "urn:iso:std:iso:3166"
* jurisdiction[0].coding[0].code = #BR
* usage = "Identificação da relação parental"

CodeSystem: RelacaoParental
Id: relacao-parental
Title: "RelacaoParental"
Description: """Uma relação parental é qualquer tipo de relação entre parentes, geralmente entre pais e filhos.
Essas relações envolvem uma série de interações emocionais, 
financeiras e sociais que contribuem para o desenvolvimento e o bem-estar das crianças e dos adultos envolvidos."""

* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a

* #01 "Mãe" "Mãe"
* #01 #0101 "Mãe biológica" "Pessoa que tem identificação genética com o filho, que teve o óvulo fecundado."
* #01 #0102 "Mãe socioafetiva" "Pessoa que cuida e ama a criança e que se apresenta como mãe, assumindo direitos e obrigações decorrentes da maternidade, mesmo que não tenha um laço sanguíneo ou legal com ela." 
* #01 #0103 "Mãe adotiva" "Pessoa que requerer judicialmente a adoção e que se torna responsável legalmente pelo bem-estar da criança e assume os direitos e deveres inerentes à maternidade."
* #02 "Pai" "Pai"
* #02 #0201 "Pai biológico" "Pessoa que contribuiu com o espermatozóide que fertilizou o óvulo da mãe biológica, resultando na formação do embrião."
* #02 #0202 "Pai socioafetivo" "Pessoa que assume, de forma livre e voluntária, o papel de pai na vida da criança, independentemente de ter laços biológicos com ela, proporcionando amor, cuidado e suporte para seu desenvolvimento."
* #02 #0203 "Pai adotivo" "Pessoa que por meio de um processo legal de adoção, assume a paternidade de uma criança que não possui laços biológicos com ele."
* #03 "Informação desconhecida" "Refere-se a qualquer dado, fato, ou conhecimento sobre a relação parental com o cidadão que não está atualmente disponível ou compreendido."
