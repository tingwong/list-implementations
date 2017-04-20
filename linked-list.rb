# Quick Example of a Self Referential Data Structure in Ruby
# NODE -> contains a value and a pointer to (next_node)
# LinkedList -> This class holds the linked list functions - adding a node, traversing and displaying the linked list

class Node
   attr_accessor :value, :next_node

   def initialize(val,next_in_line=nil)
       @value = val
       @next_node = next_in_line
       puts "Initialized a Node with value:  " + value.to_s
   end
end

class LinkedList
   def initialize(val)
       # Initialize a new node at the head
       @head = Node.new(val)
   end

   def add(value)
       # Traverse to the end of the list
       # And insert a new node over there with the specified value
       current = @head
       while current.next_node != nil
           current = current.next_node
       end
       current.next_node = Node.new(value,nil)
       self
   end

   def delete(val)
       current = @head
       if current.value == val
           # If the head is the element to be delete, the head needs to be updated
           @head = @head.next_node
       else
           # ... x -> y -> z
           # Suppose y is the value to be deleted, you need to reshape the above list to :
           #   ... x->z
           # ( and z is basically y.next_node )
           current = @head
           while (current != nil) && (current.next_node != nil) && ((current.next_node).value != val)
               current = current.next_node
           end

           if (current != nil) && (current.next_node != nil)
               current.next_node = (current.next_node).next_node
           end
       end
   end

   def to_s
       # Traverse through the list till you hit the "nil" at the end
       current = @head
       full_list = []
       while current.next_node != nil
           full_list += [current.value.to_s]
           current = current.next_node
       end
       full_list += [current.value.to_s]
       return full_list.join("->") + "\n"
   end

   def include?(key)
     current = @head
     while current != nil
         return true if current.value == key
         current = current.next_node
     end
     return false
   end

   def size
     return 0 if @head == nil
     count = 0
     current = @head
     while current != nil
         count += 1
         current = current.next_node
     end
     return count
   end

   def max
     return nil if @head == nil
     current = @head
     max = current.value
     while current != nil
         if current.value > max
            max = current.value
         end
         current = current.next_node
     end
     return max
   end

end

# Initializing a Linked List with a node containing value (5)
ll = LinkedList.new(5)

# Adding Elements to Linked List
ll.add(10)
ll.add(20)

# Display the Linked List
puts "Displaying Linked List:"
puts ll
puts "Maximum value in list: #{ll.max}"

puts "List size: #{ll.size}"
puts "List include 10? #{ll.include? 10}"

puts "Delete 10 and then display the linked list:"
ll.delete(10)
puts ll

puts "List size: #{ll.size}"
puts "List include 10? #{ll.include? 10}"

=begin
Output:
Initialized a Node with value:  5
Initialized a Node with value:  10
Initialized a Node with value:  20
Displaying Linked List:
5->10->20
Delete 10 and then display the linked list:
5->20
=end
