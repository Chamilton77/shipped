class HomeController < ApplicationController
  def index
  	@boats = Boat.all
  	@job = Job.new
  end
end
