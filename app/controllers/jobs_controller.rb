class JobsController < ApplicationController
	before_action :require_login, only: [:edit, :create, :new]

	
  def index
  	@job = Job.page(params[:page]).per(10)
  end

  def new
  	@job = Job.new
  end

  def archive

  end

  def create
  	@job = Job.new(params.require(:job).permit(:title, :company, :pay, :location, :description))
  	if @job.save
  		redirect_to root_path
  	else
  		render "new"
  	end
  end

  def show
    @job = Job.find(params[:id])
  end

  def edit
    @job = Job.find(params[:id])
  end


  private

  def jobs_params
    params.require(:title).permit(:title, :company, :pay, :description)
  end

  def find_jobs
    @job = Jobs.find(params[:id])
  end
end