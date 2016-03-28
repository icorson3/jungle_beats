class LinkedList
attr_reader :head, :items

  def initialize
    @head = nil
    @count = 0
  end

  def append(data)
    if head == nil
      @head = Node.new(data)
      @count += 1
    else
      head
    end
  end

  def count
    @count
  end

  def to_string
    head.data
  end


end
# require "./lib/linked_list"
# > list = LinkedList.new
# => <LinkedList head=nil #45678904567>
# > list.head
# => nil
# > list.append("doop")
# => "doop"
# > list
# => <LinkedList head=<Node data="doop" next_node=nil #5678904567890> #45678904567>
# > list.head.next_node
# => nil
# > list.count
# => 1
# > list.to_string
# => "doop"
