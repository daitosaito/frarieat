class PlaceImagesController < ApplicationController

  def index
    @place_image = PlaceImage.new
    @images = PlaceImage.all
  end

  def create
    PlaceImage.create(place_image_params)
    redirect_to action: :index
  end


  private

  def place_image_params
    params.require(:place_image).permit(:place_id, :role, :image)
  end

end
