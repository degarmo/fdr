class JobsController < ApplicationController
	before_action :require_login, only: [:edit, :create, :new]
	
  def index
    @job = Job.page(params[:page]).per(10).order(created_at: :desc)
  end

  def new
  	@job = Job.new
  end

  def create
  	@job = Job.new(params.require(:job).permit(:title, :company, :pay, :location, :description))
  	if @job.save
  	 redirect_to jobs_path
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

  def update
    @job = Job.find(params[:id])
    if @job.update(params.require(:job).permit(:title, :company, :pay, :location, :description))
      flash[:notice] = "Successfully update job!"
      redirect_to jobs_path
    else
      flash[:notice] = "Error updating job!"
      render 'edit'
    end
  end

  def archive
    update_attribute!(:displayed, false)
  end 


  private

  def jobs_params
    params.require(:title).permit(:title, :company, :pay, :description)
  end

  def find_jobs
    @job = Jobs.find(params[:id])
  end
end
