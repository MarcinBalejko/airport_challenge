require_relative 'plane'
class Airport
    def initialize
        @planes = []

    end
    def store_plane(plane)
        @planes << plane

    end
end