
Instance: bundleReferralExample01
InstanceOf: Bundle
Usage: #example

Description: "bundleReferralExample01 診療情報提供書Bundle"

* meta.profile[+] = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Bundle_eReferral"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier"
* identifier.value = "123456"
* type = #document

* timestamp = "2021-11-26T10:00:00+09:00"

* entry[+].fullUrl = "urn:uuid:e9d13e2d-8123-4564-8cb7-9bdbec5f07d9"
* entry[=].resource = compositionReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:77cb7a86-210e-4409-a79a-a236da910bc0"
* entry[=].resource = jppatientExample01Inline

* entry[+].fullUrl = "urn:uuid:b5101833-f1fe-41b8-8226-a9184844890c"
* entry[=].resource = encounterReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:547c0461-b6b3-44ab-9d4e-35fc13e77604"
* entry[=].resource = referralFromPractitionerExample01Inline

* entry[+].fullUrl = "urn:uuid:76e10dc1-f949-4383-96d4-3bbd523ff2be"
* entry[=].resource = referralToPractitionerExample01Inline

* entry[+].fullUrl = "urn:uuid:b9350e61-bdcf-4ac2-aa4e-ec465a8cf78d"
* entry[=].resource = referralFromOrganizationExample01Inline

* entry[+].fullUrl = "urn:uuid:991643e0-193f-4430-ac2e-7caa30a82ec5"
* entry[=].resource = referralToOrganizationExample01Inline

* entry[+].fullUrl = "urn:uuid:83a1d413-5cd6-4e01-8e9e-91da442f0954"
* entry[=].resource = referralToOrganizationDeptExample01Inline

* entry[+].fullUrl = "urn:uuid:6552be36-c474-4029-880b-30609d958e84"
* entry[=].resource = referralFromOrganizationDeptExample01Inline

* entry[+].fullUrl = "urn:uuid:98a0a12d-1ae2-4f94-b490-355fdaf18733"
* entry[=].resource = purposeReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:615e243c-9fad-4d07-b5ea-c529a130f201"
* entry[=].resource = cc1ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:7573f5c6-189f-4cec-a585-46736755ed52"
* entry[=].resource = cc2ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:3c678e62-f98a-40b1-bf5a-b6ecaf677464"
* entry[=].resource = piReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:b6534b7c-eeb8-4f45-b7a3-84b522aea674"
* entry[=].resource = ph1ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:3e467860-4ff2-46cc-a640-419524e383b0"
* entry[=].resource = ph2ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:a3c7683d-2dbc-4ff6-8f71-bb63c420379c"
* entry[=].resource = alg1ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:3541b708-0b37-493c-9a00-705e2f5c74c0"
* entry[=].resource = alg1ReferralExample02Inline

* entry[+].fullUrl = "urn:uuid:cb3845d9-859c-43de-9350-5a6b006b70ab"
* entry[=].resource = psobsCommonExample01Inline

* entry[+].fullUrl = "urn:uuid:ede9935d-5459-42ab-b8ad-7e7218b783bf"
* entry[=].resource = ccourseReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:92968c93-9050-4b8d-b34d-da08daf783dc"
* entry[=].resource = MedicationRequestExample01Inline

* entry[+].fullUrl = "urn:uuid:2906e8cb-0eeb-4b42-8dd4-80a0ee814aac"
* entry[=].resource = JP-MedReq-ePreData-Example-fukintouByDayInline


