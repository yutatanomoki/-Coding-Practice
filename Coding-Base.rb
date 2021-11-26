#空配列作成
numbers = Array.new(10)
p numbers

#mapで二次元配列作成
numbers3 = Array.new(4).map{Array.new(3, 1)}
p numbers3

# ドットで文字を出力しよう

letter_A = [[0,0,1,1,0,0],
            [0,1,0,0,1,0],
            [1,0,0,0,0,1],
            [1,1,1,1,1,1],
            [1,0,0,0,0,1],
            [1,0,0,0,0,1]]

# ここに、ドットを表示するコードを記述する
letter_A.each do |line|
    # p line
    line.each do |dot|
        # print dot
        if dot == 1
            print "@"
        else
            print " "
        end
    end
    puts ""
end

# ドットで文字を出力しよう

letters = [[[0,0,1,1,0,0],
             [0,1,0,0,1,0],
             [1,0,0,0,0,1],
             [1,1,1,1,1,1],
             [1,0,0,0,0,1],
             [1,0,0,0,0,1]],
            [[1,1,1,1,1,0],
             [1,0,0,0,0,1],
             [1,1,1,1,1,0],
             [1,0,0,0,0,1],
             [1,0,0,0,0,1],
             [1,1,1,1,1,0]],
            [[0,1,1,1,1,0],
             [1,0,0,0,0,1],
             [1,0,0,0,0,0],
             [1,0,0,0,0,0],
             [1,0,0,0,0,1],
             [0,1,1,1,1,0]]]

# ここに、ドットを表示するコードを記述する
letters.each do |letter|
    letter.each do |line|
        line.each do |char|
            if char == 1
                print "@"
            else
                print " "
            end
        end
        puts ""
    end
    puts ""
end

# 複数行テキストに行番号を追加する
text = ["吾輩は猫である",
        "名前はまだ無い",
        "どこで生まれたか",
        "とんと見当がつかぬ"]
#ここに、行番号を表示するコードを記述する
text.each_with_index do |line ,i|
    print "#{i + 1}:"
	print line
	puts ""
end

# 初期の地図
landmap = Array.new(10).map{Array.new(19,"森")}
landmap[2][9] = "城"
landmap[0][0] = "町"
landmap[0][18] = "町"
landmap[9][0] = "町"
landmap[9][18] = "町"

# 地図に道を作る
landmap.each_with_index do |line, i|
    line.each_with_index do |area, j|
        # ここから足りないところを入力してください
        if (i % 9 == 0 || j % 9 == 0) && area == "森"
            print "＋"
        else
            print area
        end
    end
    puts ""
end

# 標準入力から、2次元配列を読み込む
# 標準入力のデータ
# 0,0,1,1,0,0
# 0,1,0,0,1,0
# 1,0,0,0,0,1
# 1,1,1,1,1,1
# 1,0,0,0,0,1
# 1,0,0,0,0,1

letter_A = []
while line = gets
	line.chomp!
    # ここに、読み込んだデータを配列に追加するコードを記述する
    letter_A.push(line.split(","))
end
p letter_A

# 2次元配列で画像を表示する

# 画像用配列
players_img = [
    "https://paiza-webapp.s3.amazonaws.com/files/learning/rpg/Empty.png",
    "https://paiza-webapp.s3.amazonaws.com/files/learning/rpg/Dragon.png",
    "https://paiza-webapp.s3.amazonaws.com/files/learning/rpg/Crystal.png",
    "https://paiza-webapp.s3.amazonaws.com/files/learning/rpg/Hero.png",
    "https://paiza-webapp.s3.amazonaws.com/files/learning/rpg/Heroine.png"]

# 配置データを読み込み
team = []
while line = gets
    line.chomp!
    team.push(line.split(","))
end

# ここから先を入力してください
print "<table>"
team.each do |line|
    print "<tr>"
    line.each do |person|
        print "<td><img src='#{players_img[person.to_i]}'></td>"
    end
    puts "</tr>"
end

# ハッシュの整列
#ハッシュの値でソートして整列させる
items = {"イージスシールド" => 40, "ウィンドスピア" =>12, "アースブレイカー" =>99}
p items.sort_by {|k, v| v }.to_h

#バズの検出(未完成)
N, M, T, K= gets.split.map(&:to_i)
sum = 0
data = []

(1..M).each do |i|
    data.push(gets.split.map(&:to_i))
    sum = data.transpose.map { |n| n.inject(:+) }
    sum.each do |result|
        if result > K
            print "yes "
            puts i
            break
        end
    end
end
