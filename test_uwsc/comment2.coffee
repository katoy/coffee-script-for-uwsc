class Base
  @set_count = (val)->
    ### xxx ###
    RESULT = val
    ### yyy ###
    RESULT = count + 1


class Base2
  @set_count = (val)->
    ###
      xxx
    ###
    RESULT = val
    if val is 0
      ###
        yyy
      ###
      RESULT = count + 1
