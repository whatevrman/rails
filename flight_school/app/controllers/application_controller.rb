class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include ApplicationHelper
  
  def create_user
	@user = User.new
  end
  def create_school
   @school = School.new
  end
  def create_task
    @task = Task.new
  end
  def create_request
    @request = Request.new
  end
  def show
    @user = User.find_by_username(params[:username])
  end
  def new
    @user = User.new
  end
   def index
    @users = User.all
  end
  
	
end
