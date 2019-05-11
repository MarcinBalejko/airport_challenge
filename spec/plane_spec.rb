require './lib/plane.rb'
require './lib/airport.rb'

describe Plane do

    let(:airport) {Airport.new}

    it 'responds to land method' do
        expect(subject).to respond_to :land
    end
    it 'ready to land' do
        subject.land(airport)
        expect(subject.landed?).to be true
    end
    
end
