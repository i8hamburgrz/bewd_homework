puts "Welcome to the deaf grandma program!"

keep_talking = true

while keep_talking
	puts "Please type a message to say to grandma:"

	my_message = gets.chomp
	my_message_upcase = my_message.upcase
	ran_date = rand(1930..1950)


	if my_message == my_message_upcase

		if my_message == "BYE"
			keep_talking = false
		else
			puts "NO, NOT SINCE #{ ran_date }!"
			keep_talking = true
		end

	else
		puts "HUH?!  SPEAK UP, SONNY!"
		keep_talking = true
	end
end

puts "end program"
