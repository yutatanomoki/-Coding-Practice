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
