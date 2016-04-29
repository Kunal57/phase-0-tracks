# GPS 2.2 - Ruby

=begin

PSEUDOCODE

1. Method to create a list
Input: A string of items separated by spaces (example: "carrots apples cereal pizza").
Output: A Hash of items.

2. Method to add an item to a list
Input: Item Name and optional quantity.
Output: A Hash with the new item added.

3. Method to remove an item from the list
Input: A item name.
Output: A Hash without the removed item.

4. Method to update the quantity of an item
Input: A item name & updated quantity integer.
Output: A Hash updated with the new quantity.

5. Method to print a list and make it look pretty
Input: N/A.
Output: A nicely printed List. (Iteration)

=end

# Initial Solution

def new_list(string)
	array_of_items = string.split(" ")
	items_list = Hash.new
	array_of_items.each do |item|
		items_list[item] = 1
	end
	items_list
end

def add_item(items_list, item, quantity=1)
	items_list[item] = quantity
end

def remove_item(item)

end

def update_item(item, quantity)
end

def print_list
end


# DRIVER CODE

new_list("Apple Banana Orange Strawberry Juice Milk Cookie Bread")
add_item(items_list,"Kiwi",2)