require "sqlite3"

db  = SQLite3::Database.new "candy_db.db"
puts "HI" #db.execute("SELECT * FROM candies;")
