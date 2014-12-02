class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def new
    @user = User.new
  end
  def create
    @user = User.create(user_params)
    # redirect_to users_path
    respond_to do |format|
      format.html { redirect_to users_path, notice: "User was successfully created." }
    end

  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email)
  end
end
