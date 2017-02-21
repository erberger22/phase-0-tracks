=begin 
-build hash with empty keys for name, age, number of children
decor theme, allergies, payment method
-prompt user for imput
	-enter user data into proper key
-print hash
-ask if data is correct
	- if correct user enters "none" to procede
	- if key needs revision user enters key 
		-updates key value
-print hash
=end

client ={
	name: nil, 
	age: nil,
	num_child: nil,
	theme: nil,
	allergies: ["none"],
	payment_method: nil
}
	def allergies_question 
		user_answer="nil"
		allergy_arry=[]
		until user_answer == "done"
			puts "Please list any allergies, when finished enter 'done'"
			user_answer=gets.chomp
			allergy_arry.push(user_answer)
				if user_answer=="done"
					allergy_arry.pop
				end
		end
		return allergy_arry
	end

	puts "Name:"
	client[:name]=gets.chomp
	puts "Age:"
	client[:age]=gets.chomp.to_i
	puts "How many children?"
	client[:num_child]=gets.chomp.to_i
	puts "Choose one of our themes: plain, plaid, leapord"
	client[:theme]=gets.chomp
	puts "Do you nave any allergies? y/n"
	answer=gets.chomp
		if answer == "y"
			client[:allergies]=allergies_question
		end
	puts "How will services be payed for? Cash, check, credit, or barter"
	client[:payment_method]=gets.chomp

p client

puts "Do any of these answers need to be changed? If yes enter the field that needs changing, if no enter 'none'"
double_check=gets.chomp
	if double_check=="none"
	puts "Thank you for entering all that info!"
	
	elsif double_check=="allergies"
	puts "Re-enter all allergies"	
	client[:allergies]=allergies_question
	
	else
	puts "Please update your answer"
	client[double_check.to_sym]=gets.chomp
end

p client




