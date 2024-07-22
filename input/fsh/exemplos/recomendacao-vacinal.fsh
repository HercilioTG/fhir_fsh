Instance: CalendarioDoJose
InstanceOf: RecomendacaoVacinal
Usage: #example
Description: "Recomendações vacinais de José"

* patient.reference = "Patient/PacienteAugusto"
* date = "2002"

* recommendation.vaccineCode.coding = $csImunobiologico#14

* recommendation.forecastStatus.coding = $csImmunizationRecommendationStatus#due

* recommendation.dateCriterion[0].code = $csLoinc#30980-7
* recommendation.dateCriterion[0].value = 2017-01-01T00:00:00.000Z

* recommendation.series = "Nome da caminho para alcançar a imunidade presumida contra uma doença."

* recommendation.doseNumberString = "d2"
* recommendation.seriesDosesPositiveInt = 3
