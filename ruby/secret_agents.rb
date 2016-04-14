# Release 2: Build an Encryption Program

=begin

PSEUDOCODE

Encrypt Method-
Input: String
Output: String
Steps:
1. Define a method with one parameter (string)
2. Declare a increment variable (counter) & set it to 0
3. WHILE counter is less than string.length
4. Take each letter of the string and advance it by one
5. Increment the counter by 1
6. End the loop
7. Return string
7. End the method


Decrypt Method-
Input: String
Output: String
Steps:
1. Define a method with one parameter (string)
2. Declare an alphabet variable assigned to all the letters of the alphabet
3. Set an increment variable (counter) to 0
4. WHILE counter is less than string length
5. Set the each letter in the string to equal the letter before it in the alphabet
6. Increment the counter by 1
7. End the loop
8. Return string
9. End method

=end

def encrypt(string)
	counter = 0
	while counter < string.length
		if string[counter] == "z"
			string[counter] = "a"
		else
			string[counter] = string[counter].next
		end
		counter += 1
	end
	return string
end

def decrypt(string)
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	counter = 0
	while counter < string.length
		letter_num = alphabet.index(string[counter])
		string[counter] = alphabet[letter_num - 1]
		counter += 1
	end
	return string
end


# Release 3: Test Your Program

encrypt("abc") # "bcd"
encrypt("zed") # "afe"
decrypt("bcd") # "abc"
decrypt("afe") # "zed"

# Release 4: Try a Nested Method Call

decrypt(encrypt("swordfish"))

=begin
This nested method call works because it evaluates
the methods closest to the parameter and works its
way out. It is like the mathematics acronym PEMDAS
where the elements within the parentheses are
evaluated first. 'Swordfish' gets encrypted first
before being decrypted.
=end

# Release 5: Add an Interface

=begin
PSEUDOCODE

Input: Two strings (decrypt or encrypt & password)
Output: A String (decrypted or encrypted results)
Steps:
1. Ask user if they would like to encrypt or decrypt
2. Set two encrypt or decrypt variables to false
3. IF either option, change variable to true else not an option
4. Ask user for password
5. Run method on given password
6. Print the results for user
=end

# DRIVER CODE

puts "\nWould you like to encrypt a password or decrypt a password?"
answer = gets.chomp

if (answer == "encrypt" || answer == "decrypt")
	puts "What is the password?"
	password = gets.chomp
	if answer == "encrypt"
		puts "\nYour encrypted password is #{encrypt(password)}!"
	else answer == "decrypt"
		puts "\nYour decrypted password is #{decrypt(password)}!"
	end
else
	puts "\nNot a valid response."
end
