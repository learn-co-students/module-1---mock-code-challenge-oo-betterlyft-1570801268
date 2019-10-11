require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

passanger1 = Passenger.new("Peter")
passanger2 = Passenger.new("Paul")

driver1 =Driver.new("driv. Greg")
driver2 =Driver.new("driv. Jay")

ride1 = Ride.new(passanger1, driver1, 100)
ride2 = Ride.new(passanger1, driver2, 20)
ride3 = Ride.new(passanger2,driver1, 21)

binding.pry
