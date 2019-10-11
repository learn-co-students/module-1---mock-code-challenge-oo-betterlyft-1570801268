class Ride 

    attr_accessor :distance

    attr_reader :driver, :passenger

    @@all = [] 

    def initialize(driver, passenger, distance = 3.2)
        @driver = driver
        @passenger = passenger
        @distance = distance
        self.class.all << self
    end

    def self.all
        @@all
    end


    def self.average_distance 
        total = 0
        all.select do |ride| 
           total += ride.distance
        end
        (total / all.length).round(2)
    end

end
