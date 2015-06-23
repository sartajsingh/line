class Line
  attr_accessor :first_point ,:second_point

  def initialize first_point ,second_point
    @first_point = first_point
    @starting_x = first_point.x_coordinate
    @starting_y = first_point.y_coordinate

    @second_point = second_point
    @final_x = second_point.x_coordinate
    @final_y = second_point.y_coordinate
  end

  def calculate_length
    Math.sqrt((@starting_x - @final_x)**2 + (@starting_y - @final_y)**2)
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

end


