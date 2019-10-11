
class Passenger
  attr_accessor :name, :ride

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def rides
    Ride.all.select {|ride| ride.passenger == self}
  end

  def total_distance
    distance = 0
    Ride.all.select {|ride| ride.passenger == self}.map {|ride| distance += ride.distance }
    distance
  end

  def self.all
    @@all
  end

  def self.premium_members
    premium_list = []
    passengers = []
    # binding.pry

    passengers << Ride.all.map {|ride| ride.passenger}.uniq

    # Bugfix: passengers is only receiving the passenger, need the ride distance info

    puts passengers

    passengers.each do |passenger|
      # passenger.total_distance > 100 ? premium_list << passenger : ''
      # puts passenger.all
    end

    return premium_list
  end
end