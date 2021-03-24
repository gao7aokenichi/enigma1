puts "1: エンコード 2: デコード"
input = gets.chomp.to_i
if input == 1
  puts "a~zヲニュウリョクシテクダサイ"
  keyword = gets.chomp
puts "インプット: #{keyword}"

# 暗号化した文字列を格納するための配列を定義
rotor1 = []
 # keyword.charsで入力された文字列を１文字ずつ分解して配列へ
 # chars = 文字列の各文字を文字列の配列で返します。
 count = 1 # 一回の処理ごとに変換する文字を一字ずつずらす。
keyword.chars.each do |char|
 #「a ~ z」の文字コードでの範囲は「97 ~ 122」
  num = char.ord - 97  # ordで文字を文字コードに変換・-97でaなら0に
  num2 = (num - count) % 26 # -countでシフトさせる分の数値をひき、%26することで計算結果は0~25になる。
  num3 = num2 + 97 # 97を再び足すことでnum3を文字コード+3の状態にする。
  rotor1 << num3.chr # 文字コードを文字列へ戻し、配列codeに入れていく
                # chrで文字コードを文字に変換
  count += 1 # 一回の処理ごとに変換する文字を一字ずつずらす。
  if count % 26 == 0 # 26回に一回ごとに変換する文字を一字ずつずらして出力する。
    count += 1
  elsif count % (26 * 26) == 0 # 676回に一回ごとに変換する文字を一字ずつずらして出力する。
    count += 1
  end
end

# 配列codeに入った文字列を全て連結させて出力
puts "アンゴウ: #{rotor1.join}"

else input == 2
puts "a~zヲニュウリョクシテクダサイ"
keyword = gets.chomp 

puts "アンゴウ: #{keyword}"
rotor1 = []
 count = -1 
keyword.chars.each do |char|
  num = char.ord - 97  
  num2 = (num - count) % 26 
  num3 = num2 + 97 
  rotor1 << num3.chr 
  count -= 1 
  if count % 26 == 0 
    count -= 1
  elsif count % (26 * 26) == 0 
    count -= 1
  end
end
puts "カイドク: #{rotor1.join}"
end


