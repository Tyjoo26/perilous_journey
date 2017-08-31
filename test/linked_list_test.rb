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

    assert_nil  list.head
  end

  def test_append_node
    list = LinkedList.new
    assert_nil list.head
    list.append("West")

    assert_equal "West" , list.head.surname
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

    assert_equal "The West family", list.to_string
  end

  def test_append_rhodes
    list = LinkedList.new
    list.append("Rhodes")

    assert_equal "Rhodes" , list.head.surname
  end

  def test_node_added_to_head
    list = LinkedList.new
    expected = list.append("Rhodes")

    assert_equal expected, list.head
    assert_equal "Rhodes", list.head.surname
  end

  def test_next_node_is_nil
    list = LinkedList.new
    list.append("Rhodes")

    assert_nil     list.head.next_node
  end

  def test_append_3_additional_nodes
    list = LinkedList.new
    list.append("Rhodes")
    list.append("Hardy")
    list.append("Johnson")


    assert_equal "Johnson", list.head.next_node.next_node.surname

  end

  def test_count_after_additional_nodes

    list = LinkedList.new
    list.append("Rhodes")
    list.append("Hardy")
    list.append("Johnson")


    assert_equal 3, list.count
  end

  def test_to_string_after_added_nodes
    list = LinkedList.new
    list.append("Rhodes")
    list.append("Hardy")
    list.append("Johnson")
    expected = "The Rhodes family, followed by the Hardy family, followed by the Johnson family"

    assert_equal expected, list.to_string
  end

  def test_append_brooks
    list = LinkedList.new
    expected = list.append("Brooks")

    assert_equal expected, list.head
    assert_equal "Brooks", list.head.surname
  end

  def test_to_string_brooks
    list = LinkedList.new
    list.append("Brooks")

    assert_equal "The Brooks family", list.to_string
  end

  def test_prepend
    list = LinkedList.new
    list.append("Brooks")
    list.append("Henderson")
    list.prepend("McKinney")
    list.prepend("Johnson")
    list.prepend("Marcus")

    assert_equal "Marcus", list.head.surname
  end

  def test_prepend_to_string
    list = LinkedList.new
    list.append("Brooks")
    list.append("Henderson")
    list.prepend("McKinney")
    list.prepend("Johnson")
    list.append("Frank")

    expected = "The Johnson family, followed by the McKinney family, followed by the Brooks family, followed by the Henderson family, followed by the Frank family"

    assert_equal expected, list.to_string
  end

  def test_count
    list = LinkedList.new
    list.append("Brooks")
    list.append("Henderson")
    list.prepend("McKinney")
    list.prepend("Johnson")
    list.append("Frank")

    assert_equal 5, list.count
  end

  def test_insert
    list = LinkedList.new
    list.append("Brooks")
    list.append("Henderson")
    list.prepend("McKinney")
    list.insert(1, "Lawson")
    list.insert(3, "Frank")
    list.insert(4, "Jerry")

    assert_equal "Jerry", list.head.next_node.next_node.next_node.next_node.surname
  end

  def to_string_after_insert
    list = LinkedList.new
    list.append("Brooks")
    list.append("Henderson")
    list.prepend("McKinney")
    list.insert(1 , "Lawson")
    list.insert(3, "Frank")

    expected = "The McKinney family, followed by the Lawson family, followed by the Brooks family, followed by the Frank family, followed by the Henderson family"

    assert_equal expected, list.to_string
  end

  def test_find_method_2_1
    list = LinkedList.new
    list.append("Brooks")
    list.append("Henderson")
    list.prepend("McKinney")
    list.insert(1, "Lawson")
    list.insert(3, "Frank")
    list.insert(4, "Jerry")


    assert_equal "The Frank family, followed by the Jerry family, followed by the Henderson family", list.find(3, 3)
  end

  def test_find_method_1_4
    list = LinkedList.new
    list.append("Brooks")
    list.append("Henderson")
    list.prepend("McKinney")
    list.insert(1 , "Lawson")
    list.insert(3, "Frank")

    assert_equal "The Lawson family, followed by the Brooks family, followed by the Frank family, followed by the Henderson family", list.find(1, 4)
  end

  def test_find_method_1_3
    list = LinkedList.new
    list.append("Brooks")
    list.append("Henderson")
    list.prepend("McKinney")
    list.insert(1 , "Lawson")
    
    expected = "The Lawson family, followed by the Brooks family, followed by the Henderson family"

    assert_equal expected, list.find(1, 3)
  end


  def test_includes?
    list = LinkedList.new
    list.append("Brooks")
    list.append("Henderson")
    list.prepend("McKinney")
    list.insert(1 , "Lawson")
    list.insert(3, "Frank")
    list.insert(4, "Jerry")


    assert_equal true,  list.includes?("Brooks")
  end

  def test_includes_false
    list = LinkedList.new
    list.append("Brooks")
    list.append("Henderson")
    list.prepend("McKinney")
    list.insert(1 , "Lawson")


    assert_equal false,  list.includes?("Chapman")
  end

  def test_pop
    list = LinkedList.new
    list.append("Brooks")
    list.append("Henderson")
    list.prepend("McKinney")
    list.insert(1 , "Lawson")
    expected = "The Henderson family has died of dysentery"

    assert_equal expected, list.pop
  end

  def test_pop
    list = LinkedList.new
    list.append("Brooks")
    list.append("Henderson")
    list.prepend("McKinney")
    list.insert(1 , "Lawson")
    list.pop
    expected = "The Brooks family has died of dysentery"

    assert_equal expected, list.pop
  end

  def test_pop
    list = LinkedList.new
    list.append("Brooks")
    list.append("Henderson")
    list.prepend("McKinney")
    list.insert(1, "Lawson")
    list.insert(3, "Frank")
    list.insert(4, "Jerry")
    list.pop
    list.pop

    expected = "The Frank family has died of dysentery"

    assert_equal expected, list.pop
  end

  def test_tail_surname
    list = LinkedList.new
    list.append("McKinney")
    list.append("Henderson")
    list.append("Frank")



    expected = "Frank"

    assert_equal expected, list.tail.surname
  end

  def test_tail_next_node_is_head
    list = LinkedList.new
    list.append("Brooks")
    list.append("Henderson")
    list.prepend("McKinney")
    list.insert(1, "Frank")



    actual = list.tail.next_node
    expected = list.head

    assert_equal expected, actual
  end

  def test_tail_next_node_is_head_with_insert_and_find
    list = LinkedList.new
    list.append("Brooks")
    list.append("Henderson")
    list.prepend("McKinney")
    list.insert(1 , "Lawson")
    list.insert(3, "Frank")
    list.insert(4, "Jerry")

    actual = list.tail.next_node
    expected = list.head

    assert_equal expected, actual
  end



end
