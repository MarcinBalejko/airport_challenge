require_relative 'airport'
class Weather
    attr_reader :weather
    def initialize
        @weather = ['stormy', 'sunny'].sample
    end
    def forecast
        @weather
    end
end