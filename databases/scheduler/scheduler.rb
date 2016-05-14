require 'sqlite3'

# SQLite3 Database
db = SQLite3::Database.new("schedule.db")

create_schedules_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS schedules (
		id INTEGER PRIMARY KEY,
		day VARCHAR(255),
		'1:00AM' VARCHAR(255),
		'2:00AM' VARCHAR(255),
		'3:00AM' VARCHAR(255),
		'4:00AM' VARCHAR(255),
		'5:00AM' VARCHAR(255),
		'6:00AM' VARCHAR(255),
		'7:00AM' VARCHAR(255),
		'8:00AM' VARCHAR(255),
		'9:00AM' VARCHAR(255),
		'10:00AM' VARCHAR(255),
		'11:00AM' VARCHAR(255),
		'12:00PM' VARCHAR(255),
		'1:00PM' VARCHAR(255),
		'2:00PM' VARCHAR(255),
		'3:00PM' VARCHAR(255),
		'4:00PM' VARCHAR(255),
		'5:00PM' VARCHAR(255),
		'6:00PM' VARCHAR(255),
		'7:00PM' VARCHAR(255),
		'8:00PM' VARCHAR(255),
		'9:00PM' VARCHAR(255),
		'10:00PM' VARCHAR(255),
		'11:00PM' VARCHAR(255),
		'12:00AM' VARCHAR(255)
	);
SQL

db.execute(create_schedules_table_cmd)

# Schedule Class

class Schedule

	def initialize(database, date)
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
	
		database.execute("INSERT INTO schedules (day, '1:00AM', '2:00AM', '3:00AM', '4:00AM', '5:00AM', '6:00AM', '7:00AM', '8:00AM', '9:00AM', '10:00AM', '11:00AM', '12:00PM', '1:00PM', '2:00PM', '3:00PM', '4:00PM', '5:00PM', '6:00PM', '7:00PM', '8:00PM', '9:00PM', '10:00PM', '11:00PM', '12:00AM') VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)", [@date,@schedule['1:00AM'],@schedule['2:00AM'],@schedule['3:00AM'],@schedule['4:00AM'],@schedule['5:00AM'],@schedule['6:00AM'],@schedule['7:00AM'],@schedule['8:00AM'],@schedule['9:00AM'],@schedule['10:00AM'],@schedule['11:00AM'],@schedule['12:00PM'],@schedule['1:00PM'],@schedule['2:00PM'],@schedule['3:00PM'],@schedule['4:00PM'],@schedule['5:00PM'],@schedule['6:00PM'],@schedule['7:00PM'],@schedule['8:00PM'],@schedule['9:00PM'],@schedule['10:00PM'],@schedule['11:00PM'],@schedule['12:00AM']])
	end

	def update(database, time, new_task)
		@schedule[time] = new_task
		database.execute("UPDATE schedules SET '#{time}' = '#{new_task}' WHERE day = (?)",[@date])
	end

	def view
		puts "Schedule on #{@date}:"
		@schedule.each do |time, task|
			puts "#{time} - #{task}"
		end
	end

	def sleep(database, time)
		sleep_index = @hours.index(time)
		counter = 1
		while counter < 8
		@schedule[@hours[sleep_index]] = "Sleep"
		database.execute("UPDATE schedules SET '#{@hours[sleep_index]}' = 'Sleep' WHERE day = (?)",[@date])
		sleep_index += 1
		counter += 1
		end
	end

	def wake(database, time)
		sleep_index = @hours.index(time)
		@schedule[@hours[sleep_index]] = "Wake/Read"
		@schedule[@hours[sleep_index + 1]] = "Situps/Shower"
		@schedule[@hours[sleep_index + 2]] = "Meditate/Puja/Breakfast"
		database.execute("UPDATE schedules SET '#{@hours[sleep_index]}' = 'Wake/Read' WHERE day = (?)",[@date])
		database.execute("UPDATE schedules SET '#{@hours[sleep_index + 1]}' = 'Situps/Shower' WHERE day = (?)",[@date])
		database.execute("UPDATE schedules SET '#{@hours[sleep_index + 2]}' = 'Meditate/Puja/Breakfast' WHERE day = (?)",[@date])
	end

	def bed(database, time)
		sleep_index = @hours.index(time)
		@schedule[@hours[sleep_index]] = "Brush/Examine the Day"
		@schedule[@hours[sleep_index + 1]] = "Read/Social Media"
		database.execute("UPDATE schedules SET '#{@hours[sleep_index]}' = 'Brush/Examine the Day' WHERE day = (?)",[@date])
		database.execute("UPDATE schedules SET '#{@hours[sleep_index + 1]}' = 'Read/Social Media' WHERE day = (?)",[@date])
	end

