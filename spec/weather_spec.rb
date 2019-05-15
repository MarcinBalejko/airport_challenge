require './lib/weather.rb'
describe Weather do
    it 'it can be stormy or sunny' do
        weather = Weather.new
        expect(weather.forecast).to eq("sunny").or eq("stormy")
    end
end