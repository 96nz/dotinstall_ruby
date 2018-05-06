#lesson16

#for

for i in 15..20 do #iに15から20までの値を入れてなくなるまでループ
    p i
    puts "hello"
end

#配列ver
for color in ["red", "blue"] do #iに15から20までの値を入れてなくなるまでループ
    p color
end

#hash.ver
for name, score in {taguchi:200, fkoji:400} do
    puts "#{name}: #{score}"
end

#forはeachメソッドで書き換えられる

(15..20).each do |i| #iに15から20までの値を入れてなくなるまでループ
    p i
end

#配列ver
["red", "blue"].each do |color| #iに15から20までの値を入れてなくなるまでループ
    p color
end

#hash.ver
{taguchi:200, fkoji:400}.each do |name, score|
    puts "#{name}: #{score}"
end
#省略形
{taguchi:200, fkoji:400}.each { |name, score| puts "#{name}: #{score}"}

#lesson17

#loop

# i = 0
# loop do
#     p i
#     i += 1
# end

#break
#next スキップできる

10.times do |i|
    if i == 7 then
        # break
        next
    end
    p i
end

#lesson18

#メソッドを作る

# def sayHi #これでつくれる
#     puts "hi!"
# end

# sayHi #ただ置けば実行される

# def sayHi(name) #nameは引数という。オプションです。
#     puts "hi! #{name}"
# end

# sayHi("taguchi")
# sayHi "taguchi" #()は省略可

def sayHi(name = "tom") #tomという初期値を与えることも可能
    puts "hi! #{name}" 
    score = 80
    #メソッドは最後に評価された値をそのまま返すので
    "hi! #{name}" #のように書けばかえってくる。なにもない場合はnilが返ってくる。
    # return "hi! #{name}" #returnはあってもなくてもOKpで返す値は同じ
end

sayHi("taguchi")
sayHi

p sayHi
#メソッド内で定義された変数には外からアクセスできない
p score #80はでてこない。別のレッスンの奴がでてきてる。