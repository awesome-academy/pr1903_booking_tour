class Admin::UsersController < ApplicationController
  before_action :admin_user
  def index
    @users = User.search(params[:name], params[:page])
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
  end

  private
  def admin_user
      redirect_to(root_url) unless  current_user.admin?
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :avatar)
  end
end
