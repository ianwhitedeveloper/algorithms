class MyHash
  def initialize
    @array = Array.new(64, [])
  end

  def find_index(key)
    key.hash % 64
  end

  def [](key)
    pair = @array[find_index(key)]
    if pair.first == key
      pair.last
    end
  end

   def []=(key, value)
    @array[find_index(key)] = [[key,value]]
    value
  end
end
