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
  	dog_years = 0
  	if integer <= 2
  		dog_years = integer * 10.5
  	else
  		dog_years = 2 * 10.5
  		dog_years += (integer - 2) * 4
  	end
  	puts dog_years
  end

  def eat(food)
    puts "Eating the #{food}"
  end

end

# DRIVER CODE

Thor = Puppy.new

Thor.fetch("Ball")
Thor.speak(5)
Thor.roll_over
Thor.dog_years(5)
Thor.eat("Apple")


# NBA Players Class

class NBA_Players

  def initialize
    puts "Initializing NBA_Players instance ..."
  end

  def dribble(integer)
    puts "Dribbled #{integer} times towards the basket!"
  end

  def shoot(integer)
    puts "#{integer} point basket made."
  end

  def rebound
    puts "Rebounded the ball."
  end

end

# DRIVER CODE

kobe_bryant = NBA_Players.new

kobe_bryant.dribble(10)
kobe_bryant.shoot(3)
kobe_bryant.rebound

counter = 1
array_of_players = []
until counter == 51
  name = NBA_Players.new
  array_of_players << name
  counter +=1
end

array_of_players.each do |player|
  player.dribble(1)
  player.shoot(2)
  player.rebound
end