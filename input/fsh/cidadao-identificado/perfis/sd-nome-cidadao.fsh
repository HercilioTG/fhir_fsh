Profile: NomeCidadao
Parent: HumanName
Id: nome-cidadao
Title: "Nome do cidadão"
Description: """Nome do cidadão deve ser formado por duas
palavras por meio do elemento text."""

* ^status = #active

* prefix 0..0
* family 0..0
* given 0..0
* suffix 0..0
* extension 0..0
* period 0..0
* text 1..1

* obeys RN04
* use 1..1
* use from UsoNomeCidadao (required)

* use ^short = "usual | official"

Invariant: RN04
Description: "O text deve possuir pelo menos dois nomes separados por espaço."
Expression: "text.split(' ').count() > 1"
Severity: #error
