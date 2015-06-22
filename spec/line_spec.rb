require 'spec_helper'
describe 'calculate_length' do
 it 'should return the correct distance' do
   expect(Line.new(2,2,1,1).calculate_length).to eq (Math.sqrt((2-1)**2 + (2-1)**2))
 end
end
