# Virus Predictor

# I worked on this challenge [by myself, with: Ronny Ewanek ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#  Require_relative allows the loading of a file that is relative to the file in which the require_relative resides. It produces a direct link to the desired file, instead of traversing the load path in search of the file.
#
require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private

  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects


#=======================================================================
# Reflection Section

# Release 5:
# Pseudocode:
#    LOOP through the hash
#    Create an instance of virus predictor for each state in STATE_DATA
#    CALL virus effects with appropriate args on each instance

# STATE_DATA.each do |state, data|
#   state_of_origin = VirusPredictor.new(state, STATE_DATA[state][:population_density],     STATE_DATA[state][:population])
#   state_of_origin.virus_effects
#    end
# end

#We put the code outside of the class as it is essentially a driver code


# What are the differences between the two hash syntaxes shown in the state_data file?
#   The first nested hash is using what's known as a "hash rocket" and the second nested hash is using symbols. The hash rocket makes it easier to connect a key and its value(s).
# What does require_relative do? How is it different from require?
#   Require_relative allows the loading of a file that is relative to the file in which the require_relative resides. It produces a direct link to the desired file, instead of traversing the load path in search of the file.
# What are some ways to iterate through a hash?
#  .each, .times
# When refactoring virus_effects, what stood out to you about the variables, if anything?
# What concept did you most solidify in this challenge?
#   Accessing nested hashes
