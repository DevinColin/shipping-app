class JobsController < ApplicationController

	def index
		@jobs = Job.all
	end
	def show
		@job = Job.find(params[:id])
	end
	def new
		@job = Job.new
	end
	def create
		@job = Job.new(job_params)
		@job.complete = false
		if @job.save
			redirect_to { :action => 'show', :id => @job.id }
		else
			flash[:alert] = "Invalid job parameters"
			redirect_to '/'
		end
	end
	def edit
		
	end
	def update
		
	end
	def destroy
		@job = Job.find(params[:id])
		@job.destroy
	end

	private
		def job_params
			params.require(:job).permit(:description, :origin, :destination, :cost, :amount)
		end
	end
end
