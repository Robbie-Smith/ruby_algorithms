require './lib/brackets.rb'


describe Brackets do
  describe '#balanced' do
    it 'does a thing' do
      a = Brackets.new
      b = '(()'
      c = a.balanced(b)
      expect(c).to be(false)
    end
  end
end
