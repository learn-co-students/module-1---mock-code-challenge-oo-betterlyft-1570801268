require_relative '../config/environment.rb'
require_relative './driver.rb'
require_relative './passenger.rb'
require_relative './ride.rb'


def reload
  load 'config/environment.rb'
end

Passenger1 = Passenger.new("Person")
p Passenger1.name

binding.pry
