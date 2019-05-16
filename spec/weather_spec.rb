require './lib/weather.rb'
describe Weather do
    it 'it can be stormy or sunny' do
        expect(subject.weather).to eq("sunny").or eq("stormy")
    end
    it 'can be forecasted' do
        expect(subject.forecast).to eq("sunny").or eq("stormy")
    end
end