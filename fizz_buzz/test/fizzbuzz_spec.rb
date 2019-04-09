require './lib/fizzbuzz.rb'

describe Fizzbuzz do
  describe '#buzz' do
    context 'when passed 3' do
      it 'prints fizz' do
        fb = Fizzbuzz.new
        expect(fb.buzz(3)).to eq("fizz")
      end
    end

    context 'when passed 5' do
      it 'prints buzz' do
        fb = Fizzbuzz.new
        expect(fb.buzz(5)).to eq("buzz")
      end
    end

    context 'when passed 15' do
      it 'prints buzz' do
        fb = Fizzbuzz.new
        expect(fb.buzz(15)).to eq("fizz buzz")
      end
    end
  end
end
