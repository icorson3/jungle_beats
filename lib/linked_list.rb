require_relative 'node.rb'

class LinkedList
attr_accessor :head, :data_array, :position

  def initialize
    @head = nil
    @count = 0
  end

  def head
    @head
  end

  def append(data)
    @count += 1
    if head.nil?
      @head = Node.new(data)
    else
    append_node(head, data)
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
    if @head == nil
      head.data
    else
      data_array = []
      nodes_are_strings(head, data_array)
    end
    data_array.join(' ')
  end

  def nodes_are_strings(current_node, data_array)
    data_array << current_node.data
    if current_node.next_node == nil
      data_array
    else
      nodes_are_strings(current_node.next_node, data_array)
    end
  end

  # def insert(position, data)
  # end

  def insert(position, data)
    new_node = Node.new(data)
    current_node = head
    count = 0
    until count == position
      count += 1
      current_node = current_node.next_node
    end
      new_node.next_node = current_node

      count = 0
      current_node = head
      until count == position -1
        count += 1
        current_node = current_node.next_node
      end
      current_node.next_node = new_node
    end
  end
