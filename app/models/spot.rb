class Spot < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :weather_conditions, dependent: :destroy
  has_many :advices, dependent: :destroy
  has_many :photos, dependent: :destroy
  has_one :difficulty_level, dependent: :destroy
  # after_create :api_call
  validates :latitude, :longitude, presence: true


  def average_rating
    sum = 0
    self.reviews.each do |review|
      sum += review.rating
    end
    return sum / self.reviews.count if self.reviews.count > 0

    sum = 1
  end

  def api_call
    AfterCreateSpotJob.perform_later(self.id)
  end

  def pros
    self.advices.where(kind: true)
  end

  def cons
    self.advices.where(kind: false)
  end
end

# class Avalon
#   def say_hi
#     puts "Hallo!!! :)"
#   end
# end
# avalon = Avalon.new
# avalon.say_hi
