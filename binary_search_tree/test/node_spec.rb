require './lib/node.rb'

describe Node do


  it '#data' do
    node = Node.new(nil)
    expect(node).to respond_to(:data)
  end

  describe '#insert' do
    it 'you cannot insert nil' do
      node = Node.new(10)

      expect{node.insert(nil)}.to raise_error(RuntimeError)
    end

    it 'adds to the right node' do
      node = Node.new(10)
      node.insert(12)

      expect(node.right).to be_a(Node)
      expect(node.right.data).to eq(12)
    end

    it 'adds to the left node' do
      node = Node.new(10)
      node.insert(8)

      expect(node.left).to be_a(Node)
      expect(node.left.data).to eq(8)
    end

    it 'inserts the data correctly for both nodes' do
      node = Node.new(10)
      node.insert(8)
      node.insert(12)

      expect(node.right).to be_a(Node)
      expect(node.left).to be_a(Node)
      expect(node.left.data).to eq(8)
      expect(node.right.data).to eq(12)
    end
  end
end
