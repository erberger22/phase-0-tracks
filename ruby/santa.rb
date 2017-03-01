class Santa

	def initialize
		puts "Initializing Santa instance ..."
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!"
	end
end

ron = Santa.new

ron.speak
ron.eat_milk_and_cookies("oatmeal rasin")

