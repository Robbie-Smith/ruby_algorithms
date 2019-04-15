require './lib/linked_list.rb'

describe LinkedList do
  describe '#insert' do
    it 'adds a node to the list' do
      list = LinkedList.new
      list.insert(1)

      expect(list.head).to be_a(Node)
      expect(list.head.data).to eq(1)
    end

    it 'multiple values' do
      list = LinkedList.new
      list.insert(1)
      list.insert(2)
      list.insert(3)

      expect(list.head).to be_a(Node)
      expect(list.head.data).to eq(1)
      expect(list.head.next).to be_a(Node)
      expect(list.head.next.data).to eq(2)
      expect(list.head.next.next).to be_a(Node)
      expect(list.head.next.next.data).to eq(3)
    end
  end

  describe '#find' do
    it 'returns the correct value' do
      list = LinkedList.new
      list.insert(1)
      list.insert(2)
      list.insert(3)
      list.insert(4)
      list.insert(5)
      list.insert(6)

      result = list.find(5)

      expect(result).to be_a(Node)
      expect(result.data).to eq(5)
    end
  end

  describe '#delete' do
    it 'deletes the correct value from the list' do
      list = LinkedList.new
      list.insert(1)
      list.insert(2)
      list.insert(3)

      result = list.delete(2)

      expect(result).to be(true)
      expect(list.find(2)).to be_nil
    end

    it 'deletes more values from the list' do
      list = LinkedList.new
      list.insert(1)
      list.insert(2)
      list.insert(3)
      list.insert(4)
      list.insert(5)
      list.insert(6)

      result = list.delete(5)
      result = list.delete(2)

      expect(result).to be(true)
      expect(list.find(5)).to be_nil
      expect(list.find(2)).to be_nil
    end
  end
end
