//Function will print a new string, starting with the -1 position and working backwards until it reaches the -(length of string) value

function reverseString(str) {
    var newString = "";
    for (var i = str.length-1; i >= 0; i -= 1){
    	newString += str[i]
    }
    return newString;
}

var backwardsHello = console.log(reverseString("hello"))
