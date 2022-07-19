# python 
# path 1
# あるディレクトリの配下すべての指定した拡張子のfshegg形式のファイルをすべて純にスキャンする
# そのfshegg形式ファイルについて、
# 指定したInstanceID行タグ文字列（ここでは　$000mn_　）で始まる行をみつけて、その後ろにある () 内の文字列を取得する
# この文字列は、InstanceIDである。
# これをファイル名（ファイルパス）とともに指定ファイルに出力する
# スキャン終了すれば完了
#
# path 2

import os
import glob
import re
import uuid

dir_path = "./**/"
egg_ext = "*.fshegg"              
instanceIDPattern = re.compile("^\$000mn_.+\((?P<instanceName>(.+))\)$")
resourcePattern = re.compile("^\$000mn_ExampleJPComposition.+\((?P<instanceName>(.+))\)$")

# 再帰的探索　recursive に True を指定し、 pathname の中に ** を含める
search_path = dir_path + egg_ext     ##ワイルドカードを設定
egg_files = glob.glob(search_path, recursive=True) ##拡張子がegg_extだけのファイルを返す

for file_name_i in egg_files:  
    with open(file_name_i) as f:
    #        print("file="+file_name_i)
        for line in f:
            line = line.rstrip()  # 読み込んだ行の末尾には改行文字があるので削除
      

            res = instanceIDPattern.match(line)
            if res:
                instanceID = res.group("instanceName")
                print("#comment "+file_name_i )
                print("#define $"+instanceID+"\t"+str(uuid.uuid4()))
 
            compositionPattern = resourcePattern.match(line)
            if compositionPattern:




$030mn_文書entry(ARGurl,ARGresourceRef)
