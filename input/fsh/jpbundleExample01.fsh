
Instance: bundleReferralExample01
InstanceOf: Bundle
Usage: #example

Description: "bundleReferralExample01 診療情報提供書Bundle"

* meta.profile[+] = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Bundle_eReferral"

* identifier.system = "http://jpfhir.jp/fhir/Common/IdSystem/documentInstance-identifier"
* identifier.value = "123456"
* type = #document

* timestamp = "2021-11-26T10:00:00+09:00"

* entry[+].fullUrl = "urn:uuid:51c6333d-92ff-0113-56cd-a1f566f43a09"
* entry[=].resource = compositionReferralExample01

* entry[+].fullUrl = "urn:uuid:e22017ff-4c65-649c-2dfe-c6676b654be5"
* entry[=].resource = jppatientExample01

* entry[+].fullUrl = "urn:uuid:d151a740-d8a1-9c19-29f0-f52476e619d7"
* entry[=].resource = referralFromPractitionerExample01

* entry[+].fullUrl = "urn:uuid:9b4e6a12-7bb3-5d46-a126-31b33410f796"
* entry[=].resource = referralToPractitionerExample01

* entry[+].fullUrl = "urn:uuid:32326e64-2e22-2ea9-06e8-460ce4b70593"
* entry[=].resource = referralFromOrganizaitonExample01

* entry[+].fullUrl = "urn:uuid:a1ae0c57-d89f-3757-081d-05466134481d"
* entry[=].resource = referralToOrganizaitonExample01

* entry[+].fullUrl = "urn:uuid:73e9e96a-3c8b-1125-937b-06639ed865c1"
* entry[=].resource = referralToOrganizaitonDeptExample01

* entry[+].fullUrl = "urn:uuid:51c6333d-92ff-0113-56cd-a1f566f43a09"
* entry[=].resource = referralFromOrganizaitonDeptExample01

* entry[+].fullUrl = "urn:uuid:2e61a47b-a7fa-1d23-ebbf-eade736e9b00"
* entry[=].resource = purposeReferralExample01

* entry[+].fullUrl = "urn:uuid:a871437d-03eb-edfb-9ac7-f3313c54f31a"
* entry[=].resource = cc2ReferralExample01

* entry[+].fullUrl = "urn:uuid:a58040b7-6283-fb0c-4b25-a17dca08cc3d"
* entry[=].resource = piReferralExample01

* entry[+].fullUrl = "urn:uuid:632cdb4b-36fe-05fb-9a3d-b4230cb7e608"
* entry[=].resource = ph1ReferralExample01

* entry[+].fullUrl = "urn:uuid:499f7db1-b4c2-3d01-b1a0-dfdb502977ab"
* entry[=].resource = ph2ReferralExample01

* entry[+].fullUrl = "urn:uuid:20ade057-b106-9223-585e-20aa8d1635af"
* entry[=].resource = alg1ReferralExample01

* entry[+].fullUrl = "urn:uuid:098ec05b-ea14-81aa-0dcc-7f1b8848c2c4"
* entry[=].resource = alg1ReferralExample02

* entry[+].fullUrl = "urn:uuid:68f2ba6a-04c5-37ed-be13-b1103e393534"
* entry[=].resource = psobsCommonExample01

* entry[+].fullUrl = "urn:uuid:9460e350-0809-0f23-5f61-0bb28cf9855a"
* entry[=].resource = ccourseReferralExample01

