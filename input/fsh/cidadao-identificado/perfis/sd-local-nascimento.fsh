Profile: EnderecoLocalNascimento
Parent: Address
Id: endereco-local-nascimento
Title: "Local Nascimento"
Description: "Indica o local de nascimento do indivíduo."

* city 0..1
* city from $vsMunicipio (required)
* country 1..1 
* country from $vsPais (required)

* id 0..0
* use 0..0
* type 0..0
* text 0..0
* line 0..0
* district 0..0
* state 0..0
* postalCode 0..0
* period 0..0
* extension 0..0