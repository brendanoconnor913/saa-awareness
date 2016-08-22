class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by(name: params[:session][:name])
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to posts_path
    else
      flash.now[:danger] = "Invalid info"
      render 'new'
    end
  end
  
  def destroy
  end
end
