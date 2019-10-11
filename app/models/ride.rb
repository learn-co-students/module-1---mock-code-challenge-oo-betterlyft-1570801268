class Ride

    attr_reader :driver, :passenger
    attr_accessor :distance

    @@all = []

    def self.all 
        @@all
    end


    def initialize(driver, passenger, distance)

        @driver = driver
        @passenger = passenger
        @distance = distance
        passenger.total_distance += distance

        @@all << self
        
        
    end



    def self.average_distance

        sum = 0.0
        count = 0

        @@all.each { |ride| 
        
            sum += ride.distance
            count += 1

        }

        #Just thought rounding would look better
        return (sum / count).round(2)


    end



end