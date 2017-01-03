class JobsController < ApplicationController
  def index
    @boats = Boat.all
    @jobs = Job.all
    @job = Job.new
  end

  def new
    @job = Job.new
    respond_to do |format|
      format.js
    end
  end

  def create
    @job = Job.new(job_params) 
    if @job.save
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
    @job = Job.find(params[:id])
    respond_to do |format|
      if @job.destroy
        format.js
      end
    end
  end

    private

  def job_params
    params.require(:job).permit(:description, :containers, :cost, :destination, :origin)
  end
end
