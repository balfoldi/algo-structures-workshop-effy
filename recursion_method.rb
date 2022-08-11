require 'minitest/autorun'
require_relative 'recursion.rb'

class FirstProblemTest < Minitest::Test
  def test_zero
    assert_equal 0, Recursion.rec_sum(0)
  end

  def test_four
    assert_equal 10, Recursion.rec_sum(4)
  end

  def test_ten
    assert_equal 55, Recursion.rec_sum(10)
  end

  def test_rdn
    n = rand(100)
    expected = (n * (n + 1)) / 2

    assert_equal expected, Recursion.rec_sum(n)
  end

  def test_string
    assert_equal 5050, Recursion.rec_sum('100')
  end
end

class SecondProblemTest < MiniTest::Test
  def test_zero
    assert_equal 0, Recursion.sum_digits(0)
  end

  def test_twelve
    assert_equal 3, Recursion.sum_digits(12)
  end

  def test_4321
    assert_equal 10, Recursion.sum_digits(4321)
  end

  def test_random
    n = rand(1000)
    assert_equal n.digits.sum, Recursion.sum_digits(n)
  end
end
