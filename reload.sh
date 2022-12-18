targetProject=eReferral
targetPackage=jp-ereferral#0.9.3-snap.tgz
targetFile=Bundle-bundleReferralExample01.json
cd ~/GitHub/JPFHIRExampleCreation
rm -f ./input/fsh/$targetProject/*.fsh*
while read -r f
    do outfname=`basename $f .fshegg`
    echo "converting $f to ./input/fsh/$targetProject/$outfname.fsh"
    filepp -b  -I./fshegg \
      -M/usr/local/share/filepp/modules  \
      -m bigdef.pm  \
      -m foreach.pm  \
      -m bigfunc.pm   \
      -M ./perlFunc   \
      -m base64.pm  \
      -m uuid4.pm  \
      $f >./input/fsh/$targetProject/$outfname.fsh
done < <(find ./fshegg -name *.fshegg )
# Conpositionの相対URL参照をBundle内のFullURL参照に書き換える
python3 pyscripts/addFullUrl2Composition.py  $targetProject
mkdir -p ./input/fsh/$targetProject/backup
mv ./input/fsh/$targetProject/*.fsh_backup ./input/fsh/$targetProject/backup/
sushi .  -o ./output-json/$targetProject
cd ~/GitHub/
java -jar work/validator_cli.jar \
    JPFHIRExampleCreation/output-json/$targetProject/fsh-generated/resources/$targetFile \
    -ig JPFHIRExampleCreation/packages_snapshot/$targetPackage \
    -tx https://tx.jpfhir.jp:8081 \
    >JPFHIRExampleCreation/output.txt
cd ~/GitHub/JPFHIRExampleCreation