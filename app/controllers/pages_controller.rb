class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:home]
  skip_after_action :verify_authorized

  def home
    @user_view = UserView.new
    @contents = Content.all
    if params[:query].present?
      sql_query = " \
        description @@ :query \
        OR tag @@ :query \
        OR place @@ :query \
      "
      @contents = @contents.where(sql_query, query: "%#{params[:query]}%")
    else
      @contents = Content.all
    end
    @contents = @contents.select { |c| !c.downvoted?(current_user) }
    @comment = Comment.new
    @comments = Comment.all
    @last_comment = Comment.last
    respond_to do |format|
      format.html { render 'home' }
      format.js
    end
  end
end
