class UsersController < ApplicationController
  before_action :require_admin
  
  def show
    # @user = User.find(params[:id])
  end

  def new
  	@user = User.new
  end

  def index
    @users = User.all
  end

  def create
    begin
      @user = User.new
      @user.name = params[:user][:name]
      @user.email = params[:user][:email]
      password = @user.set_password
      @user.role = params[:user][:role]
      Rails.logger.info password

      if @user.save
        redirect_to root_path, notice: "ユーザを作成しました"
       else
        render :new
      end
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  	def user_params
  		params.require(:user).permit(:name, :email, :password, :password_confirmation)
  	end
end
