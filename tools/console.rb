require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

passenger1 = Passenger.new("Eli")
passenger2 = Passenger.new("Boris")
passenger3 = Passenger.new("Morris")

# driver1 = Driver.new("Harvey")
# driver2 = Driver.new("Max")
# driver3 = Driver.new("Shelly")

ride1 = Rides.new("Harvey", "Eli", 3)
ride2 = Rides.new("Max", "Boris", 3)
ride3 = Rides.new("Shelly", "Morris", 6)
ride4 = Rides.new("Shelly", "Eli", 1)

# Put your variables here~!

binding.pry
