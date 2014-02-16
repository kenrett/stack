class Stack

  def initialize(max_size)
    @stack = []
    @max_size = max_size
  end

  def max_size
    @max_size
  end

  def push(item)
    @stack.push(item)
  end

  def pop
    @stack.pop
  end

  def size
    @stack.size
  end
end

