require_relative 'airport'
class Weather
    attr_reader :state
    def initialize
        @state = ['stormy', 'sunny'].sample
    end
    def forecast
        @state
    end
end