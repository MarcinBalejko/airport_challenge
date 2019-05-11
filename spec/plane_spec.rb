require './lib/plane.rb'
require './lib/airport.rb'

describe Plane do

    let(:airport) {Airport.new}

    it 'responds to land method' do
        expect(subject).to respond_to :land
    end
    #it 'lands' do
     #   subject.land
      #  expect(subject.landed?).to be true
    #end
    #it 'cannot land if airport full' do
        

end
