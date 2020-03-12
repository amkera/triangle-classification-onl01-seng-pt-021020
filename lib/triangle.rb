class Triangle
  attr_accessor :side1, :side2, :side3
  
  def initialize(all_sides)
    all_sides.each {|key, value| self.send(( "#{key}="), value)}
  end 
  
  def kind(all_sides)
    if (:side1 + :side2) < :side3 || (:side1 + :side3) < :side3 || (:side2 + :side3) < :side1
      begin
        raise TriangleError
      rescue 
  
  
  class TriangleError < StandardError
    # triangle error code
  end
  
end
