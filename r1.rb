puts "パスワードを入力してください（aからzまでの小文字）"
keyword = gets.chomp # chomp = 改行を防ぐ。

puts "暗号化前: #{keyword}"
# 暗号化した文字列を格納するための配列を定義
rotor1 = []
 # keyword.charsで入力された文字列を１文字ずつ分解して配列へ
 # chars = 文字列の各文字を文字列の配列で返します。
 count = 1 # 一回の処理ごとに変換する文字を一字ずつずらす。
 keyword.chars.each do |char|
 #「a ~ z」の文字コードでの範囲は「97 ~ 122」
  num = char.ord - 97  # ordで文字を文字コードに変換・-97でaなら0に
  num2 = (num - count) % 26 # -3でシフトさせる分の数値をひき、%26することで計算結果は0~25になる。
  num3 = num2 + 97 # 97を再び足すことでnum3を文字コード+3の状態にする。
  rotor1 << num3.chr # 文字コードを文字列へ戻し、配列codeに入れていく
                # chrで文字コードを文字に変換
  count += 1 # 一回の処理ごとに変換する文字を一字ずつずらす。
end 
# 配列codeに入った文字列を全て連結させて出力
puts "暗号化後: #{rotor1.join}"

