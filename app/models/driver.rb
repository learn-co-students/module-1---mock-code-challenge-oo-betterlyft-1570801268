class Driver
attr_accessor :name

    def initalize(name)
        @name = name
    end

    def name
        @name = name
    end

    def passenger_names
        names_arr = []
        Rides.all.each{ |name|
            if ride.name == self
                names_arr << ride.passenger
            end
        }.uniq
        names_arr
    end

    def rides 
        rides = []
        Rides.all.each{ |name|
            if ride.name == self
                rides << self
            end
        }
        rides
    end



end
