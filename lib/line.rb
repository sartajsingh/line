class Line
  attr_accessor :first_point ,:second_point

  def initialize first_point ,second_point
    @first_point = first_point
    @second_point = second_point
  end

  def calculate_length
    Math.sqrt((self.first_point.x_coordinate - self.second_point.x_coordinate)**2 + (self.first_point.y_coordinate - self.second_point.y_coordinate )**2)
  end

  def self.check_equality line_a ,line_b
    if (line_a.first_point == line_b.first_point) && (line_a.second_point == line_b.second_point)
      true
    elsif (line_a.first_point == line_b.second_point) && (line_a.second_point == line_b.first_point)
      true
    else
      false
    end
  end

  def check_equal line_b
    if (self.first_point == line_b.first_point) && (self.second_point == line_b.second_point)
      true
    elsif (self.first_point == line_b.second_point) && (self.second_point == line_b.first_point)
      true
    else
      false
    end
  end

  def calculate_slope
    (self.first_point.y_coordinate - self.second_point.y_coordinate) / (self.first_point.x_coordinate - self.second_point.x_coordinate)
  end

  def check_orthogonality line_b
   if self.calculate_slope * line_b.calculate_slope == -1
    true
   else
    false
   end
  end
end
