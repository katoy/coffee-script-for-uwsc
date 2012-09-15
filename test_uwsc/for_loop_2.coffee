dim m[] = [1, 2, 3, 5, 7, 11]

print(m)

### ==========================
  array [1, 2, 3, 5, 7, 11]
###
for i in m
  print (i)

print (i) for i in m

print (i) for i in m by 2

for i in m when i > 5
  print (i)

print (i) for i in m when i > 5

for i in m
  print i
  for j in m
    print j
    for k in m
      print k

### ==========================
  Range [1..10]
###
for i in [1..10]
  print (i)

print (i) for i in [1..10]

print (i) for i in [1..10] by 2

for i in [1..10] when i > 5
  print (i)

print (i) for i in [1..10] when i > 5

for i in [1..10]
  print i
  for j in [1..10]
    print j
    for k in [1..10]
      print k