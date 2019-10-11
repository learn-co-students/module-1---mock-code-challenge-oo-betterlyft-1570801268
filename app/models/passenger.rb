class Passenger 
    @@all
    Pasenger = []
    attr_reader :name :rides :drivers :total_distance
    def initialize(name, rides, drivers, total_distance)
        @name=name 
        @rides=rides 
        @drivers=drivers 
        @total_distance=total_distance 
     end 

     
     def get_passenger_name
        @name 
     end 



     def passenger_rides
        @rides
      
     end 



     def drivers
        @driver
     end 



     def total_distance
     end 

end 