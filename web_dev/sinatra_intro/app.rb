# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]}!"
end

# write a GET route with
# route paramters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra!"
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=(?)",[params[:id]])[0]
  student.to_s
end

# a GET route that displays
# an address

get '/contact' do
  "1 Rocket Rd, Hawthorne, CA 90250"
end

# a GET route that takes a person's name
# and says 'Good job, [person's name]!'

get '/goodjob' do
  name = params[:name]
  if name
    "Good job, #{name}!"
  else
    "Good Job!"
  end
end

# a GET route that adds two numbers
# and resonds with the result

get '/add/:num_1/:num_2' do
  num_1 = params[:num_1].to_i
  num_2 = params[:num_2].to_i
  result = num_1 + num_2
  result.to_s
end

# a GET route that takes a route paramter
# and responds with students over the parameter age

get '/agelimit/:age' do
  age = params[:age]
  agelimit = db.execute("SELECT * FROM students WHERE age>(?)",[age])
  response = ""
  agelimit.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end