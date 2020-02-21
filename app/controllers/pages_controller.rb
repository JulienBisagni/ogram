class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  skip_after_action :verify_authorized

  def home
    @user_view = UserView.new
    if params[:query].present?
      sql_query = " \
        description @@ :query \
        OR tag @@ :query \
        OR place @@ :query \
      "
      @contents = Content.where(sql_query, query: "%#{params[:query]}%")
    else
      @contents = Content.all
    end
    @contents = Content.all
    @comment = Comment.new
    @comments = Comment.all
    @last_comment = Comment.last
    @last_user_email = User.find(@last_comment.user_id).email
  end
end
