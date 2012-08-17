
# PRINT は uwsc のログ出力制御であり、 PRINT foo の形式で呼び出す ( PRINT(foo) はエラー)。
# print は大文字・小文字の区別はしない。

CALL "fpp.uwsc"

func = ->
  CALL "fpp.uwsc"
  RESULT = 1

class Base
  @fn = ->
    CALL "fpp.uwsc"
    RESULT = 1
