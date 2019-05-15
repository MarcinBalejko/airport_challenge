require_relative 'plane'
require_relative 'weather'
class Airport
    attr_accessor :capacity, :planes, :weather
    DEFAULT_CAPACITY = 3
    def initialize(capacity = DEFAULT_CAPACITY, weather = Weather.new)
        @capacity = capacity
        @planes = []
        @weather = weather.forecast
    end
    def store_plane(plane)
        fail 'Airport is full' if full?
        fail 'Not allowed during storm' if @weather != "sunny"
        @planes << plane
    end
    def release_plane(plane)
        fail 'Not allowed during storm' if @weather != "sunny"
        @planes.delete(plane)
        "Plane #{plane} departed"
    end
    def weather_forecast
        @weather
    end
    def full?
        @planes.count >= @capacity
    end

end