# Virus Predictor

# I worked on this challenge [with: Christopher Danella].
# We spent [1.5] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative takes the data from another file and imports it
# into the current file where it's been declared.

# require_relative searches within the same directory to link the file to
# the current file the programmer is working on.

# require searches throughout the entire library to find the file to link.

require_relative 'state_data'

class VirusPredictor

# Takes 3 parameters and assigns them to instance variables. Sets the state for an instance of a Class. 
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# Does not take any parameters. Returns two private methods with instance variables as parameters.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

# A Private method that takes population_density, population, and state as parameters. Uses control flow to determine the number of deaths based on the population density. Returns a string with the number of deaths depending on the state. 
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

# A private method that takes population_density and state as parameters. Uses control flow to determine the speed of the virus spread based on population density. Returns a string that specifies the speed of the virus spread depending on the state population data. 
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
  STATE_DATA.each do |state, state_data|
    state = VirusPredictor.new(state, state_data[:population_density], state_data[:population])
    state.virus_effects
  end
end

states_report

#=======================================================================
# Reflection Section

=begin

1. What are the differences between the two different hash syntaxes shown in the state_data file?

The outer hash uses a string as a key and declares the value using a hash rocket. The inner hash uses a symbol as a key and declares the value using the symbol/colon shortcut.

2. What does require_relative do? How is it different from require?

require_relative searches for the specified file within the directory. It finds the file and imports all of the file data into the current file. It would be the same as pasting all of the code from the other file onto the require_relative line. It differs from require as require searches the whole database for a library or file that fits the specified description. Require takes the computer longer to find the file as it has to search through more files/folders whereas require_relative is giving the computer a place to look.

3. What are some ways to iterate through a hash?

There are plenty of ruby hash methods that can help iterate through a hash such as .each & .map. The method needs to specified with two parameters within the pipes, one for the key and the other for the value. These parameters can utilized within the code block to help iterate through the keys and value to produce the desired output.

4. When refactoring virus_effects, what stood out to you about the variables, if anything?

I learned that within a class, the initialized variables don't need to be taken in as parameters as they are instance variables and can be used throughout the class. Instance variables can be accessed and reassigned from anywhere within the class.

5. What concept did you most solidify in this challenge?

I solidified my understanding of iterating through a nested hash, the concept of a global variable & constant variable, and the use of private methods within classes.

=end
