require_relative 'airport'
class Plane
    def initialize
        @flying = true
    end
    def take_off
        raise 'Cannot take off: Plane is already flying'
    end

end