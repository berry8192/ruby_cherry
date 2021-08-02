require 'minitest/autorun'
require_relative '../lib/team'
require_relative '../lib/bank'

class Deep_Freezable_Test < Minitest::Test
    def test_deep_freeze_to_array
        # 配列の値が正しいこと
        assert_equal ['japan', 'US', 'india'], Team::COUNTRIES
        # 配列自体のfreezeがされること
        assert_equal Team::COUNTRIES.frozen?
        # 配列の各要素がfreezeされること
        assert_equal Team::COUNTRIES.all? { |country| country.frozen? }
    end
end