Extension: Filiacao
Id: filiacao
Title: "Filiação"
Description: "Filiação"
Context: Patient 

* obeys NomeCompletoDeveConterNoMinimoDoisNomes

* extension contains
    nome 1..1 and
    tipo 1..1    

* extension[nome].value[x] only string
* extension[tipo].value[x] only code
* extension[tipo].valueCode from RelacaoParental

Invariant: NomeCompletoDeveConterNoMinimoDoisNomes  //RN007
Description: "Nome deve ser composto por no mínimo nome e sobrenome"
Expression: "extension.where(url = 'nome').value.split(' ').count() > 1"
Severity: #error