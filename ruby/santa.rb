class Santa
	attr_reader :ethnicity, :reindeer_ranking
	attr_accessor :gender, :age
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

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(bad_reindeer)
		@reindeer = @reindeer_ranking.delete_if {|reindeer_name| reindeer_name == bad_reindeer}
		@reindeer.push(bad_reindeer)
	end
end

#array.sample takes a random element
def santacon(santa_count)
number_of_santas = 0
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
	until number_of_santas == santa_count
		new_santa = Santa.new(genders.sample, ethnicities.sample)
		new_santa.age = rand(140)
		puts "This #{new_santa.ethnicity} santa is #{new_santa.age} years old and identifies as #{new_santa.gender}. #{new_santa.reindeer_ranking[0]} is the favorite reindeer and #{new_santa.reindeer_ranking[-1]} is the least favorite."
		puts "-----"
		number_of_santas += 1
	end
end

santacon(30)

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

=begin 
santa_gender_and_ethnicity = 
{"Bigender"=> "Cuban", "Male"=> "Chinese", "Female"=> "Icelandic"}
santas = []

santa_gender_and_ethnicity.each do |gender, ethnicity|
	santas << Santa.new(gender, ethnicity)
end
santas[2].speak

ron = Santa.new("male", "irish")

p ron.get_mad_at("Dancer")

p ron.age
ron.celebrate_birthday
p ron.age

p ron.ethnicity

ron.speak
ron.gender = "gender fluid"
ron.speak

#p santas
=end 






