require_relative 'plane'
class Airport
    attr_reader :capacity, :planes
    DEFAULT_CAPACITY = 3
    def initialize(capacity = DEFAULT_CAPACITY)
        @capacity = capacity
        @planes = []
    end
    def store_plane(plane)
        fail 'Airport is full' if full?
        @planes << plane
    end
    def release_plane(plane)
        @planes.delete(plane)
        "Plane #{plane} departed"
    end

    def full?
        @planes.count >= @capacity
    end

end