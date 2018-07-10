require 'minitest/autorun'
require 'minitest/pride'
require './lib/hash_table'

class HashTableTest < Minitest::Test
  def test_it_exists
    table = HashTable.new

    assert table.class, HashTable
  end

  def test_it_can_initializes_with_array_of_empty_linked_lists
    table_array = HashTable.new.array

    assert table_array.length, 10
    assert table_array.all? { |e| e.class == LinkedList }
  end

  def test_it_can_calculate_index_based_on_key
    table = HashTable.new
    assert table.calculate_index("Andrew"), 9
    assert table.calculate_index("Cobra Kai"), 6
  end

  def test_it_can_add_values_to_table
    table = HashTable.new
  end
end
