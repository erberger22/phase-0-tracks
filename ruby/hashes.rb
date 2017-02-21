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
	theme: ["plain", "plaid", "leapord"],
	allergies: nil,
	payment_method: nil
}

	puts "Name:"
	client[:name]=gets.chomp
	puts "Age:"
	client[:age]=gets.chomp.to_i
	puts "How many children?"
	client[:num_child]=gets.chomp.to_i
	puts "Choose one of our themes: plain, plaid, leapord"
	client[:theme]=gets.chomp
	
	

p client




