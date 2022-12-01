cd ~/GitHub/eReferral
sushi -s .
mv fsh-generated/resources fsh-generated/package
cp -r fsh-generated/package  ../JPFHIRExampleCreation/packages_snapshot
cd ../JPFHIRExampleCreation/packages_snapshot/
cp package.json_jpreferral_0.9.1-snap package/package.json
gtar czf package.tgz package ; mv package.tgz jp-ereferral#0.9.1-snap.tgz
cp jp-ereferral#0.9.1-snap.tgz ~/.fhir/packages/jp-ereferral#0.9.1-snap
cd ~/.fhir/packages/jp-ereferral#0.9.1-snap/
rm -r package
gtar xzf jp-ereferral#0.9.1-snap.tgz
cd ~/GitHub/
cd JPFHIRExampleCreation
rm -f ./input/fsh/*.fsh; while read -r f;do outfname=`basename $f .fshegg`;echo "converting $f to ./input/fsh/$outfname.fsh";filepp -b  -I./fshegg  -M/usr/local/share/filepp/modules -m bigdef.pm -m foreach.pm -m bigfunc.pm  -M ./perlFunc  -m base64.pm -m uuid4.pm $f >./input/fsh/$outfname.fsh;done < <(find ./fshegg -name *.fshegg );
python3 pyscripts/addFullUrl2Composition.py 
sushi .  -o ./output-json
cd ~/GitHub/
java -jar work/validator_cli.jar JPFHIRExampleCreation/output-json/fsh-generated/resources/Bundle-bundleReferralExample01.json -ig JPFHIRExampleCreation/packages_snapshot/jp-ereferral#0.9.1-snap.tgz -tx https://tx.jpfhir.jp:8081 >JPFHIRExampleCreation/output.txt