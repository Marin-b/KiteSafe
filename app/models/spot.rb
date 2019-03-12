class Spot < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_many :weather_conditions
  has_many :advices
  has_many :photos
  has_many :difficulty_levels
end
