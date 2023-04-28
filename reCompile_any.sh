#!/bin/bash
#つくりかけ　2023.4.23
#fsheggファイルからfshファイル一式を生成する
selfDir=JPFHIRExampleCreation
rootDir=~/GitHub
targetProject=$1
targetExampleName=examples
#tarCommand=gtar
#validateFile=Bundle-bundleReferralExample01.json
#
cd $rootDir/$selfDir
rm -f ./input-$targetProject-$targetExampleName/fsh/*.fsh*
mkdir -p ./input-$targetProject-$targetExampleName/fsh
while read -r f
    do outfname=`basename $f .fshegg`
    echo "converting $f to ./input-$targetProject-$targetExampleName/fsh/$outfname.fsh"
    filepp -b  -I$rootDir/$selfDir/fshegg/$targetProject/fshDef \
      -I$rootDir/$selfDir/fshegg/eClinicalSummary/fshDef  \
      -M/usr/local/share/filepp/modules  \
      -m bigdef.pm  \
      -m foreach.pm  \
      -m bigfunc.pm   \
      -M ./perlFunc   \
      -m base64.pm  \
      -m uuid4.pm  \
      $f >./input-$targetProject-$targetExampleName/fsh/$outfname.fsh
done < <(find ./fshegg/$targetProject/$targetExampleName -name '*.fshegg' )
rm -rf input
mkdir -p ./input/fsh/$targetProject/$targetExampleName
cp input-$targetProject-$targetExampleName/fsh/*.fsh input/fsh/$targetProject/$targetExampleName/
# Conpositionの相対URL参照をBundle内のFullURL参照に書き換える
python3 pyscripts/addFullUrl2Composition.py  $targetProject   $targetExampleName
mkdir -p ./input/fsh/$targetProject/$targetExampleName/backup
mv ./input/fsh/$targetProject/$targetExampleName/*.fsh_backup ./input/fsh/$targetProject/$targetExampleName/backup/
# ローカルキャッシュにpackageをコピーして展開しておく（sushi コマンドが必要とする）
mkdir -p ~/.fhir/packages/$targetPackage
cp ./packages_snapshot/$targetPackageTgz ~/.fhir/packages/$targetPackage
cd ~/.fhir/packages/$targetPackage
$tarCommand xzf $targetPackageTgz
cd ~/GitHub/JPFHIRExampleCreation/
sushi .  -o ./output-json/$targetProject/$targetExampleName
# validationを行う
cd ~/GitHub/
mkdir -p $selfDir/output/$targetProject/$targetExampleName
java -jar work/validator_cli.jar -language ja \
    $selfDir/output-json/$targetProject/$targetExampleName/fsh-generated/resources/$targetFile \
    -ig $selfDir/packages_snapshot/$targetPackageTgz \
    -tx https://tx.jpfhir.jp:8081 \
    >$selfDir/output/$targetProject/$targetExampleName/output.txt
cd ~/GitHub/$selfDir
