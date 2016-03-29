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
    list = LinkedList.new
    list.append('doop')
    assert_equal "doop", list.head.data
  end

  def test_next_node_is_nil_on_list
    list = LinkedList.new
    list.append('doop')
    assert_equal nil , list.head.next_node
  end

  def test_1_item_in_list
    list = LinkedList.new
    list.append('doop')
    assert_equal 1, list.count
  end

  def test_data_is_returned_as_a_string
    list = LinkedList.new
    list.append('deep')
    assert_equal 'deep', list.to_string
  end
# #
# #   def test_can_find_a_tail
#     list = LinkedList.new(nil)
#     assert_equal nil, list.tail.data
#     assert_equal nil, list.tail.next_node
#   end
# #
  def test_can_append_the_list_more_than_once
    list = LinkedList.new
    list.append('doop')
    assert_equal 'doop', list.head.data
    assert_equal nil, list.head.next_node
    list.append('deep')
    assert_equal 'deep', list.head.next_node.data
  end

  def test_can_count_multiple_items
    list = LinkedList.new
    list.append('plop')
    list.append('laugh')
    list.append('bing')
    assert_equal 3, list.count
  end

  def test_to_string_returns_a_string_of_all_data
    list = LinkedList.new
    list.append('plop')
    list.append('laugh')
    list.append('bing')
    assert_equal 'plop laugh bing', list.to_string
  end

  def test_insert_method_can_insert_in_position
    list = LinkedList.new
    list.append('dop')
    list.append('plop')
    list.append('suu')
    list.insert(1, 'woo')
    assert_equal 'dop woo plop suu', list.to_string
  end
end
