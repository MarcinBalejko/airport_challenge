require './lib/plane.rb'
describe Plane do

    let(:airport) {Airport.new}

    describe '#takeoff' do
        it { is_expected.to respond_to :take_off }

        it 'it raises an error when flying' do
            expect{ subject.take_off }.to raise_error 'Cannot take off: Plane is already flying'
        end
    end
    describe '#land' do
        it 'responds to land' do
            expect(subject).to respond_to(:land).with(1).argument
        end
    end
end
