require 'spec_helper'

point_p = Point.new(0,0)
point_q = Point.new(0,1)
point_r = Point.new(2,1)
point_s = Point.new(2,0)

describe 'Rectangle' do
  describe 'initialize' do
    it 'returns correct points when initialized by points' do
      temp_object = Rectangle.new(point_p,point_q,point_r,point_s)
      expect(temp_object.point_a.x_coordinate).to eq(point_p.x_coordinate)
      expect(temp_object.point_a.y_coordinate).to eq(point_p.y_coordinate)
      expect(temp_object.point_b.x_coordinate).to eq(point_q.x_coordinate)
      expect(temp_object.point_b.y_coordinate).to eq(point_q.y_coordinate)
      expect(temp_object.point_c.x_coordinate).to eq(point_r.x_coordinate)
      expect(temp_object.point_c.y_coordinate).to eq(point_r.y_coordinate)
      expect(temp_object.point_d.x_coordinate).to eq(point_s.x_coordinate)
      expect(temp_object.point_d.y_coordinate).to eq(point_s.y_coordinate)
    end
  end
  describe 'new_initialize' do
    it 'returns correct points when initialized by length=2 breadth=1' do
      temp_object = Rectangle.new_initialize(2,1)
      expect(temp_object.point_a.x_coordinate).to eq(0)
      expect(temp_object.point_a.y_coordinate).to eq(0)
      expect(temp_object.point_b.x_coordinate).to eq(0)
      expect(temp_object.point_b.y_coordinate).to eq(1)
      expect(temp_object.point_c.x_coordinate).to eq(2)
      expect(temp_object.point_c.y_coordinate).to eq(1)
      expect(temp_object.point_d.x_coordinate).to eq(2)
      expect(temp_object.point_d.y_coordinate).to eq(0)
    end
  end

  describe 'validate' do
    it 'returns true if rectangle is valid' do
      expect(Rectangle.validate(point_p,point_q,point_r,point_s)).to eq true
    end

    it 'returns false if rectangle is invalid' do
      point_t = Point.new(7,11)
      point_u = Point.new(10,9)
      expect(Rectangle.validate(point_p,point_t,point_s,point_u)).to eq false
    end

  end

  describe 'area' do
    it 'returns correct area from length and breadth' do
      expect(Rectangle.new_initialize(2,1).area).to eq(2*1)
    end

    it 'returns correct area from given points' do
      expect(Rectangle.new(point_p,point_q,point_r,point_s).area).to eq(2*1)
    end
  end

  describe 'perimeter' do
    it 'returns correct perimeter from length and breadth' do
      expect(Rectangle.new_initialize(2,1).perimeter).to eq(2+1+2+1)
    end

    it 'returns correct perimeter from given points' do
      expect(Rectangle.new(point_p,point_q,point_r,point_s).perimeter).to eq(2+1+2+1)
    end
  end

end


