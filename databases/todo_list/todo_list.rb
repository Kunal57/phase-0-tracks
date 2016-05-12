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

require 'sqlite3'

# Create a SQLite3 database that stores the information
db = SQLite3::Database.new("todo_list.db")

create_todos_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS todos (
		task_id INTEGER PRIMARY KEY,
		task VARCHAR(255),
		list_id INTEGER,
		FOREIGN KEY (list_id) REFERENCES lists(id)
	);
SQL

create_lists_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS lists (
		id INTEGER PRIMARY KEY,
		title VARCHAR(255)
	);
SQL

db.execute(create_todos_table_cmd)
db.execute(create_lists_table_cmd)

# Initial Solution

class ToDo_List
	def initialize (database, title)
		@title = title
		@tasks = []
		database.execute("INSERT INTO lists (title) VALUES (?)", [title])
	end

	def add_task(database, task)
		@tasks << task
		key = database.execute("SELECT id FROM lists WHERE title=(?)",[@title])
		database.execute("INSERT INTO todos (task, list_id) VALUES (?,?)", [task, key])
	end

	def complete_task(database, task)
		completed = @tasks.delete(task)
		database.execute("DELETE FROM todos WHERE task=(?)", [task])
		puts "You have completed the task: #{completed}"
	end

	def view_list(database)
		puts "\n#{@title} - Tasks to Complete:" 
		counter = 1
		while @tasks.length > (counter - 1)
			puts "#{counter}. #{@tasks[counter - 1]}"
			counter +=1
		end
		database.execute("SELECT * FROM todos")
	end
end

# DRIVER CODE

puts "Welcome to the Command-Line To-Do List!"
puts "Please follow the following prompts to create a new Command-Line To-Do List!"

puts "\nType 'new' to create a new list or 'old' to access an existing list."
response = gets.chomp

if response.downcase == "new"
	puts "\nWhat is the title of your new list?"
	title = gets.chomp
	title = ToDo_List.new(db, title)

	answer = ""
	until answer.downcase == "quit"
		puts "\nWhat would you like to do?\n1. Add Task\n2. Remove Task\n3. View List\n4. Quit"
		answer = gets.chomp
		if answer.downcase == "add task"
			puts "\nPlease enter tasks one-by-one below. Hit 'Enter' after each task & 'Done' after you are finished entering all of your tasks."
			loop do
				puts "Task to Add:"
				answer = gets.chomp
				break if answer.downcase == "done"
				title.add_task(db, answer)
			end
		elsif answer.downcase == "remove task"
			puts "\nEnter any tasks that have been completed. Enter 'Done' after you've entered all completed tasks."
			loop do
				answer = gets.chomp
				break if answer.downcase == "done"
				title.complete_task(db, answer)
			end
		elsif answer.downcase == "view list"
			title.view_list(db)
		elsif answer.downcase == "quit"
			break
		else
			puts "\nNot a valid input. Please select either\n1. Add Task\n2. Remove Task\n3. View List\n4. Quit"
			answer = gets.chomp
		end
	end
end

if response.downcase == "old"
	puts "\nWhat is the title of your old list?"
	title = gets.chomp

	list = db.execute("SELECT todos.task FROM todos JOIN lists ON todos.list_id = lists.id WHERE title=(?);",[title])
	



		counter = 1
		list = list.flatten
		while list.length > (counter - 1)
			puts "#{counter}. #{list[counter - 1]}"
			counter +=1
		end




	answer = ""
	until answer.downcase == "quit"
		puts "\nWhat would you like to do?\n1. Add Task\n2. Remove Task\n3. View List\n4. Quit"
		answer = gets.chomp
		if answer.downcase == "add task"
			puts "\nPlease enter tasks one-by-one below. Hit 'Enter' after each task & 'Done' after you are finished entering all of your tasks."
			loop do
				puts "Task to Add:"
				answer = gets.chomp
				break if answer.downcase == "done"
				title.add_task(db, answer)
			end
		elsif answer.downcase == "remove task"
			puts "\nEnter any tasks that have been completed. Enter 'Done' after you've entered all completed tasks."
			loop do
				answer = gets.chomp
				break if answer.downcase == "done"
				title.complete_task(db, answer)
			end
		elsif answer.downcase == "view list"
			# title.view_list(db)
		elsif answer.downcase == "quit"
			break
		else
			puts "\nNot a valid input. Please select either\n1. Add Task\n2. Remove Task\n3. View List\n4. Quit"
			answer = gets.chomp
		end
	end
end