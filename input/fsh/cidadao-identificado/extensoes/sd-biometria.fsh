Extension: Biometria
Id: biometria
Title: "Biometria"
Description: "Biometria"
Context: Patient 

* extension contains
    imagem 1..1 and
    tipo 1..1    

* extension[imagem].value[x] only base64Binary
* extension[tipo].value[x] only code
* extension[tipo].valueCode from TipoBiometria