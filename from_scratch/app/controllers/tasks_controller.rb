class TasksController < ApplicationController

  def create
	@task = Task.new(task_params) 
    if @task.save
	  flash[:success] = "New task added."
	  redirect_to '/'
    else
	  flash[:success] = "New task NOT added!"
      render '/'
    end
  end
  
 
   def show
    @task = Task.find(params[:id])
	redirect_to '/task/'+@task.id+'/view'
  end
  
  def edit
    @task = Task.find(params[:id])
	redirect_to '/task/'+@task.id.to_s+'/edit'
  end
  def index
    if params[:search]
      @tasks = Task.search(params[:search])
    else
      @tasks = Task.all
    end
  end













private

			def task_params
				params.require(:task).permit(:id, :spid, :end_model, :end_date, :ipid, :flnumber, 
				:fldate, :hnumber, :htype, :dualflight, :soloflight, :dualxc, :soloxc, 
				:day, :night, :xcplan)
			end

end
