class Rides
    attr_accessor :driver, :passenger, :distance
    # attr_reader :distance

    @@all = []

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance
        @@all << self
    end

    # def distance=(distance)
    #     @distance = distance
    # end

    def passenger
        @passenger
    end

    def driver
        @driver
    end

    def distance
        @distance
    end

    def self.all
        @@all
    end

    def self.average_distance
        total = 0
        rides = 0
        @@all.each { |distance|
            if rides.distance == self
                total += rides.distance
                rides += 1
            end
        }
        return (total / rides)
    end

end
