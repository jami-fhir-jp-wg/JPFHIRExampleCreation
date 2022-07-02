// Encounter_eReferral
//以下省略（診療情報提供書）

Instance: encounterReferralExample01
InstanceOf: JP_Encounter
Usage: #example
  
Description: "encounterReferralExample01 外来受診　例"

* meta.profile[+] = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Encounter_eClinicalSummary"

* identifier.system = "http://jpfhir.jp/fhir/Common/CodeSystem/resourceInstance-identifier"
* identifier.value = "192844"
* status = #finished

* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #AMP
* class.display = "外来"

* classHistory[+].class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* classHistory[=].class.code = #AMP
* classHistory[=].class.display = "外来"
* classHistory[=].period.start = "2020-08-20"
