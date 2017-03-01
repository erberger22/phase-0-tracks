class Santa

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays from #{@gender} santa!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!"
	end
end

#ron = Santa.new
#ron.speak
#ron.eat_milk_and_cookies("oatmeal rasin")

#Entering simple initializations

#santa_1 = Santa.new("Bigender", "Cuban")
#p santa_1
#santa_2 = Santa.new("Male", "Chinese")
#p santa_2
#santa_3 = Santa.new("Female", "Icelandic")
#p santa_3

#Entering initializations with a loop

santa_gender_and_ethnicity = 
{"Bigender"=> "Cuban", "Male"=> "Chinese", "Female"=> "Icelandic"}
santas = []

santa_gender_and_ethnicity.each do |gender, ethnicity|
	santas << Santa.new(gender, ethnicity)
end
santas[2].speak
p santas





