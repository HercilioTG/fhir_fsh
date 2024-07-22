Extension: PatientSituacaoMercadoTrabalho
Id: patient-situacao-mercado-trabalho
Title: "Ocupacao"
Description: """Situação no mercado de trabalho se refere 
ao estado ou condição de emprego de uma pessoa em relação ao ambiente econômico mais amplo.."""
Context: Patient

* value[x] 1..1
* value[x] only Reference(SituacaoMercadoTrabalho)