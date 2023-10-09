goo = 'グー'
choki = 'チョキ'
par = 'パー'
line = '-----------------'
shortLine = ' -----'

count = 1
match = 0
yourWin = 0
comWin = 0

puts "じゃんけん3本先取"

while match == 0 do

puts shortLine
puts "|#{count}戦目|"
puts shortLine
puts "最初はグー！じゃんけんポン！"
puts "何を出しますか？"
puts "[0]#{goo}　[1]#{choki}　[2]#{par}"

num = gets.to_i
computer = rand(3)

if num == computer
  if num == 0
    puts "あなたの手は#{goo}です。"
    puts "COMの手は#{goo}です。"
  elsif num == 1
    puts "あなたの手は#{choki}です。"
    puts "COMの手は#{choki}です。"
  elsif num == 2
    puts "あなたの手は#{par}です。"
    puts "COMの手は#{par}です。"
  end
  puts line
  puts "あいこ"
  puts line
  count += 1
  
elsif num == 0 && computer == 1 ||
  num == 1 && computer == 2 ||
  num == 2 && computer == 0
  if num == 0
    puts "あなたの手は#{goo}です。"
    puts "COMの手は#{choki}です。"
  elsif num == 1
    puts "あなたの手は#{choki}です。"
    puts "COMの手は#{par}です。"
  elsif num == 2
    puts "あなたの手は#{par}です。"
    puts "COMの手は#{goo}です。"
  end
  puts line
  puts "勝ち"
  puts line
  yourWin += 1
  count += 1
  
elsif num == 1 && computer == 0 ||
  num == 2 && computer == 1 ||
  num == 0 && computer == 2
  if num == 0
    puts "あなたの手は#{goo}です。"
    puts "COMの手は#{par}です。"
  elsif num == 1
    puts "あなたの手は#{choki}です。"
    puts "COMの手は#{goo}です。"
  elsif num == 2
    puts "あなたの手は#{par}です。"
    puts "COMの手は#{choki}です。"
  end
  puts line
  puts "負け"
  puts line
  comWin += 1
  count += 1
  
else
  puts "無効な数字です"
end
  puts "あなた:#{yourWin}勝 COM:#{comWin}勝"
  puts line
  if yourWin == 3
    puts " "
    puts "あなたの勝ち!"
    break
  elsif comWin == 3
    puts ""
    puts "COMの勝ち!"
    break
  end
  puts "　"
  puts "　"
end