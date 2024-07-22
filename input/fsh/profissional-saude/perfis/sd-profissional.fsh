Profile: Profissional
Parent: Practitioner
Id: profissional
Title: "Profissional"
Description: "Dados do Profissional de Saúde"

* . ^short = "Dados do Profissional de Saúde"

* ^status = #active

// Inicio - identifier - RN01 - CPF e/ou CNS são obrigatórios e identificados pelo system. 

* identifier 1..2

* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #closed
* identifier ^slicing.ordered = true
* identifier ^slicing.description = "Deve conter um ou dois identificadores, podendo ser CPF ou CNS ou ambos."

// * identifier contains cpf 0..1
// * identifier contains cns 0..1

* identifier contains cpf 0..1 and cns 0..1 

* identifier[cns].type 0..0
* identifier[cns].system = $cns
* identifier[cns].value 1..1
* identifier[cns].use 0..0
* identifier[cns].period 0..0
* identifier[cns].assigner 0..0
* identifier[cns].extension 0..0

* identifier[cpf].type 0..0
* identifier[cpf].system = $cpf
* identifier[cpf].value 1..1
* identifier[cpf].use 0..0
* identifier[cpf].period 0..0
* identifier[cpf].assigner 0..0
* identifier[cpf].extension 0..0
* identifier[cpf].extension 0..0

// Fim - identifier


// Inicio - name

* name 1..*

* name.use 1..1
* name.use = #official
* name.text 1..1
* name.family 0..0
* name.given 0..0
* name.extension 0..0
* name.prefix 0..0
* name.suffix 0..0
* name.period 0..0

* name obeys RN04 // Regra do sd-nome-cidadao - reuso


// Fim - name


* birthDate 1..1
* birthDate obeys DataNascimentoComPrecisaoDeDia

* identifier.value 1..1 // Conselho alfanumerico

* gender 1..1

// Início - Meio de Contato

* telecom 1..*

* telecom obeys NumeroTelefoneValido and EmailValido

* telecom ^slicing.discriminator.type = #pattern
* telecom ^slicing.discriminator.path = "system"
* telecom ^slicing.rules = #closed
* telecom ^slicing.description = "Número de telefone ou e-mail do profissional."

* telecom contains phone 0..* and email 0..*

* telecom[phone].system = #phone
* telecom[phone].value 1..1
* telecom[phone].use 0..0
* telecom[phone].rank 0..0
* telecom[phone].period 0..0
* telecom[phone].extension 0..0

* telecom[email].system = #email
* telecom[email].value 1..1
* telecom[email].use 0..0
* telecom[email].rank 0..0
* telecom[email].period 0..0
* telecom[email].extension 0..0

// Fim - Meio de Contato


// Inicio - REGRAS - Se ja existir em outro perfil, será herdado dele. Nao pode ter mais de 1 com o mesmo nome no Projeto  


// Fim - REGRAS
