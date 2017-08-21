require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'
require './lib/linked_list'
require 'pry'

class LinkedListTest < MiniTest::Test

  def test_instance
    list = LinkedList.new

    assert_instance_of LinkedList, list
  end

  def test_head_is_nil
    list = LinkedList.new

    assert_equal nil,  list.head
  end

  def test_append_node
    list = LinkedList.new
    node = Node.new

    assert list.append("West")
  end

  def test_next_node_is_nil
    list = LinkedList.new
    list.append("West")

    assert_equal nil, list.head.next_node
  end

  def test_count_is_one
    list = LinkedList.new
    list.append("West")

    assert_equal 1, list.count
  end

  def test_list_to_string
    list = LinkedList.new
    list.append("West")

    assert_equal "The West Family", list.to_string
  end

  def test_append_rhodes
    list = LinkedList.new

    assert list.append("Rhodes")
  end

  def test_node_added_to_head
    list = LinkedList.new
    list.append("Rhodes")

    assert_equal Node.new("Rhodes"), list.head
  end

  def test_next_node_is_nil
    list = LinkedList.new
    list.append("Rhodes")

    assert_nil     list.head.next_node
  end

  def test_append_additional_nodes
    list = LinkedList.new
    list.append("Rhodes")
    list.append("Hardy")

    assert_equal Node.new("Hardy"), list.head.next_node
  end

  def test_count_after_additional_nodes
    list = LinkedList.new
    list.append("Rhodes")
    list.append("Hardy")

    assert_equal 2, list.count
  end

  def test_to_string_after_added_nodes
    list = LinkedList.new
    list.append("Rhodes")
    list.append("Hardy")

    assert_equal        , 
  end

end
