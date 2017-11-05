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
        POINTS << @points[(n-1)..(n+1)].reduce(:+)
      elsif @points[n-1] + @points[n] == 10 && @points[n] !=  0
        POINTS << @points[(n-1)..(n+1)].reduce(:+)
      else
        POINTS << @points[(n-1)..(n)].reduce(:+)
      end
      n += 2
    end
    POINTS.reduce(:+)
  end

  def self.delet_points
    POINTS.clear
  end
end
