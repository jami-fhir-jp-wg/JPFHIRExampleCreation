# Bundleのインスタンスに現れる以下の2行の情報を利用して
# Compositionのインスタンスの行をコメントにし、代わりにfullUrlを記述する
# Bundleのインスタンス * entry[+].fullUrl = "urn:uuid:9a0604d6-8bad-441a-bdd3-97364402993f"
# Bundleのインスタンス * entry[ = ].resource = compositionReferralExample01
# Compositionのインスタンス　* section[ = ].section[ = ].entry[+].reference = "ph1ReferralExample01"

# 指定したバスの直下配下にあるBundleインスタンスのFSHファイルを探して
import os
import glob
import re


dir_path = "./input/fsh/"
egg_ext = "*.fshegg"
fsh_ext = "*.fsh"
instanceIDPattern = re.compile("^Instance: (?P<instanceID>(.+))$")
instanceOfPattern = re.compile("^InstanceOf: (?P<instanceOf>(.+))$")
usagePattern = re.compile("^Usage: (?P<usage>(.+))$")
#
fullUrlPattern = re.compile(
    '^\*\s+entry\[\s*\+\\s*]\.fullUrl\s*=(?P<fullUrl>(.+))$')
resourceIDPattern = re.compile(
    '^\*\s+entry\[\s*=\s*\]\.resource\s*=(?P<resourceID>(.+))$')

# 再帰的探索　recursive に True を指定して、 pathname の中に ** を含める
# 指定フォルダだけの探索　recursive に False を指定して、 pathname の中に ** を含めない
search_path = dir_path + fsh_ext  # ワイルドカードを設定
fsh_files = glob.glob(search_path, recursive=False)  # 拡張子がegg_extだけのファイルを返す
bundleList = []
compositionList = []

for file_name_i in fsh_files:
    with open(file_name_i) as f:
        instanceID = ""
        prpreLine = ""
        preLine = ""
        theLine = ""
        usage = ""
        instanceOf = ""
        for line in f:
            theLine = line.rstrip()  # 読み込んだ行の末尾には改行文字があるので削除
            res = instanceIDPattern.match(theLine)
            if res:
                instanceID = res.group("instanceID").strip()
                usage = ""
                instanceOf = ""

            res = instanceOfPattern.match(theLine)
            if res:
                instanceOf = res.group("instanceOf").strip()

            res = usagePattern.match(theLine)
            if res:
                usage = res.group("usage").strip()

                if usage == "#example" and instanceOf == "Bundle":
                    print("Bundle file="+file_name_i)
                    print("Bundle instanceID="+instanceID)
                    bundleList.append([file_name_i, instanceID])

                if usage == "#example" and instanceOf == "Composition":
                    print("Composition file="+file_name_i)
                    print("Composition instanceID="+instanceID)
                    compositionList.append([file_name_i, instanceID])

fullUrlDic = {}
for element in bundleList:
    filepath = element[0]
    bundleID = element[1]
    with open(filepath) as f:
        for line in f:
            theLine = line.rstrip()  # 読み込んだ行の末尾には改行文字があるので削除
            res = fullUrlPattern.match(theLine)
            if res:
                print(theLine)
                fullUrl = res.group("fullUrl").strip()
                resourceID = ""
            res = resourceIDPattern.match(theLine)
            if res:
                print(theLine)
                resourceID = res.group("resourceID").strip()
                fullUrlDic[resourceID] = fullUrl

print(fullUrlDic)
instanceIDPattern = re.compile("^Instance: (?P<instanceID>(.+))$")
referencePattern = re.compile(
    "^\*.+\.reference\s+=\s+(?P<reference>(.+))$")
for element in compositionList:
    filepath = element[0]
    instanceID = element[1]
    with open(filepath) as f:
        with open(filepath+"_w", mode="w") as fw:
            for line in f:
                theLine = line.rstrip()  # 読み込んだ行の末尾には改行文字があるので削除
                res = referencePattern.match(theLine)
                if res:
                    refID = res.group("reference").strip().strip(
                        '"').strip("'")  # 両側に引用符がついている文字列なので削除
                    if refID in fullUrlDic:
                        fullID = fullUrlDic[refID]
                    else:
                        fullID = "none"
    #                print("ref=", refID, fullID)
                    print("// "+theLine)
                    newLine = theLine.replace(refID, fullID.strip('"'))
                    fw.write("// "+theLine+"\n")
                    fw.write(newLine+"\n")
                else:
                    fw.write(theLine+"\n")
    os.rename(filepath, filepath+"_backup")
    os.rename(filepath+"_w", filepath)
