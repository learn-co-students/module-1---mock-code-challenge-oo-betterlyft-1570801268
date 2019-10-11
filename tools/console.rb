require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

def random_ride

  (rand * (100 - 10) + 10).round(2)

end



driver1 = Driver.new("Mario")
driver2 = Driver.new("Luigi")
driver3 = Driver.new("Yoshi")
driver4 = Driver.new("Toad")
driver5 = Driver.new("Bowser")
driver6 = Driver.new("Peach")

passenger1 = Passenger.new("Bache")
passenger2 = Passenger.new("Hamman")
passenger3 = Passenger.new("Yuubari")
passenger4 = Passenger.new("Javelin")
passenger5 = Passenger.new("Laffey")
passenger6 = Passenger.new("Helena")
passenger7 = Passenger.new("Albacore")


ride1 = Ride.new(driver1,passenger1,random_ride)
ride2 = Ride.new(driver1,passenger2,random_ride)
ride3 = Ride.new(driver2,passenger3,random_ride)
ride4 = Ride.new(driver3,passenger4,random_ride)
ride5 = Ride.new(driver4,passenger5,random_ride)
ride7 = Ride.new(driver5,passenger6,random_ride)
ride8 = Ride.new(driver6,passenger7,random_ride)
ride9 = Ride.new(driver2,passenger4,random_ride)
ride10 = Ride.new(driver3,passenger6,random_ride)
ride11 = Ride.new(driver4,passenger1,random_ride)
ride12 = Ride.new(driver5,passenger2,random_ride)



binding.pry
