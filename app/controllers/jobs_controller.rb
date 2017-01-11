class JobsController < ApplicationController

	def index
		@newjobs = Job.where(complete: false).reverse
		@oldjobs = Job.where(complete: true).reverse
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
			redirect_to job_path(@job.id)
		else
			flash[:alert] = "Invalid job parameters"
			@boat = Boat.new
			render 'static_pages/home'
		end
	end
	def edit
		@job = Job.find(params[:id])
	end
	def update
		@job = Job.find(params[:id])
		if @job.update(job_params)
			redirect_to action: 'show', id: @job.id
		else
			render action: 'edit'
		end
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
