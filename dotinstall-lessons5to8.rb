=begin
数値オブジェクト

=end

p 4.8.class
# 4.8のclassがわかる
p 4.8.methods
# 4.8で使えるmethodsがわかる
=begin
#よく使うメソッド
四則演算⇒　+ - *掛け算　/割り算 %あまり **べき乗
=end


p 10+3
p 10 * 3
p 2.4 * 2
p 10 / 3
p 10 % 3
p 10.0 / 3
p Rational(2,5) + Rational(3,4) #5分の２＋4分の３
p 2/5r +3/4r #5分の２＋4分の３

p 52.6.round #四捨五入
p 52.6.floor #小数点以下切り捨て
p 52.6.ceil #小数点以下切りあげ

=begin
文字列オブジェクト
''でもいけるけど　""なら特殊文字や式展開ができる
=end

puts "hell\no worl\td" 
#バックスラッシュnで改行（バックスラッシュは日本語では\と表示される
#\tでタブ

puts "price #{300 * 4}" #これで計算した中身が表示される。

name = "kuroda"
puts "hello #{name}"

puts "hello" + "world" #スペース入ってたしたやつがでてくる
puts "hello" * 10 #10回表示 スペースはいらん

# !
#upcase 文字列を大文字にする
#upcase!　元の文字列も大文字に書き換える　こういうやつを破壊的なメソッドと呼ぶ
#downcase 小文字　reverse　逆文字

name = "kuroda"
puts name.upcase
puts name
puts name.upcase!
puts name

# ? 真偽値を返すメソッド trueかfalse

name = "kuroda"
p name.empty? #からかどうか
p name.include?("k")


#配列

colors = ["red", "blue", "yellow"]
#様々な変数を配列にする

#要素へのアクセスの仕方
p colors[0] #[]の中の数字を添字という 0なら1つ目
p colors[-1] #一番最後　－２はその1つ前
p colors[0..2] #０から２
p colors[0...2] #０から２の直前まで
p colors[5] #nil 範囲外だと何もないという意味のオブジェクトが返ってくる

#要素の書き換え
colors[0] = "pink"
colors[1..2] = ["white", "black"]
#末尾に追加
colors.push("gold")
#末尾に追加　の簡単な書き方
colors << "silver"
p colors

p colors.size #要素の数
p colors.sort #並べ替え アルファベット順


#ハッシュ

# - keyとvalueでなりたつ
# 例 taguchi 200
# koji 600 
# scores = {"taguchi" => 200, "koji" => 600} #文字列
# scores = {:taguchi => 200, :koji => 600} #シンボルオブジェクト（動作が高速）
scores = {taguchi: 200, koji: 600} #シンボルの簡略系

p scores

p scores[:taguchi]
scores[:koji] = 300
p scores[:koji]

p scores.size
p scores.keys
p scores.values
p scores.has_key?(:taguchi) #田口があるかどうか？

# lesson10

# 変換

x = 50
y = "3"

p x + y.to_i #整数 integer
p x + y.to_f #浮動小数点数 float
p x.to_s + y #string　文字


scores = {taguchi: 200, fkoji: 400}

p scores.to_a #to_aはto alley配列 to_hはハッシュに戻す
p scores.to_a.to_h #to_aはto alley配列 to_hはハッシュに戻す

#lesson11
# %記法

puts "hello"
puts 'hello' #式展開が必要ない場合

puts %Q(hello) #""と同じ意味
puts %(hello) #""と同じ意味
puts %q(hello) #''と同じ意味

puts "he\"llo" #\を使うことで"を文字列として認識できる。
puts 'he\'llo' #式展開が必要ない場合

puts %Q(he"llo)
puts %(he"llo)
# puts %q(he'llo)

p ["red", "blue"]
p ['red', 'blue']

p %W(red blue)
p %w(red blue)


colors2 = %W(red blue)

p colors2[0]

#lesson12　書式付文字列

# %s なら文字列
# %d なら整数
# %f 浮動小数点数

p "name: %s" % "taguchi"
p "name: %10s" % "taguchi"
p "name: %-10s" % "taguchi"

p "id: %05d, rate: %10.2f" % [355, 3.284] 
#05と5の違いは空いてる数字を0で埋めるかどうか
#10.2は全体の桁数.小数点以下の桁数を指定　桁数には小数点マークも含まれる

#printfは書式付のp

printf("name: %10s\n", "taguchi") #\nは改行
printf("id: %05d, rate: %10.2f\n", 355, 3.284)

#sprintfは文字列を返す

p sprintf("name: %10s\n", "taguchi") #\nは改行
p sprintf("id: %05d, rate: %10.2f\n", 355, 3.284)

