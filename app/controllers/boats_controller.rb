class BoatsController < ApplicationController
  def index
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    if @boat.save
      redirect_to root_path
    else
      redirect_to new_boat_path  
    end
  end

  def update
  end

  def edit
  end

  def show
  end

  def destroy
  end
    private 
  def boat_params
    params.require(:boat).permit(:name, :containers, :location)
  end
end
