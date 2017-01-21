class Jobs::ArchiveController < JobsController
    before_action :require_login
	
    def index
      
    end

    def show   

    end

    def create
      job_find.archive = true
      job_find.save
      redirect_to job_archive_path
    end

    def destroy
      job_find.archive = false
      job_find.save
      redirect_to root_path
    end
end
