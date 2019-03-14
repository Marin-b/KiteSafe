class DifficultyLevel < ApplicationRecord
  belongs_to :spot

  def usermatch
    # @spot = Spot.find(params[:id])
    @user = User.find(user.id)
    (@user.level / self.minimum_level) * 100
  end
end
