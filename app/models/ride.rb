class Ride
attr_accessor :passenger, :driver, :distance

    @@all = []

    def initialize(passenger, driver, distance)
        @passenger = passenger
        @driver = driver
        @distance = rand(0.1..999999999.9)

        @@all << self
    end

    # def average_distance(distance)
        
    # end


    def self.all
        @@all
    end


end
