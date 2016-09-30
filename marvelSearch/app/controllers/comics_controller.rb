class ComicsController < ApplicationController
  def index
    respond_to do |format|
      format.json {render json: Comic.all}
      format.html
    end
  end

  def create
    respond_with Comic.create(comic_params)
  end

  def destroy
    respond_with Comic.destroy(params[:id])
  end
  
  private
    def comic_params
      params.require(:comic).permit(:title, :image_link, :author)
    end
end
