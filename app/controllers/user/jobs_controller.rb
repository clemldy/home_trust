class User::JobsController < UserController

  def index
    @jobs = current_user.jobs
  end

  def show
    @job = current_user.jobs.find(params[:id])
  end

  def new
    @job = Job.new user_id: current_user.id
  end

  def create
    @job = Job.new job_params.merge(user_id: current_user.id)
    if @job.save
      redirect_to user_jobs_path
    else
      render new_user_job_path
    end
  end

  private

    def job_params
      params.require(:job).permit(:started_at, :finished_at, :description)
    end

end
