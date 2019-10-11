class Passenger
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self 
    end

    def rides
        Ride.all.select {|ride| ride.passenger == self}
    end

    def drivers
        rides.map {|pass_ride| pass_ride.driver}
    end

    def total_distance
        total_distance = 0
        rides.each {|pass_ride| total_distance += pass_ride.distance}
        return total_distance
    end

    def self.all
        @@all
    end

    def self.premium_members
        self.all.select {|passenger_instance| passenger_instance.total_distance > 100}
    end
end