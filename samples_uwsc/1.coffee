#  ../bin/uwscscript -p foo.coffee で変換結果が stdout に
#  ../bin/uwscscript foo.coffe; cat foo.js でファイル保存された変換結果を表示

###
RESULT の有無で Procedur, Function を判定する。
###

sub_op_proc = (x) ->
  x * x

sub_op_func = (x) ->
  RESULT = x * x


階乗00 = (x) ->
  if (true)
    ans = 階乗01(x)
  RESULT = ans
  
階乗01 = (x) ->
  if x is 1
    RESULT = 1
  else
    RESULT = x * 階乗01(x-1)

階乗02 = (x) ->
  if x is 1
    RESULT = 1
  else if x is 2
    RESULT = 2
  else
    RESULT = x * 階乗02(x-1)

階乗03 = (x) ->
  if x is 1
    RESULT = 1
  else 
    if x is 2
      RESULT = 2
    else
      RESULT = x * 階乗03(x-1)

a = 階乗00(3) + 階乗01(3) + 階乗02(3) + 階乗03(3)

check = "error" if 階乗00(3) != 6 

x = 10
y = 0
while x > 0
  x = x - 1
  y = y + 1

until x < 10
  x = x + 1

loop
  break if x > 0
  x = x - 1

x = x + 1 while b < 10
x = x - 1 until b < 0

switch day
   when "Sun" then a = "play"
   else a = "work"

if (1 < x < 10)
  foo(x)

try
  action()
catch dmmmy
  err()
finally
  cleanUp()

try
  action()

try
  action()
catch dummy
  err()

try
  action()
finally
  cleanUp()

# for i in [1..10] by 3
#  foo(i)
#

# switch day
#   when "Sun" then a = "play"
#   else a = "work"
#   ...
#
# call ...
#
#
# PRINT "あいうえお"
