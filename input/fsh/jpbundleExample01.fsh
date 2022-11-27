
Instance: bundleReferralExample01
InstanceOf: Bundle
Usage: #example

Description: "bundleReferralExample01 診療情報提供書Bundle"

* meta.profile[+] = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Bundle_eReferral"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier"
* identifier.value = "123456"
* type = #document

* timestamp = "2021-11-26T10:00:00+09:00"

* entry[+].fullUrl = "urn:uuid:bb2fb678-158a-42e3-b113-d391b84007bf"
* entry[=].resource = compositionReferralExample01

* entry[+].fullUrl = "urn:uuid:23e01900-3bdb-4777-9d69-16ce88297067"
* entry[=].resource = jppatientExample01

* entry[+].fullUrl = "urn:uuid:7bb1bf3c-8236-4e1b-a865-5577d182dea7"
* entry[=].resource = referralFromPractitionerExample01

* entry[+].fullUrl = "urn:uuid:65c0e21c-b4ba-43d4-ad0c-11a2e6c638bc"
* entry[=].resource = referralToPractitionerExample01

* entry[+].fullUrl = "urn:uuid:d1d0fbaf-4260-4ec7-8cef-9be833fdf15c"
* entry[=].resource = referralFromOrganizaitonExample01

* entry[+].fullUrl = "urn:uuid:0d74f06c-f6e5-41f8-9fea-dc4446fbb734"
* entry[=].resource = referralToOrganizaitonExample01

* entry[+].fullUrl = "urn:uuid:220a6952-8fa8-4681-b96f-25d33b214633"
* entry[=].resource = referralToOrganizaitonDeptExample01

* entry[+].fullUrl = "urn:uuid:ee9557f7-e056-4fff-ab11-97b9789d8133"
* entry[=].resource = referralFromOrganizaitonDeptExample01

* entry[+].fullUrl = "urn:uuid:ad17e4a6-912a-47b5-aa5b-1089dc1d4346"
* entry[=].resource = purposeReferralExample01

* entry[+].fullUrl = "urn:uuid:e7253910-b18b-4613-b3e9-aa6dbcb687f6"
* entry[=].resource = cc1ReferralExample01

* entry[+].fullUrl = "urn:uuid:f1c8eae7-a8cb-415b-a4a1-236e56b2e106"
* entry[=].resource = cc2ReferralExample01

* entry[+].fullUrl = "urn:uuid:6e31ee15-42f2-4dbd-b977-deca94ed607b"
* entry[=].resource = piReferralExample01

* entry[+].fullUrl = "urn:uuid:95be6db0-d96d-4187-aa8a-31465361523e"
* entry[=].resource = ph1ReferralExample01

* entry[+].fullUrl = "urn:uuid:15edca10-e3d5-45e4-8c94-48c171798c51"
* entry[=].resource = ph2ReferralExample01

* entry[+].fullUrl = "urn:uuid:d833bfc5-5cd5-4b65-b486-ce2169e51f49"
* entry[=].resource = alg1ReferralExample01

* entry[+].fullUrl = "urn:uuid:1d886902-dcc0-4da0-8606-0ee642a0abbf"
* entry[=].resource = alg1ReferralExample02

* entry[+].fullUrl = "urn:uuid:823e906f-4f52-4137-a9cf-5f26ff07b38f"
* entry[=].resource = psobsCommonExample01

* entry[+].fullUrl = "urn:uuid:0c439df1-9682-4527-887e-f603f3fea1e0"
* entry[=].resource = ccourseReferralExample01

