class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: "Signed in!"
    else
      flash[:error] = "Email or password is invalid"
      render "new"
    end
  end
  
  def destroy
    reset_session
    redirect_to signin_path, notice: "Signed out!"
  end
end
