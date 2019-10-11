class Driver

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def rides
        Ride.all.select {|ride| ride.driver == self}
    end

    
    def passenger_names
        Ride.all.map do |ride|
            if ride.driver == self
                ride.passenger
            end
        end
    end

    def self.mileage_cap(distance)
        drivers_over_distance = []
        Ride.all.each do |ride|
            if ride.distance > distance
                drivers_over_distance << ride.driver
            end
        end
        drivers_over_distance
    end


end

