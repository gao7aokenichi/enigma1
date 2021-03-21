
p "パスワードを入力してください（aからzまでの小文字）"
str = gets.chomp 
p "暗号化前: #{str}"


str = str.sub("a","c")
str = str.sub("a","d")
str = str.sub("a","e")
str = str.sub("a","f")

   
  p "暗号化後: #{str}"