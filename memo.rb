require "csv"

 puts "次の中から選択し、番号を入力してください。　1(新規でメモを作成) 2(既存のメモを編集する)"

 memo_number = gets.to_i

 if memo_number == 1
   puts "新規でメモを作成します。"

   puts "拡張子を除いたファイル名を入力してください。"
   file_name = gets.chomp

   puts "「#{file_name}.csv」という名前のファイルを作成しました。"
   puts "メモしたい内容を入力してください。"
   puts "完了したら、Ctrl + D ボタンを押します。"

   memo_contents = $stdin.read

   file = File.open("#{file_name}.csv","w") do |test|
     test << "#{memo_contents}"

  end
elsif memo_number == 2
  puts "既存のメモを編集します"

  puts "拡張子を除いたファイル名を入力してください。"
  file_name = gets.chomp

  puts "「#{file_name}.csv」という名前のファイルを編集します。"
  puts "追加したい内容を入力してください。"
  puts "完了したら、Ctrl + D ボタンを押します。"

  memo_contents = $stdin.read

  file = File.open("#{file_name}.csv","a") do |test|
    test << "#{memo_contents}"
end

end
