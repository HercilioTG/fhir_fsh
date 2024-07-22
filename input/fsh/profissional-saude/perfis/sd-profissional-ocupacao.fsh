Profile: ProfissionalOcupacao
Parent: PractitionerRole
Id: profissional-ocupacao
Title: "Ocupacao do Profissional"
Description: """
Ocupação refere-se à atividade profissional desempenhada por um indivíduo em um determinado campo de trabalho,
 conforme definido e categorizado pela Classificação Brasileira de Ocupações (CBO). 
 Cada ocupação é identificada por um código específico no CBO,
  que descreve as principais responsabilidades,
   habilidades necessárias e condições de trabalho associadas àquela ocupação."""

* ^status = #active

* identifier 0..1
* code from $vsOcupacao

* practitioner only Reference(Profissional)
