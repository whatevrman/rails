class InstructorController < ApplicationController
  before_action :logged_in_user
   def index
    @users = User.all
  end
  def edit
    @user = User.find(params[:id])
  end
  def view
    @user = User.find(params[:id])
  end
  def wait_students
	@students = User.where(:role => "student").where.not(:approval => 't').where(:schoolid => current_user.schoolid)
  end
  def show_students
	@students = User.where(:role => "student").where(:approval => 't').where(:schoolid => current_user.schoolid).where.not(:disable => 't')
  end
  def select_students
	@students = User.where(:role => "student").where(:approval => 't').where(:schoolid => current_user.schoolid).where.not(:disable => 't')
  end
  def disable_students
	@students = User.where(:role => "student").where(:approval => 't').where(:schoolid => current_user.schoolid)
  end
  def reset
    id=current_user.id
    @user = User.find(id)
  end
  def disabled_studs
	@students= User.where(:role => "student").where(:disable => 't').where(:schoolid => current_user.schoolid)
  end 
  def create_task
    @task = Task.new
	@student = User.find(params[:id])
	@inst = User.find_by_id(@student.inst_id)
  end
  def select_progress
	@students = User.where(:role => "student").where(:approval => 't').where(:schoolid => current_user.schoolid).where.not(:disable => 't')
  end
  def show_progress
	@student = User.find_by_id(params[:id])
	@tasks = Task.where(:spid => @student.id)
	@inst = User.find_by_id(current_user.id)
	@task = Task.where(:spid => @student.id).first
  end
  def show_requests
    @requests = Request.where(:ipid => current_user.id)
	@meetings = Meeting.where(:ipid => current_user.id)
  end
  private 
  	def logged_in_user
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
end