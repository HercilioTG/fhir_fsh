Instance: tipo-informacao-endereco
InstanceOf: NamingSystem
Usage: #definition
Description: """Informações detalhadas de endereço, como rua, logradouro, bairro e outros elementos, 
servem para identificar de forma precisa e única a localização de um determinado lugar.
Aqui são definidos os tipo para utilização nas linhas de um Endereço."""

Title: "Tipo de informação do endereço"

* name = "TipoInformacaoEndereco"
* status = #active
* kind = #codesystem 
* date = "2023-07-31T14:24:34.711Z"
* uniqueId[0].type = #uri
* uniqueId[0].value = $csTipoInformacaoEndereco
* publisher = "Secretaria Estadual de Saúde de Goiás (SES-GO)"
* responsible = "Secretaria Estadual de Saúde de Goiás (SES-GO)"
* description = "Tipo de informação de endereço. Para identificação precisa das informações detalhadas de um endereço."
* jurisdiction[0].coding[0].system = "urn:iso:std:iso:3166"
* jurisdiction[0].coding[0].code = #BR
* usage = "Identificação dos detalhes de um endereço completo, como por exemplo nome da rua, bairro e informações complementares."

CodeSystem: TipoInformacaoEndereco
Id: tipo-informacao-endereco
Title: "Tipo de Informação de Endereço"
Description: """Informações detalhadas de endereço, como rua, logradouro, bairro e outros elementos, 
servem para identificar de forma precisa e única a localização de um determinado lugar.
Aqui são definidos os tipo para utilização nas linhas de um Endereço."""

* ^status = #draft
* ^experimental = false
* ^caseSensitive = true

* #bairro "Bairro de residência do(a) cidadão(ã)." 
* #logradouro "Logradouro de residência do(a) cidadão(ã)."
* #numero "Número de residência do(a) cidadão(ã)."
* #complemento "Complemento como quadra, lote e entre outros."
* #tipologradouro "Tipo do logradouro."
