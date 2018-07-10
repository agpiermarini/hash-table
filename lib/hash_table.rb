require './lib/linked_list'

class HashTable
  attr_reader :size
  attr_accessor :array

  def initialize(size = 10)
    @size = size
    @array = Array.new(size, LinkedList.new)
  end
end
