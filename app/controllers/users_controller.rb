class UsersController < ApplicationController
  
  def show
  	@user = User.find(params[:id])
  end

  def new
  	@user = User.new
  end

  def create
    begin
      @user = User.new
      @user.name = params[:user][:name]
      @user.email = params[:user][:email]
      password = @user.set_password
      Rails.logger.info password
    end

    if @user.save
      sign_in @user
      flash[:success] = "Welcome to the MEMOTTE!"
      redirect_to @user
    else
      render :new
    end
  end

  private

  	def user_params
  		params.require(:user).permit(:name, :email, :password, :password_confirmation)
  	end
end
