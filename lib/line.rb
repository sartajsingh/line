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
    if Point.point_equality((line_a.first_point),(line_b.first_point)) && Point.point_equality((line_a.second_point),(line_b.second_point))
      true
    elsif Point.point_equality((line_a.first_point),(line_b.second_point)) && Point.point_equality((line_a.second_point),(line_b.first_point))
      true
    else
      false
    end
  end

  def check_equal line_b
    if Point.point_equality((self.first_point),(line_b.first_point)) && Point.point_equality((self.second_point),(line_b.second_point))
      true
    elsif Point.point_equality((self.first_point),(line_b.second_point)) && Point.point_equality((self.second_point),(line_b.first_point))
      true
    else
      false
    end
  end

  def calculate_slope
    if self.first_point.x_coordinate == self.second_point.x_coordinate
        "undefined"
    else
      (self.first_point.y_coordinate - self.second_point.y_coordinate).to_f / (self.first_point.x_coordinate - self.second_point.x_coordinate).to_f
    end
  end

  def check_orthogonality line_b
    if (self.calculate_slope == "undefined" && line_b.calculate_slope == 0) || (self.calculate_slope == 0 && line_b.calculate_slope == "undefined")
      true
    elsif self.calculate_slope * line_b.calculate_slope == -1
      true
    else
      false
    end
  end
end
