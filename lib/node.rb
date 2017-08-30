require 'pry'

class Node

  attr_reader :surname
  attr_accessor :next_node, :supplies

<<<<<<< HEAD
  def initialize(surname, supplies = nil)
=======
  def initialize(surname,supplies = nil)
>>>>>>> 589d7596f50a0542319fc5ab9fe9cc552aba4fdd
    @surname = surname
    @next_node = nil
    @supplies = supplies
  end


end
