Extension: PatientOcupacao
Id: patient-ocupacao
Title: "Ocupacao"
Description: """
Ocupação refere-se à atividade profissional desempenhada por um indivíduo em um determinado campo de trabalho,
 conforme definido e categorizado pela Classificação Brasileira de Ocupações (CBO). 
 Cada ocupação é identificada por um código específico no CBO,
  que descreve as principais responsabilidades,
   habilidades necessárias e condições de trabalho associadas àquela ocupação."""
Context: Patient

* value[x] 1..1
* value[x] only Reference(Ocupacao)