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

  def find(key, node = self)
    return nil if node.value.nil?
    node.value.keys.first == key ? node.value[key] : find(key, node.next_node)
  end
end
