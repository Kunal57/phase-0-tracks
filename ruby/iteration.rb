# 5.4 Mandatory Pairing: Iteration

# Write Your Own Method That Takes a Block
=begin

PSEUDOCODE
Input: Integer
Output: String
Steps:
1. Define method called Launch w/ parameter of seconds
2. Set counter to equal seconds
3. WHILE counter >= 0
4. IF counter > 0
5. puts "#{counter}"
6. Increment counter += 1
7. ELSE puts "LIFTOFF of the FALCON 9"
8. END IF statement
9. END method

=end

def launch(seconds)
	name = "Elon Musk"
	company = "SpaceX"
	counter = seconds
	while counter >= 0
		if counter > 0
			puts "T - #{counter} seconds"
			counter -= 1
		else 
			puts "LIFTOFF of the FALCON 9"
			counter -= 1
		end
	end
	yield(name, company)
end

puts "How many seconds until launch?"
seconds = gets.chomp.to_i

launch(seconds) do |name, company|
	puts "It's a great day for #{name} & #{company}!"
end


# Release 1: Use each, map, and map!

# Array
ceos = ["Elon Musk","Steve Jobs","Larry Page","Mark Zuckerberg","Jack Dorsey"]

# Each
p ceos

ceos.each do |person|
	puts "#{person} is the CEO of a very large tech company."
end

p ceos

# Map & Map!

ceos1 = ceos.map do |person|
	person.upcase
end

p ceos1

ceos.map! do |person|
	person.upcase
end

p ceos


# Hash

ceo = {
	SpaceX: "Elon Musk",
	Apple: "Steve Jobs",
	Google: "Larry Page",
	Facebook: "Mark Zuckerberg",
	Twitter: "Jack Dorsey", 
}

# Each
p ceo

ceo.each do |company, ceo|
	puts "#{ceo} is the CEO of #{company}."
end

p ceo


# Release 2: Use the Documentation

# Array

numbers = [1,2,3,4,5,6,7,8,9,10]

# 1

numbers.delete_if do |x|
	x < 5
end

p numbers

# 2

numbers = [1,2,3,4,5,6,7,8,9,10]

numbers.keep_if do |x|
	x < 5
end

p numbers

# 3

numbers = [1,2,3,4,5,6,7,8,9,10]

num = numbers.take_while do |x|
	x < 5
end
p num

# 4

numbers = [1,2,3,4,5,6,7,8,9,10]

num = numbers.drop_while do |x|
	x < 5
end
p num


# Hash

numbers = {
	one: 1,
	two: 2,
	three: 3,
	four: 4,
	five: 5,
}

# 1

numbers.delete_if do |word, num|
	num < 3
end

p numbers

# 2

numbers = {
	one: 1,
	two: 2,
	three: 3,
	four: 4,
	five: 5,
}

numbers.keep_if do |word, num|
	num < 3
end

p numbers

# 3

numbers = {
	one: 1,
	two: 2,
	three: 3,
	four: 4,
	five: 5,
}

numbers.reject! do |word, num|
	num < 3
end

p numbers

# 4