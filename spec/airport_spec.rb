require './lib/airport.rb'

describe Airport do

    let(:plane) {Plane.new}
    
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

    it 'defaults capacity' do
        described_class::DEFAULT_CAPACITY.times { subject.store_plane(plane) }
        expect{subject.store_plane(plane)}.to raise_error 'Airport is full'
    end


end