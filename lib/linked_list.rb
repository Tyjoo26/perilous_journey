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

  def not_head_node
    if node.next_node == nil

    else node.next_node != nil

    end
  end

  def to_string
    "The #{@head.surname} Family"
  end
end
