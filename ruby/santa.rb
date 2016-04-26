# 6.3 Attributes

class Santa
	attr_reader :ethnicity
	attr_accessor :gender, :age

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

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer_name)
		mad_at = []
		mad_at << @reindeer_ranking[@reindeer_ranking.index(reindeer_name)]
		@reindeer_ranking.delete(reindeer_name)
		@reindeer_ranking << mad_at[0]
	end

# Setter Methods
	# def gender=(new_gender)
	# 	@gender = new_gender
	# end

# Getter Methods
	# def age
	# 	@age
	# end

	# def ethnicity
	# 	@ethnicity
	# end

end

# DRIVER CODE

# santas = []

# santas << Santa.new("male","Indian")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("male", "South Arfican")
# santas << Santa.new("female", "British")

# santas.each do |santa|
# 	santa.celebrate_birthday
# end

# santas.each do |santa|
# 	santa.get_mad_at("Rudolph")
# end

# santas.each do |santa|
# 	santa.gender=("male")
# end

# santas.each do |santa|
# 	puts santa.age
# 	puts santa.ethnicity
# end


# SantaCon Simulator

=begin

PSEUDOCODE
Input: Array of Genders & Array of Ethnicities
Output: Printed attributes of each Santa
Steps: 
1. 

=end

genders = ["Agender","Androgyne","Androgynous","Bigender","Cis","Cisgender","Cis Female","Cis Male","Cis Man","Cis Women","Cisgender Female","Cigender Male","Cisgender Man","Cisgender Women","Female to Male","FTM","Gender Fluid","Gender Nonconforming","Gender Questioning","Gender Variant","Genderqueer","Intersex","Male to Female","MTF","Neither","Neutrois","Non-binary","Other","Pangender","Trans","Trans Female","Trans Male","Trans Person","Transfeminine","Transgender","Two-Spirit"]

ethnicities = ["Han Chinese","Arabs","Bengalis","Punjabis","Italians","Japanese","Russians","French","Javanese","Biharis","English","German","Telugu","Marathi","Vietnamese","Korean","Tamils","Irish","Turk","Persians","Gujarati","Thai","Spaniards","Portuguese","Sindhis","Sudanese","Ukrainian","Dutch","Kurds","Scottish","Greeks","Jews","Mongol","Danes","Finns","Welsh","Icelanders"]

random_number = Random.new

puts "How many Santas would you like to enter into the simulation?"
num_of_santas = gets.chomp

counter = 1
until counter == (num_of_santas.to_i + 1)
	ethnicities.shuffle
	rand_gender = genders[random_number.rand(genders.length)]
	rand_ethnicities = ethnicities[random_number.rand(ethnicities.length)]
	santa = Santa.new(rand_gender, rand_ethnicities)
	santa.age = random_number.rand(141)
	puts "\nThis is santa #{counter}."
	puts "This santas gender is #{santa.gender}."
	puts "This santas ethnicity is #{santa.ethnicity}."
	puts "This santa is #{santa.age} years old."
	counter += 1
end



