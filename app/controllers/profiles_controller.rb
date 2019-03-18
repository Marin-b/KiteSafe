class ProfilesController < ApplicationController
  def show
   @user = current_user
  end

  def edit
  end

  def update
  end

  def destroy
    @profile.destroy
  end
end







