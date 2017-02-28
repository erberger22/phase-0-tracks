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
		"Initializing new badger instance, because they rock..."
	end

	def dig(number_of_holes)
		p "this badger has dug #{number_of_holes} holes! Amazing!"
	end

	def gallop(distance_galloped)
		p "did you know badgers can gallop? this badger galloped #{distance_galloped} miles!" 
	end

end

badger_hash = {}
counter = 0
until counter == 50
	badger = Badger.new 
	badger_hash[badger]=[]
	counter += 1
end

badger_hash.each do |badger, actions|
	badger_hash[badger]=[badger.gallop(3), badger.dig(2)]
end

p badger_hash
#Barry=Badger.new
#Barry.dig(4)
#Barry.gallop(3)












