const CONST_100 = 100
public G_OFFSET_1 = 1
public G_OFFSET_1 = 10
a = "xxx"

public G_OFFSET_2
G_OFFSET_2 = 2

conter.G_COUNT = 1

fn = (x) ->
 G_OFFSET_1 = 100
 G_OFFSET_2 = 200
 a = "xxx"
 RESULT = G_OFFSET_1 + G_OFFSET_2 + x

class counter
  public G_COUNT

  @init_count = (x) ->
    G_COUNT = x
    RESULT = G_COUNT

  @inc_count = ->
    G_COUNT += 1
    RESULT = G_COUNT

  @fn = ->
    public G_OFFSET_1 = 1000
    RESULT = G_OFFSET_1 + 1
