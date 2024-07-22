Profile: Individuo
Parent: Patient
Id: individuo
Title: "Indivíduo"
Description: "Dados demográficos de um indivíduo"

* . ^short = "Dados demográficos do indivíduo"

* ^status = #active

* obeys NoMaximoUmaMaeBiologica 
    and NoMaximoUmPaiBiologico 
    and BrasileiroSeSomenteSeNasceNoBrasil 
    and CidadeNascimento
    and ContatoEmergenciaUnico

// RuleSet para quando é obrigatório informar 2 identificadores (CPF e CNS)

* insert IdentificadorCpfECns

// Inicio - Nome

* name 1..2

* name ^short = "Nome(s) utilizado(s) pelo indivíduo"

* name ^slicing.discriminator.type = #pattern
* name ^slicing.discriminator.path = "use"
* name ^slicing.rules = #closed
* name ^slicing.description = "O tipo de nome official (nome de registro) é obrigatório."
* name contains official 1..1 and usual 0..1

* name[official] ^short = "Nome oficial do indivíduo" 
* name[official].use = #official
* name[official].use ^short = "Código que identifica o tipo de nome informado"
* name[official].text ^short = "Representação de texto do nome completo do indivíduo"

* name[usual] ^short = "Nome social do indivíduo"
* name[usual].use = #usual

* name[usual].use ^short = "Código que identifica o tipo de nome informado"
* name[usual].text ^short = "Representação de texto do nome completo do indivíduo"

* name only NomeCidadao

// Fim - Nome

// Inicio - Data de Nascimento

* birthDate 1..1

* birthDate ^short = "Data em que o indivíduo nasceu, conforme documento oficial"

* birthDate obeys DataNascimentoComPrecisaoDeDia

// Fim - Data de Nascimento

// Inicio - Gênero

* gender 1..1

* gender ^binding.description = "Código que identifica o sexo do indivíduo, conforme documento oficial"

// Fim - Gênero

// RuleSet com regras comuns para endereço, sendo o uso fixo em #home

* insert Endereco(home)

* address ^short = "Endereço de residência do indivíduo"

// Inicio - Estado Civil

* maritalStatus 0..1
* maritalStatus ^short = "Estado civil do indivíduo"
* maritalStatus.coding ^short = "Codificação que representa o estado civil de um indivíduo"
* maritalStatus.coding.system ^short = "Sistema de códigos que define o estado civil de um indivíduo"
* maritalStatus.coding.code ^short = "Código que identifica o estado civil do indivíduo"
* maritalStatus from EstadoCivil

// Fim - Estado Civil

// Inicio - Foto

* photo 0..1

* photo ^short = "Fotografia do indivíduo"

* photo.data 1..1
* photo.contentType 1..1
* photo.contentType from $vsMimeType

* photo.language 0..0
* photo.url 0..0
* photo.size 0..0
* photo.hash 0..0
* photo.title 0..0
* photo.creation 0..0

// Fim - Foto

// Inicio - Meio de Contato do Paciente

* telecom 1..*

* telecom ^short = "Meio(s) para entrar em contato com o indivíduo"

* telecom obeys NumeroTelefoneValido and EmailValido

* telecom ^slicing.discriminator.type = #pattern
* telecom ^slicing.discriminator.path = "system"
* telecom ^slicing.rules = #closed
* telecom ^slicing.description = "Número de telefone ou e-mail do cidadão."

* telecom contains phone 0..* and email 0..*

//Inicio - Telefone

* telecom[phone] ^short = "Telefone do indivíduo"
* telecom[phone].system ^binding.description = "Sistema de comunicação"
* telecom[phone].system ^short = "Sistema de códigos que define o tipo de meio de contato"
* telecom[phone].system = #phone
* telecom[phone].value ^short = "Valor do meio de contato"
* telecom[phone].value 1..1
* telecom[phone].use 0..0
* telecom[phone].rank 0..0
* telecom[phone].period 0..0
* telecom[phone].extension 0..0

// Fim - Telefone

