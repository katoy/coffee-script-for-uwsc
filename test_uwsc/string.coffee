### --------------------------------------------
 uwsc では文字列中で \ はエスケープ機能を持たない。
 s0 = ""
 s1 = ''
 s2 = "\msagent\chars\"
 s3 = "\n\t\"
 s4 = "\\\'\"
 s5 = "#{x}"
 s6 = "#{x}\"
 s7 = "\ #{x} \"
 s8 = "\#{x}\"
 s9 = "a\n"
 sA = '"'
 sX = """
   あいうえお
   かきくけこ

   """
 sY = """
   あいうえお
   かきくけこ
   """

 sZ = """
   "あ"
   'か'
   x	x
   """
-------------------------------------------- ###
s0 = ""
s1 = ''
s2 = "\msagent\chars\"
s3 = "\n\t\"
s4 = "\\\'\"
s5  = "#{x}"
s6 = "#{x}\"
s7 = "\ #{x} \"
s8 = "\#{x}\"
s9 = "a\n"
sA = '"'

sX = """
  あいうえお
  かきくけこ

  """
sY = """
  あいうえお
  かきくけこ
  """

sZ = """
  "あ"
  'か'
  x	x
  """
