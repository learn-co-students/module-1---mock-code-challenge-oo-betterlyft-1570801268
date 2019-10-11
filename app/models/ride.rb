
class Ride

    attr_accessor :passenger, :driver
    
    @@all =[]
    def initialize(passenger, driver)
        @passenger = passenger
        @driver = driver
        @distance = rand(1..10).to_f
        @@all << self
    end

    def distance
        @distance
    end

    def self.all
        @@all
    end

    def self.average_distance
        count =0
        average = 0
        @@all.each do |single_instance|
            count+= single_instance.distance
            average = count / @@all.length
        end
        average
    end

end
# [#<Ride:0x00007fffd1fb60c0
#     @distance=2.0,
#     @driver=#<Driver:0x00007fffd1fb60e8 @name="Denmarque">,
#     @passenger=#<Passenger:0x00007fffd1fb6200 @name="sofiane">>,
#    #<Ride:0x00007fffd1fb6070
#     @distance=4.0,
#     @driver=#<Driver:0x00007fffd1fb6160 @name="Jacki">,
#     @passenger=#<Passenger:0x00007fffd1fb6200 @name="sofiane">>]