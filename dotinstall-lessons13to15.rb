#lesson13

#if
# > < >= <= ==（等号） != (等しくない)
# &&(AND) ||(OR) !(NOT) 
puts "ls13の数字"
score = gets.to_i #getiでは文字列が取得されるからi(integer整数）に変換

# if score > 80 then
#     puts "great!"

# elsif score > 60
#     puts "good!"
# else
#     puts "so so ..."
# end

puts "great!" if score > 80 #簡単なものならifを後ろにもってきてもOK

#lesson14

#case
puts "ls14の信号の色"


signal = gets.chomp #getsは一行入力（改行もついてるのでchompで改行を削除できる）

case signal
when "red" #thenは省略可
    puts "stop"
when "green", "blue" #thenは省略可
    puts "go"
when "yellow" #thenは省略可
    puts "caution"
else
    puts "wrong signal"
end

#lesson15

#while

i = 0

while i < 10 do
    puts "#{i}: hello" #"#{XXX}"でXXXの中身の計算とかできる
    # i = i + 1
    i += 1 #i *= 2とかでもいけるらしい
end

#times 回数決まっている時に便利

10.times do |i| #|i|は何回目のループかわかるiは0から始まる
    puts "#{i}: hello"
end

10.times { |i| puts "#{i}: hello"}