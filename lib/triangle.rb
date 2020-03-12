class Triangle
  attr_accessor :side1, :side2, :side3
  
  
  def kind(all_sides)
    all_sides.each {|key, value} 
  end 
  
  class TriangleError < Standard Error 
  end
  
  
end
