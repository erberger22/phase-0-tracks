require 'sqlite3'

db = SQLite3::Database.new("holidays.db")

create_table_cmd_1 = <<-SQL
  CREATE TABLE IF NOT EXISTS personal_gift(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    gift VARCHAR(255),
    cost INT,
    purchased BOOLEAN
  )
  SQL

db.execute(create_table_cmd_1)

def add_gift_reciever(db, name, gift, cost, purchased)
  db.execute("INSERT INTO familymember (name, gift, cost, purchased) VALUES (?, ?, ?, ?)", [name, gift, cost, purchased])
end


