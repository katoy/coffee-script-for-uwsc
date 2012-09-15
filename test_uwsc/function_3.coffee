# 引数省略時は、 _ で表現することにする。
func()
func(_)
func _

func(_, _, _)
func _, _, _

func _, _, 3
func _, 2, _
func 1, _, _
func 1, 2, _
func 1, _, 3
func _, 2, 3
func 1, 2, 3

func 1, 2

func(1, 2, 3)
func(1,
     2,
     3)

func(
  1,
  2,
  3
)
