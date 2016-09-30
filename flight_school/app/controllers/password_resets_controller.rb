class PasswordResetsController < ApplicationController
  def reset
    @user = User.find(current_user.id)
  end
end
