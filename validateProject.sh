#!/bin/bash

# egg2fshスクリプトにより作成されたFSHファイルを、指定したプロジェクトのsnapパッケージにより
# validationを行う。
# 使用法：　./validateProject プロジェクト名 対象jsonファイル名のベース名 使用IGパッケージ名
# 使用例：　./egg2fs  eReferral　 Bundle-bundleReferralExample01 'jp-ereferral#0.9.6-snap'
# 使用例：　./egg2fs  eDisSummary Bundle-bundleReferralExample01 'jp-edissummary#0.9.6-snap'
# eReferral使用例：　./validateProject.sh eReferral Bundle-bundleReferralExample01  'jp-ereferral#0.9.6-snap'
#
# fshファイルは./input-$targetProject-$targetExampleName/fsh　
# 
targetProject=$1
targetFile=$2.json
targetPackage=$3
targetPackageTgz=$3.tgz
packageVersion=${targetPackage##*#}
packageStemname=${targetPackage%%#*}
echo "packageVersion="$packageVersion
echo "packageStemname="$packageStemname
echo "targetPackageTgz="$targetPackageTgz
selfDir=JPFHIRExampleCreation
rootDir=~/GitHub
targetExampleName=examples
#
#
tarCommand=gtar
validateFile=Bundle-bundleReferralExample01.json
#
cd $rootDir/$selfDir
#-- inputフォルダを空にする
rm -rf input
#-- inputフォルダ配下にfshファイルを格納するためのフォルダを作成する
mkdir -p ./input/fsh/$targetProject/$targetExampleName
#-- eClinicalSummary-examplesのfshファイル一式を、上記で作成したフォルダに追加する
#-- 当該プロジェクトのfshファイル一式を、上記で作成したフォルダにコピーする
cp ./input-eClinicalSummary-examples/fsh/*.fsh ./input/fsh/$targetProject/$targetExampleName/
cp ./input-$targetProject-$targetExampleName/fsh/*.fsh ./input/fsh/$targetProject/$targetExampleName/
# Conpositionの相対URL参照をBundle内のFullURL参照に書き換える
# このpythonでは変換前のfshファイルが.fsh_backup拡張子のファイルに残されている
python3 pyscripts/addFullUrl2Composition.py  $targetProject   $targetExampleName
# 残されたバックアップファイルをinput/fsh/$targetProject/$targetExampleName/backup/フォルダに移動する
mkdir -p ./input/fsh/$targetProject/$targetExampleName/backup
mv ./input/fsh/$targetProject/$targetExampleName/*.fsh_backup ./input/fsh/$targetProject/$targetExampleName/backup/
# ローカルキャッシュにpackageをコピーして展開しておく（sushi コマンドが必要とする）
mkdir -p ~/.fhir/packages/$targetPackage
cp ./packages_snapshot/$targetPackageTgz ~/.fhir/packages/$targetPackage
cd ~/.fhir/packages/$targetPackage
$tarCommand xzf $targetPackageTgz
#
cd $rootDir/$selfDir
cp sushi-config-$packageStemname.yaml sushi-config.yaml
sushi .  -o ./output-json/$targetProject/$targetExampleName
# validationを行う
mkdir -p output/$targetProject/$targetExampleName
cd ..
execCmd='java -jar work/validator_cli.jar  $selfDir/output-json/$targetProject/$targetExampleName/fsh-generated/resources/$targetFile  -ig $selfDir/packages_snapshot/$targetPackageTgz  -tx https://tx.jpfhir.jp:8081  >$selfDir/output/$targetProject/$targetExampleName/output.txt'
echo $execCmd
eval $execCmd
grep 'errors,' $selfDir/output/$targetProject/$targetExampleName/output.txt | grep 'warnings,' | grep 'notes'
grep 'Error ' $selfDir/output/$targetProject/$targetExampleName/output.txt | grep 'warnings,' | grep 'notes' 
# cat $selfDir/output/$targetProject/$targetExampleName/output.txt
cd ~/GitHub/$selfDir
