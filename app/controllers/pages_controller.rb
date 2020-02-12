class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  skip_after_action :verify_authorized

  def home
    @user_view = UserView.new
    @contents = Content.all
    @comment = Comment.last
  end
end
