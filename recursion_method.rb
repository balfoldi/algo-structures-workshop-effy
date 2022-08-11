require 'minitest/autorun'
require_relative 'recursion.rb'

class RecursionTest < Minitest::Test
  def test_zero
    assert_equal 0, rec_sum(0)
  end

  def test_four
    assert_equal 10, rec_sum(4)
  end

  def test_ten
    assert_equal 55, rec_sum(10)
  end

  def test_rdn
    n = rand(100)
    expected = (n * (n + 1)) / 2

    assert_equal expected, rec_sum(n)
  end

  def test_string
    assert_equal 5050, rec_sum('100')
  end
end
