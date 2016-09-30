class HomesController < ApplicationController
before_action :require_login, :landing_page
  def require_login
	  if !logged_in?
		redirect_to '/login'
	  end
  end
  
  def landing_page
    if current_user.role == 'siteadmin'
	  redirect_to '/siteadmin'
	elsif current_user.role == 'schooladmin'
	  redirect_to '/schooladmin'
	elsif current_user.role == 'instructor'
	  redirect_to '/instructor'
	elsif current_user.role == 'student'
	  redirect_to '/student'
	end
  end
  
  def index
  end
end
