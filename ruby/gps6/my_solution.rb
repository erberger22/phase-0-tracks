# Virus Predictor

# I worked on this challenge [by myself, with: Mike].
# We spent [1] hours on this challenge.

# EXPLANATION OF require_relative
#require is for the ruby directory gems
#relative_require is a relative path to the working ruby file
require_relative 'state_data'

class VirusPredictor

#used to store all the instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

#used to call other methods - a methodymethod
  def virus_effects
    predicted_deaths()
    speed_of_spread()
  end

#everything below will be private and can't be called as a method only as self.
  private

#a calc based on population density and population og given state and performs a print
  def predicted_deaths()
    # predicted deaths is solely based on population density
    if @population_density >= 200
        mulitplier =  0.4
    elsif @population_density >= 150
        mulitplier =  0.3
    elsif @population_density >= 100
        mulitplier =  0.2
    elsif @population_density >= 50
        mulitplier =  0.1
    else
        mulitplier = 0.05
    end

    number_of_deaths = (@population * mulitplier).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

#does a different calculation based on population_density and prints
  def speed_of_spread() #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    
    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

#loop through the State_data hash keys
#for each key create a state class (code already there)
#call the virus effects method

STATE_DATA.each do |state_name, data|
    state_name = VirusPredictor.new(state_name, STATE_DATA[state_name][:population_density], STATE_DATA[state_name][:population])
    state_name.virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?

-The STATE_DATA hash has strings of the states names as keys and the hash that is the value uses symbols for :population_density and :population. This is good practice because :population_density and :population are repeated for each state and if they were strings it would take more memory to hold each different string, even though they would be identical

What does require_relative do? How is it different from require?

-relative_require will give the location for a linked file and will use the location of the file that is looking for the link as a starting point. In this case, since my_solution and state_data are in the same file, relative_require was a simple way to link them. require does the same thing, but starts at the ruby directory and is better used for requiring gems there.

What are some ways to iterate through a hash?

-the .each and .map methods can be used to iterate through a hash

When refactoring virus_effects, what stood out to you about the variables, if anything?

-We realized that the variables were instance variables and since they were called in the methods that virus_effects ran, there was no need to also pass them in as arguments of virus_effects.

What concept did you most solidify in this challenge?

-Before this challenge I had no concept of DRY code, and I'm sure that some of my older code was not very DRY. This gave me a better sense of what to look for when refactoring code. 
=end

