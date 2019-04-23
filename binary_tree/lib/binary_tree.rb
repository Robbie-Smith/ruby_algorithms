require './lib/node.rb'
class BinaryTree
  attr_reader :root

  def insert(node = nil, data)
    if root.nil?
      @root = Node.new(data)
    else
      @root.insert(data)
    end
  end
end
