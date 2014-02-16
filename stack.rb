class Stack

  def initialize(max_size)
    @stack = []
    @max_size = max_size
  end

  def empty?
    @stack.length == 0
  end

  def max_size
    @max_size
  end

  def push(item)
    @stack.push(item)
  end

  def size
    @stack.size
  end
end

