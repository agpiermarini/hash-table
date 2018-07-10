class LinkedList
  attr_accessor :value, :next_node

  def initialize(value = nil)
    @value = value
    @next_node = nil
  end

  def append(new_val, node = self)
    return append(new_val, node.next_node) if node.next_node
    node.value ? node.next_node = LinkedList.new(new_val) : node.value = new_val
  end

  def find(key, node = self)
    return nil if node.value.nil? && node.next_node.nil?
    node.value.keys.first == key ? node.value[key] : find(key, node.next_node)
  end

  def get_keys(string = "", node = self)
    return string if node.value.nil?
    if node.next_node
      get_keys(string += "#{node.value.keys.first}, ", node.next_node)
    else
      return string += node.value.keys.first
    end
  end
end
