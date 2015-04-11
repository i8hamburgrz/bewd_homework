puts "Welcome to the leap year program!"

puts "Please enter a starting year..."
start_year = gets.chomp.to_i

puts "please enter a ending year..."
end_year = gets.chomp.to_i

puts "the following are leap years:"

check_times = (end_year - start_year) + 1
current_year = start_year

check_times.times do
	if (current_year % 4) == 0
		if ((current_year % 100 ) != 0)
			puts "#{ current_year }"
		end
	end

	current_year = current_year + 1
end 
