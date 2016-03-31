require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list.rb'
require './lib/node'

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

  def test_can_find_a_tail
    list = LinkedList.new
    list.append('plop')
    list.append('laugh')
    list.append('bing')
    assert_equal 'bing', list.tail.data
    assert_equal nil, list.tail.next_node
  end

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

  def test_list_can_have_a_lot_of_nodes
    list = LinkedList.new
    list.append('deep')
    list.append('woo')
    list.append('shi')
    list.append('shu')
    list.append('blop')
    assert_equal 'deep woo shi shu blop', list.to_string
  end

  def test_list_can_be_prepended_with_one_item
    list = LinkedList.new
    list.append('plop')
    assert_equal "plop", list.to_string
    list.append('suu')
    list.prepend('dop')
    assert_equal 'dop plop suu', list.to_string
    assert_equal 3, list.count
  end

  def test_can_find_by_position_and_pop_one
    list = LinkedList.new
    list.append('deep')
    list.append('woo')
    list.append('shi')
    list.append('shu')
    list.append('blop')
    assert_equal "shi", list.find(2,1)
  end

  def test_can_find_by_position_and_pop_two
    list = LinkedList.new
    list.append('deep')
    list.append('woo')
    list.append('shi')
    list.append('shu')
    list.append('blop')
    assert_equal "woo shi shu", list.find(1,3)
  end


  def test_it_includes_the_data
    list = LinkedList.new
    list.append('deep')
    list.append('woo')
    list.append('shi')
    list.append('shu')
    list.append('blop')
    assert_equal true, list.include?('deep')
  end

  def test_list_does_not_include_the_data
    list = LinkedList.new
    list.append('deep')
    list.append('woo')
    list.append('shi')
    list.append('shu')
    list.append('blop')
    assert_equal false, list.include?('dep')
  end

  def test_pop_can_pop_the_last_node_data
    list = LinkedList.new
    list.append('deep')
    list.append('woo')
    list.append('shi')
    list.append('shu')
    list.append('blop')
    assert_equal 'blop', list.pop

    assert_equal 4, list.count
    assert_equal 'shu', list.pop
    assert_equal 'deep woo shi', list.to_string
  end

end
