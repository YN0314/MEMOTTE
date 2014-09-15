class SessionsController < ApplicationController
  skip_before_action :require_signin

  def new
  end

  def create
    @user = User.authenticate(params[:email], params[:password])

    if @user
      session[:user] = @user.id
      redirect_to mypage_path
    else
      flash.now[:alart] = "Fail login"
      render action: :new
    end
  end

  def destroy
    session[:user] = nil
    redirect_to signin_path
  end
end

