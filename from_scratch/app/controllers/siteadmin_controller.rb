class SiteadminController < ApplicationController
before_action :logged_in_user
   def index
    @users = User.all
  end
  def edit
    @user = User.find(params[:id])
  end
  def wait_schools
	@schools = School.where.not(:disable => 'f')
  end
  def show_schools
	@schools = School.where(:disable => 'f')
  end
  
  def show_people
	@people = User.where.not(:role => 'siteadmin')
  end
  def disable_schools
	@schools = School.all
  end
  def reset
    id=current_user.id
    @user = User.find(id)
  end
private 
  	def logged_in_user
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
end