var colors = ["green", "blue", "red", "orange"];
var horse_name = ["Ed", "Nancey", "Abbey", "Oats"];

console.log(colors);
console.log(horse_name);

colors.push("pink");
horse_name.push("Jeff");

console.log(colors);
console.log(horse_name);

var horses = {}
for (var i = 0; i < colors.length; i++) {
	horses[horse_name[i]] = colors[i]
}
console.log(horses)

function Car(color, miles, make){
	this.color = color;
	this.miles = miles; 
	this.make = make;

	this.beep = function(make) {
		if (this.make == "honda"){
			return "Honk!";
		} else {
			return"Beep!";
		}
	}
}

var newCar = new Car ("blue", 1000, "Dodge")
console.log(newCar.miles)
console.log(newCar.beep())
newCar.make = "honda"
console.log(newCar.beep())