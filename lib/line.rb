class Line
  attr_accessor :starting_x ,:starting_y ,:ending_x ,:ending_y
  def initialize starting_x, starting_y, ending_x, ending_y
  @starting_x = starting_x
  @starting_y = starting_y

  @ending_x = ending_x
  @ending_y = ending_y

  end
 
  def calculate_length
    Math.sqrt((@starting_x-@ending_x)**2 + (@starting_y-@ending_y)**2)
  end

end

