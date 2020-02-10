class UserViewsController < ApplicationController
  def create
    @user_view = UserView.new(user_view_params)
    @user_view.user = current_user
    authorize @user_view
    @user_view.save if !current_user.user_has_seen_content?(params[:user_view][:content_id])
    respond_to do |format|
      format.html { redirect_to contents_path }
      format.js
    end
  end
  def save
    if current_user.user_has_seen_content?(params[:user_view][:content_id])
      @user_view = UserView.where(content_id: [:user_view][:content_id], user_id: current_user.id )
      @user_view.saved = true
      authorize @user_view
      @user_view.save
    else
      @user_view = UserView.new(user_view_params)
      @user_view.user = current_user
      @user_view.saved = true
      authorize @user_view
      @user_view.save
    end
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
