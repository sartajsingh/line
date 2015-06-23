require 'spec_helper'
   point_a = Point.new(2,2)
   point_b = Point.new(1,1)
   point_c = Point.new(3,3)
   line_x  = Line.new(point_a,point_b)
   line_y  = Line.new(point_b,point_a)
   line_z  = Line.new(point_a,point_c)

describe 'calculate_length' do
 it 'should return the correct distance' do
   expect(line_x.calculate_length).to eq (Math.sqrt((2-1)**2 + (2-1)**2))
 end
end

describe 'check_equality' do
  it 'should return true when coordinates are in same order' do
    expect(Line.check_equality(line_x,line_x)).to eq true
  end

  it 'should return true when coordinates are in reverse order' do
    expect(Line.check_equality(line_x,line_y)).to eq true
  end

  it 'should return false when coordinates are different 'do
    expect(Line.check_equality(line_x,line_z)).to eq false
  end
end

describe 'check_equal' do
  it 'should return true when coordinates are in same order' do
    expect(line_x.check_equal(line_x)).to eq true
  end

  it 'should return true when coordinates are in reverse order' do
    expect(line_x.check_equal(line_y)).to eq true
  end

  it 'should return false when coordinates are different 'do
    expect(line_x.check_equal(line_z)).to eq false

  end
end
