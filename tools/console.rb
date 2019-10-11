require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

driver1 = Driver.new("tom")
driver2 = Driver.new("patt")
driver3 = Driver.new("harry")


passenger1 = Passenger.new("larry")
passenger2 = Passenger.new("cara")

ride1 = Ride.new(passenger1, driver1, 59.9)
ride2 = Ride.new(passenger1, driver2, 33.3)



binding.pry

