class Triangle
  attr_accessor :side1, :side2, :side3
  
  def initialize(all_sides)
    all_sides.each {|key, value} self.send(( "#{key}="), value)}
  end 
  
  
end
