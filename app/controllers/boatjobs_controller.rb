class BoatjobsController < ApplicationController
	def create
		#this block of code creates a new boatjob which assigns a boat to a job
		#it adds the boat id and boat to the job so show which on it is tied too
		@boat = Boat.find(params[:boat_id])
		@job = Job.find(params[:job_id])
		respond_to do |format| 
			if @job.boats << @boat
				 format.js
			end
		end
	end
end
