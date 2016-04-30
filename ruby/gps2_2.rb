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

def new_list(string_of_items)
	array_of_items = string_of_items.split(" ")
	list = Hash.new
	array_of_items.each do |item|
		list[item] = 1
	end
	list
end

def add_item(list, item, quantity=1)
	list[item] = quantity
end

def remove_item(list, item)
	list.delete(item)
end

def update_item(list, item, quantity)
	list[item] = quantity
end

def print_list(list)
	puts "List:"
	list.each do |item, quantity|
		puts "#{item}: #{quantity}"
	end
end


# DRIVER CODE

grocery_list = new_list("Apples Bananas Oranges Strawberries Juice Cheese Bread Lettuce Milk Cereal Cookies")
add_item(grocery_list, "nuts", 2)
remove_item(grocery_list, "Cookies")
remove_item(grocery_list, "Cheese")
remove_item(grocery_list, "Apples")
update_item(grocery_list, "Oranges",15)
update_item(grocery_list, "Juice",2)
update_item(grocery_list, "Strawberries",3)
print_list(grocery_list)