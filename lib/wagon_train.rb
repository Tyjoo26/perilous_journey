require './lib/linked_list'
require './lib/node'

class WagonTrain

  attr_reader :list, :supplies


  def initialize
    @list = LinkedList.new
  end

  def append(surname, supplies = nil)
    @list.append(surname, supplies)
  end


end
