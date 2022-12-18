
Instance: bundleReferralExample01
InstanceOf: Bundle
Usage: #example

Description: "bundleReferralExample01 診療情報提供書Bundle"

* meta.profile[+] = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Bundle_eReferral"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier"
* identifier.value = "123456"
* type = #document

* timestamp = "2021-11-26T10:00:00+09:00"

* entry[+].fullUrl = "urn:uuid:9640a52c-f427-4064-ae96-79390c4edb24"
* entry[=].resource = compositionReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:69aae55e-cc2e-439e-8d3a-105e49495513"
* entry[=].resource = jppatientExample01Inline

* entry[+].fullUrl = "urn:uuid:6ae61d84-1adb-46be-af1e-15866fae8730"
* entry[=].resource = encounterReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:bd8f81a3-3248-45e7-9b1d-4a223fa6713d"
* entry[=].resource = referralFromPractitionerExample01Inline

* entry[+].fullUrl = "urn:uuid:a4469958-5805-492c-aa06-57bde5d52fd2"
* entry[=].resource = referralToPractitionerExample01Inline

* entry[+].fullUrl = "urn:uuid:91c0666b-80fc-43f2-83e9-8947fc39a795"
* entry[=].resource = referralFromOrganizationExample01Inline

* entry[+].fullUrl = "urn:uuid:7ef3bd82-dd83-400b-9129-a58bffbc5e92"
* entry[=].resource = referralToOrganizationExample01Inline

* entry[+].fullUrl = "urn:uuid:0c54cc06-0a8c-4142-9017-51080395911e"
* entry[=].resource = referralToOrganizationDeptExample01Inline

* entry[+].fullUrl = "urn:uuid:0bda094f-c492-41e4-b20b-ff82e44e00a9"
* entry[=].resource = referralFromOrganizationDeptExample01Inline

* entry[+].fullUrl = "urn:uuid:6483f9a3-8340-49e2-ba0c-6eaa484f21bf"
* entry[=].resource = purposeReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:9d599e72-625d-4f62-a4d2-1108097c90cc"
* entry[=].resource = cc1ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:5f926a4c-3618-48f5-9593-0d5102b3f566"
* entry[=].resource = cc2ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:b13f12f4-af70-4c2a-816d-8fe04badc674"
* entry[=].resource = piReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:e52895c4-e9f3-42f4-855b-a7c654f08f20"
* entry[=].resource = ph1ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:59d15b35-d7e0-4f0e-94a0-f55f7578ab55"
* entry[=].resource = ph2ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:8c663c1b-5738-4cc2-b94b-c6dbe4da9376"
* entry[=].resource = alg1ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:2f4bcd8b-ec32-4f51-98e5-896f21b73218"
* entry[=].resource = alg1ReferralExample02Inline

* entry[+].fullUrl = "urn:uuid:2c3954f5-5e14-48dd-a4c2-94374f72ebd0"
* entry[=].resource = psobsCommonExample01Inline

* entry[+].fullUrl = "urn:uuid:cc802a13-c45b-41e6-b661-c0ee03613195"
* entry[=].resource = ccourseReferralExample01Inline

