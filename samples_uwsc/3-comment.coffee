# comment
a = 1
###
 COMMENT in js
###
a = 2

###
 COMMENT in js 1
 COMMENT in js 2
 COMMENT in js 3
###
a = 3

a = () ->
  ###
   COMMENT in js 1
   COMMENT in js 2
   COMMENT in js 3
  ###
  "a"

b = () ->
  
  # COMMENT in js 1
  "b"
