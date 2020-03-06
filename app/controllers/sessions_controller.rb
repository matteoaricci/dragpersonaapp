class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to homepage_path
    else
      flash[:login_warning] = "No Queen Was Found Sweaty"
      render :new
    end
  end
  def logout
    session.clear
    redirect_to login_path 
  end
end
