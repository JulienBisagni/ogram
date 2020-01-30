class ContentsController < ApplicationController
  def index
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
  end

  def create
    @content = Content.new(content_params)
    @content.save
    redirect_to contents_path(@content)
  end

  def new
    @content = Content.new
  end

  def edit
    @content = Content.find(params[:id])
  end

  def update
    Content.find(params[:id]).update(content_params)
    redirect_to contents_path(@content)
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
