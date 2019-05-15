require_relative 'airport'
class Weather
    def initialize
        @type = ['stormy', 'sunny']
        @state = @type.sample
    end
    def forecast
        @state
    end
end