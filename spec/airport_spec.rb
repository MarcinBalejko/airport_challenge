require './lib/airport.rb'

describe Airport do

    let(:plane) {Plane.new}
    
    describe '#land' do
        it 'responds to land' do
            expect(subject).to respond_to :land
        end

        it 'does not store planes if the weather is stormy' do
            subject.weather=("stormy")
            expect{subject.land(plane)}.to raise_error "Request denied: Not allowed during storm"
        end
    
        it 'lands plane' do
            subject.weather=("sunny")
            expect(subject.land(plane)[0]).to eq plane
        end
    end

    describe '#capacity' do 
        it 'has default capacity' do
            expect(subject.capacity).to eq Airport::DEFAULT_CAPACITY
        end

        it 'defaults capacity' do
            subject.weather=("sunny")
            described_class::DEFAULT_CAPACITY.times { subject.land(plane) }
            expect{subject.land(plane)}.to raise_error 'Request denied: Airport is full'
        end
        
        it 'raises an error when full' do
            subject.weather=("sunny")
            subject.capacity.times { subject.land(plane) }
            expect { subject.land(plane) }.to raise_error 'Request denied: Airport is full'
        end

        it 'raises an error when empty' do
            subject.weather=("sunny")
            expect{subject.release_plane(plane)}.to raise_error 'Request denied: Airport is empty'
        end
    end

    describe '#release_plane' do
        it 'releases given plane' do
            subject.weather=("sunny")
            subject.land(plane)
            expect(subject.release_plane(plane)).to eq "Plane #{plane} departed"
        end

        it 'does not realease planes during storm' do
            subject.weather=("stormy")
            expect{subject.release_plane(plane)}.to raise_error 'Request denied: Not allowed during storm'
        end

        it 'raises an error when the plane is not on the airport' do
            subject.weather=("sunny")
            plane2 = Plane.new
            subject.land(plane)
            expect{ subject.release_plane(plane2)}.to raise_error 'Cannot release the plane: No such plane on the airport'
        end
    end

    describe '#weather_forecast' do
        it 'forecasts weather' do
            expect(subject).to respond_to(:weather_forecast)
        end

        it 'it has a random weather from start' do
            expect(subject.weather_forecast).to eq("sunny").or eq("stormy")
        end
    end

end