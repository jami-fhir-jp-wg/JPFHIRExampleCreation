
Instance: bundleReferralExample01
InstanceOf: Bundle
Usage: #example

Description: "bundleReferralExample01 診療情報提供書Bundle"

* meta.profile[+] = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Bundle_eReferral"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier"
* identifier.value = "123456"
* type = #document

* timestamp = "2021-11-26T10:00:00+09:00"

* entry[+].fullUrl = "urn:uuid:e3263c16-81dd-475c-bac9-7fe72227a9fd"
* entry[=].resource = compositionReferralExample01

* entry[+].fullUrl = "urn:uuid:41d4df8d-2a0e-4be6-a0c6-e54c8dbf6f94"
* entry[=].resource = jppatientExample01

* entry[+].fullUrl = "urn:uuid:865111ba-c224-47b0-8224-d0f8d991c5ce"
* entry[=].resource = encounterReferralExample01

* entry[+].fullUrl = "urn:uuid:d538093d-9cd3-476b-a6ad-04a7c6cdac30"
* entry[=].resource = referralFromPractitionerExample01

* entry[+].fullUrl = "urn:uuid:70094bad-fc20-4320-a5ff-288d82ff3f75"
* entry[=].resource = referralToPractitionerExample01

* entry[+].fullUrl = "urn:uuid:c837db2d-d54d-4e86-a5d9-88a6a7ea64c6"
* entry[=].resource = referralFromOrganizationExample01

* entry[+].fullUrl = "urn:uuid:d9588d20-5ce7-4422-942e-eb28b020a011"
* entry[=].resource = referralToOrganizationExample01

* entry[+].fullUrl = "urn:uuid:43608f08-2bf5-45d4-aabd-f65db15e2ff0"
* entry[=].resource = referralToOrganizationDeptExample01

* entry[+].fullUrl = "urn:uuid:d6a456b8-ffeb-4f59-9b2d-1b368998d373"
* entry[=].resource = referralFromOrganizationDeptExample01

* entry[+].fullUrl = "urn:uuid:7b636953-4f4b-4878-acb4-18ebda79012d"
* entry[=].resource = purposeReferralExample01

* entry[+].fullUrl = "urn:uuid:b8c4c981-3892-4686-961a-62f1810f55ea"
* entry[=].resource = cc1ReferralExample01

* entry[+].fullUrl = "urn:uuid:35fde86f-8e86-40ab-be82-1c49583e7604"
* entry[=].resource = cc2ReferralExample01

* entry[+].fullUrl = "urn:uuid:fbfd7adb-019f-4d66-9adc-76f877a6dc84"
* entry[=].resource = piReferralExample01

* entry[+].fullUrl = "urn:uuid:5b4d807a-acbf-44ff-86cf-7d1a4d941219"
* entry[=].resource = ph1ReferralExample01

* entry[+].fullUrl = "urn:uuid:b20d617f-845e-49e4-b42e-d17634ab738f"
* entry[=].resource = ph2ReferralExample01

* entry[+].fullUrl = "urn:uuid:81ebf5d9-6693-4771-b177-c1076007778d"
* entry[=].resource = alg1ReferralExample01

* entry[+].fullUrl = "urn:uuid:78a8d01a-d58d-435a-9f83-ba2d54af0b4b"
* entry[=].resource = alg1ReferralExample02

* entry[+].fullUrl = "urn:uuid:813d3a8b-9868-4c94-b3d5-15902f4f9161"
* entry[=].resource = psobsCommonExample01

* entry[+].fullUrl = "urn:uuid:e5198b21-c859-4ed3-85f9-a7d489627c28"
* entry[=].resource = ccourseReferralExample01

