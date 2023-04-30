#!/bin/bash

# fsheggファイルからfshファイル一式を生成する
# 使用法：　./egg2fs プロジェクト名
# 使用例：　./egg2fs  eReferral
# $rootDir/$selfDir/fshegg/$targetProject/$targetExampleName/*.fshegggファイルをすべて
# filecppコマンドにより　fshファイルに変換する。
# 変換時に　$rootDir/$selfDir/fshegg/$targetProject/$targetExampleName/fshDef/ にある
#  定義ファイルをインクルードして使用する。
# 変換結果のfshファイルは./input-$targetProject-$targetExampleName/fsh　の下に出力される。
# 
targetProject=$1
selfDir=JPFHIRExampleCreation
rootDir=~/GitHub
targetExampleName=examples
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

