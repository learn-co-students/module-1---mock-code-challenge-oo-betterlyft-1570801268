
class Passenger


    attr_reader :name, :rides, :drivers
    attr_accessor :total_distance

    def initialize(name)
        @name = name
        @total_distance = 0
        
    end

    def rides
        Ride.all.select { |ride|
            ride.passenger == self 
        }
    end

    def drivers
        Ride.all.map { |ride| 
            if ride.passenger == self
                ride.driver
            end 
        }.compact
    end

    def self.all
        Ride.all.map { |ride| 
            ride.passenger
        }.uniq
    end

    # def total_distance
    
    #     Ride.all.each { |ride| 
    #         if ride.passenger == self
    #             @total_distance += ride.distance
    #         end            
    #     }
    #     @total_distance
    # end


    def self.premium_members
        Passenger.all.select { |passengers|
            passengers.total_distance > 100.0    
        }.uniq
    end    





end
