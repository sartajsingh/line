class Point
 attr_accessor :x_coordinate ,:y_coordinate

 def initialize x_coordinate ,y_coordinate
  @x_coordinate = x_coordinate
  @y_coordinate = y_coordinate
 end

 def self.point_equality point_a,point_b
  if point_a.x_coordinate == point_b.x_coordinate && point_a.y_coordinate == point_b.y_coordinate
    true
  else
    false
  end
 end
end
