
# Documention by Natural Docs
#    See http://www.naturaldocs.org/documenting.html

### カウンター ###
counter = 1

###
 カウンター
###
counter = 1

###
# -----------------------
  Function: add_0
    加算を行う。
  Parameters:
    x: 数値
    y: 数値
  Return:
    加算の結果
-----------------------
###
add_0 = (x,y) -> RESULT = x + y

###-----------------------
  Procedure: add_1
    加算を行う。
  Parameters:
    x: 数値
    y: 数値
-----------------------###
add_1 = (x,y) -> Pro x + y

###
-----------------------
 Class: Base
   基本クラス
-----------------------
###
class Base
  # 現時点では、uwscscript の実装バグで、次のコメントが出ない  (version 0.0.1) // coffeescript では出る
  ### カウンター ###
  count = 0

  ###
  -----------------------
   Function: get_count
     Get count.
   Returns:
     count
  -----------------------
  ###
  @get_count = ->
    RESULT = count

  ###-----------------------
     Procedure: set_count
       Set Count
     Parameters:
       val: value for count.
  -----------------------###
  @set_count = (val)->
    ### xxx ###
    count = val
    ### xxx ###
    count = count + 1
