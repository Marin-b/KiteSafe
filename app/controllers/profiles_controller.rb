class ProfilesController < ApplicationController
  def show
   @user = current_user
  end

  def edit
  @user = current_user
  end

  def update
    @profile = current_user
    @profile.update(profile_params)
    redirect_to profile_path(@profile)
  end

  private

  def profile_params
    params.require(:user).permit(:avatar)
  end
end






