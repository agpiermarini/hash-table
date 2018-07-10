require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'

class LinkedListTest < Minitest::Test
  def test_it_exists
    list = LinkedList.new

    assert list.class, LinkedList
  end

  def test_it_can_initialize_with_value
    value = 1
    list = LinkedList.new(value)

    assert list.value, value
  end

  def test_it_can_append_one_value
    list = LinkedList.new(1)
    new_value = 5

    list.append(5)

    assert list.value, 1
    assert list.next_node, 5
  end
end
