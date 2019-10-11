class Driver

    attr_reader :name

    def initialize(name)
        @name = name         
        
    end

    def passenger_names
        rides.map { |ride|
            ride.passenger.name
        }.uniq
    end

    def rides
        Ride.all.select { |ride| 
            ride.driver == self
        }
    end


    def distance_driven
        distance = 0
        rides.each { |ride| 
            distance += ride.distance 
        }

        distance
    end


    def self.all
        Ride.all.map { |ride| 
            ride.driver
        }.uniq
    end


    def self.mileage_cap(distance_cap)
        Driver.all.select { |driver|
            driver.distance_driven > distance_cap
        }.uniq

    end






end