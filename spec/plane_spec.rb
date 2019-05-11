require './lib/plane.rb'

describe Plane do
    it 'responds to land method' do
        expect(subject).to respond_to :land
    end
    
end
