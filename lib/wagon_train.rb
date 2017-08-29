require './lib/linked_list'
require './lib/node'

class WagonTrain

  attr_reader :list, :supplies

  def initialize
    @list = LinkedList.new
  end

  def append(surname, supplies)
    @list.append(surname, supplies)
  end

  def go_hunting
    a = ["squirrel", "deer", "bison"]
    random = rand(4)
    output = "You got #{random} #{a.sample}, #{random} #{a.sample}, and #{random} #{a.sample}"
      # if output.include?("squirrel" && )
      #  output.gsub("squirrel", "squirrels")
    #  else
    #    output
    #   end
    # end

  end
