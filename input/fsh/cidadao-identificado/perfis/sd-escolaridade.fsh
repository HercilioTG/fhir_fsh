Profile: Escolaridade
Parent: Observation
Id: escolaridade
Title: "Escolaridade"
Description: """
Escolaridade se refere ao nível de educação formal alcançado por um indivíduo, 
geralmente medido em termos de anos de estudo completados ou de diplomas obtidos. 
Essa medida é frequentemente usada para avaliar o conhecimento e as habilidades 
de uma pessoa em um determinado contexto educacional ou profissional."""

* code = $csLoinc#82589-3 // Highest level of education
* value[x] only CodeableConcept
* value[x] from Escolaridade
* valueCodeableConcept 1..1
* status 1..1
* status = #final
* subject 1..1
* subject only Reference(Individuo)