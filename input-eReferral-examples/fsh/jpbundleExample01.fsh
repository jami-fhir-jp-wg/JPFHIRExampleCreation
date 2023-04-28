
Instance: bundleReferralExample01
InstanceOf: Bundle
Usage: #example

Description: "bundleReferralExample01 診療情報提供書Bundle"

* meta.profile[+] = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Bundle_eReferral"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier"
* identifier.value = "123456"
* type = #document

* timestamp = "2021-11-26T10:00:00+09:00"

* entry[+].fullUrl = "urn:uuid:c2245408-a319-4958-90a9-f309ea458899"
* entry[=].resource = compositionReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:44a5cbf2-9ccf-4584-a8df-522914c9e932"
* entry[=].resource = jppatientExample01Inline

* entry[+].fullUrl = "urn:uuid:96090595-5a39-47bb-a0c6-269e597c955d"
* entry[=].resource = encounterReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:b4a121e1-fe13-4aa2-9f8f-42788f2a24d2"
* entry[=].resource = referralFromPractitionerExample01Inline

* entry[+].fullUrl = "urn:uuid:4a5561e0-a74d-4498-ae91-31c10799960c"
* entry[=].resource = referralToPractitionerExample01Inline

* entry[+].fullUrl = "urn:uuid:c0754fd5-367e-47ad-b46f-f3f191140abe"
* entry[=].resource = referralFromOrganizationExample01Inline

* entry[+].fullUrl = "urn:uuid:9aeb1db8-daca-4c9a-ae4f-cfd1ebf98a9b"
* entry[=].resource = referralToOrganizationExample01Inline

* entry[+].fullUrl = "urn:uuid:93b62323-3b26-4468-b7d5-bef97f452900"
* entry[=].resource = referralToOrganizationDeptExample01Inline

* entry[+].fullUrl = "urn:uuid:2074d0ca-3495-484e-b2e1-55518f10d0b3"
* entry[=].resource = referralFromOrganizationDeptExample01Inline

* entry[+].fullUrl = "urn:uuid:65a47509-665e-4073-a317-43db34c4692b"
* entry[=].resource = purposeReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:b0b1addc-2cd1-4054-9604-c010ccb457c2"
* entry[=].resource = cc1ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:025357ef-a59e-4b19-914d-83dcc7ca58c0"
* entry[=].resource = cc2ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:4cbe5ff0-df95-487e-b8b9-1cffe3d74b7a"
* entry[=].resource = piReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:5643d383-61f2-4ed3-a90b-cc47433a707f"
* entry[=].resource = ph1ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:8954f190-9d52-4d3f-a68e-359603792a90"
* entry[=].resource = ph2ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:fbb63e8d-fcd9-4099-9cf7-790a2e98470e"
* entry[=].resource = alg1ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:868fc8a9-9df8-4930-9fbe-a7222afc5ab2"
* entry[=].resource = alg1ReferralExample02Inline

* entry[+].fullUrl = "urn:uuid:cc462175-f4d0-484f-a448-8bc50cd7bb94"
* entry[=].resource = psobsCommonExample01Inline

* entry[+].fullUrl = "urn:uuid:5fcabd99-d739-4690-926c-3c6470442504"
* entry[=].resource = ccourseReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:8185b7dd-b6e9-47ee-be91-0a6db36a0f37"
* entry[=].resource = MedicationRequestExample01Inline

* entry[+].fullUrl = "urn:uuid:28883a6e-006e-4d05-9a65-9943b53237a0"
* entry[=].resource = JP-MedReq-ePreData-Example-fukintouByDayInline


