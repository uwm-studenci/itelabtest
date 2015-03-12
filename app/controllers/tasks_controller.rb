class TasksController < ApplicationController
   def index
    @tasks = Task.joins(:users).find(params[:id])
  end

  def new
  end

  def create
  end

  def destroy
  end
end
