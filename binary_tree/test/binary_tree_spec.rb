require './lib/binary_tree.rb'

describe BinaryTree do

  before do
    @bst = BinaryTree.new
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

    it 'adds data' do
      @bst.insert(1)
      @bst.insert(10)
      @bst.insert(5)

      expect(@bst.root).to be_a(Node)
      expect(@bst.root.data).to be(1)
      expect(@bst.root.left.data).to be(10)
      expect(@bst.root.right.data).to be(5)
    end
  end
end
