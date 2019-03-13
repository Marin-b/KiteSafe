class AdvicesController < ApplicationController
  before_action :set_spot, only: [:new, :create, :show, :edit, :destroy]
  before_action :set_advice, only: [:destroy]
  def new
    @advice = Advice.new
    @advices = Advice.where(spot_id: params[:spot_id])
    @pros = @advices.where(kind: true)
    @cons = @advices.where(kind: false)
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

  def destroy
    @advice.destroy
    redirect_to new_spot_advice_path(@spot)
  end

  private

  def set_spot
    @spot = Spot.find(params[:spot_id])
  end

  def set_advice
    @advice = Advice.find(params[:id])
  end

  def advice_params
    params.require(:advice).permit(:description, :kind)
  end
end

# redirect_to :controller => 'controllername', :action => 'actionname'
