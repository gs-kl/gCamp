class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.create(user_params)
    # redirect_to users_path
    respond_to do |format|
      format.html { redirect_to users_path, notice: "User was successfully created." }
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.delete
    flash[:notice] = "User was successfully deleted."
    redirect_to users_path
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to users_path
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email)
  end
end
