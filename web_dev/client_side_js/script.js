// Add Black Border to h1 element 'Kunal Patel'
// Appears when mouse enters element

function addBlackBorder() {
	var header = document.getElementsByTagName("h1")
	heading = header[0];
	heading.style.border = "2px solid black";
}

var header = document.getElementsByTagName("h1");
heading = header[0]
heading.addEventListener("mouseenter", addBlackBorder);

// Remove Black Border of h1 element 'Kunal Patel'
// Removes border when mouse leaves the element

function removeBlackBorder() {
	var header = document.getElementsByTagName("h1")
	heading = header[0];
	heading.style.border = "none";
}

var header = document.getElementsByTagName("h1");
heading = header[0]
heading.addEventListener("mouseleave", removeBlackBorder);

// Increases Size of a elements 'About|Projects|Blog|Contact'
// Size increases when mouse enters the element

function upSize(event) {
	event.target.style.fontSize = "70px"
}

var links = document.getElementsByTagName("a");
for (var i = 0; i < links.length; i++) {
	link = links[i]
	link.addEventListener("mouseenter", upSize);
}

// Decreases Size of a elements 'About|Projects|Blog|Contact'
// Size does back to default when mouse leaves the element

function downSize(event) {
	event.target.style.fontSize = ""
}

var links = document.getElementsByTagName("a");
for (var i = 0; i < links.length; i++) {
	link = links[i]
	link.addEventListener("mouseleave", downSize);
}