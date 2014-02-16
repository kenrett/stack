require 'rspec'
require_relative 'stack'

describe 'the stack' do
  my_stack = Stack.new(5);
  
  it 'should begin empty' do
    expect(my_stack.empty?).to be true
  end

  it 'should have a maximum size' do
    expect(my_stack.max_size).to eq(5)
  end
end