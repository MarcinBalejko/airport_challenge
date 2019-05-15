require_relative 'plane'
require_relative 'weather'
class Airport
    attr_reader :capacity, :planes, :weather
    DEFAULT_CAPACITY = 3
    def initialize(capacity = DEFAULT_CAPACITY)
        @capacity = capacity
        @planes = []
        @weather = Weather.new
    end
    def store_plane(plane)
        fail 'Airport is full' if full?
        @planes << plane
    end
    def release_plane(plane)
        fail 'Flight delayed due to the storm' if @weather.forecast != "sunny"
        @planes.delete(plane)
        "Plane #{plane} departed"
    end
    def weather_forecast
        @weather.forecast
    end
    def full?
        @planes.count >= @capacity
    end

end