// Inicio - Email

* telecom[email] ^short = "Email do indivíduo"
* telecom[email].system ^binding.description = "Sistema de comunicação"
* telecom[email].system ^short = "Sistema de códigos que define o tipo de meio de contato"
* telecom[email].system = #email
* telecom[email].value ^short = "Valor do meio de contato"
* telecom[email].value 1..1
* telecom[email].use 0..0
* telecom[email].rank 0..0
* telecom[email].period 0..0
* telecom[email].extension 0..0

// Fim - Email

// Fim - Meio de Contato do Paciente

// Inicio - Contato de Emergencia e Conjuge

* contact 0..*

* contact ^short = "Pessoa(s) de referência do indivíduo a ser(em) contactada(s) em caso de necessidade"

* contact.relationship 1..1
* contact.relationship ^short = "Tipo de relacionamento do indivíduo com a pessoa de referência"
* contact.relationship.coding 1..1
* contact.relationship.coding ^short = "Codificação que representa o tipo de relacionamento do indivíduo com a pessoa de referência"
* contact.relationship.coding.system ^short = "Sistema de códigos que define o tipo de relacionamento do indivíduo com a pessoa de referência"
* contact.relationship.coding.code ^short = "Código que identifica o tipo de relacionamento do indivíduo com a pessoa de referência"
* contact.relationship.coding from RelacaoContato
* contact.name 1..1
* contact.name ^short = "Nome utilizado pela pessoa de referência"
* contact.name.text 1..1
* contact.name.text ^short = "Representação de texto do nome completo da pessoa de referêcia"
* contact.name.use 0..0
* contact.name.family 0..0
* contact.name.given 0..0
* contact.name.prefix 0..0
* contact.name.suffix 0..0
* contact.name.period 0..0
* contact.telecom  0..1
* contact.telecom ^short = "Meio(s) para entrar em contato com a pessoa de referência"
* contact.telecom.system 1..1
* contact.telecom.system = #phone
* contact.telecom.system ^short = "Código que identifica o tipo de meio de contato utilizado para entrar em contato com a pessoa de referência"
* contact.telecom.value 1..1
* contact.telecom.value ^short = "Valor do meio de contato da pessoa de referência"
* contact.telecom obeys NumeroTelefoneValido
* contact.address 0..0
* contact.gender 0..0
* contact.organization 0..0
* contact.period 0..0

// Fim - Contato de Emergencia e Conjuge

// Inicio - Elementos Proibidos

* active 0..0
* deceased[x] 0..0
* multipleBirth[x] 0..0
* communication 0..0
* generalPractitioner 0..0
* managingOrganization 0..0
* link 0..0

// Fim - Elementos Proibidos

// Inicio - Extensions/Extensões

* extension contains 
    $racacoretnia named raca 1..1 and
    OrientacaoSexual named orientacaoSexual 0..1 and
    Filiacao named filiacao 1..4 and
    PovosComunidadesTradicionais named povosComunidadesTradicionais 0..* and
    $nacionalidade named nacionalidade 1..1 and
    $sdLocalNascimento named localNascimento 1..1 and
    $sdIdentidadeGenero named identidadeGenero 0..1 and
    Biometria named biometria 0..* and
    PatientOcupacao named ocupacao 0..* and
    PatientEscolaridade named escolaridade 0..1 and
    PatientSituacaoMercadoTrabalho named situacaoMercadoTrabalho 0..1

* extension[identidadeGenero].value[x] 1..1
* extension[identidadeGenero].valueCodeableConcept from IdentidadeGenero

* extension[localNascimento].value[x] 1..1
* extension[localNascimento].valueAddress only EnderecoLocalNascimento

// Fim - Extensions/Extensões

// Inicio - Constraints/Restrições

Invariant: DataNascimentoComPrecisaoDeDia
Description: "Data de nascimento deve ter a precisão de dia"
Expression: "$this.toString().length() = 10"
Severity: #error

