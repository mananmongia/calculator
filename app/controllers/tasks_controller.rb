class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end
  def new

  end
  def create
   # render plain: params[:task].inspect

    @task = Task.create(params_task)
    redirect_to action: 'index'
  end

  def edit
    @task = Task.find_by(params[:id])

  end
  def update
    @task = Task.find(params[:id])
    @task.update(params_task)
    redirect_to action: 'index'
  end
  private def params_task
    params.require(:task).permit(:title, :body)
  end
  def destroy
    @task = Task.find(params[:id])
    @task.delete
    redirect_to action: 'index'
  end
end
