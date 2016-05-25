# Implementation of a list using a Native array --> ruby does this automatically

class ArrayList
  def initialize
    @storage = []
  end

  def add(value)
  end

  def delete(value)
  end

  def display
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
arr.add(10)
arr.add(20)

# Display the Array List
puts "Displaying Array List:"
arr.display

puts "Delete 10 and then display the array list:"
arr.delete(10)
arr.display
