puts 'Write a few words.'
myArray = []
wordGet = gets.chomp

while wordGet != '' and myArray.last != ''
	myArray.push wordGet
end

puts myArray.sort
