class Rectangle
  attr_accessor :point_a ,:point_b ,:point_c ,:point_d

  def initialize point_a ,point_b ,point_c ,point_d
      if Rectangle.validate point_a ,point_b ,point_c ,point_d
      @point_a = point_a
      @point_b = point_b
      @point_c = point_c
      @point_d = point_d
      else
        nil
      end
  end

  def self.new_initialize length ,breadth
      point_a = Point.new(0,0)
      point_b = Point.new(0,breadth)
      point_c = Point.new(length,breadth)
      point_d = Point.new(length,0)

      if Rectangle.validate point_a ,point_b ,point_c ,point_d
      Rectangle.new(point_a ,point_b ,point_c ,point_d)
      else
        nil
      end
  end

  def self.validate point_w ,point_x ,point_y ,point_z
    line_a = Line.new point_w ,point_x
    line_b = Line.new point_x ,point_y
    line_c = Line.new point_y ,point_z
    line_d = Line.new point_z ,point_w

    return true if line_a.calculate_slope == line_c.calculate_slope && line_a.check_orthogonality(line_b) && line_b.calculate_slope == line_d.calculate_slope
    false
  end

  def area
    (Line.new(@point_a,@point_b).calculate_length) * (Line.new(@point_b,@point_c).calculate_length)
  end

  def perimeter
    2 * (Line.new(@point_a,@point_b).calculate_length + Line.new(@point_b,@point_c).calculate_length)
  end

end
