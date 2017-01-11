class BoatsController < ApplicationController

  def index
    @boats = Boat.all
  end

  def show
    @boat = Boat.find(params[:id])
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    if @boat.save
      redirect_to boat_path(@boat.id)
    else
      @job = Job.new
      render 'static_pages/home'
    end
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
