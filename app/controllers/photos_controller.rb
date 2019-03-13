class PhotosController < ApplicationController
  def new
    @photo = Photo.new
    @spot = Spot.find(params[:spot_id])
  end

  def create
    if params[:photo].nil? && params["commit"] != "Done"
      redirect_to new_spot_photo_path(@spot)
      return
    elsif params[:photo].nil? && params["commit"] == "Done"
      redirect_to spot_path(@spot)
      return
    end
    @photo = Photo.new(photo_params)
    @spot = Spot.find(@spot)
    @photo.spot_id = @spot
    if @photo.save
      params["commit"] == "Done" ? (redirect_to spot_path(@spot)) : (redirect_to new_spot_photo_path(@spot))
    else
      render :new
    end
  end

  def destroy
  end

  private

  def photo_params
    params.require(:photo).permit(:url)
  end
end
