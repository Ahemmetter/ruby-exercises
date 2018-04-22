puts 'Starting year?'

startYear = gets.chomp.to_i

puts 'Ending Year?'

endYear = gets.chomp.to_i

diffYear = endYear - startYear

while diffYear >= 0

	puts diffYear + startYear
	diffYear - 4

end
