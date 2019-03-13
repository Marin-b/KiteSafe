class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @spot = Spot.find(params[:spot_id])
  end

  def create
    @review = Review.new(review_params)
    @review.spot = Spot.find(params[:spot_id])
    @review.save
    redirect_to spot_path(@review.spot)
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to spot_path(@spot)
  end

  private

  def review_params
    params.require(:review).permit(:description, :rating)
  end
end
