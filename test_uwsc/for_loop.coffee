### 1. 2. 3. 4. 5 ###
for i in [1..5]
  console.log i

### 10, 20, 30, 40, 50 ###
for i in [10..50] by 10
  console.log i

### 2, 4, 6, 8, 20 ###
for i in [1..10] when i%2 is 0
  console.log i

### 6, 12, 18, 24, 30 ###
for i in [0..30] when i%2 is 0 by 3
  console.log i
for i in [0..30] by 3 when i%2 is 0
  console.log i

console.log(i)  for i in [0..30] by 3 when i%2 is 0

### -2, -1, 0 , 1, 2 ###
for i in [-2..2]
  console.log i

### 2, 3, 4 ###
a = 2; b = 4; c = 2
for i in [a..b] by 2
  console.log i

### 5, 4, 3, 2, 1 ###
for i in [5..1] by -1
  console.log i

class Base
  @sum = (a, b, c) ->
    ans = 0
    for i in [a.. b] by c
      ans += i
    Result = ans

  @ope = (a, b, c) ->
    for i in [a.. b] by c
      console.log i
