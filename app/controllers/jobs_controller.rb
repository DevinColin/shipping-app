class JobsController < ApplicationController

	def index
		@job = Job.new
		@unassigned_jobs = []
		@assigned_jobs = []
		activeJobsArray = Job.where(complete: false).reverse
		activeJobsArray.each do |j|
			if j.boats.count == 0
				@unassigned_jobs.push(j)
			else
				@assigned_jobs.push(j)
			end
		end

		all_boats = Boat.all
		@available_boats =[]
		all_boats.each do |boat|
			total = boat.capacity - boat.cargo
			if total > 4
				@available_boats.push(boat)
			end
		end

		@old_jobs = Job.where(complete: true).reverse
	end

	def show
		@job = Job.find(params[:id])
	end

	def new
		@job = Job.new
	end

	def create
		@job = Job.new(job_params)
		@job.set_cost
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

		if job_params[:boats]
			job_params[:boats].each do |b|
				if b != ""
					boat = Boat.find(b)
					@job.boats.push(boat)
				end
			end
		elsif @job.update(job_params)
		else
			render action: 'edit'
		end
		redirect_to action: 'show', id: @job.id
	end

	def destroy
		@job = Job.find(params[:id])
		@job.destroy
	end

	def mark_as_complete
		job = Job.find(params[:id])
		job.complete = true
		job.save 
	end

	private

		def job_params
			params.require(:job).permit(:description, :origin, :destination, :cost, :amount, :boats => [])
		end

end
