require 'minitest/autorun'
require_relative '../lib/rgb'

class Rgb_Test < Minitest::Test
    def test_to_hex
        assert_equal '#000000', to_hex(0, 0, 0)
        assert_equal '#ffffff', to_hex(255, 255, 255)
        assert_equal '#4e828c', to_hex(78, 130, 140)
    end

    # def test_to_int
    #     assert_equal '1', fizz_buzz(1)
    # end
end