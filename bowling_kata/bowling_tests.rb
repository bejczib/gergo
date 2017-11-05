require_relative 'bowling'
require 'minitest/autorun'

class BowlingTest < Minitest::Test


   def setup
     @game = Bowling.new
   end

   def multi_roll(c,p)
    c.times { @game.roll(p) }
   end


  #  def test_roll_in_a_frame
   #
  #    @game.roll(3)
  #    assert_equal(@game.score,3)
  #  end
   #
  #  def test_two_roll
   #
  #    @game.roll(3)
  #    @game.roll(5)
  #    assert_equal(@game.score,8)
  #  end
   #
    def test_spare
       @game.roll(4)
       @game.roll(6)
       @game.roll(3)
       multi_roll(17,0)
       assert_equal(16,@game.score)
       Bowling.delet_points
    end

     def test_open
        @game.roll(3)
        @game.roll(5)
        @game.roll(3)
        multi_roll(17,0)
        assert_equal(11,@game.score)
        Bowling.delet_points
     end

    def test_strike
       @game.roll(10)
       @game.roll(6)
       @game.roll(3)
       multi_roll(17,0)
       assert_equal(22,@game.score)
       Bowling.delet_points
    end


end
