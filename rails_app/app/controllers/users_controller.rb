class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save
      session[:user_id] = @user.id
  		redirect_to root_url, notice: "Welcome to your Erica's List account."
  	else
  		render 'new'
  	end
  end

  def edit
    @user = User.find(params[:id])
  end

  def show
  	@user = User.find(params[:id])
  end

  def destroy
    # TODO - fill out the crud
  end
end
