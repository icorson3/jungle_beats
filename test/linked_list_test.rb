require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list.rb'
require './lib/node.rb'

class LinkedListTest < Minitest::Test

  def test_linked_list_class_exists
    list = LinkedList.new
    assert list
  end

  def test_linked_list_head_is_nil
    list = LinkedList.new
    assert_equal nil, list.head
  end

  def test_can_append_linked_list
    skip
    list = LinkedList.new
    node_1 = Node.new("doop")
    require "pry"; binding.pry
    assert_equal "doop", list.append
  end
end
