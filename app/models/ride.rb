class Ride

    attr_accessor :passenger, :driver, :miles_ride
    @@all = []

    def self.all
        @@all
    end

    def initialize(passenger,driver, distance)
        @passenger = passenger
        @driver = driver
        @miles_ride = distance.to_f
        # @miles_ride = rand(60)+1

        self.class.all << self
    end

    def distance
        @miles_ride   
    end

    def self.average_distance
        total = 0.0
        temp = all.map{|ride| ride.distance}
        temp.each{|distance| total+=distance}
        total/temp.length
    end


end
