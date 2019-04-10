require 'node.rb'

class BinarySearchTree

  attr_reader :root

  def initialize
    @count = 0
  end

  def insert(data)
    raise "Cannot insert nil" if data.nil?
    if root.nil?
      @root = Node.new(data)
    else
      @root.insert(data)
    end
  end

  def in_order_traversal(node = root)
    if !node.nil?
      in_order_traversal(node.left)
      visit(node)
      in_order_traversal(node.right)
    end
  end

  def pre_order_traversal(node = root)
    if !node.nil?
      visit(node)
      pre_order_traversal(node.left)
      pre_order_traversal(node.right)
    end
  end

  def post_order_traversal(node = root)
    if !node.nil?
      post_order_traversal(node.left)
      post_order_traversal(node.right)
      visit(node)
    end
  end

  def count(node = root)
    if !node.nil?
      @count += 1
      if !node.left.nil?
        count(node.left)
      end
      if !node.right.nil?
        count(node.right)
      end
    end
    @count
  end

  def find(value)
    root.find(root, value)
  end
  private

  def visit(node)
    puts "#{node.data}"
  end
end
