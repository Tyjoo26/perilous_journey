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
    supply = {}
    current = list.head
    supply = supply.merge(current.supplies)
    until current.next_node.nil?
      current = current.next_node
      supply = supply.merge(current.supplies)
    end
    p supply
  end
  def go_hunting
      animal_counts = {"squirrel" => 0, "deer" => 0, "bison" => 0 }
      animal_key = {"squirrel" => 2, "deer" => 40, "bison" => 100}

      hunting_food = 0

      rand(0..5).times do
        animal = animal_key.keys.sample
        hunting_food += animal_key[animal]
        animal_counts[animal] += 1
      end
        if animal_counts["squirrel"] == 1 || 0
          print "You got #{animal_counts["squirrel"]} squirrel, #{animal_counts["deer"]} deer, and #{animal_counts["bison"]} bison for a total of #{hunting_food} pounds of food"
          else
            print "You got #{animal_counts["squirrel"]} squirrels, #{animal_counts["deer"]} deer, and #{animal_counts["bison"]} bison for a total of #{hunting_food} pounds of food"
        end

      result = { "pounds of food" => hunting_food}
      @list.head.supplies.merge!(result) {|key, v1, v2| v1 + v2}

      result
  end
end
  # def go_hunting
  #   a = ["squirrel", "bison", "deer"]
  #   input = rand(5)
  #   input2 = rand(5) - input
  #   input3 = input - input2
  #
  #
  #   output1 = "You got #{input} #{a.sample},"
  #   output2 = " #{input2.to_i} #{a.sample}"
  #   output3 = " and #{input3.to_i} #{a.sample}"
  #   output = output1 + output2 +output3
  #     if output.include?("s" && "2" || "3")
  #      output.gsub("squirrel", "squirrels")
  #    else
  #      output
  #     end
  #   end
  # end
