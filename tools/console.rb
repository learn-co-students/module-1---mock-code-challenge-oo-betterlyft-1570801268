require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

## passengers
passenger1 = Passenger.new("soufiane")
passenger2 = Passenger.new("Adriane")
passenger3 = Passenger.new("Youness")
passenger4 = Passenger.new("Jacob")


#drivers
driver1 = Driver.new("Jacki")
driver2 = Driver.new("Hector")
driver3 = Driver.new("imad")
driver4 = Driver.new("unknow")


##rides
first_ride = Ride.new(passenger1, driver2)
second_ride = Ride.new(passenger3, driver3)
third_ride = Ride.new(passenger1, driver2)
forth_ride = Ride.new(passenger3, driver1)
fifth_ride = Ride.new(passenger1, driver1)
sixth = Ride.new(passenger4, driver4)



binding.pry
