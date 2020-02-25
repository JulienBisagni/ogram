class CommentsController < ApplicationController
  def create
    @content = Content.find(params[:content_id])
    @comment = Comment.new(comment_params)
    @comment.content = @content
    @comment.user = current_user

    authorize @comment
    if @comment.save
      respond_to do |format|
        format.html { redirect_to content_path(@content) }
        format.js # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'contents/show' }
        format.js
      end
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment_id = @comment.id
    @content = @comment.content
    @comment.destroy
    respond_to do |format|
      format.js
      format.html { redirect_to root_path }
    end
    authorize @comment
  end


  private

  def comment_params
    params.require(:comment).permit(:description)
  end
end
