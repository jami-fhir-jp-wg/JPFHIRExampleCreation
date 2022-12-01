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
commentPattern = re.compile("^//(.+)$")

usageStringExample = "#example"
usageStringInline = "#inline"
#
fullUrlPattern = re.compile(
    '^\*\s+entry\[\s*\+\\s*]\.fullUrl\s*=(?P<fullUrl>(.+))$')
resourceIDPattern = re.compile(
    '^(?P<targetElement>(.+)).resource\s*=(?P<resourceID>(.+))$')

# 再帰的探索　recursive に True を指定して、 pathname の中に ** を含める
# 指定フォルダだけの探索　recursive に False を指定して、 pathname の中に ** を含めない
search_path = dir_path + fsh_ext  # ワイルドカードを設定
fsh_files = glob.glob(search_path, recursive=False)  # 拡張子がegg_extだけのファイルを返す
bundleList = []
instanceList = []

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
            com = commentPattern.match(theLine)
            # 1ファイルの中に複数のInstanceIDがあるファイルがある
            if res and not com:
                instanceID = res.group("instanceID").strip()
                usage = ""
                instanceOf = ""
                # InstanceIDが出てきたので、他の情報をリセットする。
            # InstanceOf 文を見つける
            res = instanceOfPattern.match(theLine)
            if res and not com:
                instanceOf = res.group("instanceOf").strip()

            # Usage文を見つける
            res = usagePattern.match(theLine)
            if res and not com:
                usage = res.group("usage").strip()
                # ここまでで、InstanceID, InstanceOf  Usageが取得できた
                # Bundle Exampleの場合にはbundleListに格納する
                if usage == usageStringExample and instanceOf == "Bundle":
                    print("Bundle file="+file_name_i)
                    print("Bundle instanceID="+instanceID)
                    bundleList.append([file_name_i, instanceID])
                # Bundle以外のInstanceの場合にはinstanceListに格納する
                # 同じファイル名がありうることに注意
                if usage == usageStringInline and instanceOf != "Bundle":
                    print("Instance file="+file_name_i)
                    print("Instance instanceID="+instanceID)
                    instanceList.append([file_name_i, instanceID])

# instanceIDと対応するfullURLの辞書を作成する
fullUrlDic = {}
for element in bundleList:
    filepath = element[0]   # bundle ファイルのパス（同じファイルパスが複数回出現することがある）
    bundleID = element[1]   # bundleインスタンスID（使わない）
    with open(filepath) as f:
        for line in f:
            theLine = line.rstrip()  # 読み込んだ行の末尾には改行文字があるので削除
            res = fullUrlPattern.match(theLine)
            com = commentPattern.match(theLine)
            if res and not com:
                print(theLine)
                fullUrl = res.group("fullUrl").strip()
                resourceID = ""
            res = resourceIDPattern.match(theLine)
            if res and not com:
                print(theLine)
                resourceID = res.group("resourceID").strip()
                fullUrlDic[resourceID] = fullUrl

print(fullUrlDic)
# Bundleファイル以外のすべてのインスタンスファイルについて　.reference = "resourceID"の記述を fullURLに書き換える
instanceIDPattern = re.compile("^Instance: (?P<instanceID>(.+))$")
referencePattern = re.compile(
    "^\*.+\.reference\s+=\s+(?P<reference>(.+))$")
processedFlag = {}
for element in instanceList:
    filepath = element[0]  # Bundleファイル以外のすべてのインスタンスファイル 同じファイルパスが複数回ありうる
    instanceID = element[1]
    print(filepath)
    if filepath not in processedFlag:   # このファイルパスは未処理である
        processedFlag[filepath] = True  # このファイルパスは一度処理をしたフラグをONにする
        with open(filepath) as f:
            with open(filepath+"_w", mode="w") as fw:
                for line in f:
                    theLine = line.rstrip()  # 読み込んだ行の末尾には改行文字があるので削除
                    com = commentPattern.match(theLine)
                    res = referencePattern.match(theLine)
                    if res and not com:
                        refID = res.group("reference").strip().strip(
                            '"').strip("'")  # 両側に引用符がついている文字列なので削除
                        if refID in fullUrlDic:
                            fullID = fullUrlDic[refID]
                        else:
                            if not refID.startswith("urn:uuid:"):
                                fullID = "none"
                        if not refID.startswith("urn:uuid:"):
                            newLine = theLine.replace(refID, fullID.strip('"'))
                            fw.write("// "+theLine+"\n")
                            fw.write(newLine+"\n")
                        else:
                            w.write(theLine+"\n")
                    else:
                        fw.write(theLine+"\n")
        os.rename(filepath, filepath+"_backup")
        os.rename(filepath+"_w", filepath)
