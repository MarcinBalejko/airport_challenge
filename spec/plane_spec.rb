require './lib/plane.rb'
describe Plane do

    describe '#takeoff' do
        it { is_expected.to respond_to :take_off }

        it 'it raises an error when flying' do
            expect{ subject.take_off }.to raise_error 'Cannot take off: Plane is already flying'
        end
    end
end
