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

  def to_s
    toReturn = "["
    @size.times do |i|
      toReturn += @storage[i].to_s
      toReturn += ", " unless i >= (@size - 1)
    end
    return toReturn + "]"
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
