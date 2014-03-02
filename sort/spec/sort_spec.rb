require 'rubygems'
require 'rspec'
require_relative '../sort.rb'

describe 'Sort' do
  describe '.selection_sort' do

    context 'when the argument is empty' do
      it "returns an empty array" do
        expect(Sort.selection_sort([])).to eq([])
      end
    end

    context 'when the argument is an array positive integers' do
      it 'returns an array sorted lowest to highest' do
        expect(Sort.selection_sort([100, 3, 2, 1])).to eq([1, 2, 3, 100])
      end
    end

    context 'when the argument is an array of negative integers mixed with positive' do
      it 'returns an array sorted lowest to highest' do
        expect(Sort.selection_sort([-3, 2, -1, 10])).to eq([-3, -1, 2, 10])

      end
    end
  end
end
