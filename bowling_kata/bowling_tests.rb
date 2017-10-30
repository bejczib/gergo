require_relative 'bowling'
require 'minitest/autorun'

class BowlingTest < Minitest::Test


   def setup
     @game = Bowling.new
   end

   def test_roll_in_a_frame

     @game.roll(3)
     assert_equal(@game.score,3)
   end

   def test_two_roll

     @game.roll(3)
     @game.roll(5)
     assert_equal(@game.score,8)
   end

end
