class SchooladminController < ApplicationController
before_action :logged_in_user

  def edit
    @user = User.find(params[:id])
  end
  def view
    @user = User.find(params[:id])
  end
   def index
    @users = User.all
  end
  def wait_students
	@students = User.where(:role => "student").where(:schoolid => current_user.schoolid)
  end
  def show_students
	@students = User.where(:role => "student").where(:approval => 't').where(:schoolid => current_user.schoolid)
  end
  def disabled_studs
	@students= User.where(:role => "student").where(:disable => 't').where(:schoolid => current_user.schoolid)
  end
  
  def show_instructors
	@insts = User.where(:role => 'instructor').where(:schoolid => current_user.schoolid).where.not(:disable => 't')
  end
  def disable_instructors
	@insts = User.where(:role => 'instructor').where(:schoolid => current_user.schoolid)
  end
  
  def disabled_insts
	@insts= User.where(:role => "instructor").where(:disable => 't').where(:schoolid => current_user.schoolid)
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
