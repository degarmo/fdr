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
    find_job
  end

  def edit
    find_job
  end

  def update
    find_job
    if @job.update(params.require(:job).permit(:title, :company, :pay, :location, :description))
      flash[:notice] = "Successfully update job!"
      redirect_to jobs_path
    else
      flash[:notice] = "Error updating job!"
      render 'edit'
    end
  end

  private

  def jobs_params
    params.require(:title).permit(:title, :company, :pay, :description)
  end

  def find_job
    @job = Job.find(params[:id])
  end

  def create_archive
    find_job.archive = true
    find_job.save
    redirect_to jobs_path
  end

  def destroy_archive
    find_job.archive = false
    find_job.save
    redirect_to jobs_path
  end

  
end
