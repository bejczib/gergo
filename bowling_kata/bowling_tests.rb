require_relative 'bowling'
require 'minitest/autorun'

class BowlingTest < Minitest::Test


   def setup
     @game = Bowling.new
     @delete = Bowling.delet_points
   end

   def multi_roll(c,p)
    c.times { @game.roll(p) }
   end

   def three_rolls(n, e, m)
     @game.roll(n)
     @game.roll(e)
     @game.roll(m)
     multi_roll(17,0)
   end

    def test_spare
       three_rolls(4,6,3)
       assert_equal(16,@game.score)
       @delete
    end

     def test_open
       three_rolls(4,5,2)
        assert_equal(11,@game.score)
        @delete
     end

    def test_strike
      three_rolls(10,6,3)
       assert_equal(22,@game.score)
       @delete
    end


end
