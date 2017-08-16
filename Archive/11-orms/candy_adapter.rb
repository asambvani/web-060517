require 'sqlite3'
require 'pry'

class Candy

  attr_accessor :name, :calories, :has_milk

  def self.db
    @@db = SQLite3::Database.new("candy.db")
  end

  def insert

    has_milk_int = self.has_milk ? 1:0
    query = ("INSERT INTO candies (name, calories, has_milk) VALUES (#{self.name}, #{self.calories}, #{has_milk_int});")
    self.class.db.execute(query)

  end

  def self.find(id)
    query = "select * from candies where id = "
    return_value = self.db.execute(query).first
    candy = Candy.new
    candy.name = return_value[1]
    candy.calories = return_value[2]
    milk_boolean = return_value[3] == 1 ? true : false
    candy.has_milk = milk_boolean
    candy
  end

  def self.all
    query = "SELECT * FROM candies"
    binding.pry
    return_value = self.db.execute(query)
    return_value
  end

  def 
end


candy = Candy.new
candy.name = "'snickers'"
candy.calories = 9
candy.has_milk = true
candy.insert
puts Candy.all
