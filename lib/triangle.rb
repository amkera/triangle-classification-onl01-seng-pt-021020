class Triangle
  attr_accessor :side1, :side2, :side3
  
  def initialize(all_sides)
    all_sides.each {|key, value| self.send(( "#{key}="), value)}
  end 
  
  #initialize all sides 
  
  def kind(all_sides)
    if (@side1 <= 0) || (@side2 <= 0) || (@side3<= 0)
      raise TriangleError
      
  
  class TriangleError < StandardError
    # triangle error code
  end
  
end
