Extension: PatientEscolaridade
Id: patient-escolaridade
Title: "Escolaridade"
Description: """
Escolaridade se refere ao nível de educação formal alcançado por um indivíduo, 
geralmente medido em termos de anos de estudo completados ou de diplomas obtidos. 
Essa medida é frequentemente usada para avaliar o conhecimento e as habilidades 
de uma pessoa em um determinado contexto educacional ou profissional."""
Context: Patient

* value[x] 1..1
* value[x] only Reference(Escolaridade)