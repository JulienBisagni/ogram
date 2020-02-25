class CommentVotesController < ApplicationController
  def create
    @comment_vote = CommentVote.new(comment_vote_params)
    @comment_vote.user = current_user
    authorize @comment_vote
    @comment_vote.save
    respond_to do |format|
      format.html { redirect_to contents_path }
      format.js
    end
  end

  def upvote
    @comment_vote = UserView.find_or_create_by(user: current_user, content_id: params[:comment_vote][:content_id])
    @comment_vote.upvoted = true
    authorize @comment_vote
    @comment_vote.save
    respond_to do |format|
      format.html { redirect_to contents_path }
      format.js
    end
  end

  def downvote
    @comment_vote = UserView.find_or_create_by(user: current_user, content_id: params[:comment_vote][:content_id])
    @comment_vote.downvoted = true
    authorize @comment_vote
    @comment_vote.save
    respond_to do |format|
      format.html { redirect_to contents_path }
      format.js
    end
  end

  private

  def comment_vote_params
    params.require(:comment_vote).permit(:content_id, :downvoted, :upvoted)
  end
end
