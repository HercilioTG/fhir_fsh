Profile: VacinaAdministrada
Parent: Immunization
Id: VacinaAdministrada
Title: "Imunobiológico Administrado"
Description: "Perfil para representar um imunobiológico administrado."
* ^date = "2024-04-15"
* ^publisher = "SES-GO"
* ^status = #active
* status 1..1
* status ^short = "Indica o status atual da administração do Imunobiológico."
* status ^definition = "Geralmente será definido para mostrar que a imunização foi concluída ou não. Este elemento é rotulado como modificador porque o status 
                        contém códigos que marcam o recurso como inválido no momento."
* status from $ImmunizationStatus
* status = #completed
* meta 0..1
* meta ^short = "Metadados sobre o recurso"
* meta ^definition = "Os metadados sobre o recurso. Este é o conteúdo mantido pela infraestrutura. As alterações no conteúdo nem sempre podem estar associadas a alterações de versão do recurso."
* meta.profile 1..*
* meta.profile ^short = "Perfis que este recurso  implementa"
* meta.profile ^definition = "Uma lista de perfis (referências a recursos StructureDefinition) que este recurso implementa. A URL é uma referência a StructureDefinition.url."
* patient 1..1
* patient ^short = "Para quem esta imunização foi administrada"
* patient ^definition = "O paciente que recebeu ou não recebeu a imunização."
* lotNumber 0..1
* lotNumber ^short = "Número do lote da vacina"
* lotNumber ^definition = "O número do lote do produto da vacina."
* occurrenceDateTime 1..1
* occurrenceDateTime ^short = "Data de administração da vacina"
* occurrenceDateTime ^definition = "Data em que a vacina foi administrada ou deveria ser administrada."
* vaccineCode 1..1
* vaccineCode only CodeableConcept
* vaccineCode from $vsImunobiologico (required)
* vaccineCode ^short = "Produto da vacina administrada"
* vaccineCode ^definition = "Vacina que foi administrada ou deveria ser administrada."
* protocolApplied 0..*
* protocolApplied.doseNumberString 1..1
* protocolApplied.doseNumberString ^short = "Número da Dose"
* protocolApplied.doseNumberString ^definition = "Qual o número da dose administrada."