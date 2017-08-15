class TasksController < ApplicationController
  before_action :find_id, only: [:show, :edit, :update, :destroy, :mark_as_complete]

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    new_task = Task.new(task_params)
    redirect_to tasks_path if new_task.save
  end

  def edit
  end

  def show
  end

  # def mark_as_complete
  #   @task.complete = true
  #   @task.save
  #   redirect_to tasks_path
  # end

  def update
    @task.update(task_params)
    redirect_to task_path(@task.id)
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end


  private

  def task_params
    params.require(:task).permit(:name, :details, :complete)
  end

  def find_id
    @task = Task.find(params[:id])
  end
end
