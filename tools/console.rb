require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
p1 = Passenger.new("pat")
p2 = Passenger.new("heather")

d1 = Driver.new("robin")
d2 = Driver.new("liz")
d3 = Driver.new("tom")

r1 = Ride.new(d1, p2)
r2 = Ride.new(d2, p1, 4.9)
r3 = Ride.new(d2, p2, 9)


binding.pry
