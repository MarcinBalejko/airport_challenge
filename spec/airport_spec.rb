require './lib/airport.rb'

describe Airport do
    
    it 'responds to docks plane' do
        expect(subject).to respond_to :store_plane
    end

    it 'stores plane' do
        plane = Plane.new
        expect(subject.store_plane(plane)[0]).to eq plane
    end

    it 'has default capacity' do
        expect(subject.capacity).to eq Airport::DEFAULT_CAPACITY
    end


end