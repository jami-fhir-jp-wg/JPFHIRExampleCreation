
Instance: bundleReferralExample01
InstanceOf: Bundle
Usage: #example

Description: "bundleReferralExample01 診療情報提供書Bundle"

* meta.profile[+] = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Bundle_eReferral"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier"
* identifier.value = "123456"
* type = #document

* timestamp = "2021-11-26T10:00:00+09:00"

* entry[+].fullUrl = "urn:uuid:2c66b453-f904-438b-a18f-f7489bad606e"
* entry[=].resource = compositionReferralExample01

* entry[+].fullUrl = "urn:uuid:0a43ab16-b609-4aff-926b-501d1fd3993d"
* entry[=].resource = jppatientExample01

* entry[+].fullUrl = "urn:uuid:eb3727e4-fd9a-4281-8a0a-c6970413f3cc"
* entry[=].resource = referralFromPractitionerExample01

* entry[+].fullUrl = "urn:uuid:daa34959-b248-4df3-8ac0-d910ab22f14b"
* entry[=].resource = referralToPractitionerExample01

* entry[+].fullUrl = "urn:uuid:221f2598-cab7-461a-832b-8b5501c7d42c"
* entry[=].resource = referralFromOrganizaitonExample01

* entry[+].fullUrl = "urn:uuid:5fefea53-098d-4793-9425-2aa783f34830"
* entry[=].resource = referralToOrganizaitonExample01

* entry[+].fullUrl = "urn:uuid:d4163977-9402-4e01-83fb-1564ab24370e"
* entry[=].resource = referralToOrganizaitonDeptExample01

* entry[+].fullUrl = "urn:uuid:8af6af7a-161a-442e-84a5-3195b101e031"
* entry[=].resource = referralFromOrganizaitonDeptExample01

* entry[+].fullUrl = "urn:uuid:da36cc86-7f13-48a6-a10c-cdb4b22badda"
* entry[=].resource = purposeReferralExample01

* entry[+].fullUrl = "urn:uuid:57aec5e9-960e-4871-9852-2205b30256f6"
* entry[=].resource = cc1ReferralExample01

* entry[+].fullUrl = "urn:uuid:504be63e-e983-4eb4-bdf6-c3b511135b34"
* entry[=].resource = cc2ReferralExample01

* entry[+].fullUrl = "urn:uuid:569892e2-dc8f-457f-ae4a-91e847d0eb25"
* entry[=].resource = piReferralExample01

* entry[+].fullUrl = "urn:uuid:7a5006f3-d0e0-4b6d-b7fc-18602f3ca0b8"
* entry[=].resource = ph1ReferralExample01

* entry[+].fullUrl = "urn:uuid:369c732b-b377-4aa8-b0b1-6242191ccdfd"
* entry[=].resource = ph2ReferralExample01

* entry[+].fullUrl = "urn:uuid:32fc0a5c-6950-4d58-a396-ace45e6730fb"
* entry[=].resource = alg1ReferralExample01

* entry[+].fullUrl = "urn:uuid:559b131f-e275-4202-9783-830555ad4635"
* entry[=].resource = alg1ReferralExample02

* entry[+].fullUrl = "urn:uuid:dabd2db0-d0fb-4405-85d5-2f34c04aa1be"
* entry[=].resource = psobsCommonExample01

* entry[+].fullUrl = "urn:uuid:53474e78-4cd6-4816-9c5a-87652169e9da"
* entry[=].resource = ccourseReferralExample01

