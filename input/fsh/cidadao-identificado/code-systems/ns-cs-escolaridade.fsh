Instance: escolaridade
InstanceOf: NamingSystem
Usage: #definition
Description: """
Escolaridade se refere ao nível de educação formal alcançado por um indivíduo, 
geralmente medido em termos de anos de estudo completados ou de diplomas obtidos. 
Essa medida é frequentemente usada para avaliar o conhecimento e as habilidades 
de uma pessoa em um determinado contexto educacional ou profissional."""

Title: "Escolaridade"

* name = "Escolaridade"
* status = #active
* kind = #codesystem
* date = "2023-07-31T14:24:34.711Z"
* uniqueId[0].type = #uri
* uniqueId[0].value = $csEscolaridade
* publisher = "Secretaria Estadual de Saúde de Goiás (SES-GO)"
* responsible = "Secretaria Estadual de Saúde de Goiás (SES-GO)"
* description = """
Escolaridade se refere ao nível de educação formal alcançado por um indivíduo, 
geralmente medido em termos de anos de estudo completados ou de diplomas obtidos. 
Essa medida é frequentemente usada para avaliar o conhecimento e as habilidades 
de uma pessoa em um determinado contexto educacional ou profissional."""
* jurisdiction[0].coding[0].system = "urn:iso:std:iso:3166"
* jurisdiction[0].coding[0].code = #BR
* usage = "Identificação da escolaridade"

CodeSystem: Escolaridade
Id: escolaridade
Title: "Escolaridade"
Description: """
Escolaridade se refere ao nível de educação formal alcançado por um indivíduo, 
geralmente medido em termos de anos de estudo completados ou de diplomas obtidos. 
Essa medida é frequentemente usada para avaliar o conhecimento e as habilidades 
de uma pessoa em um determinado contexto educacional ou profissional."""

* ^status = #active
* ^experimental = false
* ^caseSensitive = true

* #51 "Creche" "Destina-se às crianças, geralmente com até três anos de idade, que frequentam estabelecimentos juridicamente regulamentados ou não, destinado a dar assistência diurna às crianças."
* #52 "Pré-escola (exceto CA)" "Destina-se, geralmente, às crianças com quatro ou cinco anos de idade. Pode receber várias denominações de acordo com a região e o nível alcançado pelas crianças: maternal, jardim de infância, jardim I etc."
* #53 "Classe Alfabetizada - CA" "Curso destinado à alfabetização de crianças, para os estabelecimentos que ainda não implantaram o Ensino Fundamental com duração de nove anos. Equivalente ao 1° ano no sistema com duração de nove anos."
* #54 "Ensino Fundamental 1ª a 4ª séries" "Curso de Ensino Fundamental organizado em oito séries anuais, dividido em duas fases ou ciclos, sendo esta a primeira fase (Brasil, 2010). Equivalente ao 2°, 3°, 4° e 5° ano no sistema com duração de nove anos."
* #55 "Ensino Fundamental 5ª a 8ª séries" "Curso de Ensino Fundamental organizado em oito séries anuais, dividido em duas fases ou ciclos, sendo esta a segunda fase (Brasil, 2010). Equivalente ao 6°, 7°, 8° e 9° ano no sistema com duração de nove anos."
* #56 "Ensino Fundamental Completo" "Curso de Ensino Fundamental organizado em oito séries anuais, dividido em duas fases ou ciclos."
* #61 "Ensino Fundamental Especial" "Atendimento educacional especializado no Ensino Fundamental regular, voltado a pessoas com necessidades especiais originadas de deficiência ou altas habilidades/superdotação."
* #58 "Ensino Fundamental EJA - séries iniciais (Supletivo 1ª a 4ª)" "Nova denominação para o curso supletivo de Ensino Fundamental ou de 1º grau, seriado ou não."
* #59 "Ensino Fundamental EJA - séries finais (Supletivo 5ª a 9ª)" "Nova denominação para o curso supletivo de Ensino Fundamental ou de 1º grau, seriado ou não"
* #60 "Ensino Médio, Médio 2º Ciclo (Científico, Técnico e etc)" "Curso de Ensino Médio organizado em três ou quatro séries anuais ou em regime de créditos, períodos letivos, semestres, fases, módulos, ciclos etc."
* #57 "Ensino Médio Especial" "Atendimento educacional especializado no Ensino Médio regular, voltado a pessoas com necessidades especiais originadas de deficiência ou altas habilidades/superdotação."
* #62 "Ensino Médio EJA (Supletivo)" "Nova denominação para o curso supletivo de Ensino Médio ou de 2º grau, seriado ou não."
* #63 "Superior, Aperfeiçoamento, Especialização, Mestrado, Doutorado" "Curso regular de graduação universitária, frequentado após o término do Ensino Médio, que habilita a pessoa a exercer uma profissão, e cursos frequentados após a conclusão do Ensino Superior."
* #64 "Alfabetização para Adultos (Mobral, etc)" "Curso destinado à alfabetização de jovens e adultos."
* #65 "Nenhum" "Quando a pessoa não se enquadrar em nenhuma das descrições anteriores."