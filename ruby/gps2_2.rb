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

def new_list(items)
	array_of_items = items.split(" ")
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

def update_quantity(list, item, quantity)
	list[item] = quantity
end

def print_list(list)
	puts "List:"
	list.each do |item, quantity|
		puts "#{item}: #{quantity}"
	end
end


# DRIVER CODE

grocery_list = new_list("")
add_item(grocery_list, "Lemonade", 2)
add_item(grocery_list, "Tomatoes", 3)
add_item(grocery_list, "Onions", 1)
add_item(grocery_list, "Ice Cream", 4)
remove_item(grocery_list, "Lemonade")
update_quantity(grocery_list, "Ice Cream", 1)

print_list(grocery_list)


# Reflection

=begin

1. What did you learn about pseudocode from working on this challenge?

I learned that pseudocode is an essential step in writing code. It allows you to think out the problem before you start coding so that you can get the big picture of the program beforehand. Pseudocode can also be modified if you find problems with it afterwards.

2. What are the trade-offs of using arrays and hashes for this challenge?

Arrays are useful in this challenge as they allowed the inputted string to be converted into individual items. The problem with an array is that it doesn't store any data pair with it as a hash does. An array is a data set that can be called with indexes. A hash was much more beneficial in this challenge because of the key-value pairings. The keys served as the items and the values served as the quantity. In this way, it was much easier to call the item and quantity by simply using a hash.

3. What does a method return?

In a general sense, a method returns the last value that was executed. This is why we put the variable that we want returned on the last time of the method. A method can return anything you want it to and in this challenge it usually returned a hash.

4. What kind of things can you pass into methods as arguments?

Before this challenge, I was aware that strings, integers, booleans and other objects could be passed in as arguments in methods. After completing this challenge, I know that other methods can be passed in as arguments as well. We created a new list with the new_list method and assigned it to a variable. We then passed that variable that contained the list into all of the other methods. This is very useful when we use methods without using a class structure as it allows us to exchange data from one method to another.

5. How can you pass information between methods?

As stated above, information can be passed from other method to another by including it as a argument in a method. A parameter to take a method must be specified and then the method must be inserted as an argument. In this way, the information passes from one method to another.

6. What concepts were solidified in this challenge, and what concepts are still confusing?

This challenge solidified my knowledge in iteration as I was successful able to iterate though the array and hash. I think the concept of passing one methods data into the next is still confusing. I'll try to read more about this concept to strengthen my understanding.

=end