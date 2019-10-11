class Passenger

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
        Ride.all.select {|ride| ride.passenger == self}
    end 

end
