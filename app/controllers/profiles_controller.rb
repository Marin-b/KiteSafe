class ProfilesController < ApplicationController
  def show
   @user = current_user
  end

  def edit
  end

  def update
    @user =  current_user
    @user.save
  end

end







