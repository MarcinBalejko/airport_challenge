require './lib/plane.rb'

describe Plane do
    it 'responds to land method' do
        expect(subject).to respond_to :land
    end
    it 'lands' do
        subject.land
        expect(subject.landed?).to be true
    end
end
