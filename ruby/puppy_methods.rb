# 6.2 Mandatory Pairing: Instance Methods


# Puppy Class

class Puppy

  def initialize
    puts "Initialize new puppy instance ..."
  end


  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(integer)
  	integer.times do
  		puts "Woof!"
  	end
  end

  def roll_over
  	puts "*rolls over*"
  end

  def dog_years(integer)
  	if integer <= 2
  		dog_years = integer * 10.5
  	else
  		dog_years = ((integer - 2) * 4) + 21
  	end
  	dog_years
  end

  def eat(food)
    puts "Eating the #{food}"
  end

end

# DRIVER CODE

thor = Puppy.new

thor.fetch("Ball")
thor.speak(5)
thor.roll_over
p thor.dog_years(5)
thor.eat("Apple")


# NBA Players Class

class NBA_Players

  def initialize(name)
    puts "Initializing NBA_Players instance ..."
    @name = name
  end

  def dribble(integer)
    puts "#{@name} dribbles #{integer} times towards the basket!"
  end

  def shoot(integer)
    puts "#{@name} makes a #{integer} point basket."
  end

  def rebound
    puts "#{@name} rebounds the ball."
  end

end

# DRIVER CODE

counter = 1
names = []
until counter == 51
  names << "NBA Player" + counter.to_s
  counter += 1
end

# names = ["Lebron James","Steph Curry","Dwayne Wade","Damian Lillard", "Chris Paul"]

nba_players = []
names.each do |name|
  nba_players << NBA_Players.new(name)
end

nba_players.each do |name|
  name.dribble(1)
  name.shoot(2)
  name.rebound
end