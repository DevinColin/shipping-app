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
    @boat.user_id = current_user.id
    if @boat.save
      redirect_to boat_path(@boat.id)
    else
      @job = Job.new
      render 'static_pages/home'
    end
  end

  def edit
    @boat = Boat.find(params[:id])
  end

  def update
    @boat = Boat.find(params[:id])
    if !@boat.update(update_params)
      flash[:alert] = "Invalid entry"
    end
    redirect_to "/boats/#{params[:id]}"
  end

  def destroy
    boat = Boat.find(params[:id])
    boat.destroy
    redirect_to "/boats"
  end

  private

    def boat_params
      params.require(:boat).permit(:name, :capacity, :cargo, :location)
    end
    def update_params
      params.require(:boat).permit(:capacity, :cargo, :location, :avatar)
    end

end
