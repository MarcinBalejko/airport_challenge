require './lib/airport.rb'

describe Airport do
    
    it 'responds to docks plane' do
        expect(subject).to respond_to :store_plane
    end

    it 'stores plane' do
        expect(subject.store_plane).to eq plane
    end

end