class SessionsController < ApplicationController

  def new
    @title = "Sign in"
  end
  
  def create
    user = User.find_by_email(params[:email].downcase)
    if user && user.authenticate(params[:password])
      # sign_in user
      session[:user_id] = user.id
      redirect_to root_url, notice: "Logged in!"
    else
    	flash.now.alert = "Invalid email/password combination."
      render 'new' 
    end
  end
  
  def destroy
    # sign_out
    session[:user_id] = nil
    redirect_to root_path, notice: "Logged out!"
  end
end
