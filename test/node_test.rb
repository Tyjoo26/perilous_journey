require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'
require 'pry'

class NodeTest < MiniTest::Test

  def test_instance
    node = Node.new("Burke")

    assert_instance_of Node, node
  end

  def test_has_surname
    node = Node.new("Burke")

    assert_equal "Burke", node.surname
  end

  def test_next_node_is_nil
    node = Node.new("Burke")

    assert_nil node.next_node
  end

end
