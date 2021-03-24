puts "a~zヲニュウリョクシテクダサイ"
keyword = gets.chomp 

puts "デコード: #{keyword}"
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

puts "デコードゴ: #{rotor1.join}"

