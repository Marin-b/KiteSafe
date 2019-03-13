class PhotosController < ApplicationController
  def new
    @photo = Photo.new
    @photos = Photo.where(spot_id: params[:spot_id])
    @spot = Spot.find(params[:spot_id])
  end

  def create
    @photos = Photo.where(spot_id: params[:spot_id])
    @photo = Photo.new(photo_params)
    @spot = Spot.find(params[:spot_id])
    @photo.spot_id = @spot.id
    if @photo.save
      params[:commit] == "Done" ? (redirect_to spot_path(@spot)) : (redirect_to new_spot_photo_path(@spot))
    else
      render :new
    end
  end

  def destroy
  end

  private

  def photo_params
    params.require(:photo).permit(:photo)
  end
end
