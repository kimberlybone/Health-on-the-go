class LoginController < ApplicationController

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to @user
    else
      flash[:errors] = ["Your username or password is incorrect."]
      redirect_to new_login_path
    end

  end

  def destroy
    session[:user_id] = nil
    redirect_to new_login_path
  end
end
