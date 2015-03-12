class TasksController < ApplicationController
   def index
    @user = User.joins(:tasks).find(params[:id])
    @tasks = @user.tasks
    @task = Task.new
  end

  def new
  	@task = Task.new
  end

  def create
  	@task = Task.new(task_params)
  	@user = User.find(params[:user_id])
  	@user.tasks << @task
  	respond_to do |format|
  		format.js
  			
  	end
  end

  def destroy
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_params
      params.require(:task).permit(:name, :active, :status, :user_id)
    end
end
