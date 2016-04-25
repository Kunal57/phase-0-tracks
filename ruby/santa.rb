# 6.3 Attributes

class Santa

	def initialize (gender, ethnicity)
		puts "Initializing Santa Instance"
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

end

# DRIVER CODE

santas = []

santas << Santa.new("agender","black")
santas << Santa.new("femaile", "Latino")
santas << Santa.new("N/A", "N/A")

p santas

