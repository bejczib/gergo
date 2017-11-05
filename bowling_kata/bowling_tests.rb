require_relative 'bowling'
require 'minitest/autorun'

class BowlingTest < Minitest::Test

   def setup
     @game = Bowling.new
     @delete = Bowling.delet_points
   end

   def multi_roll(a,p)
     a.map{|e| @game.roll(e)}
     c =  20-a.length
     c.times { @game.roll(p) }
   end

   def test_spare
      multi_roll([4,6,3],0)
      assert_equal(16,@game.score)
      @delete
   end

   def test_open
     multi_roll([4,5,2],0)
     assert_equal(11,@game.score)
     @delete
   end

   def test_strike
     multi_roll([10,6,3],0)
     assert_equal(22,@game.score)
     @delete
   end
end
