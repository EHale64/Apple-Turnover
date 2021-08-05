require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/temp'
require 'json'
require 'pry'

class TempTest < MiniTest::Test
    def setup
        @temp = Temp.new
    end

    def test_temps
        assert_equal @temp.apple('50'), "It's hotter than the sun!!"
        assert_equal @temp.apple(4), "Help yourself to a honeycomb Yorkie for the glovebox."
        assert_equal @temp.apple("12"), "Help yourself to a honeycomb Yorkie for the glovebox."
        assert_equal @temp.apple(60), "It's hotter than the sun!!"
    end
end