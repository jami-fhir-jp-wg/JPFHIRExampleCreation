cd ~/GitHub/eReferral
sushi .
mv fsh-generated/resources fsh-generated/package
cp -r fsh-generated/package  ../JPFHIRExampleCreation/packages_snapshot
cd ../JPFHIRExampleCreation/packages_snapshot/
cp package.json_jpreferral_0.9.1-diff package/package.json
gtar czf package.tgz package ; mv package.tgz jp-ereferral#0.9.1-diff.tgz
