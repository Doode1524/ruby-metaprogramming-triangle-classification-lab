class Triangle
  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  # Triangle: has sides, first of all
  #  -sum of 2 sides always greater than 3rd side
  
  def valid_triangle?
    if self.side_1 > 0 && self.side_2 > 0 && self.side_3 > 0 && self.side_1 + self.side_2 > self.side_3 && self.side_2 + self.side_3 > self.side_1 && self.side_1 + self.side_3 > self.side_2
      true
    else
      false
    end
  end

  # Triangle types:  Equilateral, Isosceles, Scalene

# Equilateral
# - all three sides are equal

# Isosceles
# -only 2 equal sides

# Scalene
# -no equal sides

def kind
  if !self.valid_triangle?
    raise TriangleError
  elsif self.side_1 == self.side_2 && self.side_2 == self.side_3
    :equilateral 
  elsif self.side_1 != self.side_2 && self.side_2 != self.side_3 && self.side_1 != self.side_3
    :scalene
  elsif self.side_1 == self.side_2 || self.side_1 == self.side_3 || self.side_3 == self.side_2
    :isosceles 
  end
end

class TriangleError < StandardError
    puts "not a triangle lololol"
  end
end


  




