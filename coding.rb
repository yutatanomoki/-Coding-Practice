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

タクシー料金計算
line = gets.split(' ').map(&:to_i)
N = line[0]
X = line[1]
minCharge = 0
maxCharge = 0
taxi_info  = []
N.times do
  taxi_info = gets.chomp.split(" ").map(&:to_i)
  defaultDistance = taxi_info[0]
  defaultCharge = taxi_info[1]
  additionDistance = taxi_info[2]
  additionCharge = taxi_info[3]
  additionResult = 0
  chargeResult = 0
    if X >= defaultDistance
      remainDistance = X - defaultDistance
      additionResult = taxi_info[3]*(remainDistance / taxi_info[2] + 1)
    end
    chargeResult = defaultCharge + additionResult
    if minCharge == 0
        minCharge = chargeResult
    end
    if minCharge > chargeResult
        minCharge = chargeResult
    end
    if maxCharge == 0
        maxCharge = chargeResult
    end
    if maxCharge < chargeResult
        maxCharge = chargeResult
    end
end
puts (minCharge.to_s + ' ' + maxCharge.to_s)
