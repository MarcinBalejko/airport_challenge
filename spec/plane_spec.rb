require './lib/plane.rb'
describe Plane do
    subject(:plane) { described_class.new }
    let(:airport) { Airport.new }

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

        it 'raises an error if already landed' do
            plane.land(airport)
            expect{ plane.land(airport) }.to raise_error 'Cannot land: Plane already landed'
        end
    end
end
