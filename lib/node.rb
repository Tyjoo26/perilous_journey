require 'pry'

class Node

  attr_reader :surname
  attr_accessor :next_node, :supplies

  def initialize(surname)
    @surname = surname
    @next_node = nil
    @supplies = nil
  end


end
