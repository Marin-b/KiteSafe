class Review < ApplicationRecord
  belongs_to :user
  belongs_to :spot
  validates :description, :rating, presence: true
end
