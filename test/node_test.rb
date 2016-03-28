require 'minitest/autorun'
require 'minitest/pride'
require './lib/node.rb'

class NodeTest < Minitest::Test

  def test_node_class_exists
    node = Node.new
    assert node
  end

  def test_node_takes_data
    node = Node.new("plop")
    assert_equal "plop", node.data
  end

  def test_node_takes_different_data
    node = Node.new("tee")
    assert_equal "tee", node.data
  end

  def test_next_node_is_nil
    node = Node.new("plop")
    assert_equal nil, node.next_node
  end
end
