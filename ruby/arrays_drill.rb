# 5.2 Mandatory Pairing: Arrays


# Release 1: Explore the Docs

nba_players = []
p nba_players

nba_players.push("Steph Curry","Lebron James","Dwayne Wade", "Chris Paul","Kyrie Irving")
p nba_players

nba_players.delete_at(2)
p nba_players

nba_players.insert(2, "Kwahi Leonard")
p nba_players

nba_players.shift
p nba_players

puts "Is \"Lebron James\" in the Array?"
p nba_players.include?("Lebron James")

more_players = ["Paul George", "Anthony Davis", "Damian Lillard"]
p more_players

all_stars = nba_players.concat(more_players)
p all_stars


# Release 2: Use Arrays in Methods

def build_array(param1, param2, param3)
	[param1, param2, param3]
end

def add_to_array(array, value)
	array << value
end

p build_array(1, "two", nil)
p add_to_array(["a", "b", "c", 1, 2], 3)
