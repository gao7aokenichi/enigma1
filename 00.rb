count = 0
100.times do #|count|
if count % 676 == 0 && count > 0
  count += 1
elsif count % 26 == 0 && count > 0
  count += 1
else
  count += 0
end
count += 1
puts count
end