require './lib/bike.rb'

class DockingStation
  def initialize
    @bikes_docked = 1
    @capacity = 4
  end

  def release_bike
    if @bikes_docked > 0
      @bikes_docked -= 1
      bike = Bike.new
    else
      "There are no bikes"
    end
  end

  def dock(bike)
    if @bikes_docked < @capacity
      @bikes_docked += 1
      "Bike docked!"
    else
      "Find another docking station!"
    end
  end
end
