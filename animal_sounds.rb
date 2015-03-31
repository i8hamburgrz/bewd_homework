puts "What is the name of animal that makes a sound?"

animal_name =  gets.chomp.downcase

puts "What is the name of the sound the animal makes?"

animal_sound = gets.chomp.downcase + ' '

puts "How many times was the sound made?"

sounds_amount = gets.chomp.to_i

puts "The " + animal_name + " goes " + animal_sound * sounds_amount + "."