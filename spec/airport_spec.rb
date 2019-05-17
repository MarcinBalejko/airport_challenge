require './lib/airport.rb'

describe Airport do

    let(:plane) {Plane.new}
    
    describe 'store_plane' do
        it 'responds to docks plane' do
            expect(subject).to respond_to :store_plane
        end

        it 'does not store planes if the weather is stormy' do
            subject.weather=("stormy")
            expect{subject.store_plane(plane)}.to raise_error "Landing denied"
        end
    
        it 'stores plane' do
            subject.weather=("sunny")
            expect(subject.store_plane(plane)[0]).to eq plane
        end
    end

    describe 'capacity' do 
        it 'has default capacity' do
            expect(subject.capacity).to eq Airport::DEFAULT_CAPACITY
        end

        it 'defaults capacity' do
            subject.weather=("sunny")
            described_class::DEFAULT_CAPACITY.times { subject.store_plane(plane) }
            expect{subject.store_plane(plane)}.to raise_error 'Airport is full'
        end
        

        it 'raises an error when full' do
            subject.weather=("sunny")
            subject.capacity.times { subject.store_plane(plane) }
            expect { subject.store_plane(plane) }.to raise_error 'Airport is full'
        end

        it 'raises an error when empty' do
            subject.weather=("sunny")
            expect{subject.release_plane(plane)}.to raise_error 'Airport is empty'
        end
    end

    describe 'release_plane' do
        it 'releases given plane' do
            subject.weather=("sunny")
            subject.store_plane(plane)
            expect(subject.release_plane(plane)).to eq "Plane #{plane} departed"
        end

        it 'does not realease planes during storm' do
            subject.weather=("stormy")
            expect{subject.release_plane(plane)}.to raise_error 'Not allowed during storm'
        end
    end

    describe 'weather_forecast' do
        it 'forecasts weather' do
            expect(subject).to respond_to(:weather_forecast)
        end

        it 'it has a random weather from start' do
            expect(subject.weather_forecast).to eq("sunny").or eq("stormy")
        end
    end

end