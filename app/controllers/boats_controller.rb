class BoatsController < ApplicationController

  def show
    @boat = Boat.find(params[:id])
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.create(boat_params)
    redirect_to boat_path(@boat.id)
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
