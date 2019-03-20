class SpotsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :set_level, only: :index, unless: :level_not_set?

  def new
    @spot = Spot.new
  end

  def index
    @spots = Spot.all
    @level = session[:level] || current_user&.level
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
    params.require(:spot).permit(:spot_type, :latitude, :longitude, :description, :name)
  end

  def level_not_set?
    session[:level] ||= params[:level]&.to_i

    unless session[:level] || current_user&.level
      redirect_to level_path
    end
  end

  def set_level
    if user_signed_in? && session[:level]
      current_user.set_level(session[:level])
      session.delete(:level)
    end
  end
end
