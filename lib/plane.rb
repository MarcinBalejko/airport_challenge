require_relative 'airport'
class Plane
    def land(airport)
        @landed = true
        fail 'Airport is full' if airport.full? != false
        
    end
    def landed?
        @landed
    end
end