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
    key = "Cobra Kai"
    value = 100
    index = table.calculate_index(key)

    table.push(key, value)

    assert table.array[index].value, {key=>value}
  end

  def test_it_can_get_values_by_key
    table = HashTable.new
    key = "Cobra Kai"
    value = 100

    table.push(key, value)

    assert table.get(key), 100
  end

  def test_it_can_print_out_keys
    table = HashTable.new

    table.push("Cobra Kai", 90)
    table.push("Miyagi", 100)
    table.push("Larusso", 80)
    table.push("Larusso", 80)
    table.push("Larusso", 80)

    assert table.print_keys, true
  end
end
