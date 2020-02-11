class UserViewsController < ApplicationController
  def create
    @user_view = UserView.new(user_view_params)
    @user_view.user = current_user
    authorize @user_view
    @user_view.save
    respond_to do |format|
      format.html { redirect_to contents_path }
      format.js
    end
  end
  def save
    @user_view = UserView.find_or_create_by(user: current_user, content_id: params[:user_view][:content_id])
    @user_view.saved = true
    authorize @user_view
    @user_view.save
    respond_to do |format|
      format.html { redirect_to contents_path }
      format.js
    end
  end
  def downvote
    @user_view = UserView.find_or_create_by(user: current_user, content_id: params[:user_view][:content_id])
    @user_view.downvoted = true
    authorize @user_view
    @user_view.save
    respond_to do |format|
      format.html { redirect_to contents_path }
      format.js
    end
  end

  private
  def user_view_params
    params.require(:user_view).permit(:content_id, :saved)
  end
end
