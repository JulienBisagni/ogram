class UserViewsController < ApplicationController
  def create
    @user_view = UserView.new()
    @content = Content.find(params[:content_id])
    @User_view.content = @content
    @user_view.user = current_user
    raise
    @user_view.save
  end
end
