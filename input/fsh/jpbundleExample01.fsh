
Instance: bundleReferralExample01
InstanceOf: Bundle
Usage: #example

Description: "bundleReferralExample01 診療情報提供書Bundle"

* meta.profile[+] = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Bundle_eReferral"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier"
* identifier.value = "123456"
* type = #document

* timestamp = "2021-11-26T10:00:00+09:00"

* entry[+].fullUrl = "urn:uuid:772534ec-086e-432b-b1cb-22116ab1a7a8"
* entry[=].resource = compositionReferralExample01

* entry[+].fullUrl = "urn:uuid:3dc2541e-0647-42b8-a676-bf793d360e1d"
* entry[=].resource = jppatientExample01

* entry[+].fullUrl = "urn:uuid:3058a335-0835-4722-801c-ce7ca4bed351"
* entry[=].resource = referralFromPractitionerExample01

* entry[+].fullUrl = "urn:uuid:3f8a83fa-4083-4196-9cfe-a8a0c7f0b0c3"
* entry[=].resource = referralToPractitionerExample01

* entry[+].fullUrl = "urn:uuid:8b7df950-64dc-4ad4-b791-d831cc034b93"
* entry[=].resource = referralFromOrganizaitonExample01

* entry[+].fullUrl = "urn:uuid:707bd66a-6613-48ba-ac7e-e6c8d79ce686"
* entry[=].resource = referralToOrganizaitonExample01

* entry[+].fullUrl = "urn:uuid:e6ee0c54-0c57-49c2-ab9f-1a3979a72f69"
* entry[=].resource = referralToOrganizaitonDeptExample01

* entry[+].fullUrl = "urn:uuid:9ab43aef-11c2-4042-84d0-f22370355d3b"
* entry[=].resource = referralFromOrganizaitonDeptExample01

* entry[+].fullUrl = "urn:uuid:7871927d-e2ef-4cd4-8d7c-0786d44bfd8b"
* entry[=].resource = purposeReferralExample01

* entry[+].fullUrl = "urn:uuid:96a7aa3a-377c-48ae-80f6-8c930f661d47"
* entry[=].resource = cc1ReferralExample01

* entry[+].fullUrl = "urn:uuid:b88de069-fd19-4b91-9b68-be235661c57f"
* entry[=].resource = cc2ReferralExample01

* entry[+].fullUrl = "urn:uuid:d0415670-683c-4eb3-98da-d7bb6b75d605"
* entry[=].resource = piReferralExample01

* entry[+].fullUrl = "urn:uuid:45cbbe3b-1a23-4c37-9009-6a03e1d9d216"
* entry[=].resource = ph1ReferralExample01

* entry[+].fullUrl = "urn:uuid:d3856843-ad78-4ebc-940e-3e0d2eb91f1b"
* entry[=].resource = ph2ReferralExample01

* entry[+].fullUrl = "urn:uuid:56fa58e6-2799-4a2f-9bbd-f868431dc32c"
* entry[=].resource = alg1ReferralExample01

* entry[+].fullUrl = "urn:uuid:d9de56c6-0704-4d38-8759-3f637f93b017"
* entry[=].resource = alg1ReferralExample02

* entry[+].fullUrl = "urn:uuid:aaf33505-fe73-4f8e-9db8-24331b601d9f"
* entry[=].resource = psobsCommonExample01

* entry[+].fullUrl = "urn:uuid:5eb7caf6-9594-430d-8840-f814813b8716"
* entry[=].resource = ccourseReferralExample01

