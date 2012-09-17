#
# See  http://uwsc.g.hatena.ne.jp/cx20/20100131/1264938584
#      UWSC 基礎文法最速マスター
#

### ========== 1. 基礎 ============= ###
###  Option Explicit ###
Option Explicit

###----------------------------------
  Print "Hello world."          // Print 文はデバッグ用です。結果はロギングウィンドウに表示されます。
  MsgBox( "Hello world." )      // メッセージボックスにメッセージを表示します。
----------------------------------###

### Print 文はデバッグ用です。結果はロギングウィンドウに表示されます。###
Print "Hello world."

### メッセージボックスにメッセージを表示します。###
MsgBox "Hello world."

### ========== 2. 数値 =============  ###
###----------------------------------
  dim num
  dim students[10]
  HashTbl month_num
----------------------------------###
dim students[10]
HashTbl month_num

###----------------------------------
  Option LogPath="C:\TEMP\UWSC.log"
  Option LogFile=3 // 1:ログ出力しない, 2:日付（時分秒）付けない, 3:日付（時分秒）を付ける
----------------------------------###
Option LogPath="C:\TEMP\UWSC.log"
Option LogFile=3 # 1:ログ出力しない, 2:日付（時分秒）付けない, 3:日付（時分秒）を付ける

###----------------------------------
  Dim num = 1
  Dim num = 1.234
  Dim num = 100000000
  num = 1 + 1 // 2
  num = 1 - 1 // 0
  num = 1 * 2 // 2
  num = 1 / 2 // 0.5
  num = Int(3/2)
  num = 3 Mod 2
  i = i + 1
  i = i - 1
----------------------------------###

num = 1
num = 1.234
num = 100000000
num = 1 + 1
num = 1 - 1
num = 1 * 2
num = 1 / 2
num = Int(3/2)
num = 3 % 2   # coffeescript: %.  uwsc: mod
i = i + 1
i = i - 1

### ========== 3. 文字列 ============= ###
###----------------------------------
  str1 = "abc"
  str2 = "a<#TAB>bc<#CR>"
----------------------------------###
str1 = "abc"
str2 = "a<#TAB>bc<#CR>"

###----------------------------------
  join = "aaa" + "bbb"
  Dim ary[2]
  Dim str3
  ary[0] = "aaa"
  ary[1] = "bbb"
  ary[2] = "ccc"
  str3 = Join(ary, ",")             // Join 関数は Ver 4.7 ～

  // 分割
  ary = Split("aaa,bbb,ccc", ",")   // Split 関数は Ver 4.7 ～

  // 長さ
  len = Length("abcdef")            // 6
  len = Length("あいうえお")        // 5（文字数を数えるには Length 関数を使用します）
  len = LengthB("あいうえお")       // 10（文字のバイト数を数えるには LengthB 関数を使用します）

  // 切り出し
  substr = Copy("abcd", 1, 2)       // ab

  // 検索
  pos = Pos("cd", "abcd")           // 見つかった場合はその位置、見つからなった場合は 0 が返ります
  pos = Pos("うえ", "あいうえお")   // 3（文字数で扱う場合は Pos 関数を使用します）
  pos = PosB("うえ", "あいうえお")  // 5（バイト数で扱う場合は PosB 関数を使用します）
----------------------------------###

join = "aaa" + "bbb"
ary[0] = "aaa"
ary[1] = "bbb"
ary[2] = "ccc"
str3 = Join(ary, ",")

ary = Split("aaa,bbb,ccc", ",")

len = Length("abcdef")
len = Length("あいうえお")
len = LengthB("あいうえお")

substr = Copy("abcd", 1, 2)

pos = Pos("cd", "abcd")
pos = Pos("うえ", "あいうえお")
pos = PosB("うえ", "あいうえお")

### ========== 4. 配列 ============= ###

###---------------------------------
  // 配列の宣言
  Dim array[2]

  array[0] = 1
  array[1] = 2
  array[2] = 3

  Print array[0]
  Print array[1]

  array[0] = 1
  array[1] = 2

  num = Length(array)
---------------------------------###

array = [0, 0, 0]
array[0] = 1
array[1] = 2
array[2] = 3

### 要素の参照 ###
Print array[0]
Print array[1]

### 要素の代入 ###
array[0] = 1
array[1] = 2

### 配列の個数 ###
num = Length(array)

