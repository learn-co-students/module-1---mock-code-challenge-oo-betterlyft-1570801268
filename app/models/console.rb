require_relative './driver.rb'
require_relative './passenger.rb'
require_relative './ride.rb'

Passenger1 = Passenger.new("Person")
Passenger2 = Passenger.new("Person2")
Passenger3 = Passenger.new("Person3")
Passenger4 = Passenger.new("Person4")
Driver1 = Driver.new("Driver1")
Driver2 = Driver.new("Driver2")
Ride1 = Ride.new(Driver2, Passenger1, 5.5)
Ride2 = Ride.new(Driver2, Passenger4, 12.1)
Ride3 = Ride.new(Driver1, Passenger2, 6.9)
Ride4 = Ride.new(Driver1, Passenger3, 7.7)
Ride5 = Ride.new(Driver1, Passenger2, 4.2)
Ride6 = Ride.new(Driver1, Passenger1, 1.6)

#rides, drivers, name, total_distance

#p Passenger2.total_distance
#p Ride.average_distance
# Driver1.rides
#p Passenger.premium_members
p Driver.mileage_cap(10)
