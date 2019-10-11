class Driver
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def rides
        Ride.all.select {|ride| ride.driver == self}
    end

    def passengers
        rides.map {|ride_instance| ride_instance.passenger}
    end

    def passenger_names
       (passengers.map {|passenger_instance| passenger_instance.name}).uniq
    end

    def self.all
        @@all
    end

    def total_distance
        total_distance = 0
        rides.each {|pass_ride| total_distance += pass_ride.distance}
        return total_distance
    end

    def self.mileage_cap(distance)
        self.all.select {|driver_instance| driver_instance.total_distance > distance}
    end
end