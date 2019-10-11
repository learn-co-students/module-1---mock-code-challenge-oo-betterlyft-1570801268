require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

passenger1 = Passenger.new("Jack")
passenger2 = Passenger.new("Jill")
passenger3 = Passenger.new("Sarah")

driver1 = Driver.new("Sam")
driver2 = Driver.new("Sally")

ride1 = Ride.new(passenger1, driver1, 4.0)
ride2 = Ride.new(passenger2, driver1, 4.0)
ride3 = Ride.new(passenger1, driver2, 3.0)
ride4 = Ride.new(passenger3, driver1, 150.0)


binding.pry
