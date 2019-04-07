require 'node.rb'

class BinarySearchTree
  attr_reader :root

  def insert(data)
    raise "Cannot insert nil" if data.nil?
    if root.nil?
      @root = Node.new(data)
    else
      @root.insert(data)
    end
  end

  def find(value)
    root.find(root, value)
  end
end
