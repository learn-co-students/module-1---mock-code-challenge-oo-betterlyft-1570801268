class Ride
    attr_reader :driver, :passenger, :distance

    @@all = []

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance
        @@all << self
    end

    def self.all
        @@all
    end

    def self.average_distance
        total_distance = 0 
        self.all.each {|ride_instance| total_distance += ride_instance.distance}
        total_distance / self.all.count
    end
end