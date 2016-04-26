# 6.5 Modules

# module Shout
# 	def self.yell_angrily(words)
# 		words + "!!!" + " :("
# 	end

# 	def self.yelling_happily(words)
# 		words + "!!!" + " :)"
# 	end
# end

module Shout
	def yell_angrily(words)
		words + "!!!" + " :("
	end

	def yelling_happily(words)
		words + "!!!" + " :)"
	end
end

	class Sports_fan
		include Shout
	end

	class Professor
		include Shout
	end

# DRIVER CODE

conner = Sports_fan.new
p conner.yelling_happily("Go Cubs Go!")
p conner.yell_angrily("The Sox Suck!")

victor = Professor.new
p victor.yelling_happily("That's the right answer")
p victor.yell_angrily("Get Out!")