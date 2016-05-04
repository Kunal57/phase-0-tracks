// 7.1 Syntax

/**

PSEUDOCODE

Input: A String (Ex: reverse("hello"))
Output: A String (Ex: "olleh")
Steps:
1. Define a function called 'reverse' that takes the string as a parameter.
2. Create a new variable called 'reverse_string' for your reverse string.
3. Loop through the string. Define a counter variable 'i' and set it to zero. The loop should loop until i is greater than the string length. 'i' should be incremented.
4. The loop should include a code block that takes the last string character and adds it to the reverse_string variable.
5. The reserve string should be returned at the end of the function.
6. End the Loops & Function (remember brackets and semicolons)

**/

// Initial Solution

function reverse(string) {
	var reverse_string = "";
	for(var i=(string.length - 1); i > -1; i--) {
		reverse_string += string[i];
	};
	return reverse_string;
}

// DRIVER CODE

var newString = reverse("KUNAL PATEL")

var goodWeather = true;
var summer = true;

if (goodWeather && summer) {
	console.log(newString)
}
else {
	console.log("Not a good day")
}
