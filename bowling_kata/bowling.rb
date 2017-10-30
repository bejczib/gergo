class Bowling
  POINTS = []
  def initialize
    @points = []
  end

  def roll(pins)
     @points << pins
  end

  def score
    @points.reduce(:+)
  end
end
