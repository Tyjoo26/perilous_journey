require 'pry'
require './lib/node'

class LinkedList

  attr_reader :count, :head

  def initialize
    @head = nil
    @count = 0
  end

  def append(data,supplies = {})
    current = @head
    @count += 1
    if @head == nil
      @head = Node.new(data, supplies)
    else
      until current.next_node.nil?
        current = current.next_node
      end
      current.next_node = Node.new(data, supplies)
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

  def prepend(data, supplies = {})
    @count += 1
    if @head.nil?
        @head = Node.new(data,supplies)
    else
      old_head = @head
      @head = Node.new(data,supplies)
      @head.next_node = old_head
    end
  end

  def insert(position, data, supplies = {})
    insert_node = Node.new(data,supplies)
      if @head.nil?
        @head = insert_node
      else
        count = 1
        current = @head
        until count == position
          count += 1
          current = current.next_node
        end
        @count += 1
        insert_node.next_node = current.next_node
        current.next_node = insert_node
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



  def includes?(data)
    current_node = @head
    until current_node == nil
      if current_node.surname == data
        return true
      else
        current_node = current_node.next_node
      end
    end
    false
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
