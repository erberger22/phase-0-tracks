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

def secret_alias (real_name)
	vowels=["a","e","i","o","u"]
	consonents=["b","c","d","f","g","h","j","k","l","m","n",
				"p","q","r","s","t","v","w","x","y","z"]

	#first and last names are split, swapped, then reconnected

	swapped_name = real_name.split(' ').reverse.join(' ')

	swapped_name_chars = swapped_name.chars

	code_name_chars = []
	counter = 0
	until counter == swapped_name_chars.length
		if vowels.include?(swapped_name_chars[counter].downcase)
			code_name_chars.push(
				vowels[
					(vowels.index(swapped_name_chars[counter].downcase)+1)
				]
			)
			counter += 1
		elsif consonents.include?(swapped_name_chars[counter].downcase)
			code_name_chars.push(
				consonents[
					(consonents.index(swapped_name_chars[counter].downcase)+1)
				]
			)
			counter += 1
		else
			code_name_chars.push(swapped_name_chars[counter])
			counter += 1
		end	
	end
	code_name = code_name_chars.join('')
end

p secret_alias ("Eli Berger")



