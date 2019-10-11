class Driver
    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all 
        @@all 
    end

    def rides 
        Ride.all.select do |ride|
            ride.driver == self
        end
    end

    def self.mileage_cap(distance)
        total = 0.0
        @@all.select do |driver|
            driver.rides.all.select do |ride|
                p ride.distance
            end
        end
    end

end

