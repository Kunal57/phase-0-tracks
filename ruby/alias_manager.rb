# 5.6 Solo Challenge: Manipulating Strings with Iteration

# Attempt a Tricky Algorithm

=begin

PSEUDOCODE
Input: A String
Output: A String
Steps:
1. 

=end

# Ask User for Real Name
puts "What is your real name?"
real_name = gets.chomp.downcase

# Split the name into first and last, put into an array, and reverse the array so that the last name is first and the first name is last, join the two names back into a string, and split them back up into an array of individual letters
name_array = real_name.split(" ").reverse.join(" ").split("")

# Declare the vowels and consonants variables for use in the iteration to retrieve the next letter
vowels = "aeiou"
consonants = "bcdfghjklmnpqrstvwxyz"

# Iterate through each letter in the array. If the letter is a vowel, the index of the vowel will be found in the vowels variable and x will become the next index letter indicated in the vowels variable. If the letter is a consonant, the index of the consonant will be found in the consonant variable and x will become the next consonant indicated in the consonant variable.  
name_array.map! do |x|
	if x.start_with?("a","e","i","o")
		x = vowels[vowels.index(x).next]
	elsif x == "u"
		x = "a"
	elsif x == "z"
		x = "b"
	elsif x == " "
		x = " "
	else
		x = consonants[consonants.index(x).next]
	end
end

# Takes the array of letters and combines them into one string, then splits the one string into an array of two words.
alias_name = name_array.join("").split(" ")

# Selects the first and second words in the array and capitalizes each word.
alias_name[0].capitalize!
alias_name[1].capitalize!

# Joins together the capitalized words in the array into one full string.
alias_name = alias_name.join(" ")

puts "Your spy name is #{alias_name}! Best of luck on your journey ahead!"
