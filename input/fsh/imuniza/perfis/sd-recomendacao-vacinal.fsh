Profile: RecomendacaoVacinal
Parent: ImmunizationRecommendation
Id: recomendacao-vacinal
Title: "Recomendação Vacinal"
Description: "Recomendação vacinal."
* ^meta.versionId = "1"
* ^date = "2024-05-22"
* ^publisher = "SES-GO"
* ^status = #active

* recommendation.vaccineCode 1..1
* recommendation.vaccineCode ^short = "Código da vacina"
* recommendation.vaccineCode ^definition = "Código da vacina ou grupo de vacina aplicada"
* recommendation.vaccineCode.coding 1..1
* recommendation.vaccineCode.coding from $vsImunobiologico (required)
* recommendation.vaccineCode.coding.system 1..
* recommendation.vaccineCode.coding.code 1..
* recommendation.forecastStatus ^short = "Status de recomendação de vacina"
* recommendation.forecastStatus ^definition = "Status de recomendação de vacina"
* recommendation.forecastStatus.coding 1..1
* recommendation.forecastStatus.coding.system 1..
* recommendation.forecastStatus.coding.code 1..
* recommendation.dateCriterion ^short = "Data de recomendação"
* recommendation.dateCriterion ^definition = "Datas que regem a imunização proposta"
* recommendation.dateCriterion ^slicing.discriminator.type = #value
* recommendation.dateCriterion ^slicing.discriminator.path = "code.coding.code"
* recommendation.dateCriterion ^slicing.ordered = false
* recommendation.dateCriterion ^slicing.rules = #open
* recommendation.dateCriterion contains dataLimite 1..1
* recommendation.dateCriterion[dataLimite].code.coding.system = "http://loinc.org"
* recommendation.dateCriterion[dataLimite].code.coding.code 1..
* recommendation.dateCriterion[dataLimite].code.coding.code = #30980-7
* recommendation.doseNumberString 1..1
* recommendation.doseNumberString ^short = "Dose recomendada"
* recommendation.doseNumberString ^definition = "Número da dose recomendada dentro da série"
* recommendation.doseNumberString only string
* recommendation.doseNumberString ^sliceName = "doseNumberString"
* recommendation.seriesDosesPositiveInt 1..1
* recommendation.seriesDosesPositiveInt ^short = "Doses da série"
* recommendation.seriesDosesPositiveInt ^definition = "Número recomendado de doses para imunização completa"
* recommendation.seriesDosesPositiveInt only positiveInt
* recommendation.seriesDosesPositiveInt ^sliceName = "seriesDosesPositiveInt"
