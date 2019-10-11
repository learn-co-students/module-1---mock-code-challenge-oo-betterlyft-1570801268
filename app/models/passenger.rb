class Passenger

    attr_reader :name
    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name

        self.class.all << self
    end

    def rides
        Ride.all.select{|ride| ride.passenger == self}
    end

    def drivers
        rides.map{|ride| ride.driver}
    end

    def total_distance
        rides.map{|ride| ride.miles_ride}.sum
    end

    def self.premium_members
        all.select{|passenger| passenger.total_distance > 100}
    end
end
