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
    def land(plane)
        fail 'Request denied: Not allowed during storm' if @weather != "sunny"
        fail 'Request denied: Airport is full' if full?
        @planes << plane
    end
    def release_plane(plane)
        fail 'Request denied: Not allowed during storm' if @weather != "sunny"
        fail 'Request denied: Airport is empty' if @planes.empty?
        fail 'Cannot release the plane: No such plane on the airport' if @planes.include?(plane) == false
        @planes.delete(plane)
        "Plane #{plane} departed"
    end
    def weather_forecast
        @weather
    end
    def full?
        @planes.count >= @capacity
    end
    def empty?
        @planes.empty?
    end

end