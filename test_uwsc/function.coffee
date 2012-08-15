###
 RESULT の有無で Procedure, Function を判定する。
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
