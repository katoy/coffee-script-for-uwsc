class cls
  const x = 1
  public y = 1

  dim ary[3] = [1,2,3]
  public G_ARY[3]

  @fn = ->
    # x = 10   # can not assign to constant.
    y = 10
    ary[0] = 10
    G_ARY[0] = 10
