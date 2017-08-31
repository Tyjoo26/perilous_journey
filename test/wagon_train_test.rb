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

    assert_equal 2, wt.count
  end

  def test_append_node_supplies
    wt = WagonTrain.new
    wt.append("Burke", {"pounds of food" => 200})
    expected = 200

    assert_equal expected, wt.list.head.supplies["pounds of food"]
  end

  def test_prepend_supplies
    wt = WagonTrain.new
    wt.append("Burke", {"pounds of food" => 200})
    wt.list.prepend("Hardy", {"spare wagon tongues" => 3})

    assert_equal 3, wt.list.head.supplies["spare wagon tongues"]
  end

  def test_insert_supplies
<<<<<<< HEAD

=======
>>>>>>> c8377a7c48c3cfaa09a591687fd219af86ff8669
    wt = WagonTrain.new
    wt.append("Burke", {"pounds of food" => 200})
    wt.list.prepend("Hardy", {"spare wagon tongues" => 3})
    wt.list.insert(1, "West", {"pounds of food" => 300})

    assert_equal 300, wt.list.head.next_node.supplies["pounds of food"]
  end

  def test_insert_additional_supplies

    wt = WagonTrain.new
    wt.append("Burke", {"pounds of food" => 200})
    wt.list.prepend("Hardy", {"spare wagon tongues" => 3})
    wt.list.insert(1, "West", {"pounds of food" => 300})
    wt.list.insert(3, "Frank", {"spare wagon tongues" => 5})

    assert_equal 5, wt.list.head.next_node.next_node.next_node.supplies["spare wagon tongues"]
  end

  def test_count_is_one
    wt = WagonTrain.new
    wt.append("Burke", {"pounds of food" => 200})
    wt.list.prepend("Hardy", {"spare wagon tongues" => 3})
    wt.list.insert(1, "West", {"pounds of food" => 300})
    wt.list.insert(3, "Frank", {"spare wagon tongues" => 5})

    assert_equal 4, wt.count
  end

  def test_list_supplies

    wt = WagonTrain.new
    wt.append("Burke", {"pounds of food" => 200})
    wt.list.prepend("Hardy", {"spare wagon tongues" => 3})

    expected = {"spare wagon tongues" => 3,"pounds of food" => 200}

    assert_equal expected, wt.supplies
  end

  def test_supplies_takes_hunt
    wt = WagonTrain.new
    wt.append("Burke", {"pounds of food" => 200})
binding.pry
    assert_equal ({"pounds of food" => 200}), wt.supplies
  end
end
