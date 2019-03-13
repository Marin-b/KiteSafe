class SpotsController < ApplicationController
  def new
    @spot = Spot.new
  end

  def index
    @spots = Spot.all
    @markers = @spots.map do |spot|
      {
        lng: spot.longitude,
        lat: spot.latitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { spot: spot }),
        description: spot.description,
        spot_id: spot.id
      }
    end
  end

  def create
    @spot = Spot.new(spot_params)
    @spot.user_id = current_user.id
    #@spot.user = current_user
    if @spot.save
      redirect_to new_spot_advice_path(@spot)
    else
      render :new
    end
  end

  def show
    @spot = Spot.find(params[:id])
  end

  def edit
    @spot = Spot.find(params[:id])
  end

  def update
    @spot = Spot.find(params[:id])
    @spot.update(spot_params)
    if @spot.save
      redirect_to spot_path
    else
      render :edit
    end
  end

  private

  def spot_params
    params.require(:spot).permit(:spot_type, :latitude, :longitude, :description)
  end
end
