Instance: PacienteJose
InstanceOf: Individuo
Usage: #example
Description: """Exemplo de uso do Individuo"""

* identifier[cpf].system = $cpf
* identifier[cpf].value = "1234567879"    

* identifier[cns].system = $cns
* identifier[cns].value = "1234567879"

* name[official].text = "José Silva"

* gender = #male
* birthDate = 1989-02-19

* address.use = #home
* address.city = #520870
* address.line[bairro].extension.url = $sdTipoInformacaoEndereco
* address.line[bairro].extension.valueCode = #bairro
* address.line[bairro] = "Bueno"
* address.line[logradouro].extension.url = $sdTipoInformacaoEndereco
* address.line[logradouro].extension.valueCode = #logradouro
* address.line[logradouro] = "Rua T-7"

* address.line[tipologradouro].extension.url = $sdTipoInformacaoEndereco
* address.line[tipologradouro].extension.valueCode = #tipologradouro
* address.line[tipologradouro] = #081

* address.line[numero].extension.url = $sdTipoInformacaoEndereco
* address.line[numero].extension.valueCode = #numero
* address.line[numero] = "64"

* address.line[complemento].extension.url = $sdTipoInformacaoEndereco
* address.line[complemento].extension.valueCode = #complemento
* address.line[complemento] = "Prédio Pandora, Ap 1201"

* insert SetRacaCorEtnia(02)

* extension[+].url = $sdOrientacaoSexual
* extension[=].valueCode = #148

* extension[+].url = $sdFiliacao
* extension[=].extension[+].url = "tipo"
* extension[=].extension[=].valueCode = #0201
* extension[=].extension[+].url = "nome"
* extension[=].extension[=].valueString = "Sebastian Morais"

* extension[+].url = $sdFiliacao
* extension[=].extension[+].url = "tipo"
* extension[=].extension[=].valueCode = #0101
* extension[=].extension[+].url = "nome"
* extension[=].extension[=].valueString = "Joana Maria da Silva"

* extension[+].url = $sdPovosComunidadesTradicionais
* extension[=].valueCode = #173

* extension[+].url = $nacionalidade
* extension[=].valueCodeableConcept.coding.code = #E
* extension[=].valueCodeableConcept.coding.system = $csNacionalidade

* extension[identidadeGenero].url = $sdIdentidadeGenero
* extension[identidadeGenero].valueCodeableConcept.coding.code = #151
* extension[identidadeGenero].valueCodeableConcept.coding.system = $csIdentidadeGenero

* extension[localNascimento].url = $sdLocalNascimento
* extension[localNascimento].valueAddress.country = #20

* extension[+].url = $sdBiometria
* extension[=].extension[+].url = "imagem"
* extension[=].extension[=].valueBase64Binary = "SGVsbG8gV29ybGQhISA6KQ=="
* extension[=].extension[+].url = "tipo"
* extension[=].extension[=].valueCode = #fotografiafacial

* extension[+].url = $sdBiometria
* extension[=].extension[+].url = "imagem"
* extension[=].extension[=].valueBase64Binary = "RGFuaWVsIE5vZ3VlaXJhIGRhIENvc3Rh"
* extension[=].extension[+].url = "tipo"
* extension[=].extension[=].valueCode = #polegardireito

* telecom[+].system = #email
* telecom[=].value = "usuario@dominio.com"

* telecom[+].system = #email
* telecom[=].value = "usuario@outrodominio.com.br"

* telecom[phone].system = #phone
* telecom[phone].value = "+55 11 9999-9999"

* contact[+].relationship.coding = http://terminology.hl7.org/CodeSystem/v2-0131#EP
* contact[=].name.text = "Maria Silva"
* contact[=].telecom[+].value = "+5 111 9999-9999"
* contact[=].telecom[=].system = #phone

Instance: PacienteAugusto
InstanceOf: Individuo
Usage: #example
Description: """Exemplo de uso do Individuo"""

* identifier[cpf].system = $cpf
* identifier[cpf].value = "1234567879"    

* identifier[cns].system = $cns
* identifier[cns].value = "1234567879"

* name[official].text = "Augusto Pereira"

* name[usual].text = "Augusta Pereira"

* gender = #other
* birthDate = 1979-02-19
* address.use = #home
* address.city = #520870

* extension[+].url = $racacoretnia
* extension[=].extension[+].url = "race"
* extension[=].extension[=].valueCodeableConcept.coding.system = $racacor
* extension[=].extension[=].valueCodeableConcept.coding.code = #02

* extension[+].url = $sdFiliacao
* extension[=].extension[+].url = "nome"
* extension[=].extension[=].valueString = "Maria Pereira"
* extension[=].extension[+].url = "tipo"
* extension[=].extension[=].valueCode = #0101

* extension[+].url = $nacionalidade
* extension[=].valueCodeableConcept.coding.code = #B
* extension[=].valueCodeableConcept.coding.system = $csNacionalidade

* insert SetIdentidadeGenero(151)

* extension[localNascimento].url = $sdLocalNascimento
* extension[localNascimento].valueAddress.city = #110001
* extension[localNascimento].valueAddress.country = #10

* extension[ocupacao].valueReference = Reference(OcupacaoAugusto)

* telecom[phone].system = #phone
* telecom[phone].value = "(62) 9999-9999"

* contact[+].relationship.coding = $csRelacaoContato#EP
* contact[=].name.text = "Carminha Pereira"
* contact[=].telecom[+].value = "(62) 9999-9999"
* contact[=].telecom[=].system = #phone

* contact[+].relationship.coding.code = #EP
* contact[=].relationship.coding.system = $csRelacaoContato
* contact[=].name.text = "Roberto"
* contact[=].telecom[+].value = "(62) 9999-9998"
* contact[=].telecom[=].system = #phone

Instance: EscolaridadeAugusto
InstanceOf: Escolaridade
Usage: #example
Description: "Escolaridade do Augusto"

* code = $csLoinc#82589-3 // Highest level of education
* valueCodeableConcept = $csEscolaridade#63
* status = #final
* subject = Reference(PacienteAugusto)

Instance: OcupacaoAugusto
InstanceOf: Ocupacao
Usage: #example
Description: "Ocupacao do Augusto"

* code = $csLoinc#21843-8 // History of Usual occupation
* valueCodeableConcept = $csOcupacao#223204
* status = #final
* subject = Reference(PacienteAugusto)

Instance: SituacaoMercadoTrabalhoAugusto
InstanceOf: SituacaoMercadoTrabalho
Usage: #example
Description: "Situacao Mercado de Trabalho Augusto" 

* code = $csLoinc#67875-5 // Employment status - current
* valueCodeableConcept = $csSituacaoMercadoTrabalho#66
* status = #final
* subject = Reference(PacienteAugusto)

RuleSet: SetIdentidadeGenero(codeIdentidade)

* extension[identidadeGenero].url = $sdIdentidadeGenero
* extension[identidadeGenero].valueCodeableConcept.coding.code = #{codeIdentidade}
* extension[identidadeGenero].valueCodeableConcept.coding.system = $csIdentidadeGenero

RuleSet: SetRacaCorEtnia(codigoRacaCor)

* extension[+].url = $racacoretnia
* extension[=].extension[+].url = "race"
* extension[=].extension[=].valueCodeableConcept.coding.system = $racacor
* extension[=].extension[=].valueCodeableConcept.coding.code = #{codigoRacaCor}