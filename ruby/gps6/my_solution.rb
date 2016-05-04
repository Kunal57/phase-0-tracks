# Virus Predictor

# I worked on this challenge [with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200 then number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150 then number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100 then number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50 then number_of_deaths = (@population * 0.1).floor
    else number_of_deaths = (@population * 0.05).floor
    end
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    if @population_density >= 200 then speed += 0.5
    elsif @population_density >= 150 then speed += 1
    elsif @population_density >= 100 then speed += 1.5
    elsif @population_density >= 50 then speed += 2
    else speed += 2.5
    end
    puts " and will spread across the state in #{speed} months.\n\n"
  end
end

#=======================================================================

# DRIVER CODE
# initialize VirusPredictor for each state

def states_report
  STATE_DATA.each do |state, data|
    state = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
    state.virus_effects
  end
end

states_report

#=======================================================================
# Reflection Section

=begin

1. What are the differences between the two different hash syntaxes shown in the state_data file?
2. What does require_relative do? How is it different from require?
3. What are some ways to iterate through a hash?
4. When refactoring virus_effects, what stood out to you about the variables, if anything?
5. What concept did you most solidify in this challenge?

=end