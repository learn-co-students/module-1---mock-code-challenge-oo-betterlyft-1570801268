require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
passenger1 = Passenger.new("John")
passenger2 = Passenger.new("Jill")
passenger3 = Passenger.new("Barack")
passenger4 = Passenger.new("Joe")
driver1 = Driver.new("Jack")
driver2 = Driver.new("Jimmy")
driver3 = Driver.new("George")
driver4 = Driver.new("Richard")

passenger1.hail_ride(driver1, 101.0)
passenger2.hail_ride(driver2, 44.4)
driver1.pick_up_ride(passenger3, 70.0)
driver1.pick_up_ride(passenger3, 80.5)
driver1.pick_up_ride(passenger2, 66.5)
driver2.pick_up_ride(passenger4, 88.4)

ride1 = Ride.new(driver4, passenger4, 2)

binding.pry
