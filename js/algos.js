//RELEASE 1

//funtion will loop through the array, and store the .length of each string into a new array
//Call .max on the new array to find which value is the largest
//the index of the largest value in the new array is the index of the longest string in the origional array

function longest_string(array) {
	var string_length_array = [];
	//funtion will loop through the array, and store the .length of each string into a new array
	for (var i = 0; i < array.length; i++){
		string_length_array.push(array[i].length);
	}
	
	var n = 0;
	//Loop through the new array to find which value is the largest
	for (var i = 0; i < string_length_array.length; i++){
		if (string_length_array[i]-n > 0){
			(n = string_length_array[i]);
		}
	}
	(n)
//the index of the largest value in the new array is the index of the longest string in the origional array
	return(array[string_length_array.indexOf(n)])
}

var array = ["long phrase","longest phrase","longer phrase"]
console.log(longest_string(array))

var array_2 = ["Happy Birthday", "to", "you"]
console.log(longest_string(array_2))

//RELEASE 2

//function takes 2 objects
//function returns true if key value of obejct 1 is equal to the key value of object 2, and neither of them equal undefined


//As written, this function only checks for name and age keys, and only the first two keys in an object
function key_value_match(object1, object2){
	if ((object1['name'] == undefined) || (object1['age'] == undefined)) {
		return false;
	}

	else if	(
			(object1['name'] == object2['name']) || 
			(object1['age'] == object2['age'])) {
		return true;
	}
	else {
		return false;
	}
}


var object1 = {name: "Steven", age: 54};
var object2 = {name: "Tamir", age: 54};
var object3 = {color: "green", size: "small"};
var object4 = {color: "green", number: 54};
//expect to return true
console.log(key_value_match(object1, object2))
//expect to return false
console.log(key_value_match(object4, object2))
//expect to return false
console.log(key_value_match(object1, object3))
//expect to return false
console.log(key_value_match(object1, object4))
//expect to return true since color is green for both, but will return false since key_value_match can only compare age and name keys
console.log(key_value_match(object3, object4))










