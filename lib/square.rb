class Square < Rectangle
  attr_accessor :side ,:unit

  def self.new_initialize side ,unit
    super(side,unit,side,unit)
  end

end
