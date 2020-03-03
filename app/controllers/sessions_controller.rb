class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(drag_name: params[:drag_name])
    if user
      session[:user_id] = user.id
      redirect_to users_path
    else
      flash[:notice] = "No Queen Was Found Sweaty"
      render :new
    end
  end
  
  def logout
    session.clear
    redirect_to login_path
  end
end
