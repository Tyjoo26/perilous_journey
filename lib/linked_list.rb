require 'pry'
require './lib/node'

class LinkedList

  attr_reader :count, :head

  def initialize
    @head = nil
    @count = 0
  end

  def append(data)
    current = @head
    @count += 1
    if @head == nil
      @head = Node.new(data)
    else
      current.next_node = Node.new(data)
    end
  end

  def to_string
    current = @head
    string = ""
    string << "The #{current.surname} family"
      while current.next_node != nil
        current = current.next_node
        string << ", followed by the #{current.surname} family"
      end
      string
  end

  def prepend(data)
    @count += 1
    if @head.nil?
        @head = Node.new(data)
    else
      old_head = @head
      @head = Node.new(data)
      @head.next_node = old_head
    end
  end

  def insert(position, data)
    insert_node = Node.new(data)
      if @head.nil?
        @head = insert_node
      else
        insertion(position,data)
      end
  end

  def insertion(position, data, count = 1, root = @head)
    insert_node = Node.new(data)
    if count != position
      count += 1
      current = root.next_node
      insertion(position,data, count , current)
    else
      @count += 1
      tail = @head
      current = insert_node
      current.next_node = tail.next_node
      tail.next_node = insert_node
    end
  end

  def find(position, element)
    count = 0
    current = @head
      until count == position
        count += 1
        current = current.next_node
      end
      create_string(current, element)
  end

  def create_string(current, element)
    string = "The #{current.surname} family"
    if element > 1
      until element == 1
        element -= 1
        current = current.next_node
        string << ", followed by the #{current.surname} family"
      end
    end
    string
  end

  def includes?(argument)
    current = @head
    until @count == 0
      @count -= 1
      if current.surname == argument
         return true
      else
        current = current.next_node
         false
      end
    end
  end

  def pop
    current = @head
      until current.next_node.next_node.nil?
        current = current.next_node
      end
      data = current.next_node.surname
      current.next_node = nil
      string = "The #{data} family has died of dysentery"

    end




end
