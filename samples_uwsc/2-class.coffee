class Empty

class Duck
  # 本当は、こう書きたいが、現状ではその下のように通常の関数として書く
  #constructor: () ->
  #  console.log "Duck:contructor"
  @Duck: () ->
    console.log "Duck:contructor"

  # @count = 1
  @say: (name) ->
    a = " xxx "
    RESULT = "Quack Quack #{name}! #{aaa}"

  this.sayx = (name) ->
    RESULT = "X Quack Quack #{name}!"

console.log Duck.say('Kato')
console.log Duck.sayx('Kato')
