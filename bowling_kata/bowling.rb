class Bowling
  POINTS = []
  def initialize
    @points = []
  end

  def roll(pins)
     @points << pins
  end

  def score
    n = 1
    while n < 20
      if @points[n-1] == 10
        POINTS << @points[n-1] + @points[n] + @points[n+1]
      elsif @points[n-1] + @points[n] == 10 && @points[n] !=  0
        POINTS << @points[n-1] + @points[n] + @points[n+1]
      else
        POINTS << @points[n-1] + @points[n]
      end
      n += 2
    end
    POINTS.reduce(:+)
  end

  def self.delet_points
    POINTS.clear
  end
end
