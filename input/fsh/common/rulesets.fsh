RuleSet: IdentificadorCpfECns

// Inicio - Identificadores - RN01 - CPF e CNS são obrigatórios e identificados pelo system. 

* identifier 2..2

* identifier ^short = "Número de documento que identifica o cidadão"

* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #closed
* identifier ^slicing.ordered = true
* identifier ^slicing.description = "Deve conter dois identificadores, sendo um o CPF o outro o CNS"

* identifier contains cpf 1..1 and cns 1..1

// Inicio - CNS

* identifier[cns] ^short = "Identificação pelo Cartão Nacional de Saúde"

* identifier[cns].type 0..0
* identifier[cns].system = $cns
* identifier[cns].system ^short = "O identificador do sistema de identificação"
* identifier[cns].value 1..1
* identifier[cns].value ^short = "Número do Cartão Nacional de Saúde do indivíduo"
* identifier[cns].use 0..0
* identifier[cns].period 0..0
* identifier[cns].assigner 0..0
* identifier[cns].extension 0..0

// Fim - CNS

// Inicio - CPF

* identifier[cpf] ^short = "Identificação pelo Cadastro de Pessoas Físicas"

* identifier[cpf].type 0..0
* identifier[cpf].system = $cpf
* identifier[cpf].system ^short = "O identificador do sistema de identificação"
* identifier[cpf].value 1..1
* identifier[cpf].value ^short = "Número do Cadastro de Pessoas Físicas do indivíduo"
* identifier[cpf].use 0..0
* identifier[cpf].period 0..0
* identifier[cpf].assigner 0..0
* identifier[cpf].extension 0..0


// Fim - CPF

// Fim - Identificadores 

RuleSet: Endereco(use)

* address 1..1
* address.use 1..1
* address.use ^short = "Código que identifica o tipo de endereço informado"
* address.use = #{use} 
* address.city 1..1
* address.city ^short = "Município de residência do indivíduo"
* address.city from $vsMunicipio (required)
* address.postalCode 0..1
* address.postalCode ^short = "Código de Endereçamento Postal da residência do indivíduo"
* address.line 0..5
* address.line ^short = "Elementos necessários ao endereçamento brasileiro"

* address.line.extension.url = $sdTipoInformacaoEndereco
* address.line ^slicing.discriminator.type = #value
* address.line ^slicing.discriminator.path = "extension.value"
* address.line ^slicing.rules = #closed
* address.line contains bairro 0..1 and logradouro 0..1 and numero 0..1 and complemento 0..1 and tipologradouro 0..1

* address.line[tipologradouro].extension.valueCode = #tipologradouro
* address.line[tipologradouro].extension.value[x] only code
* address.line[tipologradouro] from TipoLogradouro (required)
* address.line[tipologradouro] ^short = "Tipo de logradouro da residência do indivíduo"

* address.line[bairro].extension.valueCode = #bairro
* address.line[bairro].extension.value[x] only code
* address.line[bairro] ^short = "Bairro da residência do indivíduo"


* address.line[logradouro].extension.valueCode = #logradouro
* address.line[logradouro].extension.value[x] only code
* address.line[logradouro] ^short = "Nome do logradouro da residência do indivíduo"

* address.line[numero].extension.valueCode = #numero
* address.line[numero].extension.value[x] only code
* address.line[numero] ^short = "Número da residência do indivíduo"

* address.line[complemento].extension.valueCode = #complemento
* address.line[complemento].extension.value[x] only code
* address.line[complemento] ^short = "Complemento do endereço da residência do indivíduo"

* address.type 0..0
* address.text 0..0
* address.district 0..0
* address.state 0..0
* address.country 0..0
* address.period 0..0
* address.extension 0..0
* address.id 0..0