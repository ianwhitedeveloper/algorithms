class MyHash
  def initialize
    @array = Array.new(64)
  end

  def find_index(key)
    key.hash % 64
  end

  # def [](param)

  # end

  def []=(key, value)
    @array[find_index(key)] = [value]
  end
end
