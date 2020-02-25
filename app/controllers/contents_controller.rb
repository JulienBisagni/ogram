class ContentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @user_view = UserView.new
    @contents = policy_scope(Content).order(created_at: :desc)

    if params[:query].present?
      sql_query = " \
        description @@ :query \
        OR tag @@ :query \
        OR place @@ :query \
      "
      @contents = @contents.where(sql_query, query: "%#{params[:query]}%")
    end
  end

  def show
    @content = Content.find(params[:id])
    authorize @content
    @comment = Comment.new
    @comments = @content.comments.select do |comment|
      comment.persisted?
    end
  end

  def create
    @content = Content.new(content_params)
    authorize @content
    if @content.save
      redirect_to contents_path
    else
      render :new
    end
  end

  def new
    @content = Content.new
    authorize @content
  end

  def edit
    @content = Content.find(params[:id])
    authorize @content
  end

  def update
    @content = Content.find(params[:id])
    authorize @content
    @content.update(content_params)
    redirect_to content_path(@content)
  end

  def destroy
    Content.find(params[:id]).destroy
    redirect_to contents_path(@content)
  end


  private

  def content_params
    params.require(:content).permit(:tag, :place, :description, :user_id, :file)
  end
end
