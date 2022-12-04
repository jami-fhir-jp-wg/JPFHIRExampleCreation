
Instance: bundleReferralExample01
InstanceOf: Bundle
Usage: #example

Description: "bundleReferralExample01 診療情報提供書Bundle"

* meta.profile[+] = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Bundle_eReferral"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier"
* identifier.value = "123456"
* type = #document

* timestamp = "2021-11-26T10:00:00+09:00"

* entry[+].fullUrl = "urn:uuid:d032963d-d288-448a-97a1-21890c2256f5"
* entry[=].resource = compositionReferralExample01

* entry[+].fullUrl = "urn:uuid:c523415e-3623-44a4-8c4e-9df8320177f9"
* entry[=].resource = jppatientExample01

* entry[+].fullUrl = "urn:uuid:fd7ac19e-a4e5-48a7-be8e-efbe76db0c6f"
* entry[=].resource = encounterReferralExample01

* entry[+].fullUrl = "urn:uuid:3ee19880-4be1-42f2-87a0-19bd2472ea96"
* entry[=].resource = referralFromPractitionerExample01

* entry[+].fullUrl = "urn:uuid:cdf57d74-aa5b-41e1-b25f-df165369e40c"
* entry[=].resource = referralToPractitionerExample01

* entry[+].fullUrl = "urn:uuid:7e2a80ee-4e61-4e00-b81b-8fbae98e799b"
* entry[=].resource = referralFromOrganizaitonExample01

* entry[+].fullUrl = "urn:uuid:0f3b6514-6803-4d87-bab7-cd910c5da2ac"
* entry[=].resource = referralToOrganizaitonExample01

* entry[+].fullUrl = "urn:uuid:45372a1c-ec31-47c2-84cd-fd96ddc3f5cd"
* entry[=].resource = referralToOrganizaitonDeptExample01

* entry[+].fullUrl = "urn:uuid:70d3f275-53da-4cf3-bdd7-3224a2206899"
* entry[=].resource = referralFromOrganizaitonDeptExample01

* entry[+].fullUrl = "urn:uuid:5fb7d349-2e31-4e53-bb61-a8d1cb2a8a57"
* entry[=].resource = purposeReferralExample01

* entry[+].fullUrl = "urn:uuid:dacf3da7-17d3-48fc-ab17-31235f89ebda"
* entry[=].resource = cc1ReferralExample01

* entry[+].fullUrl = "urn:uuid:2c3bf200-bab7-4701-8720-3315c3b50b68"
* entry[=].resource = cc2ReferralExample01

* entry[+].fullUrl = "urn:uuid:6145d335-04c8-4a54-b691-f952faca18f8"
* entry[=].resource = piReferralExample01

* entry[+].fullUrl = "urn:uuid:2c0df373-ab46-4010-a7ee-9181bfe236c8"
* entry[=].resource = ph1ReferralExample01

* entry[+].fullUrl = "urn:uuid:afd6a4b8-9e20-4236-bfa6-7a9315ac34f2"
* entry[=].resource = ph2ReferralExample01

* entry[+].fullUrl = "urn:uuid:8bc5918d-16a9-444e-9f1c-c28a3df9e3be"
* entry[=].resource = alg1ReferralExample01

* entry[+].fullUrl = "urn:uuid:f6b3fbe7-513b-402c-9b66-7568221d677d"
* entry[=].resource = alg1ReferralExample02

* entry[+].fullUrl = "urn:uuid:bc20b8bc-30ba-4ebc-bb2a-6949b21237ee"
* entry[=].resource = psobsCommonExample01

* entry[+].fullUrl = "urn:uuid:68ba91f0-49ec-4fd1-8b03-d5d9ae92c0bb"
* entry[=].resource = ccourseReferralExample01

