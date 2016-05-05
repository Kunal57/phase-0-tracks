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
1. Define a function 'shareKeyValues' that takes two objects as paramters.
2.  Create a var called 'obj1Keys' to store the keys of object1.
3. Create a var called obj2Keys to store the keys of object2.
4. Loop through object1 and push the keys into the obj1Keys array.
5. Loop through object2 and push the keys into the obj2Keys array.
6. Use a for loop to loop through the obj1Keys array.
7. Loop through the obj2Keys array within the obj1Keys loop and see if any keys equal any obj1Keys array keys.
8. If the keys are equal, see if the values of the key are equal. If so, return true, else return false.
9. Close out of the loops and return an answer.  

**/

function shareKeyValues(object1,object2){
	// Create two variables to hold the keys of each object
	var obj1Keys = [];
	var obj2Keys = [];
	// Set variable equal to false. Will return false unless a key-value pair match in which case it will change to true
	var share = false;
	// Push all of the keys of each object into arrays
	for (var key1 in object1) {
		obj1Keys.push(key1)
	} 
	for (var key2 in object2) {
		obj2Keys.push(key2)
	}
	// Loop through the first object and for each key...
	for (var i = 0; i < obj1Keys.length; i++) {
		// For each key, loop through the keys of the second object...
		for (var x = 0; x < obj2Keys.length; x++) {
			// If any of the keys match, check the values of each key
			if (obj1Keys[i] == obj2Keys[x]) {
				// If the values also match, change the share variable to true, else let it remain false
				if (object1[obj1Keys[i]] == object2[obj2Keys[x]]) {
					share = true;
				}
			}
		}
	}
	// Return share value at the end
	return share;
}


var object1 = {firstName: "Elon", company: "SpaceX", industry: "Tech"};
var object2 = {lastName: "Steve", company: "Apple", industry: "Tech"};

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