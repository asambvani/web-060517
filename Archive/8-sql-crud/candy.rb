require 'sqlite3'
require 'pry'

def db
  @db ||= SQLite3::Database.new "candy_db.db"
end

def create (name, calories, has_milk)
  binding.pry
  @db.execute("INSERT INTO candies (name, calories, has_milk) VALUES (#{name},#{calories},#{has_milk});")
end

def index
  puts @db.execute("SELECT name FROM candies")
end

def show(id)
  puts @db.execute("SELECT * FROM candies WHERE id == #{id};")
end

def update(id, attributes)
  #attributes = {name: 'chocolate and peanuts', calories: 10 ...}
end

#can destroy candy by the id

def destroy(id)

  @db.execute("DELTE FROM candies WHERE id = #{id};")

end

pry.start


SELECT title FROM books
WHERE author_id =2
