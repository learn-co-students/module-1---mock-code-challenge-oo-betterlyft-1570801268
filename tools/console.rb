require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
passenger1 = Passenger.new("Barbara")
passenger2 = Passenger.new("Brindha")
passenger3 = Passenger.new("Tiana")

driver1 = Driver.new("Tony")
driver2 = Driver.new("Caryn")
driver3 = Driver.new("Yoan")

ride1 = Ride.new(driver1, passenger1, 5.0)
ride2 = Ride.new(driver1, passenger2, 100.0)
ride3 = Ride.new(driver3, passenger2, 100.0)
ride4 = Ride.new(driver3, passenger2, 1.0)
ride5 = Ride.new(driver2, passenger3, 1.0)
ride6 = Ride.new(driver1, passenger1, 1.0)

binding.pry
