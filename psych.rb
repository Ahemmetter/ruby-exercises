def ask question
	goodAnswer = false
	while (not goodAnswer)
		puts question
		reply = gets.chomp.downcase
		
		if (reply == 'yes' or reply == 'no')
			goodAnswer = true
			if reply == 'yes'
				answer = true
			else
				answer = false
			end
		else
			puts 'Please answer with yes or no'
		end
	end
	
	answer
end

puts 'Hello and thanks for ....'
puts
ask 'Do you like tacos?'
ask 'Do you like burritos?'
wetsBed = ask 'Do you we your bed?'
ask 'Do you like eating blahlbah?'
puts
puts 'End.'
puts wetsBed
