// 7.2 Mandatory Pairing: Data Structures

// Release 0
var colors = ["blue","green","red","orange"];
var names = ["Kunal","Elon","Steve","Tom"];

colors.push("yellow");
names.push("Kobe");

// Release 1
var horses = {};

for (var i=0;i < colors.length;i++) {
	horses[names[i]] = colors[i];
}

console.log(horses)

// Release 2

function Car(brand, type, color) {
	this.brand = brand;
	this.type = type;
	this.color = color;

	this.drive = function() {
		console.log("I'm driving a " + this.color + " " + this.brand + " " + this.type + "!");
	};
}

var tesla = new Car("Tesla","Model S", "Black");
console.log(tesla);
tesla.drive();

var tesla2 = new Car("Tesla","Model X","Grey");
console.log(tesla2);
tesla2.drive();

var tumbler = new Car("Wayne Enterprises","Tumbler","Black");
console.log(tumbler);
tumbler.drive();

// Release 3
// Loop through keys of tumbler object
for (var key in tumbler) {
		console.log(key);
}
// Loop through the values of tumbler object
for (var key in tumbler) {
		console.log(tumbler[key]);
}