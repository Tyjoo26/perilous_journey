require 'pry'
require './lib/node'

class LinkedList

  attr_reader :head, :count

  def initialize(head = nil)
    @head = head
    @count = 0
  end

  def append(data)
    @count += 1
    if @head == nil
      @head = Node.new(data)
    else @head != nil
      @head.next_node = Node.new(data)
    end
  end

  def to_string
    "The #{@head.surname} Family"
  end
end
