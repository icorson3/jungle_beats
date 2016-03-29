require_relative 'node.rb'

class LinkedList
attr_reader :head

  def initialize
    @head = nil
    @count = 0
  end

  def head
    @head
  end

  def append(data)
    @count += 1
    if @head.nil?
      @head = Node.new(data)
    else
      append_node(@head, data)
    end
  end

  def append_node(current_node, data)
    if current_node.next_node == nil
      current_node.next_node = Node.new(data)
    else
      append_node(current_node.next_node, data)
    end
  end

  def count
    @count
  end

  def to_string
    if @count == 1
      head.data
    else
    head.data + " " + head.next_node.data
  end
  end

# # list = LinkedList.new
# # => <LinkedList head=nil #45678904567>
# # > list.head
# # => nil
# # > list.append("doop")
# # => "doop"
# # > list
# # => <LinkedList head=<Node data="doop" next_node=nil #5678904567890> #45678904567>
# # > list.head
# # => <Node data="doop" next_node=nil #5678904567890>
# # > list.head.next_node
# # => nil
# # > list.append("deep")
# # => "deep"
# # > list.head.next_node
# # => <Node data="deep" next_node=nil #5678904567890>
# # > list.count
# # => 2
# # > list.to_string
# # => "doop deep"
end
