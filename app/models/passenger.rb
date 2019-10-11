class Passenger
attr_accessor :name

@@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def rides
        rides_ridden = Ride.all.select {|trip| trip.passenger == self } #if the passenger matches the instance of passenger
    end

    def self.all
        @@all
    end



end
