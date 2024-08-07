Instance: identidade-genero
InstanceOf: NamingSystem
Usage: #definition
Description: """Identidade de gênero se refere à profunda convicção pessoal de ser homem, 
mulher, uma mistura de ambos, ou nenhum dos dois. Essa identidade não necessariamente corresponde ao sexo atribuído no nascimento. """

Title: "Identidade de gênero"

* name = "IdentidadeGenero"
* status = #active
* kind = #codesystem
* date = "2023-07-31T14:24:34.711Z"
* uniqueId[0].type = #uri
* uniqueId[0].value = $csIdentidadeGenero
* publisher = "Secretaria Estadual de Saúde de Goiás (SES-GO)"
* responsible = "Secretaria Estadual de Saúde de Goiás (SES-GO)"
* description = """Identidade de gênero se refere à profunda convicção pessoal de ser homem, 
mulher, uma mistura de ambos, ou nenhum dos dois. Essa identidade não necessariamente corresponde ao sexo atribuído no nascimento. """
* jurisdiction[0].coding[0].system = "urn:iso:std:iso:3166"
* jurisdiction[0].coding[0].code = #BR
* usage = "Identidade de gênero"

CodeSystem: IdentidadeGenero
Id: identidade-genero
Title: "IdentidadeGenero"
Description: """Identidade de gênero se refere à profunda convicção pessoal de ser homem, 
mulher, uma mistura de ambos, ou nenhum dos dois. Essa identidade não necessariamente corresponde ao sexo atribuído no nascimento. """

* ^status = #active
* ^experimental = false
* ^caseSensitive = true

* #149 "Homem transgênero" "Pessoa que nasce em corpo feminino e se reconhece como gênero masculino, desejando ou não modificar seu corpo para exercer sua identidade masculina." 
* #156 "Travesti" "Uma construção de gênero feminino, oposta ao sexo biológico, seguido de uma construção física de caráter permanente, que se identifica na vida social, familiar, cultural e interpessoal, por meio dessa identidade. Muitas modificam seus corpos por meio de hormonioterapias, aplicações de silicone e/ou cirurgias plásticas, porém, vale ressaltar que isso não é regra para todas. Existe o grupo dentro desse segmento que se autoafirma ‘mulher travesti’."
* #150 "Mulher transgênero" "Pessoa que nasce em corpo masculino e se reconhece como gênero feminino, desejando ou não modificar seu corpo para exercer sua identidade feminina." 
* #200 "Homem cisgênero" "Pessoa que não é transgênero (mulheres trans, travestis e homens trans). Refere-se ao cidadão que se identifica, em todos os aspectos, com o gênero atribuído ao nascer."
* #201 "Mulher cisgênero" "Pessoa que não é transgênero (mulheres trans, travestis e homens trans). Refere-se ao cidadão que se identifica, em todos os aspectos, com o gênero atribuído ao nascer."
* #202 "Transgênero" "Pessoa que nasceu com determinado sexo biológico, e não se identifica com o seu corpo."
* #203 "Não-binário" "Pessoas que não se percebem como pertencentes a um gênero exclusivamente."
* #151 "Outros" "Demais identidades de gênero."