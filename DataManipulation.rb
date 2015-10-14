require 'csv'
require_relative 'Person'

class DataManipulation
  def initialize(file_path)
    @prsn_array = Array.new

    CSV.foreach(file_path) do |row|
      name, phone, age, city = row
      @prsn_array << Person.new(name, phone, age, city)
    end
  end

  def display_details
    @prsn_array.each { |row| puts row.display_details }
  end

  def write_csv(file_path)
    CSV.open(file_path, "wb") do |csv|
      @prsn_array.each { |arr| csv << arr.to_arr }
    end
  end


  def method_missing(name)
    if name.to_s == 'name'
      @prsn_array.sort! { |x, y| x.prsn_name <=> y.prsn_name }
    elsif name.to_s == 'age'
      @prsn_array.sort! { |x, y| y.prsn_age <=> x.prsn_age }
    end
  end
end