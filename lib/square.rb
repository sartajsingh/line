class Square < Rectangle
  attr_accessor :side

  def self.new_initialize side
    super(side,side)
  end

end
