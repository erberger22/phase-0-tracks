=begin 
-swap first and last name
	-split name, make an array of [first, last]
	-reverse the array and combine new names into a new code name array
-change vowels
	-have array of vowels and consonents
	-split array into individual characters
	-loop through each character
		-if character matches in vowel array, return index+1
		-if character matches in consonant array, return index+1
		-if character doesnt match, leave as is (dont change the space)
	-put each character into new array?
=end

def code_name (real_name)
	vowels=["a","e","i","o","u"]
	consonents=["b","c","d","f","g","h","j","k","l","m","n",
				"p","q","r","s","t","v","w","x","y","z"]
end