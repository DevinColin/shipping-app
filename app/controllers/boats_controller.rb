class BoatsController < ApplicationController
  def show
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.create(boat_params)
  end

  def update
  end

  def destroy
  end

  private

    def boat_params
      params.require(:boat).permit(:name, :capacity, :cargo, :location)
    end
end
