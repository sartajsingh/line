require 'spec_helper'

describe 'Square' do
  describe 'new_initialize' do
    it 'overrides the method and assigns points correctly' do
      temp_object = Square.new_initialize(2)
      expect(temp_object.point_a.x_coordinate).to eq(0)
      expect(temp_object.point_a.y_coordinate).to eq(0)
      expect(temp_object.point_b.x_coordinate).to eq(0)
      expect(temp_object.point_b.y_coordinate).to eq(2)
      expect(temp_object.point_c.x_coordinate).to eq(2)
      expect(temp_object.point_c.y_coordinate).to eq(2)
      expect(temp_object.point_d.x_coordinate).to eq(2)
      expect(temp_object.point_d.y_coordinate).to eq(0)
    end
  end

  describe 'Area' do
    it 'returns correct area' do
      temp_object = Square.new_initialize(2)
      expect(temp_object.area).to eq(2*2)
    end
  end
end
