class BoatsController < ApplicationController
  def index
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = current_user.boats.new(boat_params)
    if @boat.save
      redirect_to root_path
    else
      render "new" 
    end
  end

  def update
  end

  def edit
  end

  def show
  end

  def destroy
    @boat = Boat.find(params[:id])
    respond_to do |format|
      if @boat.destroy
        format.js
      end
    end
  end

    private 
  def boat_params
    params.require(:boat).permit(:name, :containers, :location)
  end
end
