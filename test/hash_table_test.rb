require 'minitest/autorun'
require 'minitest/pride'
require './lib/hash_table'

class HashTableTest < Minitest::Test
  def test_it_exists
    table = HashTable.new()

    assert table.class, HashTable
  end
end