end

# DRIVER CODE

# METHOD TO VIEW EXISTING SCHEDULE IN PROPER FORMAT
def view_existing_list(database, date)
	time1AM = database.execute("SELECT schedules.'1:00AM' FROM schedules WHERE schedules.day=(?)",[date])
	time2AM = database.execute("SELECT schedules.'2:00AM' FROM schedules WHERE schedules.day=(?)",[date])
	time3AM = database.execute("SELECT schedules.'3:00AM' FROM schedules WHERE schedules.day=(?)",[date])
	time4AM = database.execute("SELECT schedules.'4:00AM' FROM schedules WHERE schedules.day=(?)",[date])
	time5AM = database.execute("SELECT schedules.'5:00AM' FROM schedules WHERE schedules.day=(?)",[date])
	time6AM = database.execute("SELECT schedules.'6:00AM' FROM schedules WHERE schedules.day=(?)",[date])
	time7AM = database.execute("SELECT schedules.'7:00AM' FROM schedules WHERE schedules.day=(?)",[date])
	time8AM = database.execute("SELECT schedules.'8:00AM' FROM schedules WHERE schedules.day=(?)",[date])
	time9AM = database.execute("SELECT schedules.'9:00AM' FROM schedules WHERE schedules.day=(?)",[date])
	time10AM = database.execute("SELECT schedules.'10:00AM' FROM schedules WHERE schedules.day=(?)",[date])
	time11AM = database.execute("SELECT schedules.'11:00AM' FROM schedules WHERE schedules.day=(?)",[date])
	time12PM = database.execute("SELECT schedules.'12:00PM' FROM schedules WHERE schedules.day=(?)",[date])
	time1PM = database.execute("SELECT schedules.'1:00PM' FROM schedules WHERE schedules.day=(?)",[date])
	time2PM = database.execute("SELECT schedules.'2:00PM' FROM schedules WHERE schedules.day=(?)",[date])
	time3PM = database.execute("SELECT schedules.'3:00PM' FROM schedules WHERE schedules.day=(?)",[date])
	time4PM = database.execute("SELECT schedules.'4:00PM' FROM schedules WHERE schedules.day=(?)",[date])
	time5PM = database.execute("SELECT schedules.'5:00PM' FROM schedules WHERE schedules.day=(?)",[date])
	time6PM = database.execute("SELECT schedules.'6:00PM' FROM schedules WHERE schedules.day=(?)",[date])
	time7PM = database.execute("SELECT schedules.'7:00PM' FROM schedules WHERE schedules.day=(?)",[date])
	time8PM = database.execute("SELECT schedules.'8:00PM' FROM schedules WHERE schedules.day=(?)",[date])
	time9PM = database.execute("SELECT schedules.'9:00PM' FROM schedules WHERE schedules.day=(?)",[date])
	time10PM = database.execute("SELECT schedules.'10:00PM' FROM schedules WHERE schedules.day=(?)",[date])
	time11PM = database.execute("SELECT schedules.'11:00PM' FROM schedules WHERE schedules.day=(?)",[date])
	time12AM = database.execute("SELECT schedules.'12:00AM' FROM schedules WHERE schedules.day=(?)",[date])

	puts "\n1:00AM - #{time1AM[0][0]}"
	puts "2:00AM - #{time2AM[0][0]}"
	puts "3:00AM - #{time3AM[0][0]}"
	puts "4:00AM - #{time4AM[0][0]}"
	puts "5:00AM - #{time5AM[0][0]}"
	puts "6:00AM - #{time6AM[0][0]}"
	puts "7:00AM - #{time7AM[0][0]}"
	puts "8:00AM - #{time8AM[0][0]}"
	puts "9:00AM - #{time9AM[0][0]}"
	puts "10:00AM - #{time10AM[0][0]}"
	puts "11:00AM - #{time11AM[0][0]}"
	puts "12:00PM - #{time12PM[0][0]}"
	puts "1:00PM - #{time1PM[0][0]}"
	puts "2:00PM - #{time2PM[0][0]}"
	puts "3:00PM - #{time3PM[0][0]}"
	puts "4:00PM - #{time4PM[0][0]}"
	puts "5:00PM - #{time5PM[0][0]}"
	puts "6:00PM - #{time6PM[0][0]}"
	puts "7:00PM - #{time7PM[0][0]}"
	puts "8:00PM - #{time8PM[0][0]}"
	puts "9:00PM - #{time9PM[0][0]}"
	puts "10:00PM - #{time10PM[0][0]}"
	puts "11:00PM - #{time11PM[0][0]}"
	puts "12:00AM - #{time12AM[0][0]}"
