class Programozo
  attr_reader :name, :shoe_size, :grades
  
  def initialize(name,shoe_size)
    @name = name
    @shoe_size = shoe_size
    @grades = []
  end

  def programming
    "epp programozom"
  end

  def get_grade!(grade)
    @grades << grade
  end

end



# csinlaj egy osztaly
# a programozo tudja a sajat nevet, labmeretet
# a programozo tudjon programozni (puts "epp programozom")
# a programozo tudjon kapni egy osztalyzatot (method :score, attr :grade(s) )
# le lehessen kerdezni az osztalyzatait
