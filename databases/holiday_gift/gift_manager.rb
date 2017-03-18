require 'sqlite3'

db = SQLite3::Database.new("holidays.db")

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
    purchased VARCHAR(255)
  );
SQL

db.execute(create_table_cmd_1)
db.execute(create_table_cmd_2)
if db.execute("SELECT * FROM purchased") != [[1, "TRUE"], [2, "FALSE"]]
	db.execute("INSERT INTO purchased (purchased) VALUES ('TRUE')")
	db.execute("INSERT INTO purchased (purchased) VALUES ('FALSE')")
end

boolean = db.execute("SELECT * FROM purchased")
p boolean
# def add_reciever(db, name, gift, cost)
#   db.execute("INSERT INTO personal_gift (name, gift, cost, purchased_id) VALUES (?, ?, ?, 2)", [name, gift, cost])
# end

# add_reciever(db, "Karl", "Drone", 1000)

# present = db.execute("SELECT * FROM personal_gift")
# puts present
