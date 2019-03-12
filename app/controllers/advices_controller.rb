class AdvicesController < ApplicationController
  before_action :set_spot, only: [:new, :create, :show, :edit]

  def new
    @advice = Advice.new
  end

  def create
    advice = Advice.new(advice_params)
    spot = Spot.find(params[:spot_id])
    if advice.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def set_spot
    @spot = Spot.find(params[:spot_id])
  end

  def advice_params
    params.require(:advice).permit(:description, :kind)
  end
end
