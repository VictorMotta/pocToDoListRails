class TasksController < ApplicationController
  def create
    task = params.require(:task).permit(:task)
    Task.create task
    redirect_to root_url
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to root_path
  end
end
