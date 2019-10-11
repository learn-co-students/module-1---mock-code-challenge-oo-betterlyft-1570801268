class Ride
    attr_reader :driver, :passenger, :distance
    @@all = []
    def initialize(passenger, driver, distance)
        @passenger = passenger
        @driver = driver
        @distance = distance
        @@all << self
    end

    def self.all
        @@all
    end

    def self.sum
        total = 0
        @@all.each {|ride| total += ride.distance}
        total
    end

    def self.average_distance
        avg = (self.sum / @@all.length)
    end

end
