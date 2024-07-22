Profile: Ocupacao
Parent: Observation
Id: ocupacao
Title: "Ocupacao"
Description: """
Ocupação refere-se à atividade profissional desempenhada por um indivíduo em um determinado campo de trabalho,
 conforme definido e categorizado pela Classificação Brasileira de Ocupações (CBO). 
 Cada ocupação é identificada por um código específico no CBO,
  que descreve as principais responsabilidades,
   habilidades necessárias e condições de trabalho associadas àquela ocupação."""

* code = $csLoinc#21843-8 // History of Usual occupation
* value[x] only CodeableConcept
* value[x] from $vsOcupacao
* valueCodeableConcept 1..1
* status 1..1
* status = #final
* subject 1..1
* subject only Reference(Individuo)