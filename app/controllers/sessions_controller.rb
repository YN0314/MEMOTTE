class SessionsController < ApplicationController
  skip_before_action :require_signin
  layout false

  def create
    @user = User.authenticate(params[:email], params[:password])

    if @user
      session[:user] = @user.id
      redirect_to user_home_path
    else
      flash.now[:alert] = "Fail login"
      render action: :new
    end
  end

  def destroy
    session[:user] = nil
    redirect_to signin_path
  end
end

