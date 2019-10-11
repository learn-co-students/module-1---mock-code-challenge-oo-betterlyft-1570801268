class Driver

    attr_accessor :name, :passenger_names, :rides 
    
    def initialize(name, passenger_names, rides)
        @name = name
        @passenger_names = passenger_names
        @rides = rides 

    end 
      

    brad = Driver.new("Brad", ["Leo", "George"], ["1.5", "2.5"])
    
    alina = Driver.new("Alina", ["Art", "Zigaboo"], ["3.5", "4.5"])
  
  

end 