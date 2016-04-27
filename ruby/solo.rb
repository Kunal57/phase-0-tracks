# 6.4 Solo Challenge: Designing and Implementing a Class

# Design a Class

=begin

Object ---------------------------
Rocket

CHARACTERISTICS ---------------------------
Company:
Objective:
Engine:
Fuel:
Relanding:

BEHAVIOR ---------------------------
Lift_off
Landing
Refuel
Deploy
Crash

=end

# Write Your Class

class Rocket
	attr_reader :fuel, :objective, :company
	attr_accessor :engine, :relanding 

	def initialize(company, engine, relanding)
		@company = company
		@engine = engine
		@relanding = relanding
		@fuel = 100
		@objective = "Launch Payload into Interplanetary Space"
		@operational = true
	end

	def lift_off
		counter = 10
		if @operational == false
			puts "This Rocket is not operational."
		elsif @fuel != 100
			puts "Rocket is not fully fueled!"
		else
			until counter == 0
				puts "T - minus #{counter} seconds till Lift Off"
				counter -= 1
				@fuel = 0
			end
			puts "LIFT OFF of the #{@company} Rocket!"
		end
	end

	def landing
		if @relanding == true
			counter = 10
			until counter == 0
				puts "Landing in T - minus #{counter} seconds"
				counter -= 1
			end
			puts "#{@company} Rocket has successfully landed!"
		else
			puts "This rocket doesn't have landing capabilities."
			@operational = false
		end
	end

	def refuel(refuel_percent)
		if @operational == true
			fuel_needed = 100 - @fuel
			if fuel_needed >= refuel_percent
				@fuel += refuel_percent
			else
				fuel_left = refuel_percent - fuel_needed
				@fuel = 100
				puts "The Rocket is full and #{fuel_left} fuel remains."
			end
		else
			puts "This Rocket is not operational."
		end
	end

	def deploy(payload)
		if @operational == true
			puts "#{@company} Rocket is deploying #{payload}"
		else
			puts "This Rocket is not operational."
		end
	end

	def crash
		@operational = false
		puts "Oh No! #{@company} Rocket has crashed!"
	end

end

# DRIVER CODE

# spacex = Rocket.new("SpaceX", "Merlin", true)

# spacex.lift_off
# spacex.landing
# p spacex.fuel
# spacex.refuel(50)
# p spacex.fuel
# spacex.refuel(25)
# p spacex.fuel
# spacex.lift_off
# spacex.refuel(25)
# p spacex.fuel
# spacex.lift_off
# p spacex.fuel
# spacex.deploy("Satellites")
# spacex.landing
# p spacex.company
# p spacex.objective
# spacex.crash

# nasa = Rocket.new("NASA", "J-2X", false)

# nasa.lift_off
# nasa.landing
# p nasa.fuel
# nasa.refuel(50)
# p nasa.fuel
# nasa.refuel(25)
# p nasa.fuel
# nasa.lift_off
# nasa.refuel(25)
# p nasa.fuel
# nasa.lift_off
# p nasa.fuel
# nasa.deploy("Satellites")
# nasa.landing
# p nasa.company
# p nasa.objective
# nasa.crash
# nasa.lift_off


# Use Your Class in a Program
rockets = []
puts "Would you like to launch a rocket today? (yes/no)"
answer = gets.chomp.downcase
	if answer == "yes"
		until answer == "no"
			puts "What company does the rocket belong to?"
			company = gets.chomp
			puts "What kind of engine does the rocket have?"
			engine = gets.chomp
			puts "Does your rocket have relanding capabilities? (yes/no)"
				relanding = gets.chomp.downcase
				if relanding == "yes"
					relanding = true
				else
					relanding = false
				end
				rockets << Rocket.new(company, engine, relanding)
				puts "Would you like to create another rocket? (yes/no)"
				answer = gets.chomp.downcase
			end
	else
		"That's fine. Maybe tomorrow!"
	end


p rockets

rockets.each do |rocket|
	# if @relanding == true
	# 	reland = "can"
	# else
	# 	reland = "can't"
	# end
	puts "The #{rocket.company} rocket has a #{rocket.engine} engine and #{reland} reland!"
end