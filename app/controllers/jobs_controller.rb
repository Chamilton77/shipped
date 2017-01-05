class JobsController < ApplicationController
  def index
    @boats = Boat.all
    @jobs = Job.all
    @job = Job.new
  end

  def new
    @job = Job.new
    @boat_id = params[:boat_id] if params[:boat_id] #this says if there is a boat id to get the boat id
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      Boat.find(params[:boat_id]).jobs << @job if params[:boat_id] #this finds a boat by id and adds a job to the boat
      redirect_to jobs_path 
    else
      redirect_to jobs_path
    end
  end

  def update
  end

  def edit
  end

  def show

  end

  def destroy
    @job = Job.find(params[:id])#finds the job by its id
    respond_to do |format|
      if @job.destroy #this code sends you to the js page for destroy to delete the post with ajax
        format.js
      end
    end
  end

    private

  def job_params
    params.require(:job).permit(:description, :containers, :cost, :destination, :origin, :name)
  end
end
