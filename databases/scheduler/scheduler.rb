require 'sqlite3'


class Schedule

	def initialize(date)
		@date = date
		@schedule = {
									"1:00AM" => "Sleep",
									"2:00AM" => "Sleep",
									"3:00AM" => "Sleep",
									"4:00AM" => "Sleep",
									"5:00AM" => "Wake/Read",
									"6:00AM" => "Sit-ups/Shower",
									"7:00AM" => "Medidate/Puja/Breakfast",
									"8:00AM" => "Plan the Day/Read",
									"9:00AM" => "Code",
									"10:00AM" => "Code",
									"11:00AM" => "Code",
									"12:00PM" => "Code",
									"1:00PM" => "Lunch",
									"2:00PM" => "Exercise",
									"3:00PM" => "Code",
									"4:00PM" => "Code",
									"5:00PM" => "Code",
									"6:00PM" => "Code",
									"7:00PM" => "Dinner",
									"8:00PM" => "Brush/Examine the Day",
									"9:00PM" => "Read/Social Media",
									"10:00PM" => "Sleep",
									"11:00PM" => "Sleep",
									"12:00AM" => "Sleep",
								}
		@hours = ["1:00AM","2:00AM","3:00AM","4:00AM","5:00AM","6:00AM","7:00AM","8:00AM","9:00AM","10:00AM","11:00AM","12:00PM","1:00PM","2:00PM","3:00PM","4:00PM","5:00PM","6:00PM","7:00PM","8:00PM","9:00PM","10:00PM","11:00PM","12:00AM","1:00AM","2:00AM","3:00AM","4:00AM","5:00AM","6:00AM","7:00AM","8:00AM","9:00AM","10:00AM","11:00AM","12:00PM","1:00PM","2:00PM","3:00PM","4:00PM","5:00PM","6:00PM","7:00PM","8:00PM","9:00PM","10:00PM","11:00PM","12:00AM"]
	end

	def update(time, new_task)
		@schedule[time] = new_task
	end

	def view
		puts "Schedule on #{@date}:"
		@schedule.each do |time, task|
			puts "#{time} - #{task}"
		end
	end

	def sleep(time)
		sleep_index = @hours.index(time)
		counter = 1
		while counter < 8
		@schedule[@hours[sleep_index]] = "Sleep"
		sleep_index += 1
		counter += 1
		end
	end

	def wake(time)
		sleep_index = @hours.index(time)
		@schedule[@hours[sleep_index]] = "Wake/Read"
		@schedule[@hours[sleep_index + 1]] = "Situps/Shower"
		@schedule[@hours[sleep_index + 2]] = "Meditate/Puja/Breakfast"
	end

	def bed(time)
		sleep_index = @hours.index(time)
		@schedule[@hours[sleep_index]] = "Brush/Examine the Day"
		@schedule[@hours[sleep_index + 1]] = "Read/Social Media"
	end

	def default
		@schedule = {
									"1:00AM" => "Sleep",
									"2:00AM" => "Sleep",
									"3:00AM" => "Sleep",
									"4:00AM" => "Sleep",
									"5:00AM" => "Wake/Read",
									"6:00AM" => "Sit-ups/Shower",
									"7:00AM" => "Medidate/Puja/Breakfast",
									"8:00AM" => "Plan the Day/Read",
									"9:00AM" => "Code",
									"10:00AM" => "Code",
									"11:00AM" => "Code",
									"12:00PM" => "Code",
									"1:00PM" => "Lunch",
									"2:00PM" => "Exercise",
									"3:00PM" => "Code",
									"4:00PM" => "Code",
									"5:00PM" => "Code",
									"6:00PM" => "Code",
									"7:00PM" => "Dinner",
									"8:00PM" => "Brush/Examine the Day",
									"9:00PM" => "Read/Social Media",
									"10:00PM" => "Sleep",
									"11:00PM" => "Sleep",
									"12:00AM" => "Sleep",
								}
	end

end

# DRIVER CODE

puts "Create New List ('N') or Select Existing List ('E')"
list = gets.chomp

if list.downcase == "n"
	puts "Enter date:"
	date = gets.chomp
	schedule = Schedule.new(date)
	
	action = ""
	until action.downcase == 'q'
	puts "\n1. View List (V)\n2. Update List (U)\n3. Morning Routine (W)\n4. Prepare for Bed (B) \n5. 7 Hours of Sleep (S) \n6. Set List to Default (D) \n7. Quit (Q)"
	action = gets.chomp
		if action.downcase == "v"
			schedule.view
		elsif action.downcase == "u"
			puts "\nUpdate Time:"
			time = gets.chomp
			puts "Update Task:"
			new_task = gets.chomp
			schedule.update(time, new_task)
		elsif action.downcase == "w"
			puts "\nWake Up Time:"
			wake_time = gets.chomp
			schedule.wake(wake_time)
		elsif action.downcase == "b"
			puts "\nPrepare for Sleep Time:"
			bed = gets.chomp
			schedule.bed(bed)
		elsif action.downcase == "s"
			puts "\nSleep Time:"
			sleep = gets.chomp
			schedule.sleep(sleep)
		elsif action.downcase == "d"
			schedule.default
			puts "List successfully set to default."
		elsif action.downcase == "q"
			break
		else
			puts "\nInvalid input."
		end
	end
elsif list.downcase == "e"
	puts "Enter date:"
	date = gets.chomp
else
	puts "Invalid input."
end 
