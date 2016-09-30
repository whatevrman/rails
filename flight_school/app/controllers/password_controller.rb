class PasswordController < ApplicationController
   def index
    @users = User.all
  end
  def reset
    @user = User.find(current_user.id)
  end
end
