class ContentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @initial_contents = Content.all
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
    @contents = policy_scope(Content).order(created_at: :desc)
    @markers = @contents.map do |content|
      {
        lat: content.latitude,
        lng: content.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { content: content })
      }
    end
  end

  def show
    @content = Content.find(params[:id])
    authorize @content
  end

  def create
    @content = Content.new(content_params)
    @content.save
    authorize @content
    redirect_to contents_path(@content)
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
    params.require(:content).permit(:tag, :place, :description, :user_id, :photo)
  end
end
