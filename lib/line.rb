class Line
  attr_accessor :starting_x ,:starting_y ,:ending_x ,:ending_y
  def initialize starting_x, starting_y, ending_x, ending_y
  @starting_x = starting_x
  @starting_y = starting_y

  @ending_x = ending_x
  @ending_y = ending_y

  end
 
  def calculate_length
    Math.sqrt((self.starting_x-self.ending_x)**2 + (self.starting_y-self.ending_y)**2)
  end

end

