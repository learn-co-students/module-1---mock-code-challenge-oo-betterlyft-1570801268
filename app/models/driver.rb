class Driver
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end


    def passengers
        Ride.all.select do |ride_instance| 
            if ride_instance.driver == self
                ride_instance.passenger
            end
        end
    end

    def passenger_names
        passenger_arr = passengers.select do |ride_instance| 
            if ride_instance.driver == self
                ride_instance.passenger.name
            end
        end
        passenger_arr.uniq
    end


    def self.all
        @@all
    end

    def self.mileage_cap(cap)
        Ride.all.select { |ride_instance|ride_instance.distance > cap}
    end
end
