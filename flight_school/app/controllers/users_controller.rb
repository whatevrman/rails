class UsersController < ApplicationController
  before_action :logged_in_user
  
  def create
	@user = User.new(user_params) 
    if @user.save
	  if @user.role == 'schooladmin'
	    flash[:success] = "New school admin added."
	    redirect_to '/'
	  elsif @user.role == 'instructor'
	    flash[:success] = "New instructor added."
	    redirect_to '/'
	  elsif @user.role =='student'
	    flash[:success] = "New student added."
	    redirect_to '/'
	  else
	    redirect_to '/'
	  end
    else
	  flash[:success] = "New student NOT added!"
      render '/'
    end
  end
  
 
   def show
    @user = User.find(params[:id])
	if @user.role == 'instructor'
	  redirect_to '/instructor/'+@user.id.to_s+'/view'
	elsif @user.role == 'student'
	  redirect_to '/student/'+@user.id.to_s+'/view'
	elsif @user.role == 'siteadmin'
	  redirect_to '/siteadmin/'+@user.id.to_s+'/view'
	elsif @user.role == 'schooladmin'
	  redirect_to '/schooladmin/'+@user.id.to_s+'/view'
	else
	  redirect_to '/'
	end
  end
  
  def edit
    @user = User.find(params[:id])
	if @user.role == 'instructor'
	    redirect_to '/instructor/'+@user.id.to_s+'/edit'
	elsif @user.role == 'student'
	  redirect_to '/student/'+@user.id.to_s+'/edit'
	elsif @user.role == 'siteadmin'
	  redirect_to '/siteadmin/'+@user.id.to_s+'/edit'
	elsif @user.role == 'schooladmin'
	  redirect_to '/schooladmin/'+@user.id.to_s+'/edit'
	else
	  redirect_to '/'
	end
  end
  def reset
    id=current_user.id
    @user = User.find(id)
  end  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
	  puts @user.errors.full_messages
      flash[:success] = "Profile updated"
      redirect_to '/'
    else
	  flash[:failure] = "Profile NOT updated!"
      redirect_to '/'
	  puts @user.errors.full_messages
    end
  end
  def index
    if params[:search]
      @users = User.search(params[:search])
    else
      @users = User.all
    end
  end
  private
  
	  def user_params
		  params.require(:user).permit(:id, :username, :role, :created_at, :updated_at, :password, :name,
          :add_id, :ph_id, :e_id, :e_phid, :cfi, :cfii, :r44, :r22, :enstrom, :disable, :startdate, :enddate, :cert_num, 
		  :e_pid, :medcert, :med1, :med2, :meddate, :desirecert, :approval, :fhours, :ihours, :cert_issue, 
		  :cert_exp, :r44hours, :r22hours, :ensthours, :latflightcheck, :inst_id, :phone, :line1, :city,
		:state, :zip, :eperson, :ephone, :email, :schoolid)
	  end
	  
	  def logged_in_user
        unless logged_in?
          flash[:danger] = "Please log in."
          redirect_to login_url
        end
      end
end
