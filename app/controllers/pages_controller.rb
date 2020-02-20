class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  skip_after_action :verify_authorized

  def home
    @user_view = UserView.new
    @contents = Content.all
    @comments = Comment.all
    @comment = Comment.new
    @last_comment = Comment.last
    @last_user_email = User.find(@last_comment.user_id).email
  end
end
