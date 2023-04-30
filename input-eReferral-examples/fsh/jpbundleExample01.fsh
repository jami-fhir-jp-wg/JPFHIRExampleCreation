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

Description: "bundleReferralExample01 診療情報提供書Bundle"

* meta.lastUpdated = "2023-04-01T10:00:00+09:00"

* meta.profile[+] = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Bundle_eReferral"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier"
* identifier.value = "123456"
* type = #document

* timestamp = "2021-11-26T10:00:00+09:00"

* entry[+].fullUrl = "urn:uuid:9c042c79-5808-4fab-b364-1ab056cc1558"
* entry[=].resource = compositionDisSummaryExample01Inline

* entry[+].fullUrl = "urn:uuid:dfc6355b-f646-4043-8762-cf3f88b33a05"
* entry[=].resource = jppatientExample01Inline

* entry[+].fullUrl = "urn:uuid:aa4a1eaa-0060-4147-a56a-dc2c8936a662"
* entry[=].resource = encounterReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:75358b32-08ee-4a42-9f01-0c23d18140c7"
* entry[=].resource = referralFromPractitionerExample01Inline

* entry[+].fullUrl = "urn:uuid:c7d82602-03d8-4168-89c9-c0afb62d3928"
* entry[=].resource = referralToPractitionerExample01Inline

* entry[+].fullUrl = "urn:uuid:4230c2e5-02d6-4647-b598-b0d36997bc06"
* entry[=].resource = referralFromOrganizationExample01Inline

* entry[+].fullUrl = "urn:uuid:06bbb4c1-c9e0-42f7-ab1a-b97d6db5c33a"
* entry[=].resource = referralToOrganizationExample01Inline

* entry[+].fullUrl = "urn:uuid:c8275dda-f37d-4587-b2b6-4b2a4d733011"
* entry[=].resource = referralToOrganizationDeptExample01Inline

* entry[+].fullUrl = "urn:uuid:59871328-ac90-470c-b6ba-53fccf7a9c0e"
* entry[=].resource = referralFromOrganizationDeptExample01Inline

* entry[+].fullUrl = "urn:uuid:98bdef3e-4a95-4f26-a8cf-b7a5ee327fab"
* entry[=].resource = purposeReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:ee343128-3af4-4ea0-9e89-c45e4da7ab89"
* entry[=].resource = cc1ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:d56c40c8-0f67-4980-8881-2bfdfefc2ef6"
* entry[=].resource = cc2ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:1bd87011-a940-452d-97cf-50f4c1131306"
* entry[=].resource = piReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:c4a31351-c3c7-472c-92ca-2daa1cf5ae3f"
* entry[=].resource = ph1ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:d16b9159-60b9-4f9c-8807-fb14f1bc4c8d"
* entry[=].resource = ph2ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:55977529-de76-47ce-9121-53076bb98e29"
* entry[=].resource = alg1ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:8511b5f4-ae59-4048-8a81-9ae9749ab350"
* entry[=].resource = alg1ReferralExample02Inline

* entry[+].fullUrl = "urn:uuid:bd59a822-f924-4805-9473-d2e003aba4c5"
* entry[=].resource = psobsCommonExample01Inline

* entry[+].fullUrl = "urn:uuid:ab706ae8-a593-4703-a119-2b8cf9388aa4"
* entry[=].resource = ccourseReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:0bfd9da4-958f-4212-b273-ed9353822b90"
* entry[=].resource = MedicationRequestExample01Inline

* entry[+].fullUrl = "urn:uuid:b01ed306-0eb5-4851-837f-913df7b87402"
* entry[=].resource = JP-MedReq-ePreData-Example-fukintouByDayInline


