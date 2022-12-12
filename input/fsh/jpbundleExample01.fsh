
Instance: bundleReferralExample01
InstanceOf: Bundle
Usage: #example

Description: "bundleReferralExample01 診療情報提供書Bundle"

* meta.profile[+] = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Bundle_eReferral"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier"
* identifier.value = "123456"
* type = #document

* timestamp = "2021-11-26T10:00:00+09:00"

* entry[+].fullUrl = "urn:uuid:8b4cf9eb-24f1-41c0-a899-b93a11904c06"
* entry[=].resource = compositionReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:83aa2413-57b7-4769-b2bf-465450ddb351"
* entry[=].resource = jppatientExample01Inline

* entry[+].fullUrl = "urn:uuid:7280fa27-20fc-4ebe-9f5d-3836b8a6b63e"
* entry[=].resource = encounterReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:a3cc1035-cf0b-4e23-8e59-e647fbf69f6e"
* entry[=].resource = referralFromPractitionerExample01Inline

* entry[+].fullUrl = "urn:uuid:5f30b2c2-8827-4964-8e2f-e729130435f8"
* entry[=].resource = referralToPractitionerExample01Inline

* entry[+].fullUrl = "urn:uuid:ffdb043b-fda7-4ec6-9ed1-df8d4b066a0b"
* entry[=].resource = referralFromOrganizationExample01Inline

* entry[+].fullUrl = "urn:uuid:45165ee8-01cb-4448-9fd8-43b7ab4a2c32"
* entry[=].resource = referralToOrganizationExample01Inline

* entry[+].fullUrl = "urn:uuid:7756d1a3-ae1d-45e3-a5bb-cee0b98c84a4"
* entry[=].resource = referralToOrganizationDeptExample01Inline

* entry[+].fullUrl = "urn:uuid:eca4154f-202b-4a34-9704-65dba07d5e01"
* entry[=].resource = referralFromOrganizationDeptExample01Inline

* entry[+].fullUrl = "urn:uuid:f6f953a2-0d56-4657-9394-983c3341bac0"
* entry[=].resource = purposeReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:629f90ab-b189-4897-88c1-0f5c5c931edf"
* entry[=].resource = cc1ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:fd2ca19a-ddbc-425c-b3bd-8230e63a7e95"
* entry[=].resource = cc2ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:d994fd19-2318-47e2-8022-10d6b768fc6b"
* entry[=].resource = piReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:2bd8c881-5bee-494c-a37a-1d29eea42f99"
* entry[=].resource = ph1ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:1b6aeba7-1a9d-4738-84cf-f96973f5db6a"
* entry[=].resource = ph2ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:cef923ed-bcd8-462d-87c3-094fe9fb4568"
* entry[=].resource = alg1ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:7c59466c-23de-4632-8762-2a4421e383f9"
* entry[=].resource = alg1ReferralExample02Inline

* entry[+].fullUrl = "urn:uuid:757c3dde-5482-4366-8e09-89d76c1683a2"
* entry[=].resource = psobsCommonExample01Inline

* entry[+].fullUrl = "urn:uuid:4b1266da-891e-42a4-aae2-2f7d6fe7a44b"
* entry[=].resource = ccourseReferralExample01Inline

