class AdvicesController < ApplicationController
  before_action :set_spot, only: [:new, :create, :show, :edit]

  def new
    @advice = Advice.new
  end

  def create
    if params[:commit] == "Exit"
      redirect_to root_path
      return
    end
    @advice = Advice.new(advice_params)
    @advice.spot_id = params[:spot_id]
    if @advice.save
      redirect_to new_spot_advice_path(params[:spot_id])
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

# redirect_to :controller => 'controllername', :action => 'actionname'
