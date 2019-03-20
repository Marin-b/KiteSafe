class DifficultyLevelsController < ApplicationController
  def new
    @difficulty_level = DifficultyLevel.new
    @spot = Spot.find(params[:spot_id])
  end

  def create
    difficulty_level = DifficultyLevel.new(difficulty_params)
    difficulty_level.spot_id = Spot.find(params[:spot_id]).id
    if difficulty_level.save
      redirect_to new_spot_photo_path(params[:spot_id])
    else
      render :new
    end
  end

  private

  def difficulty_params
    params.require(:difficulty_level).permit(:offshore_direction, :level_90, :level_270, :level_180, :level_0)
  end
end
