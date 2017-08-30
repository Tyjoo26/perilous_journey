require './lib/linked_list'
require './lib/node'
require 'pry'

class WagonTrain

  attr_reader :list, :supplies

  def initialize
    @list = LinkedList.new
  end

  def append(surname, supplies)
    @list.append(surname, supplies)
  end

  def supplies
    current = list.head
    until current.next_node.nil?
      current = current.next_node

    end
    p current.supplies
  end

  def go_hunting
    a = ["squirrel", "deer", "bison"]

    output1 = "You got #{rand(5)} #{a.sample},"
    output2 = " #{rand(5)} #{a.sample}"
    output3 = " and #{rand(5)} #{a.sample}"
    output = output1 + output2 +output3
      if output.include?("s" && "2" || "3")
       output.gsub("squirrel", "squirrels")
     else
       output
      end
    end
  end
