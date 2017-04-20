# Implementation of a list using a Native array --> ruby does this automatically

class ArrayList
  def initialize
    @storage = []
  end

  # Adds _value_ at the end of the list
  def add(value)
  end

  # Deletes the _last_ value in the array
  def delete
  end

  def to_s
  end

  def include?(key)
  end

  def size
  end

  def max
  end

end

# Initializing an Array List
arr = ArrayList.new

# Adding Elements to Array List
arr.add(5)
arr.add(10)
arr.add(20)

# Display the Array List
puts "Displaying Array List:"
puts arr
puts "Maximum value in list: #{arr.max}"

puts "List size: #{arr.size}"
puts "List include 20? #{arr.include? 20}"

puts "Delete last element and then display the array list:"
arr.delete
puts arr

puts "List size: #{arr.size}"
puts "List include 20? #{arr.include? 20}"