end

hours = ["1:00AM","2:00AM","3:00AM","4:00AM","5:00AM","6:00AM","7:00AM","8:00AM","9:00AM","10:00AM","11:00AM","12:00PM","1:00PM","2:00PM","3:00PM","4:00PM","5:00PM","6:00PM","7:00PM","8:00PM","9:00PM","10:00PM","11:00PM","12:00AM","1:00AM","2:00AM","3:00AM","4:00AM","5:00AM","6:00AM","7:00AM","8:00AM","9:00AM","10:00AM","11:00AM","12:00PM","1:00PM","2:00PM","3:00PM","4:00PM","5:00PM","6:00PM","7:00PM","8:00PM","9:00PM","10:00PM","11:00PM","12:00AM"]

puts "Create New Schedule ('N') or Select Existing Schedule ('E')"
list = gets.chomp

if list.downcase == "n"
	puts "Enter date:"
	date = gets.chomp
	schedule = Schedule.new(db, date)
	
	# NEW SCHEDULES
	action = ""
	until action.downcase == 'q'
	puts "\n1. View List (V)\n2. Update List (U)\n3. Morning Routine (W)\n4. Prepare for Bed (B) \n5. 7 Hours of Sleep (S) \n6. Quit (Q)"
	action = gets.chomp
		if action.downcase == "v"
			schedule.view
		elsif action.downcase == "u"
			puts "\nUpdate Time:"
			time = gets.chomp
			puts "Update Task:"
			new_task = gets.chomp
			schedule.update(db, time, new_task)
		elsif action.downcase == "w"
			puts "\nWake Up Time:"
			wake_time = gets.chomp
			schedule.wake(db, wake_time)
		elsif action.downcase == "b"
			puts "\nPrepare for Sleep Time:"
			bed = gets.chomp
			schedule.bed(db, bed)
		elsif action.downcase == "s"
			puts "\nSleep Time:"
			sleep = gets.chomp
			schedule.sleep(db, sleep)
		elsif action.downcase == "q"
			break
		else
			puts "\nInvalid input."
		end
	end

# EXISTING SCHEDULES	
elsif list.downcase == "e"
	puts "\nSchedules in database:"
	puts db.execute("SELECT schedules.day FROM schedules")

	puts "\nEnter schedule date:"
	date = gets.chomp

	action = ""
		until action.downcase == 'q'
		puts "\n1. View List (V)\n2. Update List (U)\n3. Morning Routine (W)\n4. Prepare for Bed (B) \n5. 7 Hours of Sleep (S) \n6. Quit (Q)"
		action = gets.chomp
			if action.downcase == "v"
				view_existing_list(db, date)
			elsif action.downcase == "u"
				puts "\nUpdate Time:"
				time = gets.chomp
				puts "Update Task:"
				new_task = gets.chomp
					db.execute("UPDATE schedules SET '#{time}' = '#{new_task}' WHERE day = (?)",[date])
			elsif action.downcase == "w"
				puts "\nWake Up Time:"
				wake_time = gets.chomp
				sleep_index = hours.index(wake_time)
					db.execute("UPDATE schedules SET '#{hours[sleep_index]}' = 'Wake/Read' WHERE day = (?)",[date])
					db.execute("UPDATE schedules SET '#{hours[sleep_index + 1]}' = 'Situps/Shower' WHERE day = (?)",[date])
					db.execute("UPDATE schedules SET '#{hours[sleep_index + 2]}' = 'Meditate/Puja/Breakfast' WHERE day = (?)",[date])
			elsif action.downcase == "b"
				puts "\nPrepare for Sleep Time:"
				bed = gets.chomp
					sleep_index = hours.index(bed)
					db.execute("UPDATE schedules SET '#{hours[sleep_index]}' = 'Brush/Examine the Day' WHERE day = (?)",[date])
					db.execute("UPDATE schedules SET '#{hours[sleep_index + 1]}' = 'Read/Social Media' WHERE day = (?)",[date])
			elsif action.downcase == "s"
				puts "\nSleep Time:"
				sleep = gets.chomp
					sleep_index = hours.index(sleep)
					counter = 1
					while counter < 8
						db.execute("UPDATE schedules SET '#{hours[sleep_index]}' = 'Sleep' WHERE day = (?)",[date])
						
						sleep_index += 1
						counter += 1
					end
			elsif action.downcase == "q"
				break
			else
				puts "\nInvalid input."
			end
		end
else
	puts "Invalid input."
end 
