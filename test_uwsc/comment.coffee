# Comments
# --------

# * Single-Line Comments
# * Block Comments

# Note: awkward spacing seen in some tests is likely intentional.

# "comments in objects"
test001 = () ->
  # comment
    # comment
      # comment
  one = 1
  # comment
  two = 2
      # comment

# "comments in YAML-style objects"
test002 = () ->
  # comment
    # comment
      # comment
  three = 3
  # comment
  four = 4
      # comment

# "comments following operators that continue lines"
test003 = () ->
  sum =
    1 +
    1 + # comment
    1

# "comments in functions"
class test004
  @fn = ->
    # comment
    false
    false   # comment
    false
    # comment

    # comment
    true

  @fn2 = -> #comment
    fn()
    # comment


# "trailing comment before an outdent"
class test005
  nonce = {}
  @fn3 = ->
    if true
      undefined # comment
    nonce


# "comments in a switch"
test006 = () ->
  nonce = True
  switch nonce #comment
    # comment
    when false then "false"
    # comment
    when null #comment
      "null"
    else nonce # comment


# "comment with conditional statements"
test007 = () ->
  nonce = true
  result = if false # comment
    undefined
  #comment
  else # comment
    nonce
    # comment

# "spaced comments with conditional statements"
test008 = () ->
  result = if false # comment
    undefined
  #comment
  else # comment
    nonce
    # comment


# Block Comments

###
  This is a here-comment.
  Kind of like a heredoc.
###


# "block comments in functions"
class test009
  nonce = 0

  @fn1 = ->
    true
    ###
    false
    ###

  @fn2 =  ->
    ###
    block comment
    ###
    nonce

  @fn3 = ->
    nonce
  ###
  block comment
  ###

  @fn4 = ->
    one = ->
      ###
        block comment
      ###
      two = ->
        three = ->
          nonce


# "block comments inside class bodies"
class A
  a: -> "a"

  ###
  Comment
  ###
  b: -> "b"


class B
  ###
  Comment
  ###
  a: -> "a"
  b: -> "b"
