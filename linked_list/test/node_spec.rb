require './lib/node.rb'

describe Node do
  describe '#data' do
    it 'has a data method' do
      expect(Node.new).to respond_to(:data)
    end
  end
  describe '#next' do
    it 'has a next method' do
      node = Node.new

      expect(node).to respond_to(:next)
    end
  end
end
