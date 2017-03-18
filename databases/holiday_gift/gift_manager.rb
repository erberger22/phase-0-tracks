require 'sqlite3'

db = SQLite3::Database.new("holidays.db")

create_table_cmd_1 = <<-SQL
  CREATE TABLE IF NOT EXISTS familymember(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT,
    likes_hats BOOLEAN, 
    gift VARCHAR(255)
  )
  SQL

db.execute(create_table_cmd_1)
