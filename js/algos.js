// 7.3 Solo Challenge: Algorithm Practice

// Release 0: Find the Longest Word

/**
PSEUDOCODE

Input: Array of Words/Phrases.
Output: A String (The longest string).
Steps:
1. Create a function called 'Longest_Word' that takes an array of words as a paramter.
2. Set a variable called 'Longest_Word' equal to a empty string.
3. Loop through the array. If the current string is longer than the 'Longest_Word' variable, have 'Longest_Word' equal to that word. If it isn't, move on.
4. return the 'Longest_Word' variable at the end.
5. End the loop and function.

**/

function longestWord(array_of_words) {
	var longestWord = [" "];
	for (var i = 0; i < array_of_words.length;i++){
		if (array_of_words[i].length > longestWord[0].length) {
			longestWord = [];
			longestWord.push(array_of_words[i]);
		}
		else if (array_of_words[i].length == longestWord[0].length) {
			longestWord.push(array_of_words[i]);
		}
	}
	for (var i = 0;i < longestWord.length;i++){
		console.log(longestWord[i])
	}
	return longestWord
}

var words = ["Kunal","Elon","Steve","Tom","Kobe", "Newton","Page","Dorsey"]
console.log(longestWord(words))


// Release 1: Find a Key-Value Match

/**
PSEUDOCODE

Input: Two Objects.
Output: Boolean.
Steps:
1. Define a function named 'share_key_value' that takes in two objects as parameters.
2. Loop through the first key value of the first object.
3. Within that loop, create another loop that loops through each key on the second object.
4. Check if the first key from the first obejct matches any of the keys from the second object, if so, check to see if the values match.
5. If the values match, return true or else proceed on with the rest of the loop.
6. Either the loop will find a key-value pair that matches, or it will return false after the completition of the loop.
7. End the loops and function.
**/

function shareKeyValues (object1,object2){
	var objKeys1 = [];
	var objKeys2 = [];
	for(var key in object1) {
		objKeys1.push(key)
	}
	for(var key in object2){
		objKeys2.push(key)
	}
	for(var i = 0; i < objKeys1.length;i++){
		objKeys1[i]
	}
	return objKeys1
	return objKeys2
}

var object1 = {name: "Elon", company: "SpaceX", industry: "Tech"};
var object2 = {name: "Steve", company: "Apple", industry: "Tech"};

console.log(shareKeyValues(object1,object2))


// Release 2: Generate Random Test Data

/**
PSEUDOCODE

Input: Integer.
Output: An Array of Strings.
Steps:
1. Create function called 'generateDate' that takes an integer as a parameter.
2. Create a variable called 'array_of_strings' that stores the generated strings.
3. Create a for loop that loops until the integer.length is equal to the array_of_strings length.
4. Create a variable 'word' that stores the generate word.
5. At the bottom of the loop it should push the word into the array_of_strings array.
6. Within the loop, create another loop that loops through, picks a letter of the albpabet at random, and inserts the letter into a variable assigned at the top of the loop. Once the length of the letter is randomly between 1-10, the loop should stop.
7. The word should be inserted into the word variable in the previous loop. The variable should then be passed up the the string_of_arrays array.
8. Once the string_of_array length equals the integer, the loop should stop and return the ArrayOfStrings as an output.
9. End the loops and the funcation.

**/

function generateData(integer){
	// Create arrayOfStrings variable to store generated strings
	var arrayOfStrings = [];

	// Loop until the the integer specified amount of words are created
	for (var x = 0; x < integer;x++) {
		var word = "";

		// Pull a random letter from the alphabet string and add it to the words variable until the length of the word (generate randomly) is met
		num = Math.floor((Math.random()*10)+1);
		for (var i = 0; i < num;i++) {
			albpabet = "abcdefghijklmnopqrstuvwxyz"
			var letter = albpabet[Math.floor((Math.random()*26)+0)]			
			word += letter
		}

		// Push new word to the arrayOfStrings
		arrayOfStrings.push(word);	
	}

	// Return arrayOfStrings so 'undefined' isn't returned
	return arrayOfStrings
}


// DRIVER CODE

times = 10
for (var a = 0; a < times; a++) {
	var numb = Math.floor((Math.random()*10)+2)
	var newArray = generateData(numb)
	console.log(newArray)
	var newLongestWord = longestWord(newArray)
	console.log(newLongestWord)
}