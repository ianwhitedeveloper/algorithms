module Sort
  def self.selection_sort(array)
    for i in 0..array.size - 1
      first_element(array, i)
    end
  end

  def self.first_element(array, n)  # instead of 0 index of array, use n for all possible indices
    min = nil
    min_index = nil
    for i in n..(array.size - 1) # get last index arr.size would go past last element
      i min.nil? || min > array[i]
        min = array[i]
        min_index = i
      end
    end

    array[min_index] = array[n]
    array[n] = min
  end
end

# Shehzans solution
# Big O of n*2  (n squared)
module Sort
  def self.selection_sort(array)
    array.each_index do |x|
      shift_nth_smallest(x, array)
    end
    array
  end

  def self.shift_nth_smallest(i, array)
    min = array[i]
    min_index = i
    for x in i..(array.size - 1)
      if min > array[x]
        min = array[x]
        min_index = x
    end

    array[min_index] = array[i]
    array[i] = min
  end
end
