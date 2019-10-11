require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


six_nine = Passenger.new("Six Nine")
convicts = Passenger.new("Populous")
drunk_person = Passenger.new("drunk rando")

donald_duck = Driver.new("Donald Duck")
mickey_mouse = Driver.new("Mickey Mouse")
scrooge = Driver.new("Scrooge Mcduck")

six_nine_ride_1 = Ride.new(six_nine, donald_duck, 50.9)
convicts_ride_1 = Ride.new(convicts, mickey_mouse, 48.2)

six_nine_ride_2 = Ride.new(six_nine, donald_duck,70.5)
convicts_ride_2 = Ride.new(convicts, mickey_mouse, 82.2)

drunk_person_only_ride = Ride.new(drunk_person, scrooge, 10.1)

convicts_ride_3 = Ride.new(convicts, mickey_mouse, 20.1)
six_nine_ride_2 = Ride.new(six_nine, mickey_mouse,0)



six_nine.rides



# Put your variables here~!

binding.pry
