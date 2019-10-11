class Driver
attr_accessor :name

@@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def rides
        rides_given = Ride.all.select {|trip| trip.driver == self }
    end

    def self.all
        @@all
    end

    # def passenger_names(passenger)
        # ride = Ride.all.select {|person| person.passenger = self }     #needs to be unique, use comparison!
        # ride.map 
    # end


end
