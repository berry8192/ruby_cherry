require 'minitest/autorun'
require_relative '../lib/team'
require_relative '../lib/bank'

class DeepFreezableTest < Minitest::Test
    def test_deep_freeze_to_array
        # 配列の値が正しいこと
        assert_equal ['japan', 'US', 'india'], Team::COUNTRIES
        # 配列自体のfreezeがされること
        assert Team::COUNTRIES.frozen?
        # 配列の各要素がfreezeされること
        assert Team::COUNTRIES.all? { |country| country.frozen? }
    end

    def test_deep_freeze_to_hash
        # ハッシュの値が正しいこと
        assert_equal ['japan' => 'yen', 'US' => 'dollar', 'india' => 'rupee'], Bank::CURRENCIES
        # ハッシュ自体のfreezeがされること
        assert Bank::CURRENCIES.frozen?
        # 配列の各要素がfreezeされること
        assert Bank::CURRENCIES.all? { |key, value| key.frozen? && value.frozen? }
    end
end