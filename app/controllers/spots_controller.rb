class SpotsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def new
    @spot = Spot.new
  end

  def index
    @spots = Spot.all
    session[:level] = params[:level].to_i
    if (current_user)
      current_user.level = session[:level]
      current_user.save
      @level = current_user.level
    elsif session[:level] != 0
      @level = session[:level]
    else
      redirect_to level_path
    end
  end

  def create
    @spot = Spot.new(spot_params)
    @spot.user_id = current_user.id
    if @spot.save
      redirect_to new_spot_advice_path(@spot)
    else
      render :new
    end
  end

  def show
    if current_user
      @level = current_user.level
    elsif session[:level] != 0
      @level = session[:level]
    end
    @spot = Spot.find(params[:id])
    @marker = { lng: @spot.longitude, lat: @spot.latitude }
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
