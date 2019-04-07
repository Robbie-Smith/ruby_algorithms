require './lib/string.rb'

describe String do
  describe '#is_unique?' do
    it 'has a unique method' do
      string = String.new

      expect(string).to respond_to(:is_unique?)
    end
    context 'when passed a unique string' do
      it 'returns true' do
        string = "abcdefg"
        string.hash_of_character_codes

        expect(string.is_unique?).to be(true)
      end
    end
    context 'when simple string' do
      it 'returns true' do
        string = "ab"
        expect(string.is_unique?).to be(true)
      end

      it 'more complex' do
        string = "abeghklzq"
        expect(string.is_unique?).to be(true)
      end

      it 'returns false' do
        string = "aa"
        expect(string.is_unique?).to be(false)
      end
    end
  end
end
