class Driver
    attr_accessor :name, :rides

    def initialize(name)
        @name = name
    end

    def passenger_name

        arrays= Ride.all.map do |single_instance|
            if single_instance.driver == self
                single_instance.passenger
            end
        end
        arrays
    end

    def self.rides
        Ride.all.map do |single_instance|
            if single_instance.driver == self
                p single_instance.ride
            end
        end
    end

end
