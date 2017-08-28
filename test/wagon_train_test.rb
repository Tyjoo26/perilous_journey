require 'minitest/autorun'
require 'minitest/pride'
require './lib/wagon_train'
require './lib/linked_list'
require './lib/node'
require 'pry'

class WagonTrainTest < MiniTest::Test
  def test_does_it_exist
    wt = WagonTrain.new

    assert_instance_of WagonTrain, wt
  end

  def test_does_it_have_list
    wt = WagonTrain.new

    assert_nil wt.list.head
  end

  def test_append_node
    wt = WagonTrain.new
    wt.append("Burke",{"pounds of food" => 200})

    assert_equal "Burke", wt.list.head.surname
  end

  def test_append_another_node
    wt = WagonTrain.new
    wt.list.append("Burke",{"pounds of food" => 200})
    wt.list.append("West",{"pounds of food" => 200})

    assert_equal "West", wt.list.head.next_node.surname
  end

  def test_count_node
    wt = WagonTrain.new
    wt.list.append("Burke",{"pounds of food" => 200})
    wt.list.append("West",{"pounds of food" => 200})

    assert_equal 2, wt.list.count
  end

  def test_append_node_supplies
    wt = WagonTrain.new
    wt.append("Burke", {"pounds of food" => 200})
binding.pry
    assert_equal "Burke", wt.list.head.surname
    assert_equal 200, wt.list.head.supplies["pounds of food"]

  end



end
