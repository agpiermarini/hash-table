require './lib/linked_list'

class HashTable
  attr_accessor :array

  def initialize(size = 10)
    @size = size
    @array = Array.new(size, LinkedList.new)
  end

  def calculate_index(key)
    key.sum % size
  end

  def push(key, value)
    i = calculate_index(key)
    array[i] = array[i].append({key => value})
  end

  private
    attr_reader :size
end
