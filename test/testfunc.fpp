#function base64file Base64Encoding::encodeFile2Base64
#function base64data Base64Encoding::encodeData2Base64

#define testmacro(ARG)  base64file(__FILE__, ARG)

testmacro(README.md)

#bigdef  $030mr_文書参照TextFile(ARGpath,ARGfilename)
#comment カレントディレクトリにあるファイルを指定する場合には、ARGpath には　. を設定すること
#comment カレントディレクトリ以外にあるファイルを指定する場合には、ARGpath には　末尾に/のないパス名 を設定すること
* content[+].attachment.contentType = #text/plain;charset=UTF-8
* content[=].data = base64file(__FILE__, ARGpath/ARGfilename)
#endbigdef

$030mr_文書参照TextFile(.,README.md)

