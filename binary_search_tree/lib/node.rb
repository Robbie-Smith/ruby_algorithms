class Node
  attr_reader :data
  attr_accessor :right, :left

  def initialize(data)
    @data = data
  end

  def find(current_node, value)
    return current_node if current_node.data == value
    if value > current_node.data
      find(current_node.right, value)
    elsif value <= current_node.data
      find(current_node.left, value)
    end
  end

  def insert(current_node = nil, data_to_insert)
    raise "Cannot insert nil" if data_to_insert.nil?
    raise "Cannot insert duplicate value" if data_to_insert == current_node&.data
    current_node ||= self
    if data_to_insert > current_node&.data
      insert_right(current_node, data_to_insert)
    else
      insert_left(current_node, data_to_insert)
    end
  end

  private

  def insert_left(current_node, data_to_insert)
    if data_to_insert <= current_node&.data
      if current_node.left.nil?
        current_node.left = Node.new(data_to_insert)
      else
        insert(current_node.left, data_to_insert)
      end
    end
  end

  def insert_right(current_node, data_to_insert)
    if current_node.right.nil?
      current_node.right = Node.new(data_to_insert)
    else
      insert(current_node.right, data_to_insert)
    end
  end
end
