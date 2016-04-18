# 5.2 Mandatory Pairing: Arrays

# Release 1: Explore the Docs

leaders = []
p leaders

leaders.push("Elon Musk","Steve Jobs","Warren Buffet", "Mark Cuban", "Bill Gates")
p leaders

leaders.delete_at(2)
p leaders

leaders.insert(2, "Tom Brady")
p leaders

leaders.shift
p leaders

leaders.include?("Steve Jobs")
p "Leaders contains Steve Jobs: #{leaders.include?("Steve Jobs")}"

other_leaders = ["Kobe Bryant", "Tom Hardy", "Bruce Wayne"]

role_models = leaders.concat(other_leaders)
p role_models

# Release 2: Use Arrays in Methods

def build_array(param1, param2, param3)
	array = [param1, param2, param3]
end

def add_to_array(array, addition)
	array << addition
end

p build_array(1, "two", nil)

p add_to_array([], "a")
p add_to_array(["a", "b", "c", 1, 2], 3)