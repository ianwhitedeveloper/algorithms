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
    end

    array[min_index] = array[i]
    array[i] = min
  end
end
