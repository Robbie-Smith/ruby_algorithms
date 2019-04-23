class Node
  attr_reader :data
  attr_accessor :left, :right

  def initialize(data)
    @data = data
  end

  def insert(current_node = self, data_to_insert)
    if left.nil?
      current_node.left = Node.new(data_to_insert)
    elsif right.nil?
      current_node.right = Node.new(data_to_insert)
    end
  end

  # def insert(current_node = nil, data_to_insert)
  #   raise "Cannot insert nil" if data_to_insert.nil?
  #   raise "Cannot insert duplicate value" if data_to_insert == current_node&.data
  #   current_node ||= self
  #   if data_to_insert > current_node&.data
  #     insert_right(current_node, data_to_insert)
  #   else
  #     insert_left(current_node, data_to_insert)
  #   end
  # end
end
