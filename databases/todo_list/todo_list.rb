# ToDo List

# Create a ToDo List program with Ruby

=begin

PSEUDOCODE
Input: String
Output: Updated List
Steps:
1. Create a class called 'ToDo_List'
2. Initialize the instance with a parameter that takes an unlimited amount of tasks as string variables.
3. add_task method
4. completed_task method
5. title method
6. Print_list method
7.

=end



# Create a SQLite3 database that stores the information

# Initial Solution

class ToDo_List
	def initialize (title)
		@title = title
		@tasks = []
	end

	def add_task(task)
		@tasks << task
	end

	def complete_task(task)
		completed = @tasks.delete(task)
		puts "You have completed the task: #{completed}"
	end

	def view_list
		puts "\n#{@title} - Tasks to Complete:" 
		counter = 1
		while @tasks.length > (counter - 1)
			puts "#{counter}. #{@tasks[counter - 1]}"
			counter +=1
		end
	end
end

# DRIVER CODE

puts "Welcome to the Command-Line To-Do List!"
puts "Please follow the following prompts to create a new Command-Line To-Do List!"

puts "\nWhat is the title of your list?"
title = gets.chomp
title = ToDo_List.new(title)

answer = ""
until answer.downcase == "quit"
	puts "\nWhat would you like to do?\n1. Add Task\n2. Remove Task\n3. View List"
	answer = gets.chomp
	if answer.downcase == "add task"
		puts "\nPlease enter tasks one-by-one below. Hit 'Enter' after each task & 'Done' after you are finished entering all of your tasks."
		loop do
			puts "Task to Add:"
			answer = gets.chomp
			break if answer.downcase == "done"
			title.add_task(answer)
		end
	elsif answer.downcase == "remove task"
		puts "\nEnter any tasks that have been completed. Enter 'Done' after you've entered all completed tasks."
		loop do
			answer = gets.chomp
			break if answer.downcase == "done"
			title.complete_task(answer)
		end
	elsif answer.downcase == "view list"
		title.view_list
	else
		puts "\nNot a valid input. Please select either\n1. Add Task\n2. Remove Task\n3. View List"
		answer = gets.chomp
	end
end