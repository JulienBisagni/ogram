class UserViewsController < ApplicationController
  def create
    @user_view = UserView.new(user_view_params)
    @user_view.user = current_user
    authorize @user_view
    @user_view.save
    redirect_to contents_path
  end
  private
  def user_view_params
    params.require(:user_view).permit(:content_id)
  end
end
