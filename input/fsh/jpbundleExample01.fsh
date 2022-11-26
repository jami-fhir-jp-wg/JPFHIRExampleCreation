
Instance: bundleReferralExample01
InstanceOf: Bundle
Usage: #example

Description: "bundleReferralExample01 診療情報提供書Bundle"

* meta.profile[+] = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Bundle_eReferral"

* identifier.system = "http://jpfhir.jp/fhir/Common/IdSystem/documentInstance-identifier"
* identifier.value = "123456"
* type = #document

* timestamp = "2021-11-26T10:00:00+09:00"

* entry[+].fullUrl = "urn:uuid:3320e611-f95c-431f-a1c8-f7f97baf9aa4"
* entry[=].resource = compositionReferralExample01

* entry[+].fullUrl = "urn:uuid:c5521630-63e5-485a-86df-5e77a6be45bd"
* entry[=].resource = jppatientExample01

* entry[+].fullUrl = "urn:uuid:3351a68a-febf-4b26-adc8-c4cf9d7cf199"
* entry[=].resource = referralFromPractitionerExample01

* entry[+].fullUrl = "urn:uuid:855d7076-d468-44fe-873c-7a65e1f511a0"
* entry[=].resource = referralToPractitionerExample01

* entry[+].fullUrl = "urn:uuid:f206f37a-72fe-435f-aca6-05e8f03a0338"
* entry[=].resource = referralFromOrganizaitonExample01

* entry[+].fullUrl = "urn:uuid:ee2b7764-a36a-4731-8c79-e3b9449dc1ae"
* entry[=].resource = referralToOrganizaitonExample01

* entry[+].fullUrl = "urn:uuid:8b5766b0-05f6-4529-b29c-55bfcae7b074"
* entry[=].resource = referralToOrganizaitonDeptExample01

* entry[+].fullUrl = "urn:uuid:8c71d669-2a38-49e6-8590-d1d1959ec02f"
* entry[=].resource = referralFromOrganizaitonDeptExample01

* entry[+].fullUrl = "urn:uuid:f6747191-590c-4a3a-b25e-e82c162c36f2"
* entry[=].resource = purposeReferralExample01

* entry[+].fullUrl = "urn:uuid:f7e44699-2071-4b63-8c53-c52a0ec4d8ea"
* entry[=].resource = cc1ReferralExample01

* entry[+].fullUrl = "urn:uuid:6a042b52-45ff-4ad7-a950-9c8f0baf640e"
* entry[=].resource = cc2ReferralExample01

* entry[+].fullUrl = "urn:uuid:5b68bbe5-d4f2-4913-9a2e-9f7428a3778d"
* entry[=].resource = piReferralExample01

* entry[+].fullUrl = "urn:uuid:465a1e1d-4597-4beb-91f4-5b9c4dc94765"
* entry[=].resource = ph1ReferralExample01

* entry[+].fullUrl = "urn:uuid:02a31c42-0e46-4105-b8e3-8d9b4a10f5fc"
* entry[=].resource = ph2ReferralExample01

* entry[+].fullUrl = "urn:uuid:81c3325d-0a0d-487e-9c30-d4ca69793e8c"
* entry[=].resource = alg1ReferralExample01

* entry[+].fullUrl = "urn:uuid:e754a170-9080-4640-b71a-cc665f1ccbfb"
* entry[=].resource = alg1ReferralExample02

* entry[+].fullUrl = "urn:uuid:9a45b195-2a33-4b32-a76f-819dbeba8b0a"
* entry[=].resource = psobsCommonExample01

* entry[+].fullUrl = "urn:uuid:47edb18e-39cb-422f-afe8-3a8947ddb5c6"
* entry[=].resource = ccourseReferralExample01

