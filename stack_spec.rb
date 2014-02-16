require 'rspec'
require_relative 'stack'

describe 'the stack' do
  my_stack = Stack.new(5);
  
  it 'should begin empty' do
    expect(my_stack.size).to eq(0)
  end

  it 'should have a maximum size' do
    expect(my_stack.max_size).to eq(5)
  end

  it 'can have items added to it' do
    my_stack.push("x")
    expect(my_stack.size).to eq(1)
  end

  it 'can have items removed from it' do
    my_stack.pop
    expect(my_stack.size).to eq(0)
  end

  it 'throws an error if popping from an empty stack' do
    expect { my_stack.pop }.to raise_error("Stack is empty!")
  end

  it 'is full if it is at the max_size' do
    5.times do
      my_stack.push('a')
    end
    expect(my_stack.full?).to be true
  end

  it 'throws an error if you try to add over the max_size' do
    my_stack.push('a')
    expect { my_stack.push('a') }.to raise_error("Stack is full!")
  end
end