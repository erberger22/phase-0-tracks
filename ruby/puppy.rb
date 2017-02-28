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

  	def eat_homework(dog_name, assignment)
  		puts "#{dog_name} ate my #{assignment} homework!!"
  	end

  	def initialize
  		p "Initializing new puppy instance ..."
  	end
end


Rex = Puppy.new

Rex.fetch("frisbee")
Rex.speak(3)
Rex.rollover
Rex.dog_years(5)
Rex.eat_homework("Rex", "Coding")

class Badger

	def initialize
		puts "Initializing new badger instance, because they rock..."
	end

	def dig(number_of_holes)
		puts "this badger has dug #{number_of_holes} holes! Amazing!"
	end

	def gallop(distance_galloped)
		puts "did you know badgers can gallop?"
		distance_galloped.times{puts "gallop"}
	end

end

Barry=Badger.new
Barry.dig(4)
Barry.gallop(3)










