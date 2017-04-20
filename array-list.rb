# Implementation of a list using a Native array --> ruby does this automatically

class ArrayList
  def initialize
    @storage = [0,0,0,0,0,0,0,0,0,0]
    @size = 0
  end

  # Adds _value_ at the end of the list
  def add(value)
    @storage[@size] = value
    @size += 1
  end

  # Deletes the _last_ value in the array
  def delete
#    @storage[@size-1] = 0
    @size -= 1
  end

  def display
    toReturn = "["
    @size.times do |i|
      toReturn += @storage[i].to_s
      toReturn += ", " unless i >= (@size - 1)
    end
    puts toReturn + "]"
  end

  def include?(key)
    @size.times do |i|
      return true if @storage[i] == key
    end
    return false
  end

  def size
    return @size
  end

  def max
    return nil if @size == 0
    max = @storage[0]
    @size.times do |i|
      if @storage[i] > max
        max = @storage[i]
      end
    end
    return max
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
arr.display
puts "Maximum value in list: #{arr.max}"

puts "List size: #{arr.size}"
puts "List include 20? #{arr.include? 20}"

puts "Delete last element and then display the array list:"
arr.delete
arr.display

puts "List size: #{arr.size}"
puts "List include 20? #{arr.include? 20}"
