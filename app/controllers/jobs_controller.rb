class JobsController < ApplicationController

	def new
		
	end
	def create
		Job.create(job_params)
	end
	def edit
		
	end
	def update
		
	end
	def index
		
	end
	def show
		
	end
	def destroy
		
	end

	private

	def job_params
		params.require(:user).permit(:description, :origin, :destination, :cost, :amount)
	end

end
