=begin
# Release 1: Interview with the Vampire

puts "What is your name?"
name = gets.chomp
p name

puts "How old are you?"
age = gets.chomp
age = age.to_i
p age

puts "What year were you born?"
year_born = gets.chomp
year_born = year_born.to_i
p year_born

puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
garlic_bread = gets.chomp
p garlic_bread

puts "Would you like to enroll in the company's health insurance? (y/n)"
health_insurance = gets.chomp
p health_insurance

correct_age = false

if (2016 - year_born == age)
	correct_age = true
elsif (2016 - year_born == (age+1))
	correct_age = true
else
	correct_age = false
end

puts "Employee age is #{correct_age}"

# Release 2: Detection Logic

if (correct_age && (garlic_bread == "y" || health_insurance == "y"))
	puts "Probably not a vampire."
elsif (correct_age == false && (garlic_bread == "n" || health_insurance == "n"))
	puts "Probably a vampire."
elsif (correct_age == false && garlic_bread == "n" && health_insurance == "n")
	puts "Almost certainly a vampire."
elsif (name == "Drake Cula" || name == "Tu Fang")
	puts "Definitely a vampire."
else
	puts "Results inconclusive."
end

# Release 3: Process Multiple Employees

puts "How many employees will be processed?"
number_of_employees = gets.chomp
number_of_employees = number_of_employees.to_i

until number_of_employees == 0
	puts "\nProcessing employee #{number_of_employees}"


# Release 4: Check for Suspicious Allergies

puts "List any allergies one at a time. Type \"done\" when finished."
allergies = gets.chomp

until allergies == "done"
	if allergies == "sunshine"
		puts "Probably a vampire."
		break
	else
		allergies = gets.chomp
	end
end

=end

# Release 5: Plot Twist

puts "How many employees will be processed?"
number_of_employees = gets.chomp
number_of_employees = number_of_employees.to_i

until number_of_employees == 0
	puts "\nProcessing employee #{number_of_employees}"

	puts "What is your name?"
	name = gets.chomp

	puts "How old are you?"
	age = gets.chomp
	age = age.to_i

	puts "What year were you born?"
	year_born = gets.chomp
	year_born = year_born.to_i

	puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
	garlic_bread = gets.chomp

	puts "Would you like to enroll in the company's health insurance? (y/n)"
	health_insurance = gets.chomp

	puts "List any allergies one at a time. Type \"done\" when finished."
	allergies = gets.chomp

	until allergies == "done"
		if allergies == "sunshine"
			puts "Probably a vampire."
			allergies = "done"
		else
			allergies = gets.chomp
		end
	end

	correct_age = false

	if (2016 - year_born == age)
		correct_age = true
	elsif (2016 - year_born == (age+1))
		correct_age = true
	else
		correct_age = false
	end


	if (correct_age && (garlic_bread == "y" || health_insurance == "y"))
		puts "Probably not a vampire."
	elsif (correct_age == false && (garlic_bread == "n" || health_insurance == "n"))
		puts "Probably a vampire."
	elsif (correct_age == false && garlic_bread == "n" && health_insurance == "n")
		puts "Almost certainly a vampire."
	elsif (name == "Drake Cula" || name == "Tu Fang")
		puts "Definitely a vampire."
	else
		puts "Results inconclusive."
	end
	number_of_employees -= 1
end

puts "\nActually, never mind! What do these questions have to do with anything? Let's all be friends."