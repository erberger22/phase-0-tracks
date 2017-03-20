require 'sqlite3'

db = SQLite3::Database.new("holidays.db")
db.results_as_hash = true
#Create tables
create_table_cmd_1 = <<-SQL
  CREATE TABLE IF NOT EXISTS personal_gift(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    gift VARCHAR(255),
    cost INT,
    purchased_id INT,
    FOREIGN KEY (purchased_id) REFERENCES purchased(id)
  );
  SQL

create_table_cmd_2 = <<-SQL
  CREATE TABLE IF NOT EXISTS purchased(
    id INTEGER PRIMARY KEY,
    purchased BOOLEAN
  );
SQL

db.execute(create_table_cmd_1)
db.execute(create_table_cmd_2)
#Will only add true and false values into the table if they do not already exist there
if db.execute("SELECT * FROM purchased") != [[1, true], [2, false]]
	db.execute("INSERT INTO purchased (purchased) VALUES (1)")
	db.execute("INSERT INTO purchased (purchased) VALUES (0)")
end
#Adds new gift reiever, default value for purchased_id so all gifts start as not purchased
def add_reciever(db, name, gift, cost)
  db.execute("INSERT INTO personal_gift (name, gift, cost, purchased_id) VALUES (?, ?, ?, 2)", [name, gift, cost])
end

def update_purchase(db, name)
	db.execute("UPDATE personal_gift SET purchased_id=1 WHERE name=(?)", [name])
end

#test
#update_purchase(db,"Nick")

#present = db.execute("SELECT * FROM personal_gift JOIN purchased ON personal_gift.purchased_id=purchased.id;")

def print_list(db)	
	present = db.execute("SELECT * FROM personal_gift JOIN purchased ON personal_gift.purchased_id=purchased.id;")

	present.each do |present|
	 	if present['purchased'] == 0
	 		puts "You need to buy a #{present['gift']} for #{present['name']}. It costs $#{present['cost']}."
	 	elsif present['purchased'] == 1
	 		puts "You bought a #{present['gift']} for #{present['name']}. It cost $#{present['cost']}."
		end
	end
end

#USER INTERFACE
puts "Do you need to add someone to your list? (y/n)"
user_answer = gets.chomp
if user_answer =="y"
	loop do
		puts "Who do you need to buy a gift for?"
		person = gets.chomp
		puts "What are you going to be getting for #{person}?"
		person_gift = gets.chomp
		puts "How much does #{person_gift} cost?"
		gift_cost = gets.chomp 
		add_reciever(db, person, person_gift, gift_cost)
		puts "do you need to add another person? (y/n)"
		user_answer = gets.chomp
		break if user_answer == "n"
	end
else
	print_list(db)
end


puts "Have you purchased any of the gifts on your list?(y/n)"
user_answer = gets.chomp
if user_answer == "n"
	print_list(db)
else user_answer == "y"
	loop do
		puts "Who's gift have you purchased?"
		name = gets.chomp
		update_purchase(db, name)
		puts "Is that the only purchase you have made? (y/n)"
		done_shopping = gets.chomp
		break if done_shopping =="y"
	end
	print_list(db)
end

