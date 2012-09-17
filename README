
See ./README_coffee for CoffeeScrit.

This is UwscScript.  

The UwscScript is one compiler based on Coffeescript (ver 1.3.3),
reads script written by CoffeeScript, writes script written by uwsc.
See http://www.uwsc.info/ , for uwsc.

* Sample
Sample: ./sample_uwsc, Test: ./test_uwsc

* Build
    $ npm install -g coffee-script
    $ npm install
    $ cake uwsc:build:full

* Run
    $ ./bin/uwscscript foo.coffee  
It will generate converted script to ./foo.uws.  

    $ ./bin/uwscscript -p foo.coffee  
It will generate converted script to STDOUT.  

    $ ./bin/uwscscript -o outdir foo.coffee  
It will generate converted script to ./outdir/foo.uws.  

Following, in Japanes,  

これは  
　　CoffeeSript 風の書式のスクリプトコードから UWSC の書式のスクリプトコードを生成する  
変換プログラムです。  
現時点では実装できている変換形式は ごくわずかです。  

* サンプル
Sample: ./sample_uwsc, Test: ./test_uwsc  

* ビルド
    $ npm install -g coffee-script  
    $ npm install  
    $ cake uwsc:build:full  

* 実行
    $ ./bin/uwscscript --help  
簡易ヘルプが表示されます。  

    $ ./bin/uwscscript foo.coffee  
foo.coffee の変換結果が foo.uws に出力されます。  

    $ ./bin/uwscscript -p foo.coffee  
foo.coffee の変換結果が STDOUT に出力されます。  

    $ ./bin/uwscscript -o outdir foo.coffee  
foo.coffee の変換結果が ./outdir/foo.uws に出力されます。 
  
Cookbook
---------
　uwscscript の例を示していきます。 

* uwsc の埋め込み  
直接 uwsc そのものを記入することができます。  
usescript コマンドで上手く変換されないときや 変換処理をさせたくない場合に、この記法を利用します。

**uwscscript:**

    `dim a[] = 1,2,3`
    `
    foo(1,,,)
    `

**変換結果：**

    dim a[] = 1,2,3
    
    foo(1,,,)


* if 文  
1行 if,  ブロック if, 後置 if があります。

**uwscscript:**

    if (x > 1) then print "x > 1"
    
    if (x < 0)
      print "x < 0" 
    
    print "x is 0" if x is 0

**変換結果：**

    If (x > 1)
      PRINT "x > 1"
    Endif
    
    If (x < 0)
      PRINT "x < 0"
    Endif
    
    If (x = 0)
      PRINT "x is 0"
    Endif


if ... else の例も示します。

**uwscscript:**

    if x < 0 then print "x < 0" else print "0 <= x"
    
    if x < 0
      print "x < 0"
    else if 0 <= x and x < 10
      print "0 <= x < 10"
    else 
      print "10 <= x"


**変換結果：**

    If (x < 0)
      PRINT "x < 0"
    Else
      PRINT "0 <= x"
    Endif

    If (x < 0)
      PRINT "x < 0"
    ElseIf (0 <= x and x < 10)
      PRINT "0 <= x < 10"
    Else
      PRINT "10


条件文は 次のような連結記法も可能です。

**uwscscript:**

    if ( 0 < x < 10) then print "0 < x < 10"


**変換結果：**

    If ((0 < x and x < 10))
      PRINT "0 < x < 10"
    Endif


* for 文  
ブロック for, 後置 for があります。

**uwscscript:**

    for i in [10 .. 100]
      print i * 2
    
    print i * 3  for i in [20..100]


**変換結果：**

    dim i
    For i = 10 To 100
      PRINT i * 2
    Next
    
    For i = 20 To 100
      PRINT i * 3
    Next

for のネストの例も示します。

**uwscscript:**


    for i in [0..10]
      for j in [0..10]
        print i * 10 + j

    print i * 10 + j  for j in [0..10] for i in [0..10]


**変換結果：**


    dim i, j
    For i = 0 To 10
      For j = 0 To 10
        PRINT i * 10 + j
      Next
    Next
    
    For i = 0 To 10
      For j = 0 To 10
        PRINT i * 10 + j
      Next
    Next


