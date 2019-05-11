require './lib/airport.rb'

describe Airport do
    
    it 'responds to docks plane' do
        expect(subject).to respond_to :store_plane
    end

end