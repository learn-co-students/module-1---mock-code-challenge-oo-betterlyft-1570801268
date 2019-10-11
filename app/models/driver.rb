class Driver

    attr_accessor :name
    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name

        self.class.all << self
    end

    def rides
        Ride.all.select{|ride| ride.driver == self}
    end

    def passenger_names
        rides.map{|ride| ride.passenger.name}.uniq
    end
    def total_miles
        rides.map{|ride| ride.distance}.sum
    end
    def self.mileage_cap(distance)
        all.select{|driver| driver.total_miles > distance}
    end
end
