require './lib/binary_search_tree.rb'

describe BinarySearchTree do

  before do
    @bst = BinarySearchTree.new
  end

  it 'has a root node' do
    expect(@bst).to respond_to(:root)
  end

  describe 'insert' do
    it 'cannot insert nil' do
      expect{@bst.insert(nil)}.to raise_error(RuntimeError)
    end
    it 'creates a root node' do
      @bst.insert(1)

      expect(@bst.root).to be_a(Node)
      expect(@bst.root.data).to be(1)
    end

    context 'when the root node has data' do
      before do
        @bst.insert(10)
      end
      context 'when the data is greater than the root' do
        it 'adds to the right' do
          @bst.insert(12)

          expect(@bst.root.data).to eq(10)
          expect(@bst.root.left).to be_nil
          expect(@bst.root.right.data).to eq(12)
        end
      end
      context 'when the data is less than the root' do
        it 'adds to the left' do
          @bst.insert(8)

          expect(@bst.root.data).to eq(10)
          expect(@bst.root.right).to be_nil
          expect(@bst.root.left.data).to eq(8)
        end
      end

      context 'when adding multiple data' do
        it 'adds to both nodes correctly' do
          @bst.insert(8)
          @bst.insert(12)

          expect(@bst.root.data).to eq(10)
          expect(@bst.root.left.data).to eq(8)
          expect(@bst.root.right.data).to eq(12)
        end

        it 'adding multiple sets of data' do
          @bst.insert(8)
          @bst.insert(9)
          @bst.insert(7)
          @bst.insert(12)
          @bst.insert(14)
          @bst.insert(20)

          expect(@bst.root.data).to eq(10)
          expect(@bst.root.left.left.data).to eq(7)
          expect(@bst.root.left.data).to eq(8)
          expect(@bst.root.left.right.data).to eq(9)
          expect(@bst.root.right.data).to eq(12)
          expect(@bst.root.right.right.data).to eq(14)
          expect(@bst.root.right.right.right.data).to eq(20)
        end
      end

      context '#find' do
        it 'when the value matches the root value' do
          result = @bst.find(10)

          expect(result).to be_a(Node)
          expect(result.data).to eq(10)
        end

        it 'when the value matches the root value' do
          @bst.insert(8)
          @bst.insert(9)
          @bst.insert(7)
          @bst.insert(12)
          @bst.insert(14)
          @bst.insert(20)

          result = @bst.find(20)
          expect(result).to be_a(Node)
          expect(result.data).to eq(20)
        end
      end
    end
  end
end
