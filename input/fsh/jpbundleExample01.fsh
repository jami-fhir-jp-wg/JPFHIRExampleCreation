
Instance: bundleReferralExample01
InstanceOf: Bundle
Usage: #example

Description: "bundleReferralExample01 診療情報提供書Bundle"

* meta.profile[+] = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Bundle_eReferral"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier"
* identifier.value = "123456"
* type = #document

* timestamp = "2021-11-26T10:00:00+09:00"

* entry[+].fullUrl = "urn:uuid:ca89ee33-a4b6-4a81-ac78-593f392ef8e8"
* entry[=].resource = compositionReferralExample01

* entry[+].fullUrl = "urn:uuid:d0e4cc23-82bd-4425-9f35-ec317d3cf226"
* entry[=].resource = jppatientExample01

* entry[+].fullUrl = "urn:uuid:1f93709e-0b74-43fd-a674-b285297043b5"
* entry[=].resource = referralFromPractitionerExample01

* entry[+].fullUrl = "urn:uuid:8d7ce30f-2d54-40da-88d7-91682401175b"
* entry[=].resource = referralToPractitionerExample01

* entry[+].fullUrl = "urn:uuid:2d13225e-e325-4eea-bfaa-f6c1e5ff586f"
* entry[=].resource = referralFromOrganizaitonExample01

* entry[+].fullUrl = "urn:uuid:62e74295-fb09-4f53-b4f7-94d270945984"
* entry[=].resource = referralToOrganizaitonExample01

* entry[+].fullUrl = "urn:uuid:37d7cf2d-a22f-4af9-b2d9-347dc878acb0"
* entry[=].resource = referralToOrganizaitonDeptExample01

* entry[+].fullUrl = "urn:uuid:7dd04b03-8a26-4f4a-b6dc-2274acba3aeb"
* entry[=].resource = referralFromOrganizaitonDeptExample01

* entry[+].fullUrl = "urn:uuid:56d92016-ab75-4570-925b-15a0c1aa11cc"
* entry[=].resource = purposeReferralExample01

* entry[+].fullUrl = "urn:uuid:1c1769a1-d45c-42ad-8ee9-af1694c19406"
* entry[=].resource = cc1ReferralExample01

* entry[+].fullUrl = "urn:uuid:e6d75de2-9b6d-499f-839c-eadf0b2deb1c"
* entry[=].resource = cc2ReferralExample01

* entry[+].fullUrl = "urn:uuid:0d37432c-6cf6-4ca9-989a-0f9b28abeb1f"
* entry[=].resource = piReferralExample01

* entry[+].fullUrl = "urn:uuid:6bd14589-b210-413b-a2c6-11cd4d51d8c9"
* entry[=].resource = ph1ReferralExample01

* entry[+].fullUrl = "urn:uuid:40227735-6081-4b6c-807f-654351e1ace5"
* entry[=].resource = ph2ReferralExample01

* entry[+].fullUrl = "urn:uuid:fe8df6b6-6481-4b12-8549-ae7f1858cdbf"
* entry[=].resource = alg1ReferralExample01

* entry[+].fullUrl = "urn:uuid:54d4ee32-b4f1-49ba-bd15-e0917f736150"
* entry[=].resource = alg1ReferralExample02

* entry[+].fullUrl = "urn:uuid:439febe4-0c75-47c9-ad39-ae1fd007a1ea"
* entry[=].resource = psobsCommonExample01

* entry[+].fullUrl = "urn:uuid:2729c64a-8c67-4299-8b82-5499151fdc7f"
* entry[=].resource = ccourseReferralExample01

