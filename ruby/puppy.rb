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

end

Rex = Puppy.new

Rex.fetch("frisbee")







