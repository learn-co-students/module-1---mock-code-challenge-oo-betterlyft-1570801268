class Passenger
 attr_accessor :name

    def initialize(name)
        @name = name
    end

    def name
        @name
    end

    def rides
        ride_arr = []
        Rides.all.each { |name|
            if rides.passenger == self
                ride_arr << name
            end
        ride_arr
        }
    end

    def drivers
        driver_arr = []
        Rides.all.each { |name|
            if ride.name == self
                driver_arr << ride.driver
            end
        }
        driver_arr
    end


end
