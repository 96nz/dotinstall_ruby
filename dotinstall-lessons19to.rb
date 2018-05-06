#lesson19 クラスを作ってみよう

class User #クラス名は必ず大文字から始める
    
    def initialize(name) #newが呼ばれた時に呼ばれるのがinitialize
        #nameという引数に名前が入る
        @name = name 
        #@nameはインスタンス変数と呼ばれインスタンス内で共通で使える
        #普通の変数はメソッドが違うと使えない
        #別のクラスなど外部からはアクセスできない
    end

    def sayHi #メソッドを作る
        puts "hi! i am #{@name}"
    end
    
end

# tom = User.new 
#ユーザークラスのオブジェクト＝インスタンスを作れる？はぁ？
# tom.sayHi


tom = User.new("tom") #tomが入る
tom.sayHi

bob = User.new("bob") #bobが入る


#lesson20 アクセサをつかってみよう


class User 

    #メソッド内、クラス内の変数にアクセスするには
    attr_accessor :name #インスタンス変数の名前を渡すとそれを書き換えるnameというメソッドを自動生成してくれる。
    # setter: name=(value) 自動的にnameをセットするためのnameというメソッドと
    # getter: name nameにアクセス（取得）するためのメソッド
    # getterだけ欲しい場合は attr_reader :name
    
    def initialize(name) 
        @name = name 
    end

    def sayHi
        #selfというオブジェクトについて
        #selfはそのメソッドを受け取っているインスタンス（オブジェクト）自身を指す
        #sayHi内にselfを使うとselfを使っているオブジェクトのことを指す.
        #tom.sayHiの場合tomというオブジェクトがselfになる。
        #tom.sayHiの場合tomというオブジェクトはレシーバーという。
        #そのメソッドを実行しているレシーバー自身のオブジェクトがself！！
        #self.nameとした時getterが設定されているのでインスタンス変数が返ってくるので
        puts "hi! i am #{@name}"
        #は
        puts "hi! i am #{self.name}" #のように書き換え可能
        # self.name はgettorがあるので @nameとしてかえってくる。
        puts "hi! i am #{name}" #この場合はselfを省略できる。
    end
    
end


tom = User.new("tom") #tomが入る
tom.sayHi

tom.name = "tom Jr." 
#attr_accessorでnameメソッドを定義しているので値を書き換えられる。
p tom.name #値の確認
tom.sayHi #メソッドの実行
