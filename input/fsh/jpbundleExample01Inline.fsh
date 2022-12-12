
Instance: bundleReferralExample01
InstanceOf: Bundle
Usage: #example

Description: "bundleReferralExample01 診療情報提供書Bundle本体サンプル"

* meta.profile[+] = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Bundle_eReferral"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier"
* identifier.value = "123456"
* type = #document

* timestamp = "2021-11-26T10:00:00+09:00"

* entry[+].fullUrl = "urn:uuid:2ac90cf0-c25d-4e77-85c4-46c2d6201c45"
* entry[=].resource = compositionReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:0d1054c0-e3a1-4285-bce3-d5bc064bd056"
* entry[=].resource = jppatientExample01Inline

* entry[+].fullUrl = "urn:uuid:097aa8cd-ebe7-41a4-be87-17d833112f4b"
* entry[=].resource = encounterReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:cba6af27-c68b-48e2-bc0a-6162580c1d78"
* entry[=].resource = referralFromPractitionerExample01Inline

* entry[+].fullUrl = "urn:uuid:6182a14e-9316-4211-b93b-2b241c5fd504"
* entry[=].resource = referralToPractitionerExample01Inline

* entry[+].fullUrl = "urn:uuid:45fd7313-5f0d-44b9-85cd-d573d3f8a229"
* entry[=].resource = referralFromOrganizationExample01Inline

* entry[+].fullUrl = "urn:uuid:bddf2a92-b7ea-4bad-b790-7672f293a98c"
* entry[=].resource = referralToOrganizationExample01Inline

* entry[+].fullUrl = "urn:uuid:f2af685c-d034-4a30-b333-46adc97b0932"
* entry[=].resource = referralToOrganizationDeptExample01Inline

* entry[+].fullUrl = "urn:uuid:7f5e54ef-4258-4ff7-968a-8a78aeffa650"
* entry[=].resource = referralFromOrganizationDeptExample01Inline

* entry[+].fullUrl = "urn:uuid:577165fd-9d2d-45dc-8d5c-115aff5b5660"
* entry[=].resource = purposeReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:49b1cee9-59d6-43f1-be89-a2c291cb57e1"
* entry[=].resource = cc1ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:89f27610-e3eb-4147-b707-f3267a6633b0"
* entry[=].resource = cc2ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:e96cc01a-c4d1-48fe-976a-03424c6d8334"
* entry[=].resource = piReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:c23ca1ae-345a-433b-a608-f4eb2fa2365c"
* entry[=].resource = ph1ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:bf11af3a-7fd2-4512-be8e-b779775b4620"
* entry[=].resource = ph2ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:e8c4377f-1ffb-4ed0-97a2-2e0b930d1043"
* entry[=].resource = alg1ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:b78b7fb9-6e65-42f2-bdc4-96867e24a113"
* entry[=].resource = alg1ReferralExample02Inline

* entry[+].fullUrl = "urn:uuid:21c2bf03-4f2f-4597-8fc2-5b411327bd44"
* entry[=].resource = psobsCommonExample01Inline

* entry[+].fullUrl = "urn:uuid:b9d18391-341b-437e-8e3d-a47fe4487a51"
* entry[=].resource = ccourseReferralExample01Inline

