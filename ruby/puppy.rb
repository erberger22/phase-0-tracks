=begin 
SPECIES
 Puppy

CHARACTERISTICS
 Name: varies
 Color: varies
 Leg count: 3-4
 Tail count: 0-1
 Cute: yes
 Friendly: yes
 Potty trained: no

BEHAVIOR
 jump
 eat
 sleep
 cuddle
=end

class Puppy

	def fetch(toy)
    	puts "I brought back the #{toy}!"
    	toy
  end

  	def speak(i)
  		i.times{puts "woof"}
  	end

  	def rollover
  		puts "rolls over"
  	end

  	def dog_years(human_years)
  		puts 7 * human_years
  	end
end


Rex = Puppy.new

Rex.fetch("frisbee")
Rex.speak(3)
Rex.rollover
Rex.dog_years(5)









