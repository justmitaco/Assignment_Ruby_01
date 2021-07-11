require "csv"

puts "1(新規でメモを作成) 2(既存のメモを編集)"
memo_type = gets.to_i

if memo_type == 1
    puts "拡張子を除いたファイル名を入力してください"
    file_name = gets.chomp
    puts "メモを入力"
    puts "入力終了後、Ctrl + D で保存"
    memo = $stdin.read
     CSV.open("#{file_name}.csv", "w") do |csv|
         csv.puts ["#{memo}"]
 end

else 
    puts "編集するファイル名の選択？"
    file_name = gets.chomp
    puts "編集内容を入力してください"
    puts "入力終了後、Ctrl + D で保存"
    memo = $stdin.read
    CSV.open("#{file_name}.csv", "a") do |csv|
        csv << ["#{memo}"]
   
end
end
