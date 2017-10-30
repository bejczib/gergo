require_relative 'bowling'
require 'minitest/autorun'

class BowlingTest < Minitest::Test

   def test_roll_in_a_frame
     game = Bowling.new()
     game.roll(3)
     assert_equal(game.score,3)
   end
end
