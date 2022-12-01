
Instance: bundleReferralExample01
InstanceOf: Bundle
Usage: #example

Description: "bundleReferralExample01 診療情報提供書Bundle"

* meta.profile[+] = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Bundle_eReferral"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier"
* identifier.value = "123456"
* type = #document

* timestamp = "2021-11-26T10:00:00+09:00"

* entry[+].fullUrl = "urn:uuid:f7109fce-572e-4d39-9657-534aca8f94e6"
* entry[=].resource = compositionReferralExample01

* entry[+].fullUrl = "urn:uuid:fbb3e0ce-4abe-4f58-905d-41f4bff22607"
* entry[=].resource = jppatientExample01

* entry[+].fullUrl = "urn:uuid:8b6f09fa-3b04-4229-932b-ad98a5e706d2"
* entry[=].resource = encounterReferralExample01

* entry[+].fullUrl = "urn:uuid:61da641e-6418-4e55-856b-593a2eaa96da"
* entry[=].resource = referralFromPractitionerExample01

* entry[+].fullUrl = "urn:uuid:63bedefa-840b-4477-a9bb-3ac706302285"
* entry[=].resource = referralToPractitionerExample01

* entry[+].fullUrl = "urn:uuid:b6da3111-94cf-4241-a4cd-3c3edb2596a8"
* entry[=].resource = referralFromOrganizaitonExample01

* entry[+].fullUrl = "urn:uuid:1b0136d2-628b-4ea1-ad88-133ec5e7478d"
* entry[=].resource = referralToOrganizaitonExample01

* entry[+].fullUrl = "urn:uuid:0786743a-b14a-449e-9cf3-a3380b8114bf"
* entry[=].resource = referralToOrganizaitonDeptExample01

* entry[+].fullUrl = "urn:uuid:2cb706fa-f7b2-4a5e-8fe8-ed9f4c993304"
* entry[=].resource = referralFromOrganizaitonDeptExample01

* entry[+].fullUrl = "urn:uuid:6a1068b0-f3a2-4321-8986-8d627a1759cd"
* entry[=].resource = purposeReferralExample01

* entry[+].fullUrl = "urn:uuid:4b33e199-9a69-4fd1-8f47-26f7522d369f"
* entry[=].resource = cc1ReferralExample01

* entry[+].fullUrl = "urn:uuid:8c397d49-298f-4e86-a325-5b071f705348"
* entry[=].resource = cc2ReferralExample01

* entry[+].fullUrl = "urn:uuid:59d7d3af-4801-42a5-a68c-2884fa9dda31"
* entry[=].resource = piReferralExample01

* entry[+].fullUrl = "urn:uuid:37e61dbc-9bd1-4e0b-b229-bc8ee3b0dbbc"
* entry[=].resource = ph1ReferralExample01

* entry[+].fullUrl = "urn:uuid:cb5d465a-2f9c-4f81-8562-222a53eb0069"
* entry[=].resource = ph2ReferralExample01

* entry[+].fullUrl = "urn:uuid:e773fe6d-8b19-4cc7-892f-6a1b2f9ce774"
* entry[=].resource = alg1ReferralExample01

* entry[+].fullUrl = "urn:uuid:a19900b0-6956-4288-8c5a-0fb73a726cc3"
* entry[=].resource = alg1ReferralExample02

* entry[+].fullUrl = "urn:uuid:574f0a00-5989-4d13-bfa1-c79b6559b614"
* entry[=].resource = psobsCommonExample01

* entry[+].fullUrl = "urn:uuid:d75539d3-cc84-42da-8726-1784a806c90c"
* entry[=].resource = ccourseReferralExample01

