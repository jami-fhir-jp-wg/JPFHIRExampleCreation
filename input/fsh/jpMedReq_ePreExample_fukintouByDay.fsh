// MedicationResourceリース宣言

$00mn_JPMedicationRequest_ePrescriptionData(JP-MedReq-ePreData-Example-fukintouByDay,example,不均等投与1日用法の医薬品処方１件　MedicationRequestリソースのインスタンス例（プレドニン錠５ｍｇ１日３回　毎食後　７錠（４錠－２錠－１錠））)  
//不均等投与1日用法の医薬品処方１件　
//MedicationRequestリソースのインスタンス例
//プレドニン錠５ｍｇ１日３回　毎食後　７錠（４錠－２錠－１錠）
$01mn_処方番号(9,1)
$02mr_処方薬HOT9(0,105271807,プレドニン錠５ｍｇ)
$03mn_処方薬TEXT(プレドニン錠５ｍｇ)
$04mn_患者(JP-Patient-ePreData-Example)

$05mn_処方日時(2020-08-21,12:28:17)
//051on_薬剤メモ(ARGtext)
//06on_処方開始日(ARGdate) // extension
$07on_処方実日数(7) // extension
$08mn_用法テキスト(１日３回　毎食後　７錠（４錠－２錠－１錠）)
$09or_処方補足用法(V14NNNNN,不均等・１回目・４錠)
$09or_処方補足用法(V22NNNNN,不均等・２回目・２錠)
$09or_処方補足用法(V31NNNNN,不均等・３回目・１錠)
$10or_服用全期間日数(7)
$11mn_用法メイン(1013044400000000,内服・経口・１日３回毎食後)
//12on_用法部位(ARGsitecode,ARGsite)
$13on_内服用法()
//13on_外用用法(ARGmethodcode,ARGmethodname)
$14mn_製剤タイプ(1)
$16on_用法1日用量(7,TAB,錠)
$20mn_調剤全量(49,TAB,錠)
$21on_調剤全日数(7)
$30on_後発変更可()
//$30on_後発変更不可(患者からの強い要望により)

