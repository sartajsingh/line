class Rectangle
  attr_accessor :point_a ,:point_b ,:point_c ,:point_d

  def initialize point_a ,point_b ,point_c ,point_d
      @point_a = point_a
      @point_b = point_b
      @point_c = point_c
      @point_d = point_d
  end

  def self.new_initialize length ,breadth
      point_a = Point.new(0,0)
      point_b = Point.new(0,breadth)
      point_c = Point.new(length,breadth)
      point_d = Point.new(length,0)
      Rectangle.new(point_a ,point_b ,point_c ,point_d)
  end

  def area
    (Line.new(@point_a,@point_b).calculate_length) * (Line.new(@point_b,@point_c).calculate_length)
  end

  def perimeter
    2 * (Line.new(@point_a,@point_b).calculate_length + Line.new(@point_b,@point_c).calculate_length)
  end

end
