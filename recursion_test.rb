require 'minitest/autorun'
require_relative 'recursion'

class RecursionTest < Minitest::Test
  def test_the_ran_man
    assert_equal %w(the man ran), Recursion.word_split('themanran', %w[the ran man])
  end

  def test_i_love_dogs_john
    assert_equal %w[i love dogs John], Recursion.word_split('ilovedogsJohn', %w[i am a dogs lover love John])
  end

  def test_no_match
    assert_empty Recursion.word_split('themanran', %w[clown ran man])
  end
end
