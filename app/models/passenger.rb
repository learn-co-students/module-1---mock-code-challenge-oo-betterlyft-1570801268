class Passenger
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def rides
        Ride.all.select { |ride_instance| ride_instance.passenger == self}
    end
    
    def drivers
        rides.select do |ride|
            if ride.passenger == self
                ride.driver
            end
        end
    end

    def total_distance
        total = 0
        drivers.each {|ride| total += ride.distance}
        total
    end

    def self.all
        @@all
    end

    def self.premium_members
        Ride.all.select { |ride_instance| ride_instance.passenger.total_distance > 100}
    end
end
