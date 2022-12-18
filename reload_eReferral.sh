targetPackage=jp-ereferral#0.9.3-snap.tgz
targetProject=eReferral
targetExample=example01
validateFile=Bundle-bundleReferralExample01.json
#
cd ~/GitHub/JPFHIRExampleCreation
rm -f ./input/fsh/$targetProject/*.fsh*
while read -r f
    do outfname=`basename $f .fshegg`
    echo "converting $f to ./input/fsh/$targetProject/$targetExample/$outfname.fsh"
    filepp -b  -I./fshegg \
      -M/usr/local/share/filepp/modules  \
      -m bigdef.pm  \
      -m foreach.pm  \
      -m bigfunc.pm   \
      -M ./perlFunc   \
      -m base64.pm  \
      -m uuid4.pm  \
      $f >./input/fsh/$targetProject/$targetExample/$outfname.fsh
done < <(find ./fshegg/$targetProject/$targetExample -name *.fshegg )
# Conpositionの相対URL参照をBundle内のFullURL参照に書き換える
python3 pyscripts/addFullUrl2Composition.py  $targetProject
mkdir -p ./input/fsh/$targetProject/$targetExample/backup
mv ./input/fsh/$targetProject/$targetExample/*.fsh_backup ./input/fsh/$targetProject/$targetExample/backup/
sushi .  -o ./output-json/$targetProject/$targetExample
cd ~/GitHub/
java -jar work/validator_cli.jar \
    JPFHIRExampleCreation/output-json/$targetProject/$targetExample/fsh-generated/resources/$targetFile \
    -ig JPFHIRExampleCreation/packages_snapshot/$targetPackage \
    -tx https://tx.jpfhir.jp:8081 \
    >JPFHIRExampleCreation/$targetProject/$targetExample/output.txt
cd ~/GitHub/JPFHIRExampleCreation