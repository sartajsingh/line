require 'spec_helper'

describe 'Point' do
  temp_object = Point.new(2,2)
  it 'returns the initialized value of x_coordinate' do
    expect(temp_object.x_coordinate).to eq 2
  end

  it 'returns the initialized value of y_coordinate' do
    expect(temp_object.y_coordinate).to eq 2
  end
end
