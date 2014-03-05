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
    # haven't reached end of either array
    # entire while condition is false if EITHER side has reached the end of array1 or array2
    while i1 < array1.length && i2 < array2.length
      if array1[i1] < array2[i2]
        results << array1[i1]
        i1 += 1
      else
        results << array2[i2]
        i2 += 1
      end
    end

    # if i1 == array1.length
    #   results.concat(array2[i2..-1])
    #   # same as above, but using slice method
    #   # results.concat(array2.slice(i2..-1))
    # else
    #   results.concat(array1[i1..-1])
    # end
    # Shehzan's solution for above.
    results += array1[i1..-1]
    results += array2[i2..-1]
  end

  # def mergesort(array)
  #   pseudo code
  #   prevents inifinite loop and returns an array with only 1 element
  #   if (array.length <= 1)
  #     return array
  #   end

  #   a = mergesort(array.first_half)
  #   b = mergesort(array.second_half)

  #   assumption: a and b are sorted arrays

  #   merge(a, b)
  # end

  def self.mergesort(array)
    if (array.length <= 1)
      return array
    end
    # first half of array
    a = mergesort(array.slice(0...array.size / 2))
    #second half of array
    b = mergesort(array.slice(array.size / 2..-1))

    merge(a, b)
  end
end


