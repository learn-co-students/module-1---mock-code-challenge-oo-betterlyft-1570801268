class Passenger
    attr_reader :name

    def initialize(name)
        @name = name
        @@all << self
    end
@@all = []

    def drivers
        final_answer = Ride.all.map do |single_instnace|
            if single_instnace.passenger == self
                single_instnace.driver
            end
        end
        final_answer
    end
    def self.all
        @@all
    end

    def total_distance

        ## not finish yet

        # count =0
        # average = 0
        # @@all.each do |single_instance|
        #     count+= single_instance.distance
        #     average = count / @@all.length
        # end
        # average
    end

end
