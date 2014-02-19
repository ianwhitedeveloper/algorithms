class MyHash
  def initialize
    @array = Array.new(64)
  end

  def find_index(key)
    key % 64
  end

  def [](param)

  end

  def []=(key, value)

  end
end
