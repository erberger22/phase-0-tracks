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