繰り返しの範囲、ステップを指定は次の様に記述できます。  
範囲指定、ステップには変数を指定することも可能です。

**uwscscript:**

    for i in [0 .. 10]
      print i
    
    for i in [0 ... 10]
      print i    
    
    for i in [0 .. 10] by 2
      print i
    
    for i in [10 .. 1] by -1
      print i
    
    v0 = 1
    v1 = 10
    s0 = 2
    for i in [v0 .. v1] by s0
      print i


**変換結果：**

    dim i, s0, v0, v1
    For i = 0 To 10
      PRINT i
    Next
    
    For i = 0 To 10 - 1
      PRINT i
    Next
    
    For i = 0 To 10 Step 2
      PRINT i
    Next
    
    For i = 10 To 1 Step -1
      PRINT i
    Next
    
    v0 = 1
    v1 = 10
    s0 = 2
    For i = v0 To v1 Step s0
      PRINT i
    Next

* while, until, loop 文  

繰り返しは、for 以外に whke, until, loop の記法があります。

**uwscscript:**

    x = 10
    y = 0
    while x > 0
      x = x - 1
      y = y + 1
    
    until x < 10
      x = x + 1
    
    loop
      continue if x is 0
      break if x > 0
      x = x - 1

**変換結果：**

    dim x, y
    x = 10
    y = 0
    While (x > 0)
      x = x - 1
      y = y + 1
    Wend
    
    While (!(x < 10))
      x = x + 1
    Wend
    
    While (true)
      If (x = 0)
        continue
      Endif
      If (x > 0)
        break
      Endif
      x = x - 1
    Wend
    
    While (x < 10)
      x = x + 1
    Wend
    
    While (!(x < 0))
      x = x - 1
    Wend


while, until は後置記法も可能です。

**uwscscript:**

    print x while foo() > 0
    
    print x until foo(x)


**変換結果：**

    While (foo() > 0)
      PRINT x
    Wend
    
    While (!foo(x))
      PRINT x
    Wend


* select 文  

条件分岐には、 select 記法もあります。


**uwscscript:**

    dim a
    switch day
      when "Sun" then a = "play"
      else a = "work"


**変換結果：**

    DIM a
    Select (day)
      Case "Sun"
        a = "play"
      Default
        a = "work"
    Selend


* try 文  

例外の捕捉は次のように記述できます。

**uwscscript:**

    try
      action()
    catch dmmmy
      err()
    finally
      cleanUp()
    
    try
      action()
    
    try
      action()
    catch dummy
      err()
    
    try
      action()
    finally
      cleanUp()


**変換結果：**

    try
      action()
    Except // (dmmmy) 
      err()
    Finally
      cleanUp()
    Endtry
    
    Try
      action()
    Except
    Endtry
    
    Try
      action()
    Except // (dummy) 
      err()
    Endtry
    
    Try
      action()
    Finally
      cleanUp()
    Endtry

* call, print 文  
 uwsc の print, call, option は、uwsc の記法そのままを記述します。

**uwscscript:**

    option Explicit

    print "hello"

    call "lib"



**変換結果：**

    OPTION Explicit
    PRINT "hello"
    CALL "lib"


* dim, const, public 文  
 uwsc の dim, const, public は、次のように記述します。  
 dim は、変換時に自動的に再生させるので、記述する必要はありません。  
 public と const は、uwsc と同様に記述します。  


**uwscscript:**

    public g_x = 100
    const  G_MAX = 9999
    
    g_x = 200
    # G_MAX = 10000   <- 定数への代入は変換時にエラーになります。


**変換結果：**

    PUBLIC g_x = 100
    CONST G_MAX = 9999
    g_x = 200


配列は dim 宣言が必要です。  
配列の宣言時に [xm y,z](値の列挙), [x..y], [x...y] (連続値の列挙) の 記法も利用できます。  

**uwscscript:**

    dim aryA[2]
    dim aryB[2] = [1,2]
    dim aryC[] = [1..5]
    dim aryD[] = [1...5]
    
    aryA[0] = 1
    aryA[1] = 2
    print aryC[i] for i in [0 ... Length(aryC)]
    ntsitm227175:test_uwsc youichikato$ 


