class Person

  attr_reader :prsn_name, :prsn_age
  
  def initialize(name, phone, age, city)
    @prsn_name = name
    @prsn_phone = phone
    @prsn_age = age
    @prsn_city = city
  end

  def display_details
    puts "Person name: #@prsn_name"
    puts "Person phone: #@prsn_phone"
    puts "Person age: #@prsn_age"
    puts "Person city: #@prsn_city"
  end

  def to_arr
    @arr = [@prsn_name, @prsn_phone, @prsn_age, @prsn_city]
  end
end