Invariant: NoMaximoUmaMaeBiologica // RN06
Description: "Deve existir no máximo uma mãe biológica."
Expression: "extension.where(url = 'https://fhir.saude.go.gov.br/r4/core/StructureDefinition/filiacao').extension.where(url = 'tipo' and value='0101').count() <= 1"
Severity: #error

Invariant: NoMaximoUmPaiBiologico // RN06
Description: "Deve existir no máximo um pai biológico."
Expression: "extension.where(url = 'https://fhir.saude.go.gov.br/r4/core/StructureDefinition/filiacao').extension.where(url = 'tipo' and value='0201').count() <= 1"
Severity: #error

Invariant: BrasileiroSeSomenteSeNasceNoBrasil // RN08
Description: "Brasileiro SE SOMENTE SE nasce no Brasil."
Expression: "extension.where(url = 'http://www.saude.gov.br/fhir/r4/StructureDefinition/BRNacionalidade' and (value.coding.code in ('B'))).exists() and extension.where(url = 'http://hl7.org/fhir/StructureDefinition/patient-birthPlace' and value.country = '10').exists() or extension.where(url = 'http://www.saude.gov.br/fhir/r4/StructureDefinition/BRNacionalidade' and (value.coding.code in ('B')).not()).exists() and extension.where(url = 'http://hl7.org/fhir/StructureDefinition/patient-birthPlace' and value.country != '10').exists()"
// Expression reduzida, mas que acarreta em warnings 
//Expression : "iif (extension.where(url = 'http://www.saude.gov.br/fhir/r4/StructureDefinition/BRNacionalidade').value.coding.code = 'B', extension.where(url = 'https://fhir.saude.go.gov.br/r4/core/StructureDefinition/pais-nascimento').value = '10', extension.where(url = 'https://fhir.saude.go.gov.br/r4/core/StructureDefinition/pais-nascimento').value != '10')"
Severity: #warning

Invariant: CidadeNascimento // RN09 e RN10
Description: "Brasileiro informa a cidade de nascimento. Não brasileiro não informa a cidade de nascimento."
Expression: "extension.where(url = 'http://www.saude.gov.br/fhir/r4/StructureDefinition/BRNacionalidade' and (value.coding.code in ('B'))).exists() and extension.where(url = 'http://hl7.org/fhir/StructureDefinition/patient-birthPlace' and value.city.exists()).exists() or extension.where(url = 'http://www.saude.gov.br/fhir/r4/StructureDefinition/BRNacionalidade' and (value.coding.code in ('B')).not()).exists() and extension.where(url = 'http://hl7.org/fhir/StructureDefinition/patient-birthPlace' and value.city.exists()).exists().not()"
Severity: #warning

Invariant: NumeroTelefoneValido // RN12
Description: "Máscara de telefone para números nacionais (xx) xxxx-xxxx ou (xx) xxxxx-xxxx. Para números internacionais, o + significa que será utilizado o código do país, a lógica é de 1 a 3 dígitos de código do país (+X, +XX ou +XXX), na sequência uma quantidade de dígitos entre o código de área e o número propriamente dito que, somados ao código do país, não podem exceder 15 dígitos."
Expression: "$this.where(system = 'phone').select(value).all(matches('^((\\\\(([0-9]{2})\\\\)) ([0-9]{4,5})\\\\-([0-9]{4}))|^((\\\\+\\\\d{1,3}) (\\\\d{2,3})) \\\\d{3,5}\\\\-\\\\d{4}$'))"
Severity: #error

Invariant: EmailValido // RN13
Description: "Máscara de email xxx@xxx.xx"
Expression: "$this.where(system = 'email').select(value).all(matches('^([\\\\w-\\\\.]+){1,64}@([\\\\w&&[^_]]+){2,255}(.[a-z]{2,}){1,}$'))"
Severity: #error

Invariant: ContatoEmergenciaUnico
Description: "Contato de emergência não deve ter duplicidades"
Expression: "contact.select(telecom).select(value).isDistinct()"
Severity: #error

// Fim - Constraints/Restrições