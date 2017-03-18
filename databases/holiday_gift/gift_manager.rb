require 'sqlite3'

db = SQLite3::Database.new("holidays.db")

create_table_cmd_1 = <<-SQL
  CREATE TABLE IF NOT EXISTS personal_gift(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    gift VARCHAR(255),
    cost INT,
    purchased_id INT
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

db.execute("INSERT INTO purchased (purchased) VALUES ('TRUE')")
db.execute("INSERT INTO purchased (purchased) VALUES ('FALSE')")
