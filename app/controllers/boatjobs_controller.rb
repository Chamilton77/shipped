class BoatjobsController < ApplicationController
	def create
		@boat = Boat.find(params[:boat_id])
		@job = Job.find(params[:job_id])
		respond_to do |format|
			if @job.boats << @boat
				 format.js
			end
		end

	end
end
