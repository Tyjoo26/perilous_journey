require 'pry'

class Node

  attr_reader :surname, :next_node

  def initialize(surname = "West", next_node = nil)
    @surname = surname
    @next_node = next_node
  end


end
