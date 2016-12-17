class HomeController < ApplicationController
  def index
  	@boats = Boat.all
  end
end
