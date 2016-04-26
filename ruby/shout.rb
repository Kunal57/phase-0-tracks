# 6.5 Modules

module Shout
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end

	def self.yelling_happily(words)
		words + "!!!" + " :)"
	end
end

# DRIVER CODE

emotions = Shout

p emotions.yell_angrily("Hello")
p emotions.yelling_happily("Hello")