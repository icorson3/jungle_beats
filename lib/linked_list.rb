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
    elsif head.data != nil
      require "pry"; binding.pry
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
#
# list = LinkedList.new
# => <LinkedList head=nil #45678904567>
# > list.head
# => nil
# > list.append("doop")
# => "doop"
# > list
# => <LinkedList head=<Node data="doop" next_node=nil #5678904567890> #45678904567>
# > list.head
# => <Node data="doop" next_node=nil #5678904567890>
# > list.head.next_node
# => nil
# > list.append("deep")
# => "deep"
# > list.head.next_node
# => <Node data="deep" next_node=nil #5678904567890>
# > list.count
# => 2
# > list.to_string
# => "doop deep"