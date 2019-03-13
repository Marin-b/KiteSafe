class Spot < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_many :weather_conditions
  has_many :advices
  has_many :photos
  has_many :difficulty_levels

  def average_rating
    sum = 0
    self.reviews.each do |review|
      sum += review.rating
    end
    return sum / self.reviews.count
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
