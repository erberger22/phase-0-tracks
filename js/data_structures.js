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