// -------------------------------
// 診療情報提供書Bundle の定義
// -------------------------------
// Instance　ヘッダー設定　必須　１回のみ
// パラメータ：Instance名
// Description　Description設定　任意　１回のみ
// パラメータ：Description文字列
// Description　meta.lastUpdated設定　必須　１回のみ
// パラメータ：なし（固定値が設定される）
// Description　診療情報固有meta.profile設定　必須　１回のみ
// パラメータ：Profile文字列
// Description　meta.profile設定　任意　繰り返し
// パラメータ：Profile文字列
// Description　文書IDを表すIdentifier設定　必須　１回のみ
// パラメータ：文書ID文字列
// Description　文書日時設定　必須　１回のみ
// パラメータ：文書日付文字列（例：2023-04-01）、文書時刻文字列（例：12:23:00）
// Description　文書entry設定　必須　繰り返し
// パラメータ：URL、リソースインスタンス名
// Description　文書entry設定　必須　繰り返し
// パラメータ：URL、リソースインスタンス名

Instance: bundleReferralExample01
InstanceOf: Bundle
Usage: #example

Description: "■ 診療情報提供書　全体 Bundleリソース"

* meta.lastUpdated = "2023-04-01T10:00:00+09:00"

* meta.profile[+] = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Bundle_eReferral"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier"
* identifier.value = "123456"
* type = #document

* timestamp = "2021-11-26T10:00:00+09:00"

* entry[+].fullUrl = "urn:uuid:a90e0479-19cb-41e7-88ea-1fde1db94b51"
* entry[=].resource = compositionReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:85a51292-1089-4641-bac7-d453a0bdc311"
* entry[=].resource = jppatientExample01Inline

* entry[+].fullUrl = "urn:uuid:704b992e-e0aa-4ebe-bacb-4812e88a7a9a"
* entry[=].resource = encounterReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:02db8efa-6fda-4bbb-8312-423789ad13cb"
* entry[=].resource = referralFromPractitionerExample01Inline

* entry[+].fullUrl = "urn:uuid:712ebf8a-16f4-4931-a1d1-ec160455ce0a"
* entry[=].resource = referralToPractitionerExample01Inline

* entry[+].fullUrl = "urn:uuid:a1ffef04-5c3d-4da2-af71-9897c77e3610"
* entry[=].resource = referralFromOrganizationExample01Inline

* entry[+].fullUrl = "urn:uuid:83e339e2-89c6-48c5-8e6e-90b6a2dcf3c5"
* entry[=].resource = referralToOrganizationExample01Inline

* entry[+].fullUrl = "urn:uuid:2b588ee1-cbe8-4fa6-acc5-7c717e82e5c2"
* entry[=].resource = referralToOrganizationDeptExample01Inline

* entry[+].fullUrl = "urn:uuid:5b99a745-f588-41b6-afdf-55698b41f2a6"
* entry[=].resource = referralFromOrganizationDeptExample01Inline

* entry[+].fullUrl = "urn:uuid:72f3d0e6-1005-4c88-9003-da94427934b1"
* entry[=].resource = purposeReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:eb984b76-4e79-48e7-bd2d-0642d110690f"
* entry[=].resource = cc1ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:e092528e-1657-40a6-8fac-ff76e93dddb9"
* entry[=].resource = cc2ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:4f41dbce-2c1f-4fbd-af56-787cf4b72d2a"
* entry[=].resource = piReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:fb03ab54-416e-4040-ae51-84fc36f987de"
* entry[=].resource = ph1ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:39116c4d-5c71-4c55-b24f-46aa5c396a66"
* entry[=].resource = ph2ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:fa33bc48-ee45-4087-bbde-11d870dff2a8"
* entry[=].resource = alg1ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:e426732b-90bf-46c2-a0ed-d6ba46433030"
* entry[=].resource = alg1ReferralExample02Inline

* entry[+].fullUrl = "urn:uuid:55869b57-9b8b-42cc-8ae5-f25ad3b82a88"
* entry[=].resource = psobsCommonExample01Inline

* entry[+].fullUrl = "urn:uuid:89dfd1b0-3db1-4351-84db-bf5b030a772b"
* entry[=].resource = ccourseReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:5e370ca2-acfa-4367-b520-7dd4f2b59d0a"
* entry[=].resource = MedicationRequestExample01Inline

* entry[+].fullUrl = "urn:uuid:567ffe2e-92ea-4909-951e-726eb1869676"
* entry[=].resource = JP-MedReq-ePreData-Example-fukintouByDayInline


