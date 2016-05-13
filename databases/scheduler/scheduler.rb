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
	end

	def update(time)
		puts "New Task:"
		new_task = gets.chomp
		@schedule[time] = new_task
	end

	def view
		puts "Schedule on #{@date}:"
		@schedule.each do |time, task|
			puts "#{time} - #{task}"
		end
	end

	def sleep(time)
		hours = ["1:00AM","2:00AM","3:00AM","4:00AM","5:00AM","6:00AM","7:00AM","8:00AM","9:00AM","10:00AM","11:00AM","12:00PM","1:00PM","2:00PM","3:00PM","4:00PM","5:00PM","6:00PM","7:00PM","8:00PM","9:00PM","10:00PM","11:00PM","12:00AM"]
		sleep_index = hours.index(time)
		counter = 1
		while counter < 8
		@schedule[hours[sleep_index]] = "Sleep"
		sleep_index += 1
		counter += 1
		end
	end

end

today = Schedule.new("05/13/16")
today.view
today.sleep("11:00PM")
today.view