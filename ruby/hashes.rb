# 5.3 Symbols and Hashes

=begin

PSEUDOCODE
Input: Strings
Output: A hash
Steps:
1. Create an empty hash called client
2. Prompt the designer for the client information
3. Store the difference pieces of information in a hash using the hash[key] = gets.chomp
4. Convert the inputs into the appropriate data types
5. Print the hash back out after the designer has finished answering all the questions
6. Ask if the user would like to update a key
7. IF the response is "none", print the latest hash
8. ELSIF go to the desired key and ask for a new value to update the key
9. ELSE puts "Not a valid response."
10. END statement
11. Print the latest version of the hash

=end

client = {}

puts "What is the name of the client?"
client[:name] = gets.chomp

puts "What is the clients age?"
client[:age] = gets.chomp.to_i

puts "How many children does the client have?"
client[:children] = gets.chomp.to_i

puts "What kind of decor theme do you like?"
client[:theme] = gets.chomp

puts "\nThe client form contains the following information:"
p client

puts "\nWould you like to change any information about the client? If so, please indicate the key value, otherwise enter \"none\".\n"
answer = gets.chomp.to_sym

if answer == :none
elsif client.has_key?(answer)
	puts "What is the new value of the key?"
	if client[answer] == (client[:age] || client[:children])
		client[answer] = gets.chomp.to_i
	else
		client[answer] = gets.chomp
	end
else
	puts "Not a valid entry."
end

puts "\nThe final client form contains the following information:"
p client