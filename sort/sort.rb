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

  def self.merge(array1, array2)
    results = []
    i1 = i2 =0
    while i1 != array1.length && i2 != array2.length  # haven't reached end of either array
      if array1[i1] < array2[i2]
        results << array1[i1]
        i1 += 1
      else
        results << array2[i2]
        i2 += 1
      end
    end

    if i1 == array1.length
      results.concat(array2[i2..-1])
    else
      results.concat(array1[i1..-1])
    end
  end
end
