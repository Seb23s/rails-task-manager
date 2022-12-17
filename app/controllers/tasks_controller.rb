class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :delete]

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @tasks = Task.new
  end

  # cours : No need for app/views/restaurants/create.html.erb
  def create
    @tasks = Task.new(task_params)
    @tasks.save
    redirect_to tasks_path(@tasks)
  end

  def edit
  end

  def update
    @tasks.update(task_params)
    @tasks.save
  end

  def delete
    @tasks.destroy
    @tasks.save
  end
end

private
def task_params
  params.require(:task).permit(:title, :details, :completed)
end
def set_task
  @tasks = Task.find(params[:id])
end
