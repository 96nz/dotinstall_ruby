#lesson13

score = gets.to_i #getiでは文字列が取得されるからi(integer整数）に変換

if score > 80 then
    puts "great!"

elsif score > 60
    puts "good!"
else
    puts "so so ..."
end