// Encounter_eReferral
//以下省略（診療情報提供書）
Instance: encounterReferralExample01
InstanceOf: JP_Encounter
Usage: #example
  
Description: "encounterReferralExample01 診療情報提供書での紹介目的　例"

* meta.profile[+] = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Encounter_eClinicalSummary"


* identifier.system = "http://jpfhir.jp/fhir/Common/CodeSystem/resourceInstance-identifier"
* identifier.value = "192837"
* status = #finished

* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #AMP
* class.display = "外来"

* reasonCode[+].text = "腹痛精査お願いします。"