**変換結果：**

    dim i
    DIM aryA[2]
    DIM aryB[2] = 1, 2
    DIM aryC[] = 1, 2, 3, 4, 5
    DIM aryD[] = 1, 2, 3, 4
    
    aryA[0] = 1
    aryA[1] = 2
    
    For i = 0 To Length(aryC) - 1
      PRINT aryC[i]
    Next

* コメント 文  

変換結果に残さないコメント、残すコメントが選べます。

**uwscscript:**

    # 変換結果に残りません。
    print x  # コメント

    ###
    複数行のコメント。
    変換結果に残ります。
    ###


**変換結果：**

    PRINT x
    //複数行のコメント。
    //変換結果に残ります


* 分散代入  

; で文の区切りを示すこともできますが、次のような記法可能です。

**uwscscript:**

    a = 1; b = 2
    
    [a,b] = [10, 20]


**変換結果：**

    dim a, b
    a = 1
    b = 2
    
    dim _ref[] = 10, 20; a = _ref[0]; b = _ref[1]


* 関数、プロシジャー  

RESULT への代入の有無で、関数、プロシジャー に自動的に切り替わります。

**uwscscript:**

    mul2 = (x) ->  print x * x
    fmul2 = (x) -> RESULT = x * x


**変換結果：**

    Procedure mul2(x)
      PRINT x * x
    Fend

    Function fmul2(x)
      RESULT = x * x
    Fend


デフォルトパラメータの指定も可能です。

**uwscscript:**

    f = (x, y = 10) ->
        print x + y


**変換結果：**

    Procedure f(x, y = 10)
      PRINT x + y
    Fend


関数、プロシジャーの呼び出しで、パラメータを省略する場合は、 _  を指定します。

**uwscscript:**

    f(10, 20)
    f(_, _, 20)


**変換結果：**

    f(10, 2)
    f( , , 20)


* class 文  

class 中での function procedure は  @をつけて宣言します。

**uwscscript:**

    class cls
      @pro1 = (x) -> print x * 2
      @pro2 = (x) ->
        print x * 2
      @fun1 = -> RESULT = 100
      @fun2 = (x) -> RESULT = x * 2
      @fun3 = (x) -> 
        ans = x * 2
        RESULT = ans


**変換結果：**

    Class cls
      Procedure pro1(x)
        PRINT x * 2
      Fend
      Procedure pro2(x)
        PRINT x * 2
      Fend
      Function fun1()
        RESULT = 100
      Fend
      Function fun2(x)
        RESULT = x * 2
      Fend
      Function fun3(x)
        dim ans
        ans = x * 2
        RESULT = ans
      Fend
    Endclass

* 文字列  

\#{} での値埋め込みが可能です。" で囲った文字列でのみ値の置換が有効です。

**uwscscript:**

    print "x=#{x}, x*2 = #{x * 2}"
    print 'x=#{x}, x*2 = #{x * 2}'


**変換結果：**

    PRINT "x=" + x + ", x*2 = " + (x * 2)
    PRINT 'x=#{x}, x*2 = #{x * 2}'

* ヒアドキュメント  

""" で ヒアドキュメントを記述します。  
ヒアドキュメント中の改行、ダブルコーテーション、タブは　UWSC の対応する記法に置換されます。  

**uwscscript:**

    s = """
    あいうえお
    "愛"
    TAB=	
    """

**変換結果：**

    dim s
    s = "あいうえお<#CR><#DBL>愛<#DBL><#CR>TAB=<#TAB>"

履歴
-----
<pre>
version 0.0.2  Option  
               heredocument  
               Array  
  
version 0.0.1  コメント(#, ###),  
               Function, Procedure, While, loop, If-Else, If-ElseIf-Else,  
               Select, Class,  
               後置 if, 後置 unless,  後置 while,  
               embedded uws,  
               for i in [a..b] by c ...,  
               後置 for,  
               PRINT, Call,  
</pre>
//--- End of File ---
