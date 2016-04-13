# 4.3 Mandatory Pairing: Data Types, IRB, and User Input

puts "Hamster Name:"
hamster_name = gets.chomp

puts "Volume Level:"
volume_level = gets.chomp
volume_level = volume_level.to_i

puts "Fur Color:"
fur_color = gets.chomp

puts "Good Candidate? (y/n)"
good_candidate = gets.chomp

puts "Estimated Age:"
estimated_age = gets.chomp
estimated_age = estimated_age.to_i
p estimated_age

puts "\nThis hamster's name is #{hamster_name}."

if volume_level >= 5
	puts "This hamster is loud and has a volume of #{volume_level}."
else
	puts "This hamster is quiet and has a volume of #{volume_level}."
end

puts "This hamster has a #{fur_color} fur color."

if good_candidate == "y"
	puts "This hamster is a great hamster!"
else
	puts "This hamster is a problem hamster!"
end

if estimated_age.zero?
	puts "This hamster's age is undetermined."
else
	puts "This hamster is #{estimated_age} years old."
end