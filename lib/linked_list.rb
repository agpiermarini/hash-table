class LinkedList
  attr_reader :value
  attr_accessor :next_node

  def initialize(value = nil)
    @value = value
    @next_node = nil
  end

  def append(new_value, node = self)
    return append(new_value, node.next_node) if node.next_node
    node.next_node = LinkedList.new(new_value)
  end
end
