class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(drag_name: params[:drag_name])
    session[:user_id] = user.id

    redirect_to users_path
  end
  
  def logout
    session.clear
    redirect_to login_path
  end
end
