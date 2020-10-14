require './lib/bike.rb'

class DockingStation
  attr_reader :has_bike

  def initialize
    # @bikes_docked = 1
    # @capacity = 4
  end

  def release_bike
    fail "Error: No bike" unless @has_bike
    @has_bike


    # # if @bikes_docked > 0
    # #   @bikes_docked -= 1
    #   bike = Bike.new
    # # else
    # #   "There are no bikes"
    # # end
  end

  def dock(bike)
    @has_bike = bike
    # if @bikes_docked < @capacity
    #   @bikes_docked += 1
      "Bike docked!"
    # else
    #   "Find another docking station!"
    # end
  end
end
