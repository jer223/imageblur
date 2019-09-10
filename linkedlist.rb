#Implementation of the linked list can be done with the following code:
class LinkedListNode
    attr_accessor :value, :next_node

    def initialize(value, next_node=nil)
      @value = value
      @next_node = next_node
    end
end
#So here is my stack class. This is saying when a value is pushed onto the stack
#that it will create a new node using the value and the pointer becomes what @data
#was previously.
class Stack
    attr_reader :data

    def initialize
        @data = nil
    end

    def push(value)
        @data = LinkedListNode.new(value, @data) 
    end

    def pop
        return print "nil\n" if @data.nil?
        print "#{@data.value}\n"
        @data = @data.next_node
    end

    
end
#Here I define reverse_list which simply traverses the linked list pushing(or stacking)
#each value onto the stack until it hits the end.
def reverse_list(list)
    stack = Stack.new
    while list
        stack.push(list.value)
        list = list.next_node
    end

    return stack.data
end
#The print_values simply traverses the list outputing each linked list 
def print_values(list_node)
    if list_node
        print "#{list_node.value} --> "
        print_values(list_node.next_node)
    else
        print "nil\n"
        return
    end
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)
puts "---------"
revlist = reverse_list(node3)
print_values(revlist)