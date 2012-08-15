
# PRINT は uwsc のログ出力制御であり、 PRINT foo の形式で呼び出す。
# print は大文字・小文字の区別はしない。

print "abc"

Print 1 + 2

func = ->
  print "-- Enter func()"
  RESULT = 1

class Base
  @fn = ->
    print "-- Enter Base.fn()"

    RESULT = 1
