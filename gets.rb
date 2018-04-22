puts 'What is your favorite number?'

favNum = gets.chomp

newFavNum = favNum.to_i + 1

puts 'A way better favorite number for you would be ' + newFavNum.to_s + '.'
