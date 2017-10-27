require 'minitest/autorun'
require 'minitest/emoji'
require './lib/insertion_sort'

class TestInsertionSort < Minitest::Test
  def test_can_order_three_values
    numbers = [0, 2, 1]

    assert_equal [0, 1, 2], InsertionSort.sort(numbers)
  end

  def test_can_order_5_values
    numbers = [0, 23, 1, 4, 64]

    assert_equal [0, 1, 4, 23, 64], InsertionSort.sort(numbers)
  end

  def test_can_order_7_values
    numbers = [24, 53, 432, 2, 8, 69, 37]
    sorted = numbers.sort

    assert_equal sorted, InsertionSort.sort(numbers)
  end

  def test_range_is_valid
    numbers = (0..100).map {|num| num}.shuffle
    sorted = (0..100).map {|num| num}

    refute numbers == sorted
  end

  def test_can_order_100_values
    numbers = (0..100).map {|num| num}.shuffle
    sorted = (0..100).map {|num| num}

    assert_equal sorted, InsertionSort.sort(numbers)
  end

  def test_can_order_10000_values
    numbers = (0..10000).map {|num| num}.shuffle
    sorted = (0..10000).map {|num| num}

    assert_equal sorted, InsertionSort.sort(numbers)
  end
end