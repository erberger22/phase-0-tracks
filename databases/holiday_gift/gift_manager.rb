require 'sqlite3'

db_family = SQLite3::Database.new("faimly.db")
db_gift = SQLite3::Database.new("gift.db")