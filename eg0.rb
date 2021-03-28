puts "1: エンコード 2: デコード"
input = gets.chomp.to_i
if input == 1
  puts "a~zヲニュウリョクシテクダサイ"
  str = gets.chomp
  puts "テキスト: #{str}"
  # shuffleメソッドを使ってランダム文字列(乱数)を生成し、trメソッドで変換する。
  str = str.tr("abcdefghijklmnopqrstuvwxyz","jphnzvqcbudiwxerylkagsofmt")
  
  # 暗号化した文字列を格納するための配列を定義
  rotor = []
  count = 0 # 一回の処理ごとに変換する文字を1字ずつずらす。
  # str.charsで入力された文字列を１文字ずつ分解して配列へ
  str.chars.each do |char|   # chars = 文字列の各文字を配列で返します。
                         #「a ~ z」の文字コードでの範囲は「97 ~ 122」
    num = char.ord - 97  # ordで文字を文字コードに変換・-97でaなら0に
    num2 = (num - count) % 26 # -countでシフトさせる分の数値をひき、%26することで計算結果は0~25になる。
    num3 = num2 + 97 # 97を再び足すことでnum3を文字コード -countの状態にする。
    rotor << num3.chr # 文字コードを文字列へ戻し、配列codeに入れていく(<<で要素を追加する)。chrで文字コードを文字に変換している
    # rotor3
    if count % (26 * 26) == 0 && count > 0 # 676回に一回ごとに変換する文字を1字ずつずらして出力する。
      count += 13
      # rotor2
    elsif count % 26 == 0 && count > 0 # 26回に一回ごとに変換する文字を1字ずつずらして出力する。
      count += 13
    else
      # rotor1
      count += 1 # 一回の処理ごとに変換する文字を1字ずつずらす。
    end
  end
  # 配列codeに入った文字列を全て連結させて出力
  puts "アンゴウ: #{rotor.join}"

elsif input == 2
  puts "a~zヲニュウリョクシテクダサイ"
  str = gets.chomp 
  puts "アンゴウ: #{str}"
  rotor = []
  # 式の一部を変えると暗号が解読される。
  count = 0
  str.chars.each do |char|
    num = char.ord - 97
    num2 = (num - count) % 26
    num3 = num2 + 97
    rotor << num3.chr
    # rotor3
    if count % (26 * 26) == 0 && count < 0
      count -= 13
       # rotor2
    elsif count % 26 == 0 && count < 0
      count -= 13
    else
      # rotor1
      count -= 1 
    end
  end
  rotor = rotor.join
  rotor = rotor.tr("jphnzvqcbudiwxerylkagsofmt","abcdefghijklmnopqrstuvwxyz")
  puts "カイドク: #{rotor}"
  
else puts "1カ2ヲニュウリョクシテクダサイ!"
end