###---------------------------------
  // 配列の操作
  Dim array[] = 1, 2, 3

  // 先頭を取り出す
  first = array[0]              // first は 1

  // 末尾を取り出す
  last = array[Length(array)-1] // last は 3

  // 末尾に追加
  ReSize( array, Length(array) )
  array[Length(array)-1] = 9    // array は 1,2,3,9
---------------------------------###
array = [1,2,3]
first = array[0]
last = array[Length(array)-1]
ReSize( array, Length(array) )
array[Length(array)-1] = 9

### ========== 5. ハッシュ ============= ###
###---------------------------------
  HashTbl hash
  hash["a"] = 1
  hash["b"] = 2
---------------------------------###
HashTbl hash
hash["a"] = 1
hash["b"] = 2

###---------------------------------
  // 要素の参照
  Print hash["a"]
  Print hash["b"]

  // 要素の代入
  hash["a"] = 5
  hash["b"] = 7
---------------------------------###
Print hash["a"]
Print hash["b"]

hash["a"] = 5
hash["b"] = 7

###---------------------------------
  // キーの存在確認
  hash["a", HASH_EXISTS]  // キーが存在すれば True を返す
  // ハッシュのキーの削除
  hash["a", HASH_REMOVE]  // 削除できれば True を返す
---------------------------------###
###  TODO ###
`
hash["a", HASH_EXISTS]
hash["a", HASH_REMOVE]
`

### ========== 6. 制御文 ============= ###
###---------------------------------
  If 条件 Then 式 [Else 式]

  ifb 条件 Then
    式
  [Else]
    式
  EndIf

  Ifb 条件 Then
    式
  [ElseIf 条件 Then]
    式
  [Else]
    式
  EndIf
----------------------------------###

if a > 0 then x = 1 else x = 2

if a > 0
  x = 1
else if a < 0
  x = -1
else
  x = 0

###----------------------------------
  i = 0
  While i < 5
    // 処理
    i = i + 1
  Wend
----------------------------------###
i = 0
while i < 5
  PRINT i
  i += 1

###----------------------------------
  For i = 0 To 4
    Print i
  Next
----------------------------------###
for i in [1..4]
  PRINT i

### ========== 7. 関数 ============= ###
###---------------------------------
  Procedure Show_Sum( num1, num2 )
    Dim total
    total = num1 + num2
    Print total
  Fend
---------------------------------###
Show_Sum = (num1, num2) ->
  total = num1 + num2
  Print total

###---------------------------------
  Function Sum( num1, num2 )
    Dim total
    total = num1 + num2
    Result = total // 戻り値を指定
  Fend
---------------------------------###
Sum = (num1, num2) ->
  total = num1 + num2
  Result = total # 戻り値を指定

###---------------------------------
  Dim num1, num2
  num1 = 0
  num2 = 0

  RefTest( num1, num2 )
  Print num1  // 0
  Print num2  // 2

  Procedure RefTest( num1, Var num2 )
    num1 = 1 // 値渡しの為、値は更新されません
    num2 = 2 // 参照渡しの為、値は更新されます
  Fend
---------------------------------###

num1 = 0
num2 = 0

RefTest( num1, num2 )
Print num1  # 0
Print num2  # 2
`
Procedure RefTest( num1, Var num2 )
  num1 = 1 // 値渡しの為、値は更新されません
  num2 = 2 // 参照渡しの為、値は更新されます
Fend
`

### ========== 8. ファイル入出力 ============= ###
###
###

### ========== 9. 知っておいたほうがよい文法 ============= ###
###----------------------------------
  For i = 0 To Length(PARAM_STR)
    Print PARAM_STR[i]
  Next
----------------------------------###

for i in [0 .. Length(PARAM_STR)]
  PRINT PARAM_STR[i]

###----------------------------------
  Select 式
    Case 式
      処理
    [Case　式]
      処理
    [Default]
      処理
  SelEnd
----------------------------------###
x = 0
switch x + 2
  when 1
    x = 10
  when 2, 3
    x = 20
  else
    x = 999

###----------------------------------
  Try
    処理
  Finally
    処理
  EndTry
----------------------------------###
try
  foo()
finally
  bar()

###----------------------------------
  Try
    処理
  Except
    処理
  EndTry
----------------------------------###
try
  foo()
catch err
  bar()

#-- End of File
