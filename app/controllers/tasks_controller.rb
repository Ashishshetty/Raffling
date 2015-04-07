class TasksController < ApplicationController
  before_action :all_tasks, only: [:index, :create, :update, :destroy]
  before_action :set_tasks, only: [:edit, :update, :destroy]
  respond_to :html, :js, :json

  def index
    @tasks = Task.all
  end

  def win
    # reading
    params[:changed_orders].value do |param|
      #update
      @task = Task.find(param[:id])
      @task.winner = param[:winner]
      @task.save!
    end
      render text: 'success'
  end



  def new
    @task = Task.new
  end

  def create

    @task = Task.create(task_params)
  end

  def update
    @task.update_attributes(task_params)
  end

  def destroy
    @task.destroy
  end

  private

    def all_tasks
      @tasks = Task.all
    end

    def set_tasks
      @task = Task.find(params[:id])
    end

    def task_params
      params.require(:task).permit(:name,:winner)
    end
end
