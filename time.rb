puts 'In what year were you born?'
birthYear = gets.chomp.to_i
puts 'In what month were you born?'
birthMonth = gets.chomp.to_i
puts 'On what day were you born?'
birthDay = gets.chomp.to_i

toDay = Time.new
birth = Time.mktime(birthYear, birthMonth, birthDay)
seconds = toDay - birth
age = seconds.to_i/60/60/24/365

puts 'You are ' + age.to_s + ' years old.'
