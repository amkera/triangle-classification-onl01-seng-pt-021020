class Triangle
  attr_accessor :side1, :side2, :side3
  
  def initialize(all_sides)
    all_sides.each {|key, value| self.send(( "#{key}="), value)}
  end 
  
  #initialize all sides 
  
  def kind(all_sides)
    if (@side1 <= 0) || (@side2 <= 0) || (@side3<= 0)
      raise TriangleError
    elsif (@side1 + @side2 <= @side3) || (@side1 + @side3 <= @side2) || (@side2 + @side3 <= @side1)
      raise TriangleError
    else 
      if (@side1 == @side2 == @side3)
        :equilateral 
      elsif (@side1 == @side2) || (@side2 == @side3) || (@side1 == @side3)
        :isosceles
      elsif (@side1 != @side2) && (@side2 != @side3) && (@side1 != @side3)
        :scalene
      end 
    end 
  end 
  
  
  class TriangleError < StandardError
    # triangle error code
  end
  
end
