class Ride
    attr_accessor :driver, :passenger, :distance
    @@all = []
    
    def initialize(driver, passenger, distance=0.0)
        @driver = driver
        @passenger = passenger
        @distance = distance
        @@all << self
    end

    def self.all 
        @@all
    end

    def self.average_distance
        total = 0.0
        @@all.each do |ride|
            total += ride.distance
        end
        total /= @@all.length
        return total.round(2)
    end

end
