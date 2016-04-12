# Release 1: Gather Data on Hamsters of Unknown Origin

def hamster_info
	puts "Hamster Name:"
	p hamster_name = gets.chomp

	puts "Volume Level:"
	p volume_level = gets.chomp

	puts "Fur Color:"
	p fur_color = gets.chomp

	puts "Good Candidate?"
	p good_candidate = gets.chomp

	puts "Estimated Age:"
	p estimated_age = gets.chomp
end

# Release 2: Process String Input

def hamster_info
	puts "Hamster Name:"
	p hamster_name = gets.chomp

	puts "Volume Level:"
	volume_level = gets.chomp
	p volume_level = volume_level.to_i

	puts "Fur Color:"
	p fur_color = gets.chomp

	puts "Good Candidate? (y/n)"
	good_candidate = gets.chomp
		if good_candidate == "y"
			p true
		else
			p false
		end

	puts "Estimated Age:"
	estimated_age = gets.chomp
		if estimated_age.empty?
			p nil
		else
			p estimated_age.to_i
		end
end

# Release 3: Print to the Console

def hamster_info
	puts "Hamster Name:"
	hamster_name = gets.chomp
	puts "This hamster's name is #{hamster_name}"

	puts "Volume Level:"
	volume_level = gets.chomp
	volume_level = volume_level.to_i
		if volume_level >= 5
			puts "This hamster is loud and has a volume of #{volume_level}"
		else
			puts "This hamster is quiet and has a volume of #{volume_level}"
		end

	puts "Fur Color:"
	fur_color = gets.chomp
	puts "This hamster has a #{fur_color} fur color"

	puts "Good Candidate? (y/n)"
	good_candidate = gets.chomp
		if good_candidate == "y"
			puts "This hamster is a great hamster!"
		else
			puts "This hamster is a problem hamster!"
		end

	puts "Estimated Age:"
	estimated_age = gets.chomp
		if estimated_age.empty?
			p nil
			puts "This hamster's age is undetermined"
		else
			p estimated_age.to_i
			puts "This hamster is #{estimated_age} years old."
		end
end

hamster_info()