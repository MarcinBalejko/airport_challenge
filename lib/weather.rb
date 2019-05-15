require_relative 'airport'
class Weather
    attr_reader :state
    def initialize
        @type = ['stormy', 'sunny']
        @state = @type.sample
    end
    def forecast
        @state
    end
end