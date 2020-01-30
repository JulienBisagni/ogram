class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    User.find(params[:id]).update(user_params)
    redirect_to "/users/#{params[:id]}"
  end

  def destroy
    User.find(params[:id]).destroy
    redirect_to '/'
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
