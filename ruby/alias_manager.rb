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
		
		#if letter is included in vowels array, adds next value in vowels 
		#array to code_name_chars array

		if vowels.include?(swapped_name_chars[counter].downcase)
			code_name_chars.push(
				vowels[
					(vowels.index(swapped_name_chars[counter].downcase).next)
				]
			)
			#fix edgecase error so vowel array loops around to index(0) 
			if code_name_chars[-1]==nil
				code_name_chars[-1]=vowels[0]
			end
			counter += 1
		
		#if letter is included in consonents array, adds next value in 
		#consonents array to code_name_chars array

		elsif consonents.include?(swapped_name_chars[counter].downcase)
			code_name_chars.push(
				consonents[
					(consonents.index(swapped_name_chars[counter].downcase).next)
				]
			)
			#fix edgecase error so consonents array loops around to index(0)
			if code_name_chars[-1]==nil
				code_name_chars[-1]=consonents[0]
			end
			counter += 1
		else
			code_name_chars.push(swapped_name_chars[counter])
			counter += 1
		end	
	end
	# .upcase the first letter of the code name first name
	code_name_chars[0]=code_name_chars[0].upcase
	#find the index of all the " " characters in code_name_characters
	space_locations = code_name_chars.each_index.select{|i| code_name_chars[i] == " "}
	#use index of all " " characters to capitalize any characters that occur after a space,
	#so middle names will also be capitalized
	spaces = space_locations.length
	capital_counter = 0
	until capital_counter == spaces
		code_name_chars[space_locations[0+capital_counter].to_i+1]=
		code_name_chars[space_locations[0+capital_counter].to_i+1].upcase
		capital_counter += 1
	end

	code_name = code_name_chars.join('')
end
user_name = nil
loop do 
	puts "Enter a name to have it turned into an alias, or enter 'quit' when finished"
	user_name = gets.chomp
	break if user_name == "quit"||user_name == "Quit"
	puts secret_alias(user_name)
end






