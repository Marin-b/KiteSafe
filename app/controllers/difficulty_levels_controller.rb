class DifficultyLevelsController < ApplicationController
  def new
    @difficulty_level = DifficultyLevel.new
    @spot = Spot.find(params[:spot_id])
  end

  def create
    difficulty_level = DifficultyLevel.new(review_params)
    difficulty.spot = Spot.find(params[:spot_id])

    if difficulty_level.save
      redirect_to new_spot_photo_path(@spot.id)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:optimal_wind_direction, :minimum_level)
  end
end
