# Release 1: Interview with the Vampire
# Release 2: Detection Logic
# Release 3: Process Multiple Employees
# Release 4: Check for Suspicious Allergies
# Release 5: Plot Twist

def calc_age(age, year_born)
	if (2016 - year_born) == age
		return true
	elsif (2016 - year_born) == (age + 1)
		return true
	else
		return false
	end
end 

puts "How many employees will be processed?"
number_of_employees = gets.chomp.to_i

until number_of_employees == 0
	puts "\nProcessing employee #{number_of_employees}"

	puts "What is your name?"
	name = gets.chomp

	puts "How old are you?"
	age = gets.chomp.to_i

	puts "What year were you born?"
	year_born = gets.chomp.to_i

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

correct_age = calc_age(age, year_born)

	if (correct_age && (garlic_bread == "y" || health_insurance == "y"))
		puts "Probably not a vampire."
	elsif (correct_age == false && garlic_bread == "n" && health_insurance == "n")
		puts "Almost certainly a vampire."
	elsif (correct_age == false && (garlic_bread == "n" || health_insurance == "n"))
		puts "Probably a vampire."
	elsif (name == "Drake Cula" || name == "Tu Fang")
		puts "Definitely a vampire."
	else
		puts "Results inconclusive."
	end
	
	number_of_employees -= 1

end

puts "\nActually, never mind! What do these questions have to do with anything? Let's all be friends."