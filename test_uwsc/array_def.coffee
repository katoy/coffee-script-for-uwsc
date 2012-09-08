dim ary_1[] = [1,2,3]
dim ary_2[3] = [1,2,3]
dim ary_3[3]
dim ary_4 = [1..10]
dim ary_5 = [1...10]
dim ary_6 = [1, 2, 3, 4, 5]

PRINT ary_2[i] for i in [0 ... Length(ary_3.length)]
ReSize(ary_1, Length(ary_1) * 2 )

dim ary_23[2][2]
dim matrix2[2][2] = [ [1, 2], [3, 4] ]
size = 3
# dim matrix3[size][size] = [ [1, 2, 3], [4, 5, 6], [7, 8, 9] ]
dim matrix3[size][size]
matrrix3[0][0] = 1; matrrix3[0][1] = 2; matrrix3[0][2] = 3
matrrix3[1][0] = 4; matrrix3[1][1] = 5; matrrix3[1][2] = 6
matrrix3[2][0] = 7; matrrix3[2][1] = 8; matrrix3[2][2] = 9

PRINT matrix[i][j] for j in [0...size] for i in [0...size]

func = (x[]) ->
  PRINT x[0]

func2 = (x[][]) ->
  PRINT x[0][0]
