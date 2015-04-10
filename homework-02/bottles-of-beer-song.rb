num_of_beers = 99

(num_of_beers + 1).times do
	if num_of_beers > 0
		puts "#{ num_of_beers } of beer on the wall, #{ num_of_beers} bottles of beer."
	else
		puts "No more bottles of beer on the wall, no more bottles of beer."
	end
	
	if num_of_beers > 1
		puts "Take one down and pass it around, #{ num_of_beers - 1 } bottles of beer on the wall"
	elsif num_of_beers == 1
		puts "Take one down and pass it around, no more bottles of beer on the wall."
	else
		puts "Go to the store and buy some more, 99 bottles of beer on the wall."
	end

	num_of_beers = num_of_beers - 1
end 