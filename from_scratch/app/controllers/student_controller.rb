class StudentController < ApplicationController
before_action :logged_in_user

  def edit
    @user = User.find(params[:id])
  end
  def view
    @user = User.find(params[:id])
  end
  def show_progress
    @student = User.find_by_id(current_user.id)
	@tasks = Task.where(:spid => current_user.id)
	@inst = User.find_by_id(current_user.inst_id)
	@task = Task.where(:spid => current_user.id).first
  end
  def time
    @student = current_user
	@tasks = Task.where(:spid => @student.id)
  end
  def show_tasks
	@student = User.find_by(current_user.id)
	@tasks = Task.where(:spid => @student.id)
  end
  def reset
    @user = User.find_by(current_user.id)
  end
  def create_meeting
    @meeting = Meeting.new
	@student = User.find_by(current_user.id)
	@inst = User.find_by_id(current_user.inst_id)
  end
    def create_request
	@types = ['Flight Lesson', 'Ground Lesson','Written Test', 'X/C Planning', 'Material Review', 'Pre-flight Review', 'Test Review']
    @request = Request.new
	@student = User.find_by_id(current_user.id)
	@inst = User.find_by_id(current_user.inst_id)
  end
  

private 
  	def logged_in_user
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
end