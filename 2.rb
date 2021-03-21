# シーザー暗号を変数に代入する。
caesar_cipher = "khoorzruog"

# splitメソッドで上記変数の文字列を分割する。
code = caesar_cipher.split("") # => ["k", "h", "o", "o", "r", "z", "r", "u", "o", "g"]

# 新たに配列を作成する。
array = []

# 分割された文字がordメソッドで文字コードに変換され、３文字ずらす（-3）ことで元のコードの文字コードに戻す。chrメソッドでその文字コードを文字に戻す。
code.each do |i|
  array << ( i.ord - 3 ).chr
end # 出力結果 ["h", "e", "l", "l", "o", "w", "o", "r", "l", "d"]

p array.join # 出力結果 "helloworld"