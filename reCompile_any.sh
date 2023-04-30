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

