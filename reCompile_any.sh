#つくりかけ　2023.4.23
selfDir=JPFHIRExampleCreation
#targetPackage=jp-ereferral#0.9.3-snap
#targetPackageTgz=$targetPackage.tgz
targetProject=$1
targetExample=examples
#tarCommand=gtar
#validateFile=Bundle-bundleReferralExample01.json
#
cd ~/GitHub/$selfDir
rm -f ./input-$targetProject-$targetExample/fsh/*.fsh*
mkdir -p ./input-$targetProject-$targetExample/fsh
while read -r f
    do outfname=`basename $f .fshegg`
    echo "converting $f to ./input-$targetProject-$targetExample/fsh/$outfname.fsh"
    filepp -b  -I./fshegg \
      -M/usr/local/share/filepp/modules  \
      -m bigdef.pm  \
      -m foreach.pm  \
      -m bigfunc.pm   \
      -M ./perlFunc   \
      -m base64.pm  \
      -m uuid4.pm  \
      $f >./input-$targetProject-$targetExample/fsh/$outfname.fsh
done < <(find ./fshegg/$targetProject/$targetExample -name *.fshegg )
rm -rf input
mkdir -p ./input/fsh/$targetProject/$targetExample
cp input-$targetProject-$targetExample/fsh/*.fsh input/fsh/$targetProject/$targetExample/
# Conpositionの相対URL参照をBundle内のFullURL参照に書き換える
python3 pyscripts/addFullUrl2Composition.py  $targetProject   $targetExample
mkdir -p ./input/fsh/$targetProject/$targetExample/backup
mv ./input/fsh/$targetProject/$targetExample/*.fsh_backup ./input/fsh/$targetProject/$targetExample/backup/
# ローカルキャッシュにpackageをコピーして展開しておく（sushi コマンドが必要とする）
mkdir -p ~/.fhir/packages/$targetPackage
cp ./packages_snapshot/$targetPackageTgz ~/.fhir/packages/$targetPackage
cd ~/.fhir/packages/$targetPackage
$tarCommand xzf $targetPackageTgz
cd ~/GitHub/JPFHIRExampleCreation/
sushi .  -o ./output-json/$targetProject/$targetExample
# validationを行う
cd ~/GitHub/
mkdir -p $selfDir/output/$targetProject/$targetExample
java -jar work/validator_cli.jar -language ja \
    $selfDir/output-json/$targetProject/$targetExample/fsh-generated/resources/$targetFile \
    -ig $selfDir/packages_snapshot/$targetPackageTgz \
    -tx https://tx.jpfhir.jp:8081 \
    >$selfDir/output/$targetProject/$targetExample/output.txt
cd ~/GitHub/$selfDir
