require 'minitest/autorun'
require_relative '../lib/fizz_buzz'

class Fizz_BuzzTest < Minitest::Test
    def test_1_to_20
        assert_equal '1', fizz_buzz(1)
        assert_equal '2', fizz_buzz(2)
        assert_equal 'fizz', fizz_buzz(3)
        assert_equal '4', fizz_buzz(4)
        assert_equal 'buzz', fizz_buzz(5)
        assert_equal 'fizz', fizz_buzz(6)
        assert_equal '7', fizz_buzz(7)
    end
end