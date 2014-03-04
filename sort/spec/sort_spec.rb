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

    context 'when the argument has 1 element' do
      it 'returns an array with one element' do
        expect(Sort.selection_sort([100])).to eq([100])
      end
    end

    context 'when the argument is an array of sorted elements' do
      it 'returns sorted array' do
        expect(Sort.selection_sort([1, 2, 3, 4, 5])).to eq([1, 2, 3, 4, 5])
      end
    end

   context 'when the argument is an array of unsorted elements' do
      it 'returns sorted array' do
        expect(Sort.selection_sort([5, 4, 3, 2, 1])).to eq([1, 2, 3, 4, 5])
      end
    end

    context 'when the argument large and randomized' do
      it 'returns sorted array' do
        array = Array.new(1000) {rand(1000)}
        expect(Sort.selection_sort(array)).to eq(array.sort)
      end
    end
  end

  describe "Merge Sort" do
    context 'when given two sorted arrays' do
      it 'returns one sorted array' do
        array1 = [4, 6, 8, 20, 22]
        array2 = [2, 9, 10, 11]

        expect(Sort.merge_sort(array1, array2)).to eq([2, 4, 6, 8, 9, 10, 11, 20, 22])
      end
    end
  end
end
