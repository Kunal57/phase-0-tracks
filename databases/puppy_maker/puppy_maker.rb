# OPERATION PUPPY EXPLOSION!

# Talk about Object Relational Mapping (ORM)
# Taking relational data (tables that are related to
# each other through primary and foreign keys) and use it in an object oriented language like Ruby. Basically how do
# we make this data in sql and table format useful in a 
# scripting language like Ruby or Python. 

# Require gems
# A gem is pre-written ruby that you can simply require (Ex: Rspec).
require 'sqlite3'
require 'faker'

# Create SQLite3 database
db = SQLite3::Database.new("puppies.db")
db.results_as_hash = true

# Learn about fancy string delimiters
create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS puppies (
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		age INT
	);
SQL

# Create a puppy table (if it's not there already)
db.execute(create_table_cmd)

# Add a test kitten
#  db.execute("INSERT INTO puppies (name, age) VALUES ('Bob',10)")

# Explore ORM by retrieving data

# Add LOOOOTS of puppies!
# SO. MANY. PUPPIES.
# PuppyExplosion

def create_puppy(database, name, age)
	database.execute("INSERT INTO puppies (name, age) VALUES (?,?)", [name, age])
end

10000.times do
	create_puppy(db, Faker::Name.name, Random.rand(10))
end


puppies = db.execute("SELECT * FROM puppies;")
puppies.each do |puppy|
	puts "#{puppy['name']} is #{puppy['age']}"
end