class Passenger

    attr_accessor :name, :ride, :driver 
    
    def initialize(name, ride, driver)
        @name = name 
        @ride = ride
        @driver = driver 

    end 
      

    brad = Passenger.new("Brad", ["10", "20"], ["driver1", "driver2"])

    alina = Passenger.new("Alina", ["30", "40"], ["driver3", "driver4"])

    
    

end 