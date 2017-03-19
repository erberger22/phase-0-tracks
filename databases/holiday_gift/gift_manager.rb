require 'sqlite3'

db = SQLite3::Database.new("holidays.db")
db.results_as_hash = true

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
if db.execute("SELECT * FROM purchased") != [[1, true], [2, false]]
	db.execute("INSERT INTO purchased (purchased) VALUES (1)")
	db.execute("INSERT INTO purchased (purchased) VALUES (0)")
end

def add_reciever(db, name, gift, cost)
  db.execute("INSERT INTO personal_gift (name, gift, cost, purchased_id) VALUES (?, ?, ?, 2)", [name, gift, cost])
end


present = db.execute("SELECT * FROM personal_gift JOIN purchased ON personal_gift.purchased_id=purchased.id;")
# counter = 0
# p present['purchased'] == 0

present.each do |present|
 	if present['purchased'] == 0
 		puts "You need to buy a #{present['gift']} for #{present['name']}. It costs $#{present['cost']}."
 	elsif present['purchased'] == 1
 		puts "You bought a #{present['gift']} for #{present['name']}. It cost $#{present['cost']}."
	end
end





