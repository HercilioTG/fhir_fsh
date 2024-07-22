Profile: SituacaoMercadoTrabalho
Parent: Observation
Id: situacao-mercado-trabalho
Title: "SituacaoMercadoTrabalho"
Description: """Situação no mercado de trabalho se refere 
ao estado ou condição de emprego de uma pessoa em relação ao ambiente econômico mais amplo.."""

* code = $csLoinc#67875-5 // Employment status - current
* value[x] only CodeableConcept
* value[x] from SituacaoMercadoTrabalho
* valueCodeableConcept 1..1
* status 1..1
* status = #final
* subject 1..1
* subject only Reference(Individuo)