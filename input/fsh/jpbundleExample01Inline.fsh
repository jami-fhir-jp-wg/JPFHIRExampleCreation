
Instance: bundleReferralExample01
InstanceOf: Bundle
Usage: #example

Description: "bundleReferralExample01 診療情報提供書Bundle本体サンプル"

* meta.profile[+] = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Bundle_eReferral"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier"
* identifier.value = "123456"
* type = #document

* timestamp = "2021-11-26T10:00:00+09:00"

* entry[+].fullUrl = "urn:uuid:e99e4ea5-66fa-43c3-a0ac-3fc92cc1e3b7"
* entry[=].resource = compositionReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:6def4a2b-977a-4a5b-9e05-33d43668ee6a"
* entry[=].resource = jppatientExample01Inline

* entry[+].fullUrl = "urn:uuid:3f0f3bce-6bb0-4cf5-adfd-5255cabd45c9"
* entry[=].resource = encounterReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:ac0fe751-70d2-48bf-9cda-1171833fec3b"
* entry[=].resource = referralFromPractitionerExample01Inline

* entry[+].fullUrl = "urn:uuid:62e2a84e-63f8-49b1-902c-0a6aa7e83f41"
* entry[=].resource = referralToPractitionerExample01Inline

* entry[+].fullUrl = "urn:uuid:7b919191-f169-41fc-b8b7-bd342cf5a72c"
* entry[=].resource = referralFromOrganizationExample01Inline

* entry[+].fullUrl = "urn:uuid:dd92c996-4918-4f21-8a35-5f3426606b03"
* entry[=].resource = referralToOrganizationExample01Inline

* entry[+].fullUrl = "urn:uuid:512e1134-4034-4892-8b8f-495c8429c8ec"
* entry[=].resource = referralToOrganizationDeptExample01Inline

* entry[+].fullUrl = "urn:uuid:11aaaf8e-0c89-473a-b8aa-e00a3e49c286"
* entry[=].resource = referralFromOrganizationDeptExample01Inline

* entry[+].fullUrl = "urn:uuid:b2f53be5-de81-48ad-9faf-13f450185274"
* entry[=].resource = purposeReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:a3d7098b-cf86-41ba-84b8-c95a32e2d3a4"
* entry[=].resource = cc1ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:b6351eb0-e9ab-4bb1-9743-d7a99643f027"
* entry[=].resource = cc2ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:5dedff35-5983-41fb-9547-5f36b0f563dc"
* entry[=].resource = piReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:94d4bfde-f441-4a83-a7cd-a09649a739eb"
* entry[=].resource = ph1ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:a2e81799-a74b-4c2a-8808-ac81548f8ecc"
* entry[=].resource = ph2ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:32647089-8cab-4591-8e7b-859ddf76dd85"
* entry[=].resource = alg1ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:5d7233b5-9df1-4c88-a755-88fa871253ed"
* entry[=].resource = alg1ReferralExample02Inline

* entry[+].fullUrl = "urn:uuid:b878b6e2-5e6e-4107-9068-413cc6a5d700"
* entry[=].resource = psobsCommonExample01Inline

* entry[+].fullUrl = "urn:uuid:767ea655-dfca-43aa-ab2c-f798ce149cca"
* entry[=].resource = ccourseReferralExample01Inline

