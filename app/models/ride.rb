class Ride 

    attr_accessor :driver, :passenger, :distance 
    
    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance  

    end 
      

    brad = Ride.new("Brad", "Alina", ["1.5", "2.5"])
    
    alina = Ride.new("Alina", "Brad", ["3.5", "4.5"])

    
  

end 
