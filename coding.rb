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

#タクシー料金計算
#最安値、最高値算出
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

#爆弾ゲーム
input_line = gets.to_i
count = 0
input_line.times do
  array = gets.chomp.split('')
  # '#'が含まれていたらその行全てを'#'に置換
  if array.include?("#")
      array.map!{|x| x=="." ? "#" : x}
  end
  count += array.count("#")
end
puts count


#カード並べ
#4つの数字から二つを並べ、二桁の数字同士を足した最大値を求める
arr = gets.split(' ').map(&:to_i)
#配列を降順に
arr.sort!.reverse!
numResult = arr[0]*10 + arr[2] + arr[1]*10 + arr[3]

puts numResult

#給与計算プログラム
hourly_wage = gets.split(' ').map(&:to_i)
N = gets.to_i
times = []
while time = gets
    times << time.chomp.split(' ').map(&:to_i)
end
sum = 0
(0..N-1).each do |i|
    (times[i][0]+1..times[i][1]).each do |t|

        if t<=9
            sum += hourly_wage[2]
        elsif t<=17
            sum+= hourly_wage[0]
        elsif t<=22
            sum+= hourly_wage[1]
        else
            sum+= hourly_wage[2]
        end
    end
end
puts sum

#暴風域問題
storm_info = gets.split(' ').map(&:to_i)
N = gets.to_i

N.times do
  user = gets.chomp.split(" ").map(&:to_i)
  if storm_info[2]**2 <= (user[0] - storm_info[0])**2 + (user[1] - storm_info[1])**2 && storm_info[3]**2 >= (user[0] - storm_info[0])**2 + (user[1] - storm_info[1])**2
      puts 'yes'
  else
      puts 'no'
  end
end

#多重パス回し
N = gets.to_i
balls = []
N.times do
  balls << gets.to_i
end

result_user_ball = 0
result_target_ball = 0

M = gets.to_i
M.times do
  actions = gets.chomp.split(" ").map(&:to_i)
  user_number = actions[0]
  target_number = actions[1]
  number = actions[2]
  user_ball = balls[user_number - 1]
  target_ball = balls[target_number - 1]
  if balls[user_number - 1] - number > 0
      result_user_ball = balls[user_number - 1] - number
      result_target_ball = balls[target_number - 1] + number
      balls[user_number - 1] =  result_user_ball
      balls[target_number - 1] =  result_target_ball
  else
      result_user_ball = 0
      result_target_ball = balls[target_number - 1] + balls[user_number - 1]
      balls[user_number - 1] =  result_user_ball
      balls[target_number - 1] =  result_target_ball
  end
end

puts balls

#最適な人参

#標準入力から基準値を取得
line = gets.split(' ').map(&:to_i)
N = line[0]
S = line[1]
p = line[2]

#初期値代入
result = 0
max_weight = 0

#比較値標準入力をループで取得
(1..N).each do |i|
    carrot_data = gets.split(' ').map(&:to_i)
    weight = carrot_data[0]
    suger_data = carrot_data[1]
    if suger_data >= S - p && suger_data <= S + p
        if weight > max_weight 
            result = i
            max_weight = weight
        end
    end
end

if result == 0
    result = "not found"
end

puts result

#5以上の数字の足し合わせ
loop = gets.chomp.to_i
ans = 0

(1..loop).each do |i|
  num = gets.chomp.to_i

  ans = ans + num if num >= 5
end

puts ans

#C034:先生の宿題
a,op,b,equal,c = gets.split(' ').map(&:to_s)
if op == "+"
if c =="x"
    result = (a.to_i + b.to_i)
    puts result
end

if b == "x"
    result = (c.to_i - a.to_i)
    puts result
end
if a == "x"
    result = (c.to_i - b.to_i)
    puts result
end

end

if op == "-"
if c =="x"
    result = (a.to_i - b.to_i)
    puts result
end

if b == "x"
    result = (a.to_i - c.to_i)
    puts result
end
if a == "x"
    result = (b.to_i + c.to_i)
    puts result
end

end
    
# 自分の得意な言語で
# Let's チャレンジ！！
str = gets.chomp.split(" ").map(&:to_i)
N = str[0]
M = str[1]
multiple = []
string = []
M.times do 
    arr = gets.chomp.split(" ")
    multiple << arr[0].to_i
    string << arr[1]
end

hash = multiple.zip(string).to_h
result = []
(1..N).each do |i|
    if hash.key?(i)
        i.times do |h|
            puts hash
            hash.each do |k, v|
             
                result << hash[k] if h % k == 0
                
            end
        end
        
    else
        puts i
    end
end

#文字列重複カウント

pattern = gets.chomp
string = gets.chomp

result = 0
(0..(string.size - pattern.size)).each do |i|
  substring = string.slice(i, pattern.size)

  result += 1 if substring == pattern
end

puts result


ハッシュに入れ込んで数字の順番に文字列出力

num = gets.chomp.to_i
array = {}

(1..num).each do
  line = gets.chomp.split(' ')
  #ハッシュを作成 入力値例　A 3
  array[line[1].to_i] = line[0]
  puts array
end
#照準にソート
array = array.sort
#valueの出力
array.each { |ele| puts ele[1] }

num = gets.chomp.to_i
array = {}

(1..num).each do
  values = gets.split(' ')
  string = values[0]
  points = values[1].to_i

  if array[string]
    current = array[string]
    array[string] = current + points
  else
    array[string] = points
  end
end

array = array.sort_by { |_string, points| -points }

array.each { |string, points| puts "#{string} #{points}" }


# 観覧車

str = gets.chomp.split(" ").map(&:to_i)
N = str[0]
M = str[1]
limits = []
peoples = []
results = Array.new(N, 0)

N.times do
    limits << gets.chomp.to_i
end

M.times do
    peoples << gets.chomp.to_i
end

peoples.each do |people|
    index = 0
    is_break = false
    loop do
        limits.each_with_index do |limit, i|
            next if i <= index
            left = people - limit
            if left >= 0
                results[i] += limit
                people -= limit
            else 
                results[i] += people
                index = i + 1
                is_break = true
                break
            end
        end
        break if is_break
    end
end

puts results

