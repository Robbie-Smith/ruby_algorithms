require './lib/fizzbuzz.rb'

describe Fizzbuzz do
  describe '#buzz' do
    context 'when passed 3' do
      it 'prints fizz' do
        a = Fizzbuzz.new
        expect(a.buzz(3)).to eq("fizz")
      end
    end

    context 'when passed 5' do
      it 'prints buzz' do
        a = Fizzbuzz.new
        expect(a.buzz(5)).to eq("buzz")
      end
    end

    context 'when passed 15' do
      it 'prints buzz' do
        a = Fizzbuzz.new
        expect(a.buzz(15)).to eq("fizz buzz")
      end
    end
  end
end
