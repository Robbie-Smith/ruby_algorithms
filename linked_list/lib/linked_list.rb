require 'node.rb'
class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def delete(node = head, value)
    current_node = node
    next_node = node.next
    if next_node.data == value
      current_node.next = next_node.next
      return true
    end
    delete(next_node, value)
  end

  def find(node = head, value)
    return if node.nil?
    if node.data == value
      return node
    end
    find(node.next, value)
  end

  def insert(node = nil, data)
    if head.nil?
      return @head = Node.new(data)
    end
    append_head(head, data)
  end

  def append_head(current_node, data)
    if current_node.next.nil?
      return current_node.next = Node.new(data)
    end
    append_head(current_node.next, data)
  end
end

