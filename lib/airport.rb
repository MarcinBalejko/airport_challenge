require_relative 'plane'
class Airport
    attr_reader :capacity, :planes
    DEFAULT_CAPACITY = 3
    def initialize(capacity = DEFAULT_CAPACITY)
        @capacity = capacity
        @planes = []

    end
    def store_plane(plane)
        @planes << plane
    end
end