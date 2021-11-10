#エレベーター計算
N = gets.to_i
sum = 0
a = 1
(1..N).each do |i|
    i = gets.to_i
    #一個前の数値を更新し代入。absで絶対値を取る
    sum += (i - a).abs
    a = i
end
puts sum

#Leet文字列変換
str = gets.chomp.split('')
str.each do |s|
  case s
  when 'A'
      print '4'
  when 'E'
      print '3'
  when 'G'
      print '6'
  when 'I'
      print '1'
  when 'O'
      print '0'
  when 'S'
      print '5'
  when 'Z'
      print '2'
  else
      print s
  end
end
# 別回答
# trメソッドを使用するとめちゃ楽
str = gets.tr("AEGIOSZ", "4361052")
print str

#宝くじの照合
winning_number = gets.split(' ').map(&:to_i)
N = gets.to_i
N.times do
  i = gets.to_s
  select_number = i.split(" ").map(&:to_i)
  puts (winning_number & select_number).size